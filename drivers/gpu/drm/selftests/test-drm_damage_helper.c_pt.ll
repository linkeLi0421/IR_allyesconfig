; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/selftests/test-drm_damage_helper.c_pt.bc'
source_filename = "../drivers/gpu/drm/selftests/test-drm_damage_helper.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.84, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.84 = type { i32, ptr }
%struct.drm_property = type { %struct.list_head, %struct.drm_mode_object, i32, [32 x i8], i32, ptr, ptr, %struct.list_head }
%struct.drm_atomic_helper_damage_iter = type { %struct.drm_rect, ptr, i32, i32, i8 }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_property_blob = type { %struct.drm_mode_object, ptr, %struct.list_head, %struct.list_head, i32, ptr }
%struct.drm_mode_rect = type { i32, i32, i32, i32 }

@fb = dso_local constant { %struct.drm_framebuffer, [48 x i8] } { %struct.drm_framebuffer { ptr null, %struct.list_head zeroinitializer, %struct.drm_mode_object zeroinitializer, [16 x i8] zeroinitializer, ptr null, ptr null, [4 x i32] zeroinitializer, [4 x i32] zeroinitializer, i64 0, i32 2048, i32 2048, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, [4 x ptr] zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@igt_damage_iter_no_damage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013drm_damage_helper: %s/%u: Should return plane src as damage.\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"igt_damage_iter_no_damage\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/gpu/drm/selftests/test-drm_damage_helper.c\00", [45 x i8] zeroinitializer }, align 32
@igt_damage_iter_no_damage._entry_ptr = internal global ptr @igt_damage_iter_no_damage._entry, section ".printk_index", align 4
@igt_damage_iter_no_damage._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013drm_damage_helper: %s/%u: %s\00", [33 x i8] zeroinitializer }, align 32
@igt_damage_iter_no_damage._entry_ptr.5 = internal global ptr @igt_damage_iter_no_damage._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"FAIL_ON(!check_damage_clip(&state, &clip, 0, 0, 2048, 2048))\0A\00", [34 x i8] zeroinitializer }, align 32
@igt_damage_iter_no_damage_fractional_src._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013drm_damage_helper: %s/%u: Should return rounded off plane src as damage.\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"igt_damage_iter_no_damage_fractional_src\00", [55 x i8] zeroinitializer }, align 32
@igt_damage_iter_no_damage_fractional_src._entry_ptr = internal global ptr @igt_damage_iter_no_damage_fractional_src._entry, section ".printk_index", align 4
@igt_damage_iter_no_damage_fractional_src._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.8, ptr @.str.2, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_damage_iter_no_damage_fractional_src._entry_ptr.10 = internal global ptr @igt_damage_iter_no_damage_fractional_src._entry.9, section ".printk_index", align 4
@.str.11 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"FAIL_ON(!check_damage_clip(&state, &clip, 3, 3, 1028, 772))\0A\00", [35 x i8] zeroinitializer }, align 32
@igt_damage_iter_no_damage_src_moved._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.12, ptr @.str.2, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"igt_damage_iter_no_damage_src_moved\00", [60 x i8] zeroinitializer }, align 32
@igt_damage_iter_no_damage_src_moved._entry_ptr = internal global ptr @igt_damage_iter_no_damage_src_moved._entry, section ".printk_index", align 4
@igt_damage_iter_no_damage_src_moved._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.12, ptr @.str.2, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_damage_iter_no_damage_src_moved._entry_ptr.14 = internal global ptr @igt_damage_iter_no_damage_src_moved._entry.13, section ".printk_index", align 4
@.str.15 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"FAIL_ON(!check_damage_clip(&state, &clip, 10, 10, 1034, 778))\0A\00", [33 x i8] zeroinitializer }, align 32
@igt_damage_iter_no_damage_fractional_src_moved._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.16, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"igt_damage_iter_no_damage_fractional_src_moved\00", [49 x i8] zeroinitializer }, align 32
@igt_damage_iter_no_damage_fractional_src_moved._entry_ptr = internal global ptr @igt_damage_iter_no_damage_fractional_src_moved._entry, section ".printk_index", align 4
@igt_damage_iter_no_damage_fractional_src_moved._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.16, ptr @.str.2, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_damage_iter_no_damage_fractional_src_moved._entry_ptr.18 = internal global ptr @igt_damage_iter_no_damage_fractional_src_moved._entry.17, section ".printk_index", align 4
@.str.19 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"FAIL_ON(!check_damage_clip(&state, &clip, 4, 4, 1029, 773))\0A\00", [35 x i8] zeroinitializer }, align 32
@igt_damage_iter_no_damage_not_visible._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013drm_damage_helper: %s/%u: Should have no damage.\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"igt_damage_iter_no_damage_not_visible\00", [58 x i8] zeroinitializer }, align 32
@igt_damage_iter_no_damage_not_visible._entry_ptr = internal global ptr @igt_damage_iter_no_damage_not_visible._entry, section ".printk_index", align 4
@igt_damage_iter_no_damage_no_crtc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.22, ptr @.str.2, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"igt_damage_iter_no_damage_no_crtc\00", [62 x i8] zeroinitializer }, align 32
@igt_damage_iter_no_damage_no_crtc._entry_ptr = internal global ptr @igt_damage_iter_no_damage_no_crtc._entry, section ".printk_index", align 4
@igt_damage_iter_no_damage_no_fb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.23, ptr @.str.2, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"igt_damage_iter_no_damage_no_fb\00", [32 x i8] zeroinitializer }, align 32
@igt_damage_iter_no_damage_no_fb._entry_ptr = internal global ptr @igt_damage_iter_no_damage_no_fb._entry, section ".printk_index", align 4
@igt_damage_iter_simple_damage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013drm_damage_helper: %s/%u: Should return damage when set.\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"igt_damage_iter_simple_damage\00", [34 x i8] zeroinitializer }, align 32
@igt_damage_iter_simple_damage._entry_ptr = internal global ptr @igt_damage_iter_simple_damage._entry, section ".printk_index", align 4
@igt_damage_iter_simple_damage._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.25, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_damage_iter_simple_damage._entry_ptr.27 = internal global ptr @igt_damage_iter_simple_damage._entry.26, section ".printk_index", align 4
@.str.28 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"FAIL_ON(!check_damage_clip(&state, &clip, 0, 0, 1024, 768))\0A\00", [35 x i8] zeroinitializer }, align 32
@igt_damage_iter_single_damage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.29, ptr @.str.2, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"igt_damage_iter_single_damage\00", [34 x i8] zeroinitializer }, align 32
@igt_damage_iter_single_damage._entry_ptr = internal global ptr @igt_damage_iter_single_damage._entry, section ".printk_index", align 4
@igt_damage_iter_single_damage._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.29, ptr @.str.2, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_damage_iter_single_damage._entry_ptr.31 = internal global ptr @igt_damage_iter_single_damage._entry.30, section ".printk_index", align 4
@.str.32 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"FAIL_ON(!check_damage_clip(&state, &clip, 256, 192, 768, 576))\0A\00", [32 x i8] zeroinitializer }, align 32
@igt_damage_iter_single_damage_intersect_src._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013drm_damage_helper: %s/%u: Should return damage clipped to src.\00", [63 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"igt_damage_iter_single_damage_intersect_src\00", [52 x i8] zeroinitializer }, align 32
@igt_damage_iter_single_damage_intersect_src._entry_ptr = internal global ptr @igt_damage_iter_single_damage_intersect_src._entry, section ".printk_index", align 4
@igt_damage_iter_single_damage_intersect_src._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.34, ptr @.str.2, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_damage_iter_single_damage_intersect_src._entry_ptr.36 = internal global ptr @igt_damage_iter_single_damage_intersect_src._entry.35, section ".printk_index", align 4
@.str.37 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"FAIL_ON(!check_damage_clip(&state, &clip, 256, 192, 1024, 768))\0A\00", [63 x i8] zeroinitializer }, align 32
@igt_damage_iter_single_damage_outside_src._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.38, ptr @.str.2, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"igt_damage_iter_single_damage_outside_src\00", [54 x i8] zeroinitializer }, align 32
@igt_damage_iter_single_damage_outside_src._entry_ptr = internal global ptr @igt_damage_iter_single_damage_outside_src._entry, section ".printk_index", align 4
@igt_damage_iter_single_damage_fractional_src._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.39, ptr @.str.2, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"igt_damage_iter_single_damage_fractional_src\00", [51 x i8] zeroinitializer }, align 32
@igt_damage_iter_single_damage_fractional_src._entry_ptr = internal global ptr @igt_damage_iter_single_damage_fractional_src._entry, section ".printk_index", align 4
@igt_damage_iter_single_damage_fractional_src._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.39, ptr @.str.2, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_damage_iter_single_damage_fractional_src._entry_ptr.41 = internal global ptr @igt_damage_iter_single_damage_fractional_src._entry.40, section ".printk_index", align 4
@.str.42 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"FAIL_ON(!check_damage_clip(&state, &clip, 10, 10, 256, 330))\0A\00", [34 x i8] zeroinitializer }, align 32
@igt_damage_iter_single_damage_intersect_fractional_src._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013drm_damage_helper: %s/%u: Should return damage clipped to rounded off src.\00", [51 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"igt_damage_iter_single_damage_intersect_fractional_src\00", [41 x i8] zeroinitializer }, align 32
@igt_damage_iter_single_damage_intersect_fractional_src._entry_ptr = internal global ptr @igt_damage_iter_single_damage_intersect_fractional_src._entry, section ".printk_index", align 4
@igt_damage_iter_single_damage_intersect_fractional_src._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.44, ptr @.str.2, i32 430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_damage_iter_single_damage_intersect_fractional_src._entry_ptr.46 = internal global ptr @igt_damage_iter_single_damage_intersect_fractional_src._entry.45, section ".printk_index", align 4
@.str.47 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"FAIL_ON(!check_damage_clip(&state, &clip, 10, 4, 1029, 330))\0A\00", [34 x i8] zeroinitializer }, align 32
@igt_damage_iter_single_damage_outside_fractional_src._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.48, ptr @.str.2, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"igt_damage_iter_single_damage_outside_fractional_src\00", [43 x i8] zeroinitializer }, align 32
@igt_damage_iter_single_damage_outside_fractional_src._entry_ptr = internal global ptr @igt_damage_iter_single_damage_outside_fractional_src._entry, section ".printk_index", align 4
@igt_damage_iter_single_damage_src_moved._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.49, ptr @.str.2, i32 484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"igt_damage_iter_single_damage_src_moved\00", [56 x i8] zeroinitializer }, align 32
@igt_damage_iter_single_damage_src_moved._entry_ptr = internal global ptr @igt_damage_iter_single_damage_src_moved._entry, section ".printk_index", align 4
@igt_damage_iter_single_damage_src_moved._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.49, ptr @.str.2, i32 485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_damage_iter_single_damage_src_moved._entry_ptr.51 = internal global ptr @igt_damage_iter_single_damage_src_moved._entry.50, section ".printk_index", align 4
@igt_damage_iter_single_damage_fractional_src_moved._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.52, ptr @.str.2, i32 513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"igt_damage_iter_single_damage_fractional_src_moved\00", [45 x i8] zeroinitializer }, align 32
@igt_damage_iter_single_damage_fractional_src_moved._entry_ptr = internal global ptr @igt_damage_iter_single_damage_fractional_src_moved._entry, section ".printk_index", align 4
@igt_damage_iter_single_damage_fractional_src_moved._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.52, ptr @.str.2, i32 514, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_damage_iter_single_damage_fractional_src_moved._entry_ptr.54 = internal global ptr @igt_damage_iter_single_damage_fractional_src_moved._entry.53, section ".printk_index", align 4
@igt_damage_iter_damage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.55, ptr @.str.2, i32 539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"igt_damage_iter_damage\00", [41 x i8] zeroinitializer }, align 32
@igt_damage_iter_damage._entry_ptr = internal global ptr @igt_damage_iter_damage._entry, section ".printk_index", align 4
@.str.56 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"FAIL_ON(!check_damage_clip(&state, &clip, 20, 30, 200, 180))\0A\00", [34 x i8] zeroinitializer }, align 32
@igt_damage_iter_damage._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.55, ptr @.str.2, i32 541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_damage_iter_damage._entry_ptr.58 = internal global ptr @igt_damage_iter_damage._entry.57, section ".printk_index", align 4
@.str.59 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"FAIL_ON(!check_damage_clip(&state, &clip, 240, 200, 280, 250))\0A\00", [32 x i8] zeroinitializer }, align 32
@igt_damage_iter_damage._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.55, ptr @.str.2, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_damage_iter_damage._entry_ptr.61 = internal global ptr @igt_damage_iter_damage._entry.60, section ".printk_index", align 4
@igt_damage_iter_damage_one_intersect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.62, ptr @.str.2, i32 572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"igt_damage_iter_damage_one_intersect\00", [59 x i8] zeroinitializer }, align 32
@igt_damage_iter_damage_one_intersect._entry_ptr = internal global ptr @igt_damage_iter_damage_one_intersect._entry, section ".printk_index", align 4
@igt_damage_iter_damage_one_intersect._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.62, ptr @.str.2, i32 574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_damage_iter_damage_one_intersect._entry_ptr.64 = internal global ptr @igt_damage_iter_damage_one_intersect._entry.63, section ".printk_index", align 4
@igt_damage_iter_damage_one_intersect._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.62, ptr @.str.2, i32 578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_damage_iter_damage_one_intersect._entry_ptr.66 = internal global ptr @igt_damage_iter_damage_one_intersect._entry.65, section ".printk_index", align 4
@igt_damage_iter_damage_one_outside._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.67, ptr @.str.2, i32 604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"igt_damage_iter_damage_one_outside\00", [61 x i8] zeroinitializer }, align 32
@igt_damage_iter_damage_one_outside._entry_ptr = internal global ptr @igt_damage_iter_damage_one_outside._entry, section ".printk_index", align 4
@igt_damage_iter_damage_one_outside._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.67, ptr @.str.2, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_damage_iter_damage_one_outside._entry_ptr.69 = internal global ptr @igt_damage_iter_damage_one_outside._entry.68, section ".printk_index", align 4
@igt_damage_iter_damage_src_moved._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013drm_damage_helper: %s/%u: Should return round off plane src as damage.\00", [55 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"igt_damage_iter_damage_src_moved\00", [63 x i8] zeroinitializer }, align 32
@igt_damage_iter_damage_src_moved._entry_ptr = internal global ptr @igt_damage_iter_damage_src_moved._entry, section ".printk_index", align 4
@igt_damage_iter_damage_src_moved._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.71, ptr @.str.2, i32 634, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_damage_iter_damage_src_moved._entry_ptr.73 = internal global ptr @igt_damage_iter_damage_src_moved._entry.72, section ".printk_index", align 4
@__const.igt_damage_iter_damage_not_visible.state = private unnamed_addr constant { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, [3 x i8], i32, ptr, ptr } { ptr null, ptr inttoptr (i32 16 to ptr), ptr @fb, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, %struct.drm_rect zeroinitializer, %struct.drm_rect zeroinitializer, i8 1, [3 x i8] zeroinitializer, i32 0, ptr null, ptr null }, align 4
@igt_damage_iter_damage_not_visible._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 664, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013drm_damage_helper: %s/%u: Should not return any damage.\00", [38 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"igt_damage_iter_damage_not_visible\00", [61 x i8] zeroinitializer }, align 32
@igt_damage_iter_damage_not_visible._entry_ptr = internal global ptr @igt_damage_iter_damage_not_visible._entry, section ".printk_index", align 4
@mock_driver = dso_local global { %struct.drm_driver, [60 x i8] } zeroinitializer, align 32
@mock_plane = internal global { %struct.drm_plane, [144 x i8] } zeroinitializer, align 32
@mock_device = internal global { %struct.drm_device, [580 x i8] } zeroinitializer, align 32
@mock_prop = internal global { %struct.drm_property, [44 x i8] } zeroinitializer, align 32
@mock_obj_props = internal global { %struct.drm_object_properties, [88 x i8] } zeroinitializer, align 32
@check_damage_clip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013drm_damage_helper: Cannot have damage clip with no dimension.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"check_damage_clip\00", [46 x i8] zeroinitializer }, align 32
@check_damage_clip._entry_ptr = internal global ptr @check_damage_clip._entry, section ".printk_index", align 4
@check_damage_clip._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.2, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013drm_damage_helper: Damage cannot be outside rounded plane src.\0A\00", [62 x i8] zeroinitializer }, align 32
@check_damage_clip._entry_ptr.80 = internal global ptr @check_damage_clip._entry.78, section ".printk_index", align 4
@check_damage_clip._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.77, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013drm_damage_helper: Damage = %d %d %d %d\0A\00", [53 x i8] zeroinitializer }, align 32
@check_damage_clip._entry_ptr.83 = internal global ptr @check_damage_clip._entry.81, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.85 = private unnamed_addr constant [3 x i8] c"fb\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 102, i32 30 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 133, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 134, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 156, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 157, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 178, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 179, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 201, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 202, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 225, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 246, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 271, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 296, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 297, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 321, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 322, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 347, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 348, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 373, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 400, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 401, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 429, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 430, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 458, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 484, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 485, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 513, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 514, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 539, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 541, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 545, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 572, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 574, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 578, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 604, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 605, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 633, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 634, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 664, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant [12 x i8] c"mock_driver\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 14, i32 19 }
@___asan_gen_.331 = private unnamed_addr constant [11 x i8] c"mock_plane\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 17, i32 25 }
@___asan_gen_.334 = private unnamed_addr constant [12 x i8] c"mock_device\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 15, i32 26 }
@___asan_gen_.337 = private unnamed_addr constant [10 x i8] c"mock_prop\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 18, i32 28 }
@___asan_gen_.340 = private unnamed_addr constant [15 x i8] c"mock_obj_props\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 16, i32 37 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 85, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 90, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.361 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.362 = private constant [54 x i8] c"../drivers/gpu/drm/selftests/test-drm_damage_helper.c\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 95, i32 3 }
@llvm.compiler.used = appending global [134 x ptr] [ptr @check_damage_clip._entry, ptr @check_damage_clip._entry.78, ptr @check_damage_clip._entry.81, ptr @check_damage_clip._entry_ptr, ptr @check_damage_clip._entry_ptr.80, ptr @check_damage_clip._entry_ptr.83, ptr @igt_damage_iter_damage._entry, ptr @igt_damage_iter_damage._entry.57, ptr @igt_damage_iter_damage._entry.60, ptr @igt_damage_iter_damage._entry_ptr, ptr @igt_damage_iter_damage._entry_ptr.58, ptr @igt_damage_iter_damage._entry_ptr.61, ptr @igt_damage_iter_damage_not_visible._entry, ptr @igt_damage_iter_damage_not_visible._entry_ptr, ptr @igt_damage_iter_damage_one_intersect._entry, ptr @igt_damage_iter_damage_one_intersect._entry.63, ptr @igt_damage_iter_damage_one_intersect._entry.65, ptr @igt_damage_iter_damage_one_intersect._entry_ptr, ptr @igt_damage_iter_damage_one_intersect._entry_ptr.64, ptr @igt_damage_iter_damage_one_intersect._entry_ptr.66, ptr @igt_damage_iter_damage_one_outside._entry, ptr @igt_damage_iter_damage_one_outside._entry.68, ptr @igt_damage_iter_damage_one_outside._entry_ptr, ptr @igt_damage_iter_damage_one_outside._entry_ptr.69, ptr @igt_damage_iter_damage_src_moved._entry, ptr @igt_damage_iter_damage_src_moved._entry.72, ptr @igt_damage_iter_damage_src_moved._entry_ptr, ptr @igt_damage_iter_damage_src_moved._entry_ptr.73, ptr @igt_damage_iter_no_damage._entry, ptr @igt_damage_iter_no_damage._entry.3, ptr @igt_damage_iter_no_damage._entry_ptr, ptr @igt_damage_iter_no_damage._entry_ptr.5, ptr @igt_damage_iter_no_damage_fractional_src._entry, ptr @igt_damage_iter_no_damage_fractional_src._entry.9, ptr @igt_damage_iter_no_damage_fractional_src._entry_ptr, ptr @igt_damage_iter_no_damage_fractional_src._entry_ptr.10, ptr @igt_damage_iter_no_damage_fractional_src_moved._entry, ptr @igt_damage_iter_no_damage_fractional_src_moved._entry.17, ptr @igt_damage_iter_no_damage_fractional_src_moved._entry_ptr, ptr @igt_damage_iter_no_damage_fractional_src_moved._entry_ptr.18, ptr @igt_damage_iter_no_damage_no_crtc._entry, ptr @igt_damage_iter_no_damage_no_crtc._entry_ptr, ptr @igt_damage_iter_no_damage_no_fb._entry, ptr @igt_damage_iter_no_damage_no_fb._entry_ptr, ptr @igt_damage_iter_no_damage_not_visible._entry, ptr @igt_damage_iter_no_damage_not_visible._entry_ptr, ptr @igt_damage_iter_no_damage_src_moved._entry, ptr @igt_damage_iter_no_damage_src_moved._entry.13, ptr @igt_damage_iter_no_damage_src_moved._entry_ptr, ptr @igt_damage_iter_no_damage_src_moved._entry_ptr.14, ptr @igt_damage_iter_simple_damage._entry, ptr @igt_damage_iter_simple_damage._entry.26, ptr @igt_damage_iter_simple_damage._entry_ptr, ptr @igt_damage_iter_simple_damage._entry_ptr.27, ptr @igt_damage_iter_single_damage._entry, ptr @igt_damage_iter_single_damage._entry.30, ptr @igt_damage_iter_single_damage._entry_ptr, ptr @igt_damage_iter_single_damage._entry_ptr.31, ptr @igt_damage_iter_single_damage_fractional_src._entry, ptr @igt_damage_iter_single_damage_fractional_src._entry.40, ptr @igt_damage_iter_single_damage_fractional_src._entry_ptr, ptr @igt_damage_iter_single_damage_fractional_src._entry_ptr.41, ptr @igt_damage_iter_single_damage_fractional_src_moved._entry, ptr @igt_damage_iter_single_damage_fractional_src_moved._entry.53, ptr @igt_damage_iter_single_damage_fractional_src_moved._entry_ptr, ptr @igt_damage_iter_single_damage_fractional_src_moved._entry_ptr.54, ptr @igt_damage_iter_single_damage_intersect_fractional_src._entry, ptr @igt_damage_iter_single_damage_intersect_fractional_src._entry.45, ptr @igt_damage_iter_single_damage_intersect_fractional_src._entry_ptr, ptr @igt_damage_iter_single_damage_intersect_fractional_src._entry_ptr.46, ptr @igt_damage_iter_single_damage_intersect_src._entry, ptr @igt_damage_iter_single_damage_intersect_src._entry.35, ptr @igt_damage_iter_single_damage_intersect_src._entry_ptr, ptr @igt_damage_iter_single_damage_intersect_src._entry_ptr.36, ptr @igt_damage_iter_single_damage_outside_fractional_src._entry, ptr @igt_damage_iter_single_damage_outside_fractional_src._entry_ptr, ptr @igt_damage_iter_single_damage_outside_src._entry, ptr @igt_damage_iter_single_damage_outside_src._entry_ptr, ptr @igt_damage_iter_single_damage_src_moved._entry, ptr @igt_damage_iter_single_damage_src_moved._entry.50, ptr @igt_damage_iter_single_damage_src_moved._entry_ptr, ptr @igt_damage_iter_single_damage_src_moved._entry_ptr.51, ptr @fb, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.28, ptr @.str.29, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.67, ptr @.str.70, ptr @.str.71, ptr @.str.74, ptr @.str.75, ptr @mock_driver, ptr @mock_plane, ptr @mock_device, ptr @mock_prop, ptr @mock_obj_props, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.82], section "llvm.metadata"
@0 = internal global [93 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_damage_iter_no_damage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_damage_iter_no_damage._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_damage_iter_no_damage_fractional_src._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_damage_iter_no_damage_fractional_src._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_damage_iter_no_damage_src_moved._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_damage_iter_no_damage_src_moved._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_damage_iter_no_damage_fractional_src_moved._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_damage_iter_no_damage_fractional_src_moved._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_damage_iter_no_damage_not_visible._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_damage_iter_no_damage_no_crtc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_damage_iter_no_damage_no_fb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_damage_iter_simple_damage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_damage_iter_simple_damage._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_damage_iter_single_damage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_damage_iter_single_damage._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_damage_iter_single_damage_intersect_src._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_damage_iter_single_damage_intersect_src._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_damage_iter_single_damage_outside_src._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_damage_iter_single_damage_fractional_src._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_damage_iter_single_damage_fractional_src._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_damage_iter_single_damage_intersect_fractional_src._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_damage_iter_single_damage_intersect_fractional_src._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_damage_iter_single_damage_outside_fractional_src._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_damage_iter_single_damage_src_moved._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_damage_iter_single_damage_src_moved._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_damage_iter_single_damage_fractional_src_moved._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_damage_iter_single_damage_fractional_src_moved._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_damage_iter_damage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_damage_iter_damage._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_damage_iter_damage._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_damage_iter_damage_one_intersect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_damage_iter_damage_one_intersect._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_damage_iter_damage_one_intersect._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_damage_iter_damage_one_outside._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_damage_iter_damage_one_outside._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_damage_iter_damage_src_moved._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_damage_iter_damage_src_moved._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_damage_iter_damage_not_visible._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mock_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mock_plane to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mock_device to i32), i32 2332, i32 2912, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mock_prop to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mock_obj_props to i32), i32 296, i32 384, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_damage_clip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_damage_clip._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_damage_clip._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igt_damage_iter_no_damage(ptr nocapture noundef readnone %ignored) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.drm_atomic_helper_damage_iter, align 4
  %clip = alloca %struct.drm_rect, align 4
  %old_state = alloca %struct.drm_plane_state, align 4
  %state = alloca %struct.drm_plane_state, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iter) #4
  %0 = call ptr @memset(ptr %iter, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clip) #4
  %1 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 1
  %2 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 2
  %3 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 3
  %4 = call ptr @memset(ptr %clip, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %old_state) #4
  %5 = getelementptr inbounds i8, ptr %old_state, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %state) #4
  %7 = call ptr @memcpy(ptr %state, ptr @__const.igt_damage_iter_damage_not_visible.state, i32 124)
  %8 = ptrtoint ptr %old_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mock_plane, ptr %old_state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mock_plane, ptr %state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %src.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20
  %10 = ptrtoint ptr %src.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %src.i, align 4
  %y13.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 1
  %11 = ptrtoint ptr %y13.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %y13.i, align 4
  %x25.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 2
  %12 = ptrtoint ptr %x25.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 134217728, ptr %x25.i, align 4
  %y27.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 3
  %13 = ptrtoint ptr %y27.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 134217728, ptr %y27.i, align 4
  %src.i24 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20
  %14 = ptrtoint ptr %src.i24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %src.i24, align 4
  %y13.i25 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 1
  %15 = ptrtoint ptr %y13.i25 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %y13.i25, align 4
  %x25.i26 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 2
  %16 = ptrtoint ptr %x25.i26 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 134217728, ptr %x25.i26, align 4
  %y27.i27 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 3
  %17 = ptrtoint ptr %y27.i27 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 134217728, ptr %y27.i27, align 4
  call void @drm_atomic_helper_damage_iter_init(ptr noundef nonnull %iter, ptr noundef nonnull %old_state, ptr noundef nonnull %state) #4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %num_hits.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond.while.cond_crit_edge ]
  %call = call zeroext i1 @drm_atomic_helper_damage_iter_next(ptr noundef nonnull %iter, ptr noundef nonnull %clip) #4
  %inc = add i32 %num_hits.0, 1
  br i1 %call, label %while.cond.while.cond_crit_edge, label %do.body

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

do.body:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_hits.0)
  %cmp.not = icmp eq i32 %num_hits.0, 1
  br i1 %cmp.not, label %do.body8, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 133) #7
  br label %cleanup

do.body8:                                         ; preds = %do.body
  %18 = ptrtoint ptr %y27.i27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %y27.i27, align 4
  %shr13.i = ashr i32 %19, 16
  %and16.i = and i32 %19, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.i = icmp ne i32 %and16.i, 0
  %lnot.ext21.i = zext i1 %tobool17.i to i32
  %add22.i = add nsw i32 %shr13.i, %lnot.ext21.i
  %20 = ptrtoint ptr %x25.i26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %x25.i26, align 4
  %shr7.i = ashr i32 %21, 16
  %and.i = and i32 %21, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  %add.i = add nsw i32 %shr7.i, %lnot.ext.i
  %22 = ptrtoint ptr %y13.i25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %y13.i25, align 4
  %24 = ptrtoint ptr %src.i24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %src.i24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %25)
  %cmp24.i = icmp sgt i32 %25, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %23)
  %cmp26.i = icmp sgt i32 %23, 65535
  %or.cond83.i = select i1 %cmp24.i, i1 true, i1 %cmp26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %add.i)
  %cmp28.i = icmp slt i32 %add.i, 2048
  %or.cond84.i = select i1 %or.cond83.i, i1 true, i1 %cmp28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %add22.i)
  %cmp30.i = icmp slt i32 %add22.i, 2048
  %or.cond85.i = select i1 %or.cond84.i, i1 true, i1 %cmp30.i
  br i1 %or.cond85.i, label %do.end34.i, label %if.end37.i

do.end34.i:                                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #6
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #7
  br label %do.end13

if.end37.i:                                       ; preds = %do.body8
  %26 = ptrtoint ptr %clip to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %clip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp39.not.i = icmp eq i32 %27, 0
  br i1 %cmp39.not.i, label %lor.lhs.false40.i, label %if.end37.i.do.end52.i_crit_edge

if.end37.i.do.end52.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false40.i:                                ; preds = %if.end37.i
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp42.not.i = icmp eq i32 %29, 0
  br i1 %cmp42.not.i, label %lor.lhs.false43.i, label %lor.lhs.false40.i.do.end52.i_crit_edge

lor.lhs.false40.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false43.i:                                ; preds = %lor.lhs.false40.i
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %31)
  %cmp45.not.i = icmp eq i32 %31, 2048
  br i1 %cmp45.not.i, label %lor.lhs.false46.i, label %lor.lhs.false43.i.do.end52.i_crit_edge

lor.lhs.false43.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false43.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false46.i:                                ; preds = %lor.lhs.false43.i
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %33)
  %cmp48.not.i = icmp eq i32 %33, 2048
  br i1 %cmp48.not.i, label %lor.lhs.false46.i.cleanup_crit_edge, label %lor.lhs.false46.i.do.end52.i_crit_edge

lor.lhs.false46.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false46.i.cleanup_crit_edge:              ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end52.i:                                       ; preds = %lor.lhs.false46.i.do.end52.i_crit_edge, %lor.lhs.false43.i.do.end52.i_crit_edge, %lor.lhs.false40.i.do.end52.i_crit_edge, %if.end37.i.do.end52.i_crit_edge
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %1, align 4
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %2, align 4
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %3, align 4
  %call58.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %27, i32 noundef %35, i32 noundef %37, i32 noundef %39) #7
  br label %do.end13

do.end13:                                         ; preds = %do.end52.i, %do.end34.i
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 134, ptr noundef nonnull @.str.6) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %lor.lhs.false46.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end13 ], [ 0, %lor.lhs.false46.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %state) #4
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %old_state) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clip) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_damage_iter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_atomic_helper_damage_iter_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igt_damage_iter_no_damage_fractional_src(ptr nocapture noundef readnone %ignored) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.drm_atomic_helper_damage_iter, align 4
  %clip = alloca %struct.drm_rect, align 4
  %old_state = alloca %struct.drm_plane_state, align 4
  %state = alloca %struct.drm_plane_state, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iter) #4
  %0 = call ptr @memset(ptr %iter, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clip) #4
  %1 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 1
  %2 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 2
  %3 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 3
  %4 = call ptr @memset(ptr %clip, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %old_state) #4
  %5 = getelementptr inbounds i8, ptr %old_state, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %state) #4
  %7 = call ptr @memcpy(ptr %state, ptr @__const.igt_damage_iter_damage_not_visible.state, i32 124)
  %8 = ptrtoint ptr %old_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mock_plane, ptr %old_state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mock_plane, ptr %state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %src.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20
  %10 = ptrtoint ptr %src.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 262142, ptr %src.i, align 4
  %y13.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 1
  %11 = ptrtoint ptr %y13.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 262142, ptr %y13.i, align 4
  %x25.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 2
  %12 = ptrtoint ptr %x25.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 67371006, ptr %x25.i, align 4
  %y27.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 3
  %13 = ptrtoint ptr %y27.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 50593790, ptr %y27.i, align 4
  %src.i21 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20
  %14 = ptrtoint ptr %src.i21 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 262142, ptr %src.i21, align 4
  %y13.i22 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 1
  %15 = ptrtoint ptr %y13.i22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 262142, ptr %y13.i22, align 4
  %x25.i23 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 2
  %16 = ptrtoint ptr %x25.i23 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 67371006, ptr %x25.i23, align 4
  %y27.i24 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 3
  %17 = ptrtoint ptr %y27.i24 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 50593790, ptr %y27.i24, align 4
  call void @drm_atomic_helper_damage_iter_init(ptr noundef nonnull %iter, ptr noundef nonnull %old_state, ptr noundef nonnull %state) #4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %num_hits.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond.while.cond_crit_edge ]
  %call = call zeroext i1 @drm_atomic_helper_damage_iter_next(ptr noundef nonnull %iter, ptr noundef nonnull %clip) #4
  %inc = add i32 %num_hits.0, 1
  br i1 %call, label %while.cond.while.cond_crit_edge, label %do.body

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

do.body:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_hits.0)
  %cmp.not = icmp eq i32 %num_hits.0, 1
  br i1 %cmp.not, label %do.body5, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 156) #7
  br label %cleanup

do.body5:                                         ; preds = %do.body
  %18 = ptrtoint ptr %y27.i24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %y27.i24, align 4
  %shr13.i = ashr i32 %19, 16
  %and16.i = and i32 %19, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.i = icmp ne i32 %and16.i, 0
  %lnot.ext21.i = zext i1 %tobool17.i to i32
  %add22.i = add nsw i32 %shr13.i, %lnot.ext21.i
  %20 = ptrtoint ptr %x25.i23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %x25.i23, align 4
  %shr7.i = ashr i32 %21, 16
  %and.i = and i32 %21, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  %add.i = add nsw i32 %shr7.i, %lnot.ext.i
  %22 = ptrtoint ptr %y13.i22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %y13.i22, align 4
  %24 = ptrtoint ptr %src.i21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %src.i21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262143, i32 %25)
  %cmp24.i = icmp sgt i32 %25, 262143
  call void @__sanitizer_cov_trace_const_cmp4(i32 262143, i32 %23)
  %cmp26.i = icmp sgt i32 %23, 262143
  %or.cond83.i = select i1 %cmp24.i, i1 true, i1 %cmp26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1028, i32 %add.i)
  %cmp28.i = icmp slt i32 %add.i, 1028
  %or.cond84.i = select i1 %or.cond83.i, i1 true, i1 %cmp28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 772, i32 %add22.i)
  %cmp30.i = icmp slt i32 %add22.i, 772
  %or.cond85.i = select i1 %or.cond84.i, i1 true, i1 %cmp30.i
  br i1 %or.cond85.i, label %do.end34.i, label %if.end37.i

do.end34.i:                                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #7
  br label %do.end10

if.end37.i:                                       ; preds = %do.body5
  %26 = ptrtoint ptr %clip to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %clip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp39.not.i = icmp eq i32 %27, 3
  br i1 %cmp39.not.i, label %lor.lhs.false40.i, label %if.end37.i.do.end52.i_crit_edge

if.end37.i.do.end52.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false40.i:                                ; preds = %if.end37.i
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %29)
  %cmp42.not.i = icmp eq i32 %29, 3
  br i1 %cmp42.not.i, label %lor.lhs.false43.i, label %lor.lhs.false40.i.do.end52.i_crit_edge

lor.lhs.false40.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false43.i:                                ; preds = %lor.lhs.false40.i
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1028, i32 %31)
  %cmp45.not.i = icmp eq i32 %31, 1028
  br i1 %cmp45.not.i, label %lor.lhs.false46.i, label %lor.lhs.false43.i.do.end52.i_crit_edge

lor.lhs.false43.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false43.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false46.i:                                ; preds = %lor.lhs.false43.i
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 772, i32 %33)
  %cmp48.not.i = icmp eq i32 %33, 772
  br i1 %cmp48.not.i, label %lor.lhs.false46.i.cleanup_crit_edge, label %lor.lhs.false46.i.do.end52.i_crit_edge

lor.lhs.false46.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false46.i.cleanup_crit_edge:              ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end52.i:                                       ; preds = %lor.lhs.false46.i.do.end52.i_crit_edge, %lor.lhs.false43.i.do.end52.i_crit_edge, %lor.lhs.false40.i.do.end52.i_crit_edge, %if.end37.i.do.end52.i_crit_edge
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %1, align 4
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %2, align 4
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %3, align 4
  %call58.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %27, i32 noundef %35, i32 noundef %37, i32 noundef %39) #7
  br label %do.end10

do.end10:                                         ; preds = %do.end52.i, %do.end34.i
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.8, i32 noundef 157, ptr noundef nonnull @.str.11) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %lor.lhs.false46.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end10 ], [ 0, %lor.lhs.false46.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %state) #4
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %old_state) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clip) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igt_damage_iter_no_damage_src_moved(ptr nocapture noundef readnone %ignored) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.drm_atomic_helper_damage_iter, align 4
  %clip = alloca %struct.drm_rect, align 4
  %old_state = alloca %struct.drm_plane_state, align 4
  %state = alloca %struct.drm_plane_state, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iter) #4
  %0 = call ptr @memset(ptr %iter, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clip) #4
  %1 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 1
  %2 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 2
  %3 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 3
  %4 = call ptr @memset(ptr %clip, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %old_state) #4
  %5 = getelementptr inbounds i8, ptr %old_state, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %state) #4
  %7 = call ptr @memcpy(ptr %state, ptr @__const.igt_damage_iter_damage_not_visible.state, i32 124)
  %8 = ptrtoint ptr %old_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mock_plane, ptr %old_state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mock_plane, ptr %state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %src.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20
  %10 = ptrtoint ptr %src.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %src.i, align 4
  %y13.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 1
  %11 = ptrtoint ptr %y13.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %y13.i, align 4
  %x25.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 2
  %12 = ptrtoint ptr %x25.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 67108864, ptr %x25.i, align 4
  %y27.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 3
  %13 = ptrtoint ptr %y27.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 50331648, ptr %y27.i, align 4
  %src.i21 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20
  %14 = ptrtoint ptr %src.i21 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 655360, ptr %src.i21, align 4
  %y13.i22 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 1
  %15 = ptrtoint ptr %y13.i22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 655360, ptr %y13.i22, align 4
  %x25.i23 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 2
  %16 = ptrtoint ptr %x25.i23 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 67764224, ptr %x25.i23, align 4
  %y27.i24 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 3
  %17 = ptrtoint ptr %y27.i24 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 50987008, ptr %y27.i24, align 4
  call void @drm_atomic_helper_damage_iter_init(ptr noundef nonnull %iter, ptr noundef nonnull %old_state, ptr noundef nonnull %state) #4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %num_hits.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond.while.cond_crit_edge ]
  %call = call zeroext i1 @drm_atomic_helper_damage_iter_next(ptr noundef nonnull %iter, ptr noundef nonnull %clip) #4
  %inc = add i32 %num_hits.0, 1
  br i1 %call, label %while.cond.while.cond_crit_edge, label %do.body

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

do.body:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_hits.0)
  %cmp.not = icmp eq i32 %num_hits.0, 1
  br i1 %cmp.not, label %do.body5, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 178) #7
  br label %cleanup

do.body5:                                         ; preds = %do.body
  %18 = ptrtoint ptr %y27.i24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %y27.i24, align 4
  %shr13.i = ashr i32 %19, 16
  %and16.i = and i32 %19, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.i = icmp ne i32 %and16.i, 0
  %lnot.ext21.i = zext i1 %tobool17.i to i32
  %add22.i = add nsw i32 %shr13.i, %lnot.ext21.i
  %20 = ptrtoint ptr %x25.i23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %x25.i23, align 4
  %shr7.i = ashr i32 %21, 16
  %and.i = and i32 %21, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  %add.i = add nsw i32 %shr7.i, %lnot.ext.i
  %22 = ptrtoint ptr %y13.i22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %y13.i22, align 4
  %24 = ptrtoint ptr %src.i21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %src.i21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 720895, i32 %25)
  %cmp24.i = icmp sgt i32 %25, 720895
  call void @__sanitizer_cov_trace_const_cmp4(i32 720895, i32 %23)
  %cmp26.i = icmp sgt i32 %23, 720895
  %or.cond83.i = select i1 %cmp24.i, i1 true, i1 %cmp26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1034, i32 %add.i)
  %cmp28.i = icmp slt i32 %add.i, 1034
  %or.cond84.i = select i1 %or.cond83.i, i1 true, i1 %cmp28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 778, i32 %add22.i)
  %cmp30.i = icmp slt i32 %add22.i, 778
  %or.cond85.i = select i1 %or.cond84.i, i1 true, i1 %cmp30.i
  br i1 %or.cond85.i, label %do.end34.i, label %if.end37.i

do.end34.i:                                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #7
  br label %do.end10

if.end37.i:                                       ; preds = %do.body5
  %26 = ptrtoint ptr %clip to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %clip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %27)
  %cmp39.not.i = icmp eq i32 %27, 10
  br i1 %cmp39.not.i, label %lor.lhs.false40.i, label %if.end37.i.do.end52.i_crit_edge

if.end37.i.do.end52.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false40.i:                                ; preds = %if.end37.i
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %29)
  %cmp42.not.i = icmp eq i32 %29, 10
  br i1 %cmp42.not.i, label %lor.lhs.false43.i, label %lor.lhs.false40.i.do.end52.i_crit_edge

lor.lhs.false40.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false43.i:                                ; preds = %lor.lhs.false40.i
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1034, i32 %31)
  %cmp45.not.i = icmp eq i32 %31, 1034
  br i1 %cmp45.not.i, label %lor.lhs.false46.i, label %lor.lhs.false43.i.do.end52.i_crit_edge

lor.lhs.false43.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false43.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false46.i:                                ; preds = %lor.lhs.false43.i
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 778, i32 %33)
  %cmp48.not.i = icmp eq i32 %33, 778
  br i1 %cmp48.not.i, label %lor.lhs.false46.i.cleanup_crit_edge, label %lor.lhs.false46.i.do.end52.i_crit_edge

lor.lhs.false46.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false46.i.cleanup_crit_edge:              ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end52.i:                                       ; preds = %lor.lhs.false46.i.do.end52.i_crit_edge, %lor.lhs.false43.i.do.end52.i_crit_edge, %lor.lhs.false40.i.do.end52.i_crit_edge, %if.end37.i.do.end52.i_crit_edge
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %1, align 4
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %2, align 4
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %3, align 4
  %call58.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %27, i32 noundef %35, i32 noundef %37, i32 noundef %39) #7
  br label %do.end10

do.end10:                                         ; preds = %do.end52.i, %do.end34.i
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.12, i32 noundef 179, ptr noundef nonnull @.str.15) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %lor.lhs.false46.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end10 ], [ 0, %lor.lhs.false46.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %state) #4
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %old_state) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clip) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igt_damage_iter_no_damage_fractional_src_moved(ptr nocapture noundef readnone %ignored) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.drm_atomic_helper_damage_iter, align 4
  %clip = alloca %struct.drm_rect, align 4
  %old_state = alloca %struct.drm_plane_state, align 4
  %state = alloca %struct.drm_plane_state, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iter) #4
  %0 = call ptr @memset(ptr %iter, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clip) #4
  %1 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 1
  %2 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 2
  %3 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 3
  %4 = call ptr @memset(ptr %clip, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %old_state) #4
  %5 = getelementptr inbounds i8, ptr %old_state, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %state) #4
  %7 = call ptr @memcpy(ptr %state, ptr @__const.igt_damage_iter_damage_not_visible.state, i32 124)
  %8 = ptrtoint ptr %old_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mock_plane, ptr %old_state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mock_plane, ptr %state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %src.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20
  %10 = ptrtoint ptr %src.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 262142, ptr %src.i, align 4
  %y13.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 1
  %11 = ptrtoint ptr %y13.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 262142, ptr %y13.i, align 4
  %x25.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 2
  %12 = ptrtoint ptr %x25.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 67371006, ptr %x25.i, align 4
  %y27.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 3
  %13 = ptrtoint ptr %y27.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 50593790, ptr %y27.i, align 4
  %src.i21 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20
  %14 = ptrtoint ptr %src.i21 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 262146, ptr %src.i21, align 4
  %y13.i22 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 1
  %15 = ptrtoint ptr %y13.i22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 262146, ptr %y13.i22, align 4
  %x25.i23 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 2
  %16 = ptrtoint ptr %x25.i23 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 67371010, ptr %x25.i23, align 4
  %y27.i24 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 3
  %17 = ptrtoint ptr %y27.i24 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 50593794, ptr %y27.i24, align 4
  call void @drm_atomic_helper_damage_iter_init(ptr noundef nonnull %iter, ptr noundef nonnull %old_state, ptr noundef nonnull %state) #4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %num_hits.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond.while.cond_crit_edge ]
  %call = call zeroext i1 @drm_atomic_helper_damage_iter_next(ptr noundef nonnull %iter, ptr noundef nonnull %clip) #4
  %inc = add i32 %num_hits.0, 1
  br i1 %call, label %while.cond.while.cond_crit_edge, label %do.body

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

do.body:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_hits.0)
  %cmp.not = icmp eq i32 %num_hits.0, 1
  br i1 %cmp.not, label %do.body5, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.16, i32 noundef 201) #7
  br label %cleanup

do.body5:                                         ; preds = %do.body
  %18 = ptrtoint ptr %y27.i24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %y27.i24, align 4
  %shr13.i = ashr i32 %19, 16
  %and16.i = and i32 %19, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.i = icmp ne i32 %and16.i, 0
  %lnot.ext21.i = zext i1 %tobool17.i to i32
  %add22.i = add nsw i32 %shr13.i, %lnot.ext21.i
  %20 = ptrtoint ptr %x25.i23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %x25.i23, align 4
  %shr7.i = ashr i32 %21, 16
  %and.i = and i32 %21, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  %add.i = add nsw i32 %shr7.i, %lnot.ext.i
  %22 = ptrtoint ptr %y13.i22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %y13.i22, align 4
  %24 = ptrtoint ptr %src.i21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %src.i21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 327679, i32 %25)
  %cmp24.i = icmp sgt i32 %25, 327679
  call void @__sanitizer_cov_trace_const_cmp4(i32 327679, i32 %23)
  %cmp26.i = icmp sgt i32 %23, 327679
  %or.cond83.i = select i1 %cmp24.i, i1 true, i1 %cmp26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1029, i32 %add.i)
  %cmp28.i = icmp slt i32 %add.i, 1029
  %or.cond84.i = select i1 %or.cond83.i, i1 true, i1 %cmp28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 773, i32 %add22.i)
  %cmp30.i = icmp slt i32 %add22.i, 773
  %or.cond85.i = select i1 %or.cond84.i, i1 true, i1 %cmp30.i
  br i1 %or.cond85.i, label %do.end34.i, label %if.end37.i

do.end34.i:                                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #7
  br label %do.end10

if.end37.i:                                       ; preds = %do.body5
  %26 = ptrtoint ptr %clip to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %clip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %27)
  %cmp39.not.i = icmp eq i32 %27, 4
  br i1 %cmp39.not.i, label %lor.lhs.false40.i, label %if.end37.i.do.end52.i_crit_edge

if.end37.i.do.end52.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false40.i:                                ; preds = %if.end37.i
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %29)
  %cmp42.not.i = icmp eq i32 %29, 4
  br i1 %cmp42.not.i, label %lor.lhs.false43.i, label %lor.lhs.false40.i.do.end52.i_crit_edge

lor.lhs.false40.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false43.i:                                ; preds = %lor.lhs.false40.i
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1029, i32 %31)
  %cmp45.not.i = icmp eq i32 %31, 1029
  br i1 %cmp45.not.i, label %lor.lhs.false46.i, label %lor.lhs.false43.i.do.end52.i_crit_edge

lor.lhs.false43.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false43.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false46.i:                                ; preds = %lor.lhs.false43.i
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 773, i32 %33)
  %cmp48.not.i = icmp eq i32 %33, 773
  br i1 %cmp48.not.i, label %lor.lhs.false46.i.cleanup_crit_edge, label %lor.lhs.false46.i.do.end52.i_crit_edge

lor.lhs.false46.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false46.i.cleanup_crit_edge:              ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end52.i:                                       ; preds = %lor.lhs.false46.i.do.end52.i_crit_edge, %lor.lhs.false43.i.do.end52.i_crit_edge, %lor.lhs.false40.i.do.end52.i_crit_edge, %if.end37.i.do.end52.i_crit_edge
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %1, align 4
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %2, align 4
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %3, align 4
  %call58.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %27, i32 noundef %35, i32 noundef %37, i32 noundef %39) #7
  br label %do.end10

do.end10:                                         ; preds = %do.end52.i, %do.end34.i
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.16, i32 noundef 202, ptr noundef nonnull @.str.19) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %lor.lhs.false46.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end10 ], [ 0, %lor.lhs.false46.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %state) #4
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %old_state) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clip) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igt_damage_iter_no_damage_not_visible(ptr nocapture noundef readnone %ignored) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.drm_atomic_helper_damage_iter, align 4
  %clip = alloca %struct.drm_rect, align 4
  %old_state = alloca %struct.drm_plane_state, align 4
  %state = alloca %struct.drm_plane_state, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iter) #4
  %0 = call ptr @memset(ptr %iter, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clip) #4
  %1 = call ptr @memset(ptr %clip, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %old_state) #4
  %2 = getelementptr inbounds i8, ptr %old_state, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %state) #4
  %4 = call ptr @memcpy(ptr %state, ptr @__const.igt_damage_iter_damage_not_visible.state, i32 124)
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mock_plane, ptr %state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 22
  %6 = ptrtoint ptr %visible to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %visible, align 4
  %7 = ptrtoint ptr %old_state to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mock_plane, ptr %old_state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %src.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20
  %8 = ptrtoint ptr %src.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %src.i, align 4
  %y13.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 1
  %9 = ptrtoint ptr %y13.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %y13.i, align 4
  %x25.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 2
  %10 = ptrtoint ptr %x25.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 67108864, ptr %x25.i, align 4
  %y27.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 3
  %11 = ptrtoint ptr %y27.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 50331648, ptr %y27.i, align 4
  %src.i10 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20
  %12 = ptrtoint ptr %src.i10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %src.i10, align 4
  %y13.i11 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 1
  %13 = ptrtoint ptr %y13.i11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %y13.i11, align 4
  %x25.i12 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 2
  %14 = ptrtoint ptr %x25.i12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 67108864, ptr %x25.i12, align 4
  %y27.i13 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 3
  %15 = ptrtoint ptr %y27.i13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 50331648, ptr %y27.i13, align 4
  call void @drm_atomic_helper_damage_iter_init(ptr noundef nonnull %iter, ptr noundef nonnull %old_state, ptr noundef nonnull %state) #4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %num_hits.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond.while.cond_crit_edge ]
  %call = call zeroext i1 @drm_atomic_helper_damage_iter_next(ptr noundef nonnull %iter, ptr noundef nonnull %clip) #4
  %inc = add i32 %num_hits.0, 1
  br i1 %call, label %while.cond.while.cond_crit_edge, label %do.body

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

do.body:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_hits.0)
  %cmp.not = icmp eq i32 %num_hits.0, 0
  br i1 %cmp.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 225) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %state) #4
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %old_state) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clip) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igt_damage_iter_no_damage_no_crtc(ptr nocapture noundef readnone %ignored) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.drm_atomic_helper_damage_iter, align 4
  %clip = alloca %struct.drm_rect, align 4
  %old_state = alloca %struct.drm_plane_state, align 4
  %state = alloca %struct.drm_plane_state, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iter) #4
  %0 = call ptr @memset(ptr %iter, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clip) #4
  %1 = call ptr @memset(ptr %clip, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %old_state) #4
  %2 = getelementptr inbounds i8, ptr %old_state, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %state) #4
  %4 = call ptr @memcpy(ptr %state, ptr @__const.igt_damage_iter_damage_not_visible.state, i32 124)
  %5 = ptrtoint ptr %old_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mock_plane, ptr %old_state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @mock_plane, ptr %state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 1
  %7 = ptrtoint ptr %crtc to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %crtc, align 4
  %src.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20
  %8 = ptrtoint ptr %src.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %src.i, align 4
  %y13.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 1
  %9 = ptrtoint ptr %y13.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %y13.i, align 4
  %x25.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 2
  %10 = ptrtoint ptr %x25.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 67108864, ptr %x25.i, align 4
  %y27.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 3
  %11 = ptrtoint ptr %y27.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 50331648, ptr %y27.i, align 4
  %src.i10 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20
  %12 = ptrtoint ptr %src.i10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %src.i10, align 4
  %y13.i11 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 1
  %13 = ptrtoint ptr %y13.i11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %y13.i11, align 4
  %x25.i12 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 2
  %14 = ptrtoint ptr %x25.i12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 67108864, ptr %x25.i12, align 4
  %y27.i13 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 3
  %15 = ptrtoint ptr %y27.i13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 50331648, ptr %y27.i13, align 4
  call void @drm_atomic_helper_damage_iter_init(ptr noundef nonnull %iter, ptr noundef nonnull %old_state, ptr noundef nonnull %state) #4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %num_hits.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond.while.cond_crit_edge ]
  %call = call zeroext i1 @drm_atomic_helper_damage_iter_next(ptr noundef nonnull %iter, ptr noundef nonnull %clip) #4
  %inc = add i32 %num_hits.0, 1
  br i1 %call, label %while.cond.while.cond_crit_edge, label %do.body

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

do.body:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_hits.0)
  %cmp.not = icmp eq i32 %num_hits.0, 0
  br i1 %cmp.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.22, i32 noundef 246) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %state) #4
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %old_state) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clip) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igt_damage_iter_no_damage_no_fb(ptr nocapture noundef readnone %ignored) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.drm_atomic_helper_damage_iter, align 4
  %old_state = alloca %struct.drm_plane_state, align 4
  %clip = alloca %struct.drm_rect, align 4
  %state = alloca %struct.drm_plane_state, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iter) #4
  %0 = call ptr @memset(ptr %iter, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %old_state) #4
  %1 = getelementptr inbounds i8, ptr %old_state, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clip) #4
  %3 = call ptr @memset(ptr %clip, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %state) #4
  %4 = call ptr @memset(ptr %state, i32 0, i32 124)
  %5 = getelementptr inbounds { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, [3 x i8], i32, ptr, ptr }, ptr %state, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 16 to ptr), ptr %5, align 4
  %7 = ptrtoint ptr %old_state to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mock_plane, ptr %old_state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %src.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20
  %8 = ptrtoint ptr %src.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %src.i, align 4
  %y13.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 1
  %9 = ptrtoint ptr %y13.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %y13.i, align 4
  %x25.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 2
  %10 = ptrtoint ptr %x25.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 67108864, ptr %x25.i, align 4
  %y27.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 3
  %11 = ptrtoint ptr %y27.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 50331648, ptr %y27.i, align 4
  %src.i10 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20
  %12 = ptrtoint ptr %src.i10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %src.i10, align 4
  %y13.i11 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 1
  %13 = ptrtoint ptr %y13.i11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %y13.i11, align 4
  %x25.i12 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 2
  %14 = ptrtoint ptr %x25.i12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 67108864, ptr %x25.i12, align 4
  %y27.i13 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 3
  %15 = ptrtoint ptr %y27.i13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 50331648, ptr %y27.i13, align 4
  call void @drm_atomic_helper_damage_iter_init(ptr noundef nonnull %iter, ptr noundef nonnull %old_state, ptr noundef nonnull %state) #4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %num_hits.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond.while.cond_crit_edge ]
  %call = call zeroext i1 @drm_atomic_helper_damage_iter_next(ptr noundef nonnull %iter, ptr noundef nonnull %clip) #4
  %inc = add i32 %num_hits.0, 1
  br i1 %call, label %while.cond.while.cond_crit_edge, label %do.body

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

do.body:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_hits.0)
  %cmp.not = icmp eq i32 %num_hits.0, 0
  br i1 %cmp.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.23, i32 noundef 271) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %state) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clip) #4
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %old_state) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igt_damage_iter_simple_damage(ptr nocapture noundef readnone %ignored) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.drm_atomic_helper_damage_iter, align 4
  %damage_blob = alloca %struct.drm_property_blob, align 4
  %damage = alloca %struct.drm_mode_rect, align 4
  %clip = alloca %struct.drm_rect, align 4
  %old_state = alloca %struct.drm_plane_state, align 4
  %state = alloca %struct.drm_plane_state, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iter) #4
  %0 = call ptr @memset(ptr %iter, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %damage_blob) #4
  %1 = call ptr @memset(ptr %damage_blob, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %damage) #4
  %2 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 1
  %3 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 2
  %4 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clip) #4
  %5 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 1
  %6 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 2
  %7 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 3
  %8 = call ptr @memset(ptr %clip, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %old_state) #4
  %9 = getelementptr inbounds i8, ptr %old_state, i32 4
  %10 = call ptr @memset(ptr %9, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %state) #4
  %11 = call ptr @memcpy(ptr %state, ptr @__const.igt_damage_iter_damage_not_visible.state, i32 124)
  %12 = ptrtoint ptr %old_state to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mock_plane, ptr %old_state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %13 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mock_plane, ptr %state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %src.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20
  %14 = ptrtoint ptr %src.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %src.i, align 4
  %y13.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 1
  %15 = ptrtoint ptr %y13.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %y13.i, align 4
  %x25.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 2
  %16 = ptrtoint ptr %x25.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 67108864, ptr %x25.i, align 4
  %y27.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 3
  %17 = ptrtoint ptr %y27.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 50331648, ptr %y27.i, align 4
  %src.i23 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20
  %18 = ptrtoint ptr %src.i23 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %src.i23, align 4
  %y13.i24 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 1
  %19 = ptrtoint ptr %y13.i24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %y13.i24, align 4
  %x25.i25 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 2
  %20 = ptrtoint ptr %x25.i25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 67108864, ptr %x25.i25, align 4
  %y27.i26 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 3
  %21 = ptrtoint ptr %y27.i26 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 50331648, ptr %y27.i26, align 4
  %22 = ptrtoint ptr %damage to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %damage, align 4
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %2, align 4
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1024, ptr %3, align 4
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 768, ptr %4, align 4
  %length.i = getelementptr inbounds %struct.drm_property_blob, ptr %damage_blob, i32 0, i32 4
  %26 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 16, ptr %length.i, align 4
  %data.i = getelementptr inbounds %struct.drm_property_blob, ptr %damage_blob, i32 0, i32 5
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %damage, ptr %data.i, align 4
  %fb_damage_clips.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 19
  %28 = ptrtoint ptr %fb_damage_clips.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %damage_blob, ptr %fb_damage_clips.i, align 4
  call void @drm_atomic_helper_damage_iter_init(ptr noundef nonnull %iter, ptr noundef nonnull %old_state, ptr noundef nonnull %state) #4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %num_hits.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond.while.cond_crit_edge ]
  %call = call zeroext i1 @drm_atomic_helper_damage_iter_next(ptr noundef nonnull %iter, ptr noundef nonnull %clip) #4
  %inc = add i32 %num_hits.0, 1
  br i1 %call, label %while.cond.while.cond_crit_edge, label %do.body

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

do.body:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_hits.0)
  %cmp.not = icmp eq i32 %num_hits.0, 1
  br i1 %cmp.not, label %do.body5, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 296) #7
  br label %cleanup

do.body5:                                         ; preds = %do.body
  %29 = ptrtoint ptr %y27.i26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %y27.i26, align 4
  %shr13.i = ashr i32 %30, 16
  %and16.i = and i32 %30, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.i = icmp ne i32 %and16.i, 0
  %lnot.ext21.i = zext i1 %tobool17.i to i32
  %add22.i = add nsw i32 %shr13.i, %lnot.ext21.i
  %31 = ptrtoint ptr %x25.i25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %x25.i25, align 4
  %shr7.i = ashr i32 %32, 16
  %and.i = and i32 %32, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  %add.i = add nsw i32 %shr7.i, %lnot.ext.i
  %33 = ptrtoint ptr %y13.i24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %y13.i24, align 4
  %35 = ptrtoint ptr %src.i23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %src.i23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %36)
  %cmp24.i = icmp sgt i32 %36, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %34)
  %cmp26.i = icmp sgt i32 %34, 65535
  %or.cond83.i = select i1 %cmp24.i, i1 true, i1 %cmp26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %add.i)
  %cmp28.i = icmp slt i32 %add.i, 1024
  %or.cond84.i = select i1 %or.cond83.i, i1 true, i1 %cmp28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %add22.i)
  %cmp30.i = icmp slt i32 %add22.i, 768
  %or.cond85.i = select i1 %or.cond84.i, i1 true, i1 %cmp30.i
  br i1 %or.cond85.i, label %do.end34.i, label %if.end37.i

do.end34.i:                                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #7
  br label %do.end10

if.end37.i:                                       ; preds = %do.body5
  %37 = ptrtoint ptr %clip to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %clip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp39.not.i = icmp eq i32 %38, 0
  br i1 %cmp39.not.i, label %lor.lhs.false40.i, label %if.end37.i.do.end52.i_crit_edge

if.end37.i.do.end52.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false40.i:                                ; preds = %if.end37.i
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp42.not.i = icmp eq i32 %40, 0
  br i1 %cmp42.not.i, label %lor.lhs.false43.i, label %lor.lhs.false40.i.do.end52.i_crit_edge

lor.lhs.false40.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false43.i:                                ; preds = %lor.lhs.false40.i
  %41 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %42)
  %cmp45.not.i = icmp eq i32 %42, 1024
  br i1 %cmp45.not.i, label %lor.lhs.false46.i, label %lor.lhs.false43.i.do.end52.i_crit_edge

lor.lhs.false43.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false43.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false46.i:                                ; preds = %lor.lhs.false43.i
  %43 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %44)
  %cmp48.not.i = icmp eq i32 %44, 768
  br i1 %cmp48.not.i, label %lor.lhs.false46.i.cleanup_crit_edge, label %lor.lhs.false46.i.do.end52.i_crit_edge

lor.lhs.false46.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false46.i.cleanup_crit_edge:              ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end52.i:                                       ; preds = %lor.lhs.false46.i.do.end52.i_crit_edge, %lor.lhs.false43.i.do.end52.i_crit_edge, %lor.lhs.false40.i.do.end52.i_crit_edge, %if.end37.i.do.end52.i_crit_edge
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %5, align 4
  %47 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %6, align 4
  %49 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %7, align 4
  %call58.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %38, i32 noundef %46, i32 noundef %48, i32 noundef %50) #7
  br label %do.end10

do.end10:                                         ; preds = %do.end52.i, %do.end34.i
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.25, i32 noundef 297, ptr noundef nonnull @.str.28) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %lor.lhs.false46.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end10 ], [ 0, %lor.lhs.false46.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %state) #4
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %old_state) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clip) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %damage) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %damage_blob) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igt_damage_iter_single_damage(ptr nocapture noundef readnone %ignored) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.drm_atomic_helper_damage_iter, align 4
  %damage_blob = alloca %struct.drm_property_blob, align 4
  %damage = alloca %struct.drm_mode_rect, align 4
  %clip = alloca %struct.drm_rect, align 4
  %old_state = alloca %struct.drm_plane_state, align 4
  %state = alloca %struct.drm_plane_state, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iter) #4
  %0 = call ptr @memset(ptr %iter, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %damage_blob) #4
  %1 = call ptr @memset(ptr %damage_blob, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %damage) #4
  %2 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 1
  %3 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 2
  %4 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clip) #4
  %5 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 1
  %6 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 2
  %7 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 3
  %8 = call ptr @memset(ptr %clip, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %old_state) #4
  %9 = getelementptr inbounds i8, ptr %old_state, i32 4
  %10 = call ptr @memset(ptr %9, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %state) #4
  %11 = call ptr @memcpy(ptr %state, ptr @__const.igt_damage_iter_damage_not_visible.state, i32 124)
  %12 = ptrtoint ptr %old_state to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mock_plane, ptr %old_state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %13 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mock_plane, ptr %state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %src.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20
  %14 = ptrtoint ptr %src.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %src.i, align 4
  %y13.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 1
  %15 = ptrtoint ptr %y13.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %y13.i, align 4
  %x25.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 2
  %16 = ptrtoint ptr %x25.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 67108864, ptr %x25.i, align 4
  %y27.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 3
  %17 = ptrtoint ptr %y27.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 50331648, ptr %y27.i, align 4
  %src.i23 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20
  %18 = ptrtoint ptr %src.i23 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %src.i23, align 4
  %y13.i24 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 1
  %19 = ptrtoint ptr %y13.i24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %y13.i24, align 4
  %x25.i25 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 2
  %20 = ptrtoint ptr %x25.i25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 67108864, ptr %x25.i25, align 4
  %y27.i26 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 3
  %21 = ptrtoint ptr %y27.i26 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 50331648, ptr %y27.i26, align 4
  %22 = ptrtoint ptr %damage to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 256, ptr %damage, align 4
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 192, ptr %2, align 4
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 768, ptr %3, align 4
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 576, ptr %4, align 4
  %length.i = getelementptr inbounds %struct.drm_property_blob, ptr %damage_blob, i32 0, i32 4
  %26 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 16, ptr %length.i, align 4
  %data.i = getelementptr inbounds %struct.drm_property_blob, ptr %damage_blob, i32 0, i32 5
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %damage, ptr %data.i, align 4
  %fb_damage_clips.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 19
  %28 = ptrtoint ptr %fb_damage_clips.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %damage_blob, ptr %fb_damage_clips.i, align 4
  call void @drm_atomic_helper_damage_iter_init(ptr noundef nonnull %iter, ptr noundef nonnull %old_state, ptr noundef nonnull %state) #4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %num_hits.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond.while.cond_crit_edge ]
  %call = call zeroext i1 @drm_atomic_helper_damage_iter_next(ptr noundef nonnull %iter, ptr noundef nonnull %clip) #4
  %inc = add i32 %num_hits.0, 1
  br i1 %call, label %while.cond.while.cond_crit_edge, label %do.body

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

do.body:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_hits.0)
  %cmp.not = icmp eq i32 %num_hits.0, 1
  br i1 %cmp.not, label %do.body5, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.29, i32 noundef 321) #7
  br label %cleanup

do.body5:                                         ; preds = %do.body
  %29 = ptrtoint ptr %y27.i26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %y27.i26, align 4
  %shr13.i = ashr i32 %30, 16
  %and16.i = and i32 %30, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.i = icmp ne i32 %and16.i, 0
  %lnot.ext21.i = zext i1 %tobool17.i to i32
  %add22.i = add nsw i32 %shr13.i, %lnot.ext21.i
  %31 = ptrtoint ptr %x25.i25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %x25.i25, align 4
  %shr7.i = ashr i32 %32, 16
  %and.i = and i32 %32, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  %add.i = add nsw i32 %shr7.i, %lnot.ext.i
  %33 = ptrtoint ptr %y13.i24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %y13.i24, align 4
  %35 = ptrtoint ptr %src.i23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %src.i23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16842751, i32 %36)
  %cmp24.i = icmp sgt i32 %36, 16842751
  call void @__sanitizer_cov_trace_const_cmp4(i32 12648447, i32 %34)
  %cmp26.i = icmp sgt i32 %34, 12648447
  %or.cond83.i = select i1 %cmp24.i, i1 true, i1 %cmp26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %add.i)
  %cmp28.i = icmp slt i32 %add.i, 768
  %or.cond84.i = select i1 %or.cond83.i, i1 true, i1 %cmp28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 576, i32 %add22.i)
  %cmp30.i = icmp slt i32 %add22.i, 576
  %or.cond85.i = select i1 %or.cond84.i, i1 true, i1 %cmp30.i
  br i1 %or.cond85.i, label %do.end34.i, label %if.end37.i

do.end34.i:                                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #7
  br label %do.end10

if.end37.i:                                       ; preds = %do.body5
  %37 = ptrtoint ptr %clip to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %clip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %38)
  %cmp39.not.i = icmp eq i32 %38, 256
  br i1 %cmp39.not.i, label %lor.lhs.false40.i, label %if.end37.i.do.end52.i_crit_edge

if.end37.i.do.end52.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false40.i:                                ; preds = %if.end37.i
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %40)
  %cmp42.not.i = icmp eq i32 %40, 192
  br i1 %cmp42.not.i, label %lor.lhs.false43.i, label %lor.lhs.false40.i.do.end52.i_crit_edge

lor.lhs.false40.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false43.i:                                ; preds = %lor.lhs.false40.i
  %41 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %42)
  %cmp45.not.i = icmp eq i32 %42, 768
  br i1 %cmp45.not.i, label %lor.lhs.false46.i, label %lor.lhs.false43.i.do.end52.i_crit_edge

lor.lhs.false43.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false43.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false46.i:                                ; preds = %lor.lhs.false43.i
  %43 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 576, i32 %44)
  %cmp48.not.i = icmp eq i32 %44, 576
  br i1 %cmp48.not.i, label %lor.lhs.false46.i.cleanup_crit_edge, label %lor.lhs.false46.i.do.end52.i_crit_edge

lor.lhs.false46.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false46.i.cleanup_crit_edge:              ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end52.i:                                       ; preds = %lor.lhs.false46.i.do.end52.i_crit_edge, %lor.lhs.false43.i.do.end52.i_crit_edge, %lor.lhs.false40.i.do.end52.i_crit_edge, %if.end37.i.do.end52.i_crit_edge
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %5, align 4
  %47 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %6, align 4
  %49 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %7, align 4
  %call58.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %38, i32 noundef %46, i32 noundef %48, i32 noundef %50) #7
  br label %do.end10

do.end10:                                         ; preds = %do.end52.i, %do.end34.i
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.29, i32 noundef 322, ptr noundef nonnull @.str.32) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %lor.lhs.false46.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end10 ], [ 0, %lor.lhs.false46.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %state) #4
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %old_state) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clip) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %damage) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %damage_blob) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igt_damage_iter_single_damage_intersect_src(ptr nocapture noundef readnone %ignored) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.drm_atomic_helper_damage_iter, align 4
  %damage_blob = alloca %struct.drm_property_blob, align 4
  %damage = alloca %struct.drm_mode_rect, align 4
  %clip = alloca %struct.drm_rect, align 4
  %old_state = alloca %struct.drm_plane_state, align 4
  %state = alloca %struct.drm_plane_state, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iter) #4
  %0 = call ptr @memset(ptr %iter, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %damage_blob) #4
  %1 = call ptr @memset(ptr %damage_blob, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %damage) #4
  %2 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 1
  %3 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 2
  %4 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clip) #4
  %5 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 1
  %6 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 2
  %7 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 3
  %8 = call ptr @memset(ptr %clip, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %old_state) #4
  %9 = getelementptr inbounds i8, ptr %old_state, i32 4
  %10 = call ptr @memset(ptr %9, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %state) #4
  %11 = call ptr @memcpy(ptr %state, ptr @__const.igt_damage_iter_damage_not_visible.state, i32 124)
  %12 = ptrtoint ptr %old_state to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mock_plane, ptr %old_state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %13 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mock_plane, ptr %state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %src.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20
  %14 = ptrtoint ptr %src.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %src.i, align 4
  %y13.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 1
  %15 = ptrtoint ptr %y13.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %y13.i, align 4
  %x25.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 2
  %16 = ptrtoint ptr %x25.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 67108864, ptr %x25.i, align 4
  %y27.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 3
  %17 = ptrtoint ptr %y27.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 50331648, ptr %y27.i, align 4
  %src.i23 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20
  %18 = ptrtoint ptr %src.i23 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %src.i23, align 4
  %y13.i24 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 1
  %19 = ptrtoint ptr %y13.i24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %y13.i24, align 4
  %x25.i25 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 2
  %20 = ptrtoint ptr %x25.i25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 67108864, ptr %x25.i25, align 4
  %y27.i26 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 3
  %21 = ptrtoint ptr %y27.i26 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 50331648, ptr %y27.i26, align 4
  %22 = ptrtoint ptr %damage to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 256, ptr %damage, align 4
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 192, ptr %2, align 4
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1360, ptr %3, align 4
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 768, ptr %4, align 4
  %length.i = getelementptr inbounds %struct.drm_property_blob, ptr %damage_blob, i32 0, i32 4
  %26 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 16, ptr %length.i, align 4
  %data.i = getelementptr inbounds %struct.drm_property_blob, ptr %damage_blob, i32 0, i32 5
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %damage, ptr %data.i, align 4
  %fb_damage_clips.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 19
  %28 = ptrtoint ptr %fb_damage_clips.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %damage_blob, ptr %fb_damage_clips.i, align 4
  call void @drm_atomic_helper_damage_iter_init(ptr noundef nonnull %iter, ptr noundef nonnull %old_state, ptr noundef nonnull %state) #4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %num_hits.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond.while.cond_crit_edge ]
  %call = call zeroext i1 @drm_atomic_helper_damage_iter_next(ptr noundef nonnull %iter, ptr noundef nonnull %clip) #4
  %inc = add i32 %num_hits.0, 1
  br i1 %call, label %while.cond.while.cond_crit_edge, label %do.body

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

do.body:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_hits.0)
  %cmp.not = icmp eq i32 %num_hits.0, 1
  br i1 %cmp.not, label %do.body5, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef 347) #7
  br label %cleanup

do.body5:                                         ; preds = %do.body
  %29 = ptrtoint ptr %y27.i26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %y27.i26, align 4
  %shr13.i = ashr i32 %30, 16
  %and16.i = and i32 %30, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.i = icmp ne i32 %and16.i, 0
  %lnot.ext21.i = zext i1 %tobool17.i to i32
  %add22.i = add nsw i32 %shr13.i, %lnot.ext21.i
  %31 = ptrtoint ptr %x25.i25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %x25.i25, align 4
  %shr7.i = ashr i32 %32, 16
  %and.i = and i32 %32, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  %add.i = add nsw i32 %shr7.i, %lnot.ext.i
  %33 = ptrtoint ptr %y13.i24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %y13.i24, align 4
  %35 = ptrtoint ptr %src.i23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %src.i23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16842751, i32 %36)
  %cmp24.i = icmp sgt i32 %36, 16842751
  call void @__sanitizer_cov_trace_const_cmp4(i32 12648447, i32 %34)
  %cmp26.i = icmp sgt i32 %34, 12648447
  %or.cond83.i = select i1 %cmp24.i, i1 true, i1 %cmp26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %add.i)
  %cmp28.i = icmp slt i32 %add.i, 1024
  %or.cond84.i = select i1 %or.cond83.i, i1 true, i1 %cmp28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %add22.i)
  %cmp30.i = icmp slt i32 %add22.i, 768
  %or.cond85.i = select i1 %or.cond84.i, i1 true, i1 %cmp30.i
  br i1 %or.cond85.i, label %do.end34.i, label %if.end37.i

do.end34.i:                                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #7
  br label %do.end10

if.end37.i:                                       ; preds = %do.body5
  %37 = ptrtoint ptr %clip to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %clip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %38)
  %cmp39.not.i = icmp eq i32 %38, 256
  br i1 %cmp39.not.i, label %lor.lhs.false40.i, label %if.end37.i.do.end52.i_crit_edge

if.end37.i.do.end52.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false40.i:                                ; preds = %if.end37.i
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %40)
  %cmp42.not.i = icmp eq i32 %40, 192
  br i1 %cmp42.not.i, label %lor.lhs.false43.i, label %lor.lhs.false40.i.do.end52.i_crit_edge

lor.lhs.false40.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false43.i:                                ; preds = %lor.lhs.false40.i
  %41 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %42)
  %cmp45.not.i = icmp eq i32 %42, 1024
  br i1 %cmp45.not.i, label %lor.lhs.false46.i, label %lor.lhs.false43.i.do.end52.i_crit_edge

lor.lhs.false43.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false43.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false46.i:                                ; preds = %lor.lhs.false43.i
  %43 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %44)
  %cmp48.not.i = icmp eq i32 %44, 768
  br i1 %cmp48.not.i, label %lor.lhs.false46.i.cleanup_crit_edge, label %lor.lhs.false46.i.do.end52.i_crit_edge

lor.lhs.false46.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false46.i.cleanup_crit_edge:              ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end52.i:                                       ; preds = %lor.lhs.false46.i.do.end52.i_crit_edge, %lor.lhs.false43.i.do.end52.i_crit_edge, %lor.lhs.false40.i.do.end52.i_crit_edge, %if.end37.i.do.end52.i_crit_edge
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %5, align 4
  %47 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %6, align 4
  %49 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %7, align 4
  %call58.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %38, i32 noundef %46, i32 noundef %48, i32 noundef %50) #7
  br label %do.end10

do.end10:                                         ; preds = %do.end52.i, %do.end34.i
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.34, i32 noundef 348, ptr noundef nonnull @.str.37) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %lor.lhs.false46.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end10 ], [ 0, %lor.lhs.false46.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %state) #4
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %old_state) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clip) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %damage) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %damage_blob) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igt_damage_iter_single_damage_outside_src(ptr nocapture noundef readnone %ignored) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.drm_atomic_helper_damage_iter, align 4
  %damage_blob = alloca %struct.drm_property_blob, align 4
  %damage = alloca %struct.drm_mode_rect, align 4
  %clip = alloca %struct.drm_rect, align 4
  %old_state = alloca %struct.drm_plane_state, align 4
  %state = alloca %struct.drm_plane_state, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iter) #4
  %0 = call ptr @memset(ptr %iter, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %damage_blob) #4
  %1 = call ptr @memset(ptr %damage_blob, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %damage) #4
  %2 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 1
  %3 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 2
  %4 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clip) #4
  %5 = call ptr @memset(ptr %clip, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %old_state) #4
  %6 = getelementptr inbounds i8, ptr %old_state, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %state) #4
  %8 = call ptr @memcpy(ptr %state, ptr @__const.igt_damage_iter_damage_not_visible.state, i32 124)
  %9 = ptrtoint ptr %old_state to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mock_plane, ptr %old_state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mock_plane, ptr %state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %src.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20
  %11 = ptrtoint ptr %src.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %src.i, align 4
  %y13.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 1
  %12 = ptrtoint ptr %y13.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %y13.i, align 4
  %x25.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 2
  %13 = ptrtoint ptr %x25.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 67108864, ptr %x25.i, align 4
  %y27.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 3
  %14 = ptrtoint ptr %y27.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 50331648, ptr %y27.i, align 4
  %src.i12 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20
  %15 = ptrtoint ptr %src.i12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %src.i12, align 4
  %y13.i13 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 1
  %16 = ptrtoint ptr %y13.i13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %y13.i13, align 4
  %x25.i14 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 2
  %17 = ptrtoint ptr %x25.i14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 67108864, ptr %x25.i14, align 4
  %y27.i15 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 3
  %18 = ptrtoint ptr %y27.i15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 50331648, ptr %y27.i15, align 4
  %19 = ptrtoint ptr %damage to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1360, ptr %damage, align 4
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1360, ptr %2, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1380, ptr %3, align 4
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1380, ptr %4, align 4
  %length.i = getelementptr inbounds %struct.drm_property_blob, ptr %damage_blob, i32 0, i32 4
  %23 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16, ptr %length.i, align 4
  %data.i = getelementptr inbounds %struct.drm_property_blob, ptr %damage_blob, i32 0, i32 5
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %damage, ptr %data.i, align 4
  %fb_damage_clips.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 19
  %25 = ptrtoint ptr %fb_damage_clips.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %damage_blob, ptr %fb_damage_clips.i, align 4
  call void @drm_atomic_helper_damage_iter_init(ptr noundef nonnull %iter, ptr noundef nonnull %old_state, ptr noundef nonnull %state) #4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %num_hits.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond.while.cond_crit_edge ]
  %call = call zeroext i1 @drm_atomic_helper_damage_iter_next(ptr noundef nonnull %iter, ptr noundef nonnull %clip) #4
  %inc = add i32 %num_hits.0, 1
  br i1 %call, label %while.cond.while.cond_crit_edge, label %do.body

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

do.body:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_hits.0)
  %cmp.not = icmp eq i32 %num_hits.0, 0
  br i1 %cmp.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.38, i32 noundef 373) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %state) #4
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %old_state) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clip) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %damage) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %damage_blob) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igt_damage_iter_single_damage_fractional_src(ptr nocapture noundef readnone %ignored) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.drm_atomic_helper_damage_iter, align 4
  %damage_blob = alloca %struct.drm_property_blob, align 4
  %damage = alloca %struct.drm_mode_rect, align 4
  %clip = alloca %struct.drm_rect, align 4
  %old_state = alloca %struct.drm_plane_state, align 4
  %state = alloca %struct.drm_plane_state, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iter) #4
  %0 = call ptr @memset(ptr %iter, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %damage_blob) #4
  %1 = call ptr @memset(ptr %damage_blob, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %damage) #4
  %2 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 1
  %3 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 2
  %4 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clip) #4
  %5 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 1
  %6 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 2
  %7 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 3
  %8 = call ptr @memset(ptr %clip, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %old_state) #4
  %9 = getelementptr inbounds i8, ptr %old_state, i32 4
  %10 = call ptr @memset(ptr %9, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %state) #4
  %11 = call ptr @memcpy(ptr %state, ptr @__const.igt_damage_iter_damage_not_visible.state, i32 124)
  %12 = ptrtoint ptr %old_state to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mock_plane, ptr %old_state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %13 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mock_plane, ptr %state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %src.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20
  %14 = ptrtoint ptr %src.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 262146, ptr %src.i, align 4
  %y13.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 1
  %15 = ptrtoint ptr %y13.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 262146, ptr %y13.i, align 4
  %x25.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 2
  %16 = ptrtoint ptr %x25.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 67371010, ptr %x25.i, align 4
  %y27.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 3
  %17 = ptrtoint ptr %y27.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 50593794, ptr %y27.i, align 4
  %src.i23 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20
  %18 = ptrtoint ptr %src.i23 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 262146, ptr %src.i23, align 4
  %y13.i24 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 1
  %19 = ptrtoint ptr %y13.i24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 262146, ptr %y13.i24, align 4
  %x25.i25 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 2
  %20 = ptrtoint ptr %x25.i25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 67371010, ptr %x25.i25, align 4
  %y27.i26 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 3
  %21 = ptrtoint ptr %y27.i26 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 50593794, ptr %y27.i26, align 4
  %22 = ptrtoint ptr %damage to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 10, ptr %damage, align 4
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 10, ptr %2, align 4
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 256, ptr %3, align 4
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 330, ptr %4, align 4
  %length.i = getelementptr inbounds %struct.drm_property_blob, ptr %damage_blob, i32 0, i32 4
  %26 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 16, ptr %length.i, align 4
  %data.i = getelementptr inbounds %struct.drm_property_blob, ptr %damage_blob, i32 0, i32 5
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %damage, ptr %data.i, align 4
  %fb_damage_clips.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 19
  %28 = ptrtoint ptr %fb_damage_clips.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %damage_blob, ptr %fb_damage_clips.i, align 4
  call void @drm_atomic_helper_damage_iter_init(ptr noundef nonnull %iter, ptr noundef nonnull %old_state, ptr noundef nonnull %state) #4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %num_hits.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond.while.cond_crit_edge ]
  %call = call zeroext i1 @drm_atomic_helper_damage_iter_next(ptr noundef nonnull %iter, ptr noundef nonnull %clip) #4
  %inc = add i32 %num_hits.0, 1
  br i1 %call, label %while.cond.while.cond_crit_edge, label %do.body

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

do.body:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_hits.0)
  %cmp.not = icmp eq i32 %num_hits.0, 1
  br i1 %cmp.not, label %do.body5, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.39, i32 noundef 400) #7
  br label %cleanup

do.body5:                                         ; preds = %do.body
  %29 = ptrtoint ptr %y27.i26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %y27.i26, align 4
  %shr13.i = ashr i32 %30, 16
  %and16.i = and i32 %30, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.i = icmp ne i32 %and16.i, 0
  %lnot.ext21.i = zext i1 %tobool17.i to i32
  %add22.i = add nsw i32 %shr13.i, %lnot.ext21.i
  %31 = ptrtoint ptr %x25.i25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %x25.i25, align 4
  %shr7.i = ashr i32 %32, 16
  %and.i = and i32 %32, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  %add.i = add nsw i32 %shr7.i, %lnot.ext.i
  %33 = ptrtoint ptr %y13.i24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %y13.i24, align 4
  %35 = ptrtoint ptr %src.i23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %src.i23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 720895, i32 %36)
  %cmp24.i = icmp sgt i32 %36, 720895
  call void @__sanitizer_cov_trace_const_cmp4(i32 720895, i32 %34)
  %cmp26.i = icmp sgt i32 %34, 720895
  %or.cond83.i = select i1 %cmp24.i, i1 true, i1 %cmp26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add.i)
  %cmp28.i = icmp slt i32 %add.i, 256
  %or.cond84.i = select i1 %or.cond83.i, i1 true, i1 %cmp28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 330, i32 %add22.i)
  %cmp30.i = icmp slt i32 %add22.i, 330
  %or.cond85.i = select i1 %or.cond84.i, i1 true, i1 %cmp30.i
  br i1 %or.cond85.i, label %do.end34.i, label %if.end37.i

do.end34.i:                                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #7
  br label %do.end10

if.end37.i:                                       ; preds = %do.body5
  %37 = ptrtoint ptr %clip to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %clip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %38)
  %cmp39.not.i = icmp eq i32 %38, 10
  br i1 %cmp39.not.i, label %lor.lhs.false40.i, label %if.end37.i.do.end52.i_crit_edge

if.end37.i.do.end52.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false40.i:                                ; preds = %if.end37.i
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %40)
  %cmp42.not.i = icmp eq i32 %40, 10
  br i1 %cmp42.not.i, label %lor.lhs.false43.i, label %lor.lhs.false40.i.do.end52.i_crit_edge

lor.lhs.false40.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false43.i:                                ; preds = %lor.lhs.false40.i
  %41 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %42)
  %cmp45.not.i = icmp eq i32 %42, 256
  br i1 %cmp45.not.i, label %lor.lhs.false46.i, label %lor.lhs.false43.i.do.end52.i_crit_edge

lor.lhs.false43.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false43.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false46.i:                                ; preds = %lor.lhs.false43.i
  %43 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 330, i32 %44)
  %cmp48.not.i = icmp eq i32 %44, 330
  br i1 %cmp48.not.i, label %lor.lhs.false46.i.cleanup_crit_edge, label %lor.lhs.false46.i.do.end52.i_crit_edge

lor.lhs.false46.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false46.i.cleanup_crit_edge:              ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end52.i:                                       ; preds = %lor.lhs.false46.i.do.end52.i_crit_edge, %lor.lhs.false43.i.do.end52.i_crit_edge, %lor.lhs.false40.i.do.end52.i_crit_edge, %if.end37.i.do.end52.i_crit_edge
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %5, align 4
  %47 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %6, align 4
  %49 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %7, align 4
  %call58.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %38, i32 noundef %46, i32 noundef %48, i32 noundef %50) #7
  br label %do.end10

do.end10:                                         ; preds = %do.end52.i, %do.end34.i
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.39, i32 noundef 401, ptr noundef nonnull @.str.42) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %lor.lhs.false46.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end10 ], [ 0, %lor.lhs.false46.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %state) #4
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %old_state) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clip) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %damage) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %damage_blob) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igt_damage_iter_single_damage_intersect_fractional_src(ptr nocapture noundef readnone %ignored) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.drm_atomic_helper_damage_iter, align 4
  %damage_blob = alloca %struct.drm_property_blob, align 4
  %damage = alloca %struct.drm_mode_rect, align 4
  %clip = alloca %struct.drm_rect, align 4
  %old_state = alloca %struct.drm_plane_state, align 4
  %state = alloca %struct.drm_plane_state, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iter) #4
  %0 = call ptr @memset(ptr %iter, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %damage_blob) #4
  %1 = call ptr @memset(ptr %damage_blob, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %damage) #4
  %2 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 1
  %3 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 2
  %4 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clip) #4
  %5 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 1
  %6 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 2
  %7 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 3
  %8 = call ptr @memset(ptr %clip, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %old_state) #4
  %9 = getelementptr inbounds i8, ptr %old_state, i32 4
  %10 = call ptr @memset(ptr %9, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %state) #4
  %11 = call ptr @memcpy(ptr %state, ptr @__const.igt_damage_iter_damage_not_visible.state, i32 124)
  %12 = ptrtoint ptr %old_state to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mock_plane, ptr %old_state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %13 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mock_plane, ptr %state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %src.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20
  %14 = ptrtoint ptr %src.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 262146, ptr %src.i, align 4
  %y13.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 1
  %15 = ptrtoint ptr %y13.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 262146, ptr %y13.i, align 4
  %x25.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 2
  %16 = ptrtoint ptr %x25.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 67371010, ptr %x25.i, align 4
  %y27.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 3
  %17 = ptrtoint ptr %y27.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 50593794, ptr %y27.i, align 4
  %src.i23 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20
  %18 = ptrtoint ptr %src.i23 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 262146, ptr %src.i23, align 4
  %y13.i24 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 1
  %19 = ptrtoint ptr %y13.i24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 262146, ptr %y13.i24, align 4
  %x25.i25 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 2
  %20 = ptrtoint ptr %x25.i25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 67371010, ptr %x25.i25, align 4
  %y27.i26 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 3
  %21 = ptrtoint ptr %y27.i26 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 50593794, ptr %y27.i26, align 4
  %22 = ptrtoint ptr %damage to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 10, ptr %damage, align 4
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %2, align 4
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1360, ptr %3, align 4
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 330, ptr %4, align 4
  %length.i = getelementptr inbounds %struct.drm_property_blob, ptr %damage_blob, i32 0, i32 4
  %26 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 16, ptr %length.i, align 4
  %data.i = getelementptr inbounds %struct.drm_property_blob, ptr %damage_blob, i32 0, i32 5
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %damage, ptr %data.i, align 4
  %fb_damage_clips.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 19
  %28 = ptrtoint ptr %fb_damage_clips.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %damage_blob, ptr %fb_damage_clips.i, align 4
  call void @drm_atomic_helper_damage_iter_init(ptr noundef nonnull %iter, ptr noundef nonnull %old_state, ptr noundef nonnull %state) #4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %num_hits.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond.while.cond_crit_edge ]
  %call = call zeroext i1 @drm_atomic_helper_damage_iter_next(ptr noundef nonnull %iter, ptr noundef nonnull %clip) #4
  %inc = add i32 %num_hits.0, 1
  br i1 %call, label %while.cond.while.cond_crit_edge, label %do.body

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

do.body:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_hits.0)
  %cmp.not = icmp eq i32 %num_hits.0, 1
  br i1 %cmp.not, label %do.body5, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 429) #7
  br label %cleanup

do.body5:                                         ; preds = %do.body
  %29 = ptrtoint ptr %y27.i26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %y27.i26, align 4
  %shr13.i = ashr i32 %30, 16
  %and16.i = and i32 %30, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.i = icmp ne i32 %and16.i, 0
  %lnot.ext21.i = zext i1 %tobool17.i to i32
  %add22.i = add nsw i32 %shr13.i, %lnot.ext21.i
  %31 = ptrtoint ptr %x25.i25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %x25.i25, align 4
  %shr7.i = ashr i32 %32, 16
  %and.i = and i32 %32, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  %add.i = add nsw i32 %shr7.i, %lnot.ext.i
  %33 = ptrtoint ptr %y13.i24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %y13.i24, align 4
  %35 = ptrtoint ptr %src.i23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %src.i23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 720895, i32 %36)
  %cmp24.i = icmp sgt i32 %36, 720895
  call void @__sanitizer_cov_trace_const_cmp4(i32 327679, i32 %34)
  %cmp26.i = icmp sgt i32 %34, 327679
  %or.cond83.i = select i1 %cmp24.i, i1 true, i1 %cmp26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1029, i32 %add.i)
  %cmp28.i = icmp slt i32 %add.i, 1029
  %or.cond84.i = select i1 %or.cond83.i, i1 true, i1 %cmp28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 330, i32 %add22.i)
  %cmp30.i = icmp slt i32 %add22.i, 330
  %or.cond85.i = select i1 %or.cond84.i, i1 true, i1 %cmp30.i
  br i1 %or.cond85.i, label %do.end34.i, label %if.end37.i

do.end34.i:                                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #7
  br label %do.end10

if.end37.i:                                       ; preds = %do.body5
  %37 = ptrtoint ptr %clip to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %clip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %38)
  %cmp39.not.i = icmp eq i32 %38, 10
  br i1 %cmp39.not.i, label %lor.lhs.false40.i, label %if.end37.i.do.end52.i_crit_edge

if.end37.i.do.end52.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false40.i:                                ; preds = %if.end37.i
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %40)
  %cmp42.not.i = icmp eq i32 %40, 4
  br i1 %cmp42.not.i, label %lor.lhs.false43.i, label %lor.lhs.false40.i.do.end52.i_crit_edge

lor.lhs.false40.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false43.i:                                ; preds = %lor.lhs.false40.i
  %41 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1029, i32 %42)
  %cmp45.not.i = icmp eq i32 %42, 1029
  br i1 %cmp45.not.i, label %lor.lhs.false46.i, label %lor.lhs.false43.i.do.end52.i_crit_edge

lor.lhs.false43.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false43.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false46.i:                                ; preds = %lor.lhs.false43.i
  %43 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 330, i32 %44)
  %cmp48.not.i = icmp eq i32 %44, 330
  br i1 %cmp48.not.i, label %lor.lhs.false46.i.cleanup_crit_edge, label %lor.lhs.false46.i.do.end52.i_crit_edge

lor.lhs.false46.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false46.i.cleanup_crit_edge:              ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end52.i:                                       ; preds = %lor.lhs.false46.i.do.end52.i_crit_edge, %lor.lhs.false43.i.do.end52.i_crit_edge, %lor.lhs.false40.i.do.end52.i_crit_edge, %if.end37.i.do.end52.i_crit_edge
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %5, align 4
  %47 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %6, align 4
  %49 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %7, align 4
  %call58.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %38, i32 noundef %46, i32 noundef %48, i32 noundef %50) #7
  br label %do.end10

do.end10:                                         ; preds = %do.end52.i, %do.end34.i
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.44, i32 noundef 430, ptr noundef nonnull @.str.47) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %lor.lhs.false46.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end10 ], [ 0, %lor.lhs.false46.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %state) #4
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %old_state) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clip) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %damage) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %damage_blob) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igt_damage_iter_single_damage_outside_fractional_src(ptr nocapture noundef readnone %ignored) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.drm_atomic_helper_damage_iter, align 4
  %damage_blob = alloca %struct.drm_property_blob, align 4
  %damage = alloca %struct.drm_mode_rect, align 4
  %clip = alloca %struct.drm_rect, align 4
  %old_state = alloca %struct.drm_plane_state, align 4
  %state = alloca %struct.drm_plane_state, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iter) #4
  %0 = call ptr @memset(ptr %iter, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %damage_blob) #4
  %1 = call ptr @memset(ptr %damage_blob, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %damage) #4
  %2 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 1
  %3 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 2
  %4 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clip) #4
  %5 = call ptr @memset(ptr %clip, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %old_state) #4
  %6 = getelementptr inbounds i8, ptr %old_state, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %state) #4
  %8 = call ptr @memcpy(ptr %state, ptr @__const.igt_damage_iter_damage_not_visible.state, i32 124)
  %9 = ptrtoint ptr %old_state to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mock_plane, ptr %old_state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mock_plane, ptr %state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %src.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20
  %11 = ptrtoint ptr %src.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 262146, ptr %src.i, align 4
  %y13.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 1
  %12 = ptrtoint ptr %y13.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 262146, ptr %y13.i, align 4
  %x25.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 2
  %13 = ptrtoint ptr %x25.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 67371010, ptr %x25.i, align 4
  %y27.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 3
  %14 = ptrtoint ptr %y27.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 50593794, ptr %y27.i, align 4
  %src.i12 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20
  %15 = ptrtoint ptr %src.i12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 262146, ptr %src.i12, align 4
  %y13.i13 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 1
  %16 = ptrtoint ptr %y13.i13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 262146, ptr %y13.i13, align 4
  %x25.i14 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 2
  %17 = ptrtoint ptr %x25.i14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 67371010, ptr %x25.i14, align 4
  %y27.i15 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 3
  %18 = ptrtoint ptr %y27.i15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 50593794, ptr %y27.i15, align 4
  %19 = ptrtoint ptr %damage to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1360, ptr %damage, align 4
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1360, ptr %2, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1380, ptr %3, align 4
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1380, ptr %4, align 4
  %length.i = getelementptr inbounds %struct.drm_property_blob, ptr %damage_blob, i32 0, i32 4
  %23 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16, ptr %length.i, align 4
  %data.i = getelementptr inbounds %struct.drm_property_blob, ptr %damage_blob, i32 0, i32 5
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %damage, ptr %data.i, align 4
  %fb_damage_clips.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 19
  %25 = ptrtoint ptr %fb_damage_clips.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %damage_blob, ptr %fb_damage_clips.i, align 4
  call void @drm_atomic_helper_damage_iter_init(ptr noundef nonnull %iter, ptr noundef nonnull %old_state, ptr noundef nonnull %state) #4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %num_hits.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond.while.cond_crit_edge ]
  %call = call zeroext i1 @drm_atomic_helper_damage_iter_next(ptr noundef nonnull %iter, ptr noundef nonnull %clip) #4
  %inc = add i32 %num_hits.0, 1
  br i1 %call, label %while.cond.while.cond_crit_edge, label %do.body

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

do.body:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_hits.0)
  %cmp.not = icmp eq i32 %num_hits.0, 0
  br i1 %cmp.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.48, i32 noundef 458) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %state) #4
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %old_state) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clip) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %damage) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %damage_blob) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igt_damage_iter_single_damage_src_moved(ptr nocapture noundef readnone %ignored) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.drm_atomic_helper_damage_iter, align 4
  %damage_blob = alloca %struct.drm_property_blob, align 4
  %damage = alloca %struct.drm_mode_rect, align 4
  %clip = alloca %struct.drm_rect, align 4
  %old_state = alloca %struct.drm_plane_state, align 4
  %state = alloca %struct.drm_plane_state, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iter) #4
  %0 = call ptr @memset(ptr %iter, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %damage_blob) #4
  %1 = call ptr @memset(ptr %damage_blob, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %damage) #4
  %2 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 1
  %3 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 2
  %4 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clip) #4
  %5 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 1
  %6 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 2
  %7 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 3
  %8 = call ptr @memset(ptr %clip, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %old_state) #4
  %9 = getelementptr inbounds i8, ptr %old_state, i32 4
  %10 = call ptr @memset(ptr %9, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %state) #4
  %11 = call ptr @memcpy(ptr %state, ptr @__const.igt_damage_iter_damage_not_visible.state, i32 124)
  %12 = ptrtoint ptr %old_state to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mock_plane, ptr %old_state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %13 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mock_plane, ptr %state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %src.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20
  %14 = ptrtoint ptr %src.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %src.i, align 4
  %y13.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 1
  %15 = ptrtoint ptr %y13.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %y13.i, align 4
  %x25.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 2
  %16 = ptrtoint ptr %x25.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 67108864, ptr %x25.i, align 4
  %y27.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 3
  %17 = ptrtoint ptr %y27.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 50331648, ptr %y27.i, align 4
  %src.i23 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20
  %18 = ptrtoint ptr %src.i23 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 655360, ptr %src.i23, align 4
  %y13.i24 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 1
  %19 = ptrtoint ptr %y13.i24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 655360, ptr %y13.i24, align 4
  %x25.i25 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 2
  %20 = ptrtoint ptr %x25.i25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 67764224, ptr %x25.i25, align 4
  %y27.i26 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 3
  %21 = ptrtoint ptr %y27.i26 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 50987008, ptr %y27.i26, align 4
  %22 = ptrtoint ptr %damage to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 20, ptr %damage, align 4
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 30, ptr %2, align 4
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 256, ptr %3, align 4
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 256, ptr %4, align 4
  %length.i = getelementptr inbounds %struct.drm_property_blob, ptr %damage_blob, i32 0, i32 4
  %26 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 16, ptr %length.i, align 4
  %data.i = getelementptr inbounds %struct.drm_property_blob, ptr %damage_blob, i32 0, i32 5
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %damage, ptr %data.i, align 4
  %fb_damage_clips.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 19
  %28 = ptrtoint ptr %fb_damage_clips.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %damage_blob, ptr %fb_damage_clips.i, align 4
  call void @drm_atomic_helper_damage_iter_init(ptr noundef nonnull %iter, ptr noundef nonnull %old_state, ptr noundef nonnull %state) #4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %num_hits.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond.while.cond_crit_edge ]
  %call = call zeroext i1 @drm_atomic_helper_damage_iter_next(ptr noundef nonnull %iter, ptr noundef nonnull %clip) #4
  %inc = add i32 %num_hits.0, 1
  br i1 %call, label %while.cond.while.cond_crit_edge, label %do.body

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

do.body:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_hits.0)
  %cmp.not = icmp eq i32 %num_hits.0, 1
  br i1 %cmp.not, label %do.body5, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.49, i32 noundef 484) #7
  br label %cleanup

do.body5:                                         ; preds = %do.body
  %29 = ptrtoint ptr %y27.i26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %y27.i26, align 4
  %shr13.i = ashr i32 %30, 16
  %and16.i = and i32 %30, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.i = icmp ne i32 %and16.i, 0
  %lnot.ext21.i = zext i1 %tobool17.i to i32
  %add22.i = add nsw i32 %shr13.i, %lnot.ext21.i
  %31 = ptrtoint ptr %x25.i25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %x25.i25, align 4
  %shr7.i = ashr i32 %32, 16
  %and.i = and i32 %32, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  %add.i = add nsw i32 %shr7.i, %lnot.ext.i
  %33 = ptrtoint ptr %y13.i24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %y13.i24, align 4
  %35 = ptrtoint ptr %src.i23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %src.i23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 720895, i32 %36)
  %cmp24.i = icmp sgt i32 %36, 720895
  call void @__sanitizer_cov_trace_const_cmp4(i32 720895, i32 %34)
  %cmp26.i = icmp sgt i32 %34, 720895
  %or.cond83.i = select i1 %cmp24.i, i1 true, i1 %cmp26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1034, i32 %add.i)
  %cmp28.i = icmp slt i32 %add.i, 1034
  %or.cond84.i = select i1 %or.cond83.i, i1 true, i1 %cmp28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 778, i32 %add22.i)
  %cmp30.i = icmp slt i32 %add22.i, 778
  %or.cond85.i = select i1 %or.cond84.i, i1 true, i1 %cmp30.i
  br i1 %or.cond85.i, label %do.end34.i, label %if.end37.i

do.end34.i:                                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #7
  br label %do.end10

if.end37.i:                                       ; preds = %do.body5
  %37 = ptrtoint ptr %clip to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %clip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %38)
  %cmp39.not.i = icmp eq i32 %38, 10
  br i1 %cmp39.not.i, label %lor.lhs.false40.i, label %if.end37.i.do.end52.i_crit_edge

if.end37.i.do.end52.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false40.i:                                ; preds = %if.end37.i
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %40)
  %cmp42.not.i = icmp eq i32 %40, 10
  br i1 %cmp42.not.i, label %lor.lhs.false43.i, label %lor.lhs.false40.i.do.end52.i_crit_edge

lor.lhs.false40.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false43.i:                                ; preds = %lor.lhs.false40.i
  %41 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1034, i32 %42)
  %cmp45.not.i = icmp eq i32 %42, 1034
  br i1 %cmp45.not.i, label %lor.lhs.false46.i, label %lor.lhs.false43.i.do.end52.i_crit_edge

lor.lhs.false43.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false43.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false46.i:                                ; preds = %lor.lhs.false43.i
  %43 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 778, i32 %44)
  %cmp48.not.i = icmp eq i32 %44, 778
  br i1 %cmp48.not.i, label %lor.lhs.false46.i.cleanup_crit_edge, label %lor.lhs.false46.i.do.end52.i_crit_edge

lor.lhs.false46.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false46.i.cleanup_crit_edge:              ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end52.i:                                       ; preds = %lor.lhs.false46.i.do.end52.i_crit_edge, %lor.lhs.false43.i.do.end52.i_crit_edge, %lor.lhs.false40.i.do.end52.i_crit_edge, %if.end37.i.do.end52.i_crit_edge
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %5, align 4
  %47 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %6, align 4
  %49 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %7, align 4
  %call58.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %38, i32 noundef %46, i32 noundef %48, i32 noundef %50) #7
  br label %do.end10

do.end10:                                         ; preds = %do.end52.i, %do.end34.i
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.49, i32 noundef 485, ptr noundef nonnull @.str.15) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %lor.lhs.false46.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end10 ], [ 0, %lor.lhs.false46.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %state) #4
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %old_state) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clip) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %damage) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %damage_blob) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igt_damage_iter_single_damage_fractional_src_moved(ptr nocapture noundef readnone %ignored) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.drm_atomic_helper_damage_iter, align 4
  %damage_blob = alloca %struct.drm_property_blob, align 4
  %damage = alloca %struct.drm_mode_rect, align 4
  %clip = alloca %struct.drm_rect, align 4
  %old_state = alloca %struct.drm_plane_state, align 4
  %state = alloca %struct.drm_plane_state, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iter) #4
  %0 = call ptr @memset(ptr %iter, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %damage_blob) #4
  %1 = call ptr @memset(ptr %damage_blob, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %damage) #4
  %2 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 1
  %3 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 2
  %4 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clip) #4
  %5 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 1
  %6 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 2
  %7 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 3
  %8 = call ptr @memset(ptr %clip, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %old_state) #4
  %9 = getelementptr inbounds i8, ptr %old_state, i32 4
  %10 = call ptr @memset(ptr %9, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %state) #4
  %11 = call ptr @memcpy(ptr %state, ptr @__const.igt_damage_iter_damage_not_visible.state, i32 124)
  %12 = ptrtoint ptr %old_state to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mock_plane, ptr %old_state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %13 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mock_plane, ptr %state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %src.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20
  %14 = ptrtoint ptr %src.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 262142, ptr %src.i, align 4
  %y13.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 1
  %15 = ptrtoint ptr %y13.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 262142, ptr %y13.i, align 4
  %x25.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 2
  %16 = ptrtoint ptr %x25.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 67371006, ptr %x25.i, align 4
  %y27.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 3
  %17 = ptrtoint ptr %y27.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 50593790, ptr %y27.i, align 4
  %src.i23 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20
  %18 = ptrtoint ptr %src.i23 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 262146, ptr %src.i23, align 4
  %y13.i24 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 1
  %19 = ptrtoint ptr %y13.i24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 262146, ptr %y13.i24, align 4
  %x25.i25 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 2
  %20 = ptrtoint ptr %x25.i25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 67371010, ptr %x25.i25, align 4
  %y27.i26 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 3
  %21 = ptrtoint ptr %y27.i26 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 50593794, ptr %y27.i26, align 4
  %22 = ptrtoint ptr %damage to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 20, ptr %damage, align 4
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 30, ptr %2, align 4
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1360, ptr %3, align 4
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 256, ptr %4, align 4
  %length.i = getelementptr inbounds %struct.drm_property_blob, ptr %damage_blob, i32 0, i32 4
  %26 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 16, ptr %length.i, align 4
  %data.i = getelementptr inbounds %struct.drm_property_blob, ptr %damage_blob, i32 0, i32 5
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %damage, ptr %data.i, align 4
  %fb_damage_clips.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 19
  %28 = ptrtoint ptr %fb_damage_clips.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %damage_blob, ptr %fb_damage_clips.i, align 4
  call void @drm_atomic_helper_damage_iter_init(ptr noundef nonnull %iter, ptr noundef nonnull %old_state, ptr noundef nonnull %state) #4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %num_hits.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond.while.cond_crit_edge ]
  %call = call zeroext i1 @drm_atomic_helper_damage_iter_next(ptr noundef nonnull %iter, ptr noundef nonnull %clip) #4
  %inc = add i32 %num_hits.0, 1
  br i1 %call, label %while.cond.while.cond_crit_edge, label %do.body

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

do.body:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_hits.0)
  %cmp.not = icmp eq i32 %num_hits.0, 1
  br i1 %cmp.not, label %do.body5, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.52, i32 noundef 513) #7
  br label %cleanup

do.body5:                                         ; preds = %do.body
  %29 = ptrtoint ptr %y27.i26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %y27.i26, align 4
  %shr13.i = ashr i32 %30, 16
  %and16.i = and i32 %30, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.i = icmp ne i32 %and16.i, 0
  %lnot.ext21.i = zext i1 %tobool17.i to i32
  %add22.i = add nsw i32 %shr13.i, %lnot.ext21.i
  %31 = ptrtoint ptr %x25.i25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %x25.i25, align 4
  %shr7.i = ashr i32 %32, 16
  %and.i = and i32 %32, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  %add.i = add nsw i32 %shr7.i, %lnot.ext.i
  %33 = ptrtoint ptr %y13.i24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %y13.i24, align 4
  %35 = ptrtoint ptr %src.i23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %src.i23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 327679, i32 %36)
  %cmp24.i = icmp sgt i32 %36, 327679
  call void @__sanitizer_cov_trace_const_cmp4(i32 327679, i32 %34)
  %cmp26.i = icmp sgt i32 %34, 327679
  %or.cond83.i = select i1 %cmp24.i, i1 true, i1 %cmp26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1029, i32 %add.i)
  %cmp28.i = icmp slt i32 %add.i, 1029
  %or.cond84.i = select i1 %or.cond83.i, i1 true, i1 %cmp28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 773, i32 %add22.i)
  %cmp30.i = icmp slt i32 %add22.i, 773
  %or.cond85.i = select i1 %or.cond84.i, i1 true, i1 %cmp30.i
  br i1 %or.cond85.i, label %do.end34.i, label %if.end37.i

do.end34.i:                                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #7
  br label %do.end10

if.end37.i:                                       ; preds = %do.body5
  %37 = ptrtoint ptr %clip to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %clip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %38)
  %cmp39.not.i = icmp eq i32 %38, 4
  br i1 %cmp39.not.i, label %lor.lhs.false40.i, label %if.end37.i.do.end52.i_crit_edge

if.end37.i.do.end52.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false40.i:                                ; preds = %if.end37.i
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %40)
  %cmp42.not.i = icmp eq i32 %40, 4
  br i1 %cmp42.not.i, label %lor.lhs.false43.i, label %lor.lhs.false40.i.do.end52.i_crit_edge

lor.lhs.false40.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false43.i:                                ; preds = %lor.lhs.false40.i
  %41 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1029, i32 %42)
  %cmp45.not.i = icmp eq i32 %42, 1029
  br i1 %cmp45.not.i, label %lor.lhs.false46.i, label %lor.lhs.false43.i.do.end52.i_crit_edge

lor.lhs.false43.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false43.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false46.i:                                ; preds = %lor.lhs.false43.i
  %43 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 773, i32 %44)
  %cmp48.not.i = icmp eq i32 %44, 773
  br i1 %cmp48.not.i, label %lor.lhs.false46.i.cleanup_crit_edge, label %lor.lhs.false46.i.do.end52.i_crit_edge

lor.lhs.false46.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false46.i.cleanup_crit_edge:              ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end52.i:                                       ; preds = %lor.lhs.false46.i.do.end52.i_crit_edge, %lor.lhs.false43.i.do.end52.i_crit_edge, %lor.lhs.false40.i.do.end52.i_crit_edge, %if.end37.i.do.end52.i_crit_edge
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %5, align 4
  %47 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %6, align 4
  %49 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %7, align 4
  %call58.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %38, i32 noundef %46, i32 noundef %48, i32 noundef %50) #7
  br label %do.end10

do.end10:                                         ; preds = %do.end52.i, %do.end34.i
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.52, i32 noundef 514, ptr noundef nonnull @.str.19) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %lor.lhs.false46.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end10 ], [ 0, %lor.lhs.false46.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %state) #4
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %old_state) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clip) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %damage) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %damage_blob) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igt_damage_iter_damage(ptr nocapture noundef readnone %ignored) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.drm_atomic_helper_damage_iter, align 4
  %damage_blob = alloca %struct.drm_property_blob, align 4
  %damage = alloca [2 x %struct.drm_mode_rect], align 4
  %clip = alloca %struct.drm_rect, align 4
  %old_state = alloca %struct.drm_plane_state, align 4
  %state = alloca %struct.drm_plane_state, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iter) #4
  %0 = call ptr @memset(ptr %iter, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %damage_blob) #4
  %1 = call ptr @memset(ptr %damage_blob, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %damage) #4
  %2 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 1
  %3 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 2
  %4 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 3
  %5 = getelementptr inbounds [2 x %struct.drm_mode_rect], ptr %damage, i32 0, i32 1
  %6 = getelementptr inbounds [2 x %struct.drm_mode_rect], ptr %damage, i32 0, i32 1, i32 1
  %7 = getelementptr inbounds [2 x %struct.drm_mode_rect], ptr %damage, i32 0, i32 1, i32 2
  %8 = getelementptr inbounds [2 x %struct.drm_mode_rect], ptr %damage, i32 0, i32 1, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clip) #4
  %9 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 1
  %10 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 2
  %11 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 3
  %12 = call ptr @memset(ptr %clip, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %old_state) #4
  %13 = getelementptr inbounds i8, ptr %old_state, i32 4
  %14 = call ptr @memset(ptr %13, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %state) #4
  %15 = call ptr @memcpy(ptr %state, ptr @__const.igt_damage_iter_damage_not_visible.state, i32 124)
  %16 = ptrtoint ptr %old_state to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @mock_plane, ptr %old_state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %17 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @mock_plane, ptr %state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %src.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20
  %18 = ptrtoint ptr %src.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %src.i, align 4
  %y13.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 1
  %19 = ptrtoint ptr %y13.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %y13.i, align 4
  %x25.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 2
  %20 = ptrtoint ptr %x25.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 67108864, ptr %x25.i, align 4
  %y27.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 3
  %21 = ptrtoint ptr %y27.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 50331648, ptr %y27.i, align 4
  %src.i44 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20
  %22 = ptrtoint ptr %src.i44 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %src.i44, align 4
  %y13.i45 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 1
  %23 = ptrtoint ptr %y13.i45 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %y13.i45, align 4
  %x25.i46 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 2
  %24 = ptrtoint ptr %x25.i46 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 67108864, ptr %x25.i46, align 4
  %y27.i47 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 3
  %25 = ptrtoint ptr %y27.i47 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 50331648, ptr %y27.i47, align 4
  %26 = ptrtoint ptr %damage to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 20, ptr %damage, align 4
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 30, ptr %2, align 4
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 200, ptr %3, align 4
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 180, ptr %4, align 4
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 240, ptr %5, align 4
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 200, ptr %6, align 4
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 280, ptr %7, align 4
  %33 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 250, ptr %8, align 4
  %length.i = getelementptr inbounds %struct.drm_property_blob, ptr %damage_blob, i32 0, i32 4
  %34 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 32, ptr %length.i, align 4
  %data.i = getelementptr inbounds %struct.drm_property_blob, ptr %damage_blob, i32 0, i32 5
  %35 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %damage, ptr %data.i, align 4
  %fb_damage_clips.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 19
  %36 = ptrtoint ptr %fb_damage_clips.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %damage_blob, ptr %fb_damage_clips.i, align 4
  call void @drm_atomic_helper_damage_iter_init(ptr noundef nonnull %iter, ptr noundef nonnull %old_state, ptr noundef nonnull %state) #4
  %call103 = call zeroext i1 @drm_atomic_helper_damage_iter_next(ptr noundef nonnull %iter, ptr noundef nonnull %clip) #4
  br i1 %call103, label %entry.while.body_crit_edge, label %entry.do.end29_crit_edge

entry.do.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end29

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end23.while.body_crit_edge, %entry.while.body_crit_edge
  %num_hits.0104 = phi i32 [ %inc, %if.end23.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %37 = zext i32 %num_hits.0104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i32 %num_hits.0104, label %while.body.if.end23_crit_edge [
    i32 0, label %do.body
    i32 1, label %do.body12
  ]

while.body.if.end23_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

do.body:                                          ; preds = %while.body
  %38 = ptrtoint ptr %y27.i47 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %y27.i47, align 4
  %shr13.i = ashr i32 %39, 16
  %and16.i = and i32 %39, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.i = icmp ne i32 %and16.i, 0
  %lnot.ext21.i = zext i1 %tobool17.i to i32
  %add22.i = add nsw i32 %shr13.i, %lnot.ext21.i
  %40 = ptrtoint ptr %x25.i46 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %x25.i46, align 4
  %shr7.i = ashr i32 %41, 16
  %and.i = and i32 %41, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  %add.i = add nsw i32 %shr7.i, %lnot.ext.i
  %42 = ptrtoint ptr %y13.i45 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %y13.i45, align 4
  %44 = ptrtoint ptr %src.i44 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %src.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1376255, i32 %45)
  %cmp24.i = icmp sgt i32 %45, 1376255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2031615, i32 %43)
  %cmp26.i = icmp sgt i32 %43, 2031615
  %or.cond83.i = select i1 %cmp24.i, i1 true, i1 %cmp26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %add.i)
  %cmp28.i = icmp slt i32 %add.i, 200
  %or.cond84.i = select i1 %or.cond83.i, i1 true, i1 %cmp28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 180, i32 %add22.i)
  %cmp30.i = icmp slt i32 %add22.i, 180
  %or.cond85.i = select i1 %or.cond84.i, i1 true, i1 %cmp30.i
  br i1 %or.cond85.i, label %do.end34.i, label %if.end37.i

do.end34.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #7
  br label %do.end

if.end37.i:                                       ; preds = %do.body
  %46 = ptrtoint ptr %clip to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %clip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %47)
  %cmp39.not.i = icmp eq i32 %47, 20
  br i1 %cmp39.not.i, label %lor.lhs.false40.i, label %if.end37.i.do.end52.i_crit_edge

if.end37.i.do.end52.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false40.i:                                ; preds = %if.end37.i
  %48 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %49)
  %cmp42.not.i = icmp eq i32 %49, 30
  br i1 %cmp42.not.i, label %lor.lhs.false43.i, label %lor.lhs.false40.i.do.end52.i_crit_edge

lor.lhs.false40.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false43.i:                                ; preds = %lor.lhs.false40.i
  %50 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %51)
  %cmp45.not.i = icmp eq i32 %51, 200
  br i1 %cmp45.not.i, label %lor.lhs.false46.i, label %lor.lhs.false43.i.do.end52.i_crit_edge

lor.lhs.false43.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false43.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false46.i:                                ; preds = %lor.lhs.false43.i
  %52 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 180, i32 %53)
  %cmp48.not.i = icmp eq i32 %53, 180
  br i1 %cmp48.not.i, label %lor.lhs.false46.i.if.end23_crit_edge, label %lor.lhs.false46.i.do.end52.i_crit_edge

lor.lhs.false46.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false46.i.if.end23_crit_edge:             ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

do.end52.i:                                       ; preds = %lor.lhs.false46.i.do.end52.i_crit_edge, %lor.lhs.false43.i.do.end52.i_crit_edge, %lor.lhs.false40.i.do.end52.i_crit_edge, %if.end37.i.do.end52.i_crit_edge
  %54 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %9, align 4
  %56 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %10, align 4
  %58 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %11, align 4
  %call58.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %47, i32 noundef %55, i32 noundef %57, i32 noundef %59) #7
  br label %do.end

do.end:                                           ; preds = %do.end52.i, %do.end34.i
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.55, i32 noundef 539, ptr noundef nonnull @.str.56) #7
  br label %cleanup

do.body12:                                        ; preds = %while.body
  %60 = ptrtoint ptr %y27.i47 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %y27.i47, align 4
  %shr13.i54 = ashr i32 %61, 16
  %and16.i55 = and i32 %61, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i55)
  %tobool17.i56 = icmp ne i32 %and16.i55, 0
  %lnot.ext21.i57 = zext i1 %tobool17.i56 to i32
  %add22.i58 = add nsw i32 %shr13.i54, %lnot.ext21.i57
  %62 = ptrtoint ptr %x25.i46 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %x25.i46, align 4
  %shr7.i60 = ashr i32 %63, 16
  %and.i61 = and i32 %63, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i61)
  %tobool.i62 = icmp ne i32 %and.i61, 0
  %lnot.ext.i63 = zext i1 %tobool.i62 to i32
  %add.i64 = add nsw i32 %shr7.i60, %lnot.ext.i63
  %64 = ptrtoint ptr %y13.i45 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %y13.i45, align 4
  %66 = ptrtoint ptr %src.i44 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %src.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15794175, i32 %67)
  %cmp24.i69 = icmp sgt i32 %67, 15794175
  call void @__sanitizer_cov_trace_const_cmp4(i32 13172735, i32 %65)
  %cmp26.i70 = icmp sgt i32 %65, 13172735
  %or.cond83.i71 = select i1 %cmp24.i69, i1 true, i1 %cmp26.i70
  call void @__sanitizer_cov_trace_const_cmp4(i32 280, i32 %add.i64)
  %cmp28.i72 = icmp slt i32 %add.i64, 280
  %or.cond84.i73 = select i1 %or.cond83.i71, i1 true, i1 %cmp28.i72
  call void @__sanitizer_cov_trace_const_cmp4(i32 250, i32 %add22.i58)
  %cmp30.i74 = icmp slt i32 %add22.i58, 250
  %or.cond85.i75 = select i1 %or.cond84.i73, i1 true, i1 %cmp30.i74
  br i1 %or.cond85.i75, label %do.end34.i77, label %if.end37.i79

do.end34.i77:                                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #6
  %call36.i76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #7
  br label %do.end17

if.end37.i79:                                     ; preds = %do.body12
  %68 = ptrtoint ptr %clip to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %clip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %69)
  %cmp39.not.i78 = icmp eq i32 %69, 240
  br i1 %cmp39.not.i78, label %lor.lhs.false40.i82, label %if.end37.i79.do.end52.i93_crit_edge

if.end37.i79.do.end52.i93_crit_edge:              ; preds = %if.end37.i79
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i93

lor.lhs.false40.i82:                              ; preds = %if.end37.i79
  %70 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %71)
  %cmp42.not.i81 = icmp eq i32 %71, 200
  br i1 %cmp42.not.i81, label %lor.lhs.false43.i85, label %lor.lhs.false40.i82.do.end52.i93_crit_edge

lor.lhs.false40.i82.do.end52.i93_crit_edge:       ; preds = %lor.lhs.false40.i82
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i93

lor.lhs.false43.i85:                              ; preds = %lor.lhs.false40.i82
  %72 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 280, i32 %73)
  %cmp45.not.i84 = icmp eq i32 %73, 280
  br i1 %cmp45.not.i84, label %lor.lhs.false46.i88, label %lor.lhs.false43.i85.do.end52.i93_crit_edge

lor.lhs.false43.i85.do.end52.i93_crit_edge:       ; preds = %lor.lhs.false43.i85
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i93

lor.lhs.false46.i88:                              ; preds = %lor.lhs.false43.i85
  %74 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 250, i32 %75)
  %cmp48.not.i87 = icmp eq i32 %75, 250
  br i1 %cmp48.not.i87, label %lor.lhs.false46.i88.if.end23_crit_edge, label %lor.lhs.false46.i88.do.end52.i93_crit_edge

lor.lhs.false46.i88.do.end52.i93_crit_edge:       ; preds = %lor.lhs.false46.i88
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i93

lor.lhs.false46.i88.if.end23_crit_edge:           ; preds = %lor.lhs.false46.i88
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

do.end52.i93:                                     ; preds = %lor.lhs.false46.i88.do.end52.i93_crit_edge, %lor.lhs.false43.i85.do.end52.i93_crit_edge, %lor.lhs.false40.i82.do.end52.i93_crit_edge, %if.end37.i79.do.end52.i93_crit_edge
  %76 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %9, align 4
  %78 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %10, align 4
  %80 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %11, align 4
  %call58.i92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %69, i32 noundef %77, i32 noundef %79, i32 noundef %81) #7
  br label %do.end17

do.end17:                                         ; preds = %do.end52.i93, %do.end34.i77
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.55, i32 noundef 541, ptr noundef nonnull @.str.59) #7
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false46.i88.if.end23_crit_edge, %lor.lhs.false46.i.if.end23_crit_edge, %while.body.if.end23_crit_edge
  %inc = add i32 %num_hits.0104, 1
  %call = call zeroext i1 @drm_atomic_helper_damage_iter_next(ptr noundef nonnull %iter, ptr noundef nonnull %clip) #4
  br i1 %call, label %if.end23.while.body_crit_edge, label %do.body24

if.end23.while.body_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

do.body24:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc)
  %phi.cmp = icmp eq i32 %inc, 2
  br i1 %phi.cmp, label %do.body24.cleanup_crit_edge, label %do.body24.do.end29_crit_edge

do.body24.do.end29_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end29

do.body24.cleanup_crit_edge:                      ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end29:                                         ; preds = %do.body24.do.end29_crit_edge, %entry.do.end29_crit_edge
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.55, i32 noundef 545) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %do.body24.cleanup_crit_edge, %do.end17, %do.end
  %retval.0 = phi i32 [ -22, %do.end17 ], [ -22, %do.end ], [ -22, %do.end29 ], [ 0, %do.body24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %state) #4
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %old_state) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clip) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %damage) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %damage_blob) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igt_damage_iter_damage_one_intersect(ptr nocapture noundef readnone %ignored) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.drm_atomic_helper_damage_iter, align 4
  %damage_blob = alloca %struct.drm_property_blob, align 4
  %damage = alloca [2 x %struct.drm_mode_rect], align 4
  %clip = alloca %struct.drm_rect, align 4
  %old_state = alloca %struct.drm_plane_state, align 4
  %state = alloca %struct.drm_plane_state, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iter) #4
  %0 = call ptr @memset(ptr %iter, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %damage_blob) #4
  %1 = call ptr @memset(ptr %damage_blob, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %damage) #4
  %2 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 1
  %3 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 2
  %4 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 3
  %5 = getelementptr inbounds [2 x %struct.drm_mode_rect], ptr %damage, i32 0, i32 1
  %6 = getelementptr inbounds [2 x %struct.drm_mode_rect], ptr %damage, i32 0, i32 1, i32 1
  %7 = getelementptr inbounds [2 x %struct.drm_mode_rect], ptr %damage, i32 0, i32 1, i32 2
  %8 = getelementptr inbounds [2 x %struct.drm_mode_rect], ptr %damage, i32 0, i32 1, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clip) #4
  %9 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 1
  %10 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 2
  %11 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 3
  %12 = call ptr @memset(ptr %clip, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %old_state) #4
  %13 = getelementptr inbounds i8, ptr %old_state, i32 4
  %14 = call ptr @memset(ptr %13, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %state) #4
  %15 = call ptr @memcpy(ptr %state, ptr @__const.igt_damage_iter_damage_not_visible.state, i32 124)
  %16 = ptrtoint ptr %old_state to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @mock_plane, ptr %old_state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %17 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @mock_plane, ptr %state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %src.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20
  %18 = ptrtoint ptr %src.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 262146, ptr %src.i, align 4
  %y13.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 1
  %19 = ptrtoint ptr %y13.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 262146, ptr %y13.i, align 4
  %x25.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 2
  %20 = ptrtoint ptr %x25.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 67371010, ptr %x25.i, align 4
  %y27.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 3
  %21 = ptrtoint ptr %y27.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 50593794, ptr %y27.i, align 4
  %src.i44 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20
  %22 = ptrtoint ptr %src.i44 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 262146, ptr %src.i44, align 4
  %y13.i45 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 1
  %23 = ptrtoint ptr %y13.i45 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 262146, ptr %y13.i45, align 4
  %x25.i46 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 2
  %24 = ptrtoint ptr %x25.i46 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 67371010, ptr %x25.i46, align 4
  %y27.i47 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 3
  %25 = ptrtoint ptr %y27.i47 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 50593794, ptr %y27.i47, align 4
  %26 = ptrtoint ptr %damage to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 20, ptr %damage, align 4
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 30, ptr %2, align 4
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 200, ptr %3, align 4
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 180, ptr %4, align 4
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %5, align 4
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %6, align 4
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1360, ptr %7, align 4
  %33 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1360, ptr %8, align 4
  %length.i = getelementptr inbounds %struct.drm_property_blob, ptr %damage_blob, i32 0, i32 4
  %34 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 32, ptr %length.i, align 4
  %data.i = getelementptr inbounds %struct.drm_property_blob, ptr %damage_blob, i32 0, i32 5
  %35 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %damage, ptr %data.i, align 4
  %fb_damage_clips.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 19
  %36 = ptrtoint ptr %fb_damage_clips.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %damage_blob, ptr %fb_damage_clips.i, align 4
  call void @drm_atomic_helper_damage_iter_init(ptr noundef nonnull %iter, ptr noundef nonnull %old_state, ptr noundef nonnull %state) #4
  %call103 = call zeroext i1 @drm_atomic_helper_damage_iter_next(ptr noundef nonnull %iter, ptr noundef nonnull %clip) #4
  br i1 %call103, label %entry.while.body_crit_edge, label %entry.do.end29_crit_edge

entry.do.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end29

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end23.while.body_crit_edge, %entry.while.body_crit_edge
  %num_hits.0104 = phi i32 [ %inc, %if.end23.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %37 = zext i32 %num_hits.0104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %num_hits.0104, label %while.body.if.end23_crit_edge [
    i32 0, label %do.body
    i32 1, label %do.body12
  ]

while.body.if.end23_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

do.body:                                          ; preds = %while.body
  %38 = ptrtoint ptr %y27.i47 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %y27.i47, align 4
  %shr13.i = ashr i32 %39, 16
  %and16.i = and i32 %39, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.i = icmp ne i32 %and16.i, 0
  %lnot.ext21.i = zext i1 %tobool17.i to i32
  %add22.i = add nsw i32 %shr13.i, %lnot.ext21.i
  %40 = ptrtoint ptr %x25.i46 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %x25.i46, align 4
  %shr7.i = ashr i32 %41, 16
  %and.i = and i32 %41, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  %add.i = add nsw i32 %shr7.i, %lnot.ext.i
  %42 = ptrtoint ptr %y13.i45 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %y13.i45, align 4
  %44 = ptrtoint ptr %src.i44 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %src.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1376255, i32 %45)
  %cmp24.i = icmp sgt i32 %45, 1376255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2031615, i32 %43)
  %cmp26.i = icmp sgt i32 %43, 2031615
  %or.cond83.i = select i1 %cmp24.i, i1 true, i1 %cmp26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %add.i)
  %cmp28.i = icmp slt i32 %add.i, 200
  %or.cond84.i = select i1 %or.cond83.i, i1 true, i1 %cmp28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 180, i32 %add22.i)
  %cmp30.i = icmp slt i32 %add22.i, 180
  %or.cond85.i = select i1 %or.cond84.i, i1 true, i1 %cmp30.i
  br i1 %or.cond85.i, label %do.end34.i, label %if.end37.i

do.end34.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #7
  br label %do.end

if.end37.i:                                       ; preds = %do.body
  %46 = ptrtoint ptr %clip to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %clip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %47)
  %cmp39.not.i = icmp eq i32 %47, 20
  br i1 %cmp39.not.i, label %lor.lhs.false40.i, label %if.end37.i.do.end52.i_crit_edge

if.end37.i.do.end52.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false40.i:                                ; preds = %if.end37.i
  %48 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %49)
  %cmp42.not.i = icmp eq i32 %49, 30
  br i1 %cmp42.not.i, label %lor.lhs.false43.i, label %lor.lhs.false40.i.do.end52.i_crit_edge

lor.lhs.false40.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false43.i:                                ; preds = %lor.lhs.false40.i
  %50 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %51)
  %cmp45.not.i = icmp eq i32 %51, 200
  br i1 %cmp45.not.i, label %lor.lhs.false46.i, label %lor.lhs.false43.i.do.end52.i_crit_edge

lor.lhs.false43.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false43.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false46.i:                                ; preds = %lor.lhs.false43.i
  %52 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 180, i32 %53)
  %cmp48.not.i = icmp eq i32 %53, 180
  br i1 %cmp48.not.i, label %lor.lhs.false46.i.if.end23_crit_edge, label %lor.lhs.false46.i.do.end52.i_crit_edge

lor.lhs.false46.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false46.i.if.end23_crit_edge:             ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

do.end52.i:                                       ; preds = %lor.lhs.false46.i.do.end52.i_crit_edge, %lor.lhs.false43.i.do.end52.i_crit_edge, %lor.lhs.false40.i.do.end52.i_crit_edge, %if.end37.i.do.end52.i_crit_edge
  %54 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %9, align 4
  %56 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %10, align 4
  %58 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %11, align 4
  %call58.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %47, i32 noundef %55, i32 noundef %57, i32 noundef %59) #7
  br label %do.end

do.end:                                           ; preds = %do.end52.i, %do.end34.i
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.62, i32 noundef 572, ptr noundef nonnull @.str.56) #7
  br label %cleanup

do.body12:                                        ; preds = %while.body
  %60 = ptrtoint ptr %y27.i47 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %y27.i47, align 4
  %shr13.i54 = ashr i32 %61, 16
  %and16.i55 = and i32 %61, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i55)
  %tobool17.i56 = icmp ne i32 %and16.i55, 0
  %lnot.ext21.i57 = zext i1 %tobool17.i56 to i32
  %add22.i58 = add nsw i32 %shr13.i54, %lnot.ext21.i57
  %62 = ptrtoint ptr %x25.i46 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %x25.i46, align 4
  %shr7.i60 = ashr i32 %63, 16
  %and.i61 = and i32 %63, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i61)
  %tobool.i62 = icmp ne i32 %and.i61, 0
  %lnot.ext.i63 = zext i1 %tobool.i62 to i32
  %add.i64 = add nsw i32 %shr7.i60, %lnot.ext.i63
  %64 = ptrtoint ptr %y13.i45 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %y13.i45, align 4
  %66 = ptrtoint ptr %src.i44 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %src.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 327679, i32 %67)
  %cmp24.i69 = icmp sgt i32 %67, 327679
  call void @__sanitizer_cov_trace_const_cmp4(i32 327679, i32 %65)
  %cmp26.i70 = icmp sgt i32 %65, 327679
  %or.cond83.i71 = select i1 %cmp24.i69, i1 true, i1 %cmp26.i70
  call void @__sanitizer_cov_trace_const_cmp4(i32 1029, i32 %add.i64)
  %cmp28.i72 = icmp slt i32 %add.i64, 1029
  %or.cond84.i73 = select i1 %or.cond83.i71, i1 true, i1 %cmp28.i72
  call void @__sanitizer_cov_trace_const_cmp4(i32 773, i32 %add22.i58)
  %cmp30.i74 = icmp slt i32 %add22.i58, 773
  %or.cond85.i75 = select i1 %or.cond84.i73, i1 true, i1 %cmp30.i74
  br i1 %or.cond85.i75, label %do.end34.i77, label %if.end37.i79

do.end34.i77:                                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #6
  %call36.i76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #7
  br label %do.end17

if.end37.i79:                                     ; preds = %do.body12
  %68 = ptrtoint ptr %clip to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %clip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %69)
  %cmp39.not.i78 = icmp eq i32 %69, 4
  br i1 %cmp39.not.i78, label %lor.lhs.false40.i82, label %if.end37.i79.do.end52.i93_crit_edge

if.end37.i79.do.end52.i93_crit_edge:              ; preds = %if.end37.i79
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i93

lor.lhs.false40.i82:                              ; preds = %if.end37.i79
  %70 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %71)
  %cmp42.not.i81 = icmp eq i32 %71, 4
  br i1 %cmp42.not.i81, label %lor.lhs.false43.i85, label %lor.lhs.false40.i82.do.end52.i93_crit_edge

lor.lhs.false40.i82.do.end52.i93_crit_edge:       ; preds = %lor.lhs.false40.i82
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i93

lor.lhs.false43.i85:                              ; preds = %lor.lhs.false40.i82
  %72 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1029, i32 %73)
  %cmp45.not.i84 = icmp eq i32 %73, 1029
  br i1 %cmp45.not.i84, label %lor.lhs.false46.i88, label %lor.lhs.false43.i85.do.end52.i93_crit_edge

lor.lhs.false43.i85.do.end52.i93_crit_edge:       ; preds = %lor.lhs.false43.i85
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i93

lor.lhs.false46.i88:                              ; preds = %lor.lhs.false43.i85
  %74 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 773, i32 %75)
  %cmp48.not.i87 = icmp eq i32 %75, 773
  br i1 %cmp48.not.i87, label %lor.lhs.false46.i88.if.end23_crit_edge, label %lor.lhs.false46.i88.do.end52.i93_crit_edge

lor.lhs.false46.i88.do.end52.i93_crit_edge:       ; preds = %lor.lhs.false46.i88
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i93

lor.lhs.false46.i88.if.end23_crit_edge:           ; preds = %lor.lhs.false46.i88
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

do.end52.i93:                                     ; preds = %lor.lhs.false46.i88.do.end52.i93_crit_edge, %lor.lhs.false43.i85.do.end52.i93_crit_edge, %lor.lhs.false40.i82.do.end52.i93_crit_edge, %if.end37.i79.do.end52.i93_crit_edge
  %76 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %9, align 4
  %78 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %10, align 4
  %80 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %11, align 4
  %call58.i92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %69, i32 noundef %77, i32 noundef %79, i32 noundef %81) #7
  br label %do.end17

do.end17:                                         ; preds = %do.end52.i93, %do.end34.i77
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.62, i32 noundef 574, ptr noundef nonnull @.str.19) #7
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false46.i88.if.end23_crit_edge, %lor.lhs.false46.i.if.end23_crit_edge, %while.body.if.end23_crit_edge
  %inc = add i32 %num_hits.0104, 1
  %call = call zeroext i1 @drm_atomic_helper_damage_iter_next(ptr noundef nonnull %iter, ptr noundef nonnull %clip) #4
  br i1 %call, label %if.end23.while.body_crit_edge, label %do.body24

if.end23.while.body_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

do.body24:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc)
  %phi.cmp = icmp eq i32 %inc, 2
  br i1 %phi.cmp, label %do.body24.cleanup_crit_edge, label %do.body24.do.end29_crit_edge

do.body24.do.end29_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end29

do.body24.cleanup_crit_edge:                      ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end29:                                         ; preds = %do.body24.do.end29_crit_edge, %entry.do.end29_crit_edge
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.62, i32 noundef 578) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %do.body24.cleanup_crit_edge, %do.end17, %do.end
  %retval.0 = phi i32 [ -22, %do.end17 ], [ -22, %do.end ], [ -22, %do.end29 ], [ 0, %do.body24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %state) #4
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %old_state) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clip) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %damage) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %damage_blob) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igt_damage_iter_damage_one_outside(ptr nocapture noundef readnone %ignored) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.drm_atomic_helper_damage_iter, align 4
  %damage_blob = alloca %struct.drm_property_blob, align 4
  %damage = alloca [2 x %struct.drm_mode_rect], align 4
  %clip = alloca %struct.drm_rect, align 4
  %old_state = alloca %struct.drm_plane_state, align 4
  %state = alloca %struct.drm_plane_state, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iter) #4
  %0 = call ptr @memset(ptr %iter, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %damage_blob) #4
  %1 = call ptr @memset(ptr %damage_blob, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %damage) #4
  %2 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 1
  %3 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 2
  %4 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 3
  %5 = getelementptr inbounds [2 x %struct.drm_mode_rect], ptr %damage, i32 0, i32 1
  %6 = getelementptr inbounds [2 x %struct.drm_mode_rect], ptr %damage, i32 0, i32 1, i32 1
  %7 = getelementptr inbounds [2 x %struct.drm_mode_rect], ptr %damage, i32 0, i32 1, i32 2
  %8 = getelementptr inbounds [2 x %struct.drm_mode_rect], ptr %damage, i32 0, i32 1, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clip) #4
  %9 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 1
  %10 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 2
  %11 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 3
  %12 = call ptr @memset(ptr %clip, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %old_state) #4
  %13 = getelementptr inbounds i8, ptr %old_state, i32 4
  %14 = call ptr @memset(ptr %13, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %state) #4
  %15 = call ptr @memcpy(ptr %state, ptr @__const.igt_damage_iter_damage_not_visible.state, i32 124)
  %16 = ptrtoint ptr %old_state to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @mock_plane, ptr %old_state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %17 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @mock_plane, ptr %state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %src.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20
  %18 = ptrtoint ptr %src.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %src.i, align 4
  %y13.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 1
  %19 = ptrtoint ptr %y13.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %y13.i, align 4
  %x25.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 2
  %20 = ptrtoint ptr %x25.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 67108864, ptr %x25.i, align 4
  %y27.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 3
  %21 = ptrtoint ptr %y27.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 50331648, ptr %y27.i, align 4
  %src.i25 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20
  %22 = ptrtoint ptr %src.i25 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %src.i25, align 4
  %y13.i26 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 1
  %23 = ptrtoint ptr %y13.i26 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %y13.i26, align 4
  %x25.i27 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 2
  %24 = ptrtoint ptr %x25.i27 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 67108864, ptr %x25.i27, align 4
  %y27.i28 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 3
  %25 = ptrtoint ptr %y27.i28 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 50331648, ptr %y27.i28, align 4
  %26 = ptrtoint ptr %damage to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1360, ptr %damage, align 4
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1360, ptr %2, align 4
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1380, ptr %3, align 4
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1380, ptr %4, align 4
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 240, ptr %5, align 4
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 200, ptr %6, align 4
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 280, ptr %7, align 4
  %33 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 250, ptr %8, align 4
  %length.i = getelementptr inbounds %struct.drm_property_blob, ptr %damage_blob, i32 0, i32 4
  %34 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 32, ptr %length.i, align 4
  %data.i = getelementptr inbounds %struct.drm_property_blob, ptr %damage_blob, i32 0, i32 5
  %35 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %damage, ptr %data.i, align 4
  %fb_damage_clips.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 19
  %36 = ptrtoint ptr %fb_damage_clips.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %damage_blob, ptr %fb_damage_clips.i, align 4
  call void @drm_atomic_helper_damage_iter_init(ptr noundef nonnull %iter, ptr noundef nonnull %old_state, ptr noundef nonnull %state) #4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %num_hits.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond.while.cond_crit_edge ]
  %call = call zeroext i1 @drm_atomic_helper_damage_iter_next(ptr noundef nonnull %iter, ptr noundef nonnull %clip) #4
  %inc = add i32 %num_hits.0, 1
  br i1 %call, label %while.cond.while.cond_crit_edge, label %do.body

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

do.body:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_hits.0)
  %cmp.not = icmp eq i32 %num_hits.0, 1
  br i1 %cmp.not, label %do.body7, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.67, i32 noundef 604) #7
  br label %cleanup

do.body7:                                         ; preds = %do.body
  %37 = ptrtoint ptr %y27.i28 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %y27.i28, align 4
  %shr13.i = ashr i32 %38, 16
  %and16.i = and i32 %38, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.i = icmp ne i32 %and16.i, 0
  %lnot.ext21.i = zext i1 %tobool17.i to i32
  %add22.i = add nsw i32 %shr13.i, %lnot.ext21.i
  %39 = ptrtoint ptr %x25.i27 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %x25.i27, align 4
  %shr7.i = ashr i32 %40, 16
  %and.i = and i32 %40, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  %add.i = add nsw i32 %shr7.i, %lnot.ext.i
  %41 = ptrtoint ptr %y13.i26 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %y13.i26, align 4
  %43 = ptrtoint ptr %src.i25 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %src.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15794175, i32 %44)
  %cmp24.i = icmp sgt i32 %44, 15794175
  call void @__sanitizer_cov_trace_const_cmp4(i32 13172735, i32 %42)
  %cmp26.i = icmp sgt i32 %42, 13172735
  %or.cond83.i = select i1 %cmp24.i, i1 true, i1 %cmp26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 280, i32 %add.i)
  %cmp28.i = icmp slt i32 %add.i, 280
  %or.cond84.i = select i1 %or.cond83.i, i1 true, i1 %cmp28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 250, i32 %add22.i)
  %cmp30.i = icmp slt i32 %add22.i, 250
  %or.cond85.i = select i1 %or.cond84.i, i1 true, i1 %cmp30.i
  br i1 %or.cond85.i, label %do.end34.i, label %if.end37.i

do.end34.i:                                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #6
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #7
  br label %do.end12

if.end37.i:                                       ; preds = %do.body7
  %45 = ptrtoint ptr %clip to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %clip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %46)
  %cmp39.not.i = icmp eq i32 %46, 240
  br i1 %cmp39.not.i, label %lor.lhs.false40.i, label %if.end37.i.do.end52.i_crit_edge

if.end37.i.do.end52.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false40.i:                                ; preds = %if.end37.i
  %47 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %48)
  %cmp42.not.i = icmp eq i32 %48, 200
  br i1 %cmp42.not.i, label %lor.lhs.false43.i, label %lor.lhs.false40.i.do.end52.i_crit_edge

lor.lhs.false40.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false43.i:                                ; preds = %lor.lhs.false40.i
  %49 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 280, i32 %50)
  %cmp45.not.i = icmp eq i32 %50, 280
  br i1 %cmp45.not.i, label %lor.lhs.false46.i, label %lor.lhs.false43.i.do.end52.i_crit_edge

lor.lhs.false43.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false43.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false46.i:                                ; preds = %lor.lhs.false43.i
  %51 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 250, i32 %52)
  %cmp48.not.i = icmp eq i32 %52, 250
  br i1 %cmp48.not.i, label %lor.lhs.false46.i.cleanup_crit_edge, label %lor.lhs.false46.i.do.end52.i_crit_edge

lor.lhs.false46.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false46.i.cleanup_crit_edge:              ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end52.i:                                       ; preds = %lor.lhs.false46.i.do.end52.i_crit_edge, %lor.lhs.false43.i.do.end52.i_crit_edge, %lor.lhs.false40.i.do.end52.i_crit_edge, %if.end37.i.do.end52.i_crit_edge
  %53 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %9, align 4
  %55 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %10, align 4
  %57 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %11, align 4
  %call58.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %46, i32 noundef %54, i32 noundef %56, i32 noundef %58) #7
  br label %do.end12

do.end12:                                         ; preds = %do.end52.i, %do.end34.i
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.67, i32 noundef 605, ptr noundef nonnull @.str.59) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %lor.lhs.false46.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end12 ], [ 0, %lor.lhs.false46.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %state) #4
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %old_state) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clip) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %damage) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %damage_blob) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igt_damage_iter_damage_src_moved(ptr nocapture noundef readnone %ignored) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.drm_atomic_helper_damage_iter, align 4
  %damage_blob = alloca %struct.drm_property_blob, align 4
  %damage = alloca [2 x %struct.drm_mode_rect], align 4
  %clip = alloca %struct.drm_rect, align 4
  %old_state = alloca %struct.drm_plane_state, align 4
  %state = alloca %struct.drm_plane_state, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iter) #4
  %0 = call ptr @memset(ptr %iter, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %damage_blob) #4
  %1 = call ptr @memset(ptr %damage_blob, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %damage) #4
  %2 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 1
  %3 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 2
  %4 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 3
  %5 = getelementptr inbounds [2 x %struct.drm_mode_rect], ptr %damage, i32 0, i32 1
  %6 = getelementptr inbounds [2 x %struct.drm_mode_rect], ptr %damage, i32 0, i32 1, i32 1
  %7 = getelementptr inbounds [2 x %struct.drm_mode_rect], ptr %damage, i32 0, i32 1, i32 2
  %8 = getelementptr inbounds [2 x %struct.drm_mode_rect], ptr %damage, i32 0, i32 1, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clip) #4
  %9 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 1
  %10 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 2
  %11 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 3
  %12 = call ptr @memset(ptr %clip, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %old_state) #4
  %13 = getelementptr inbounds i8, ptr %old_state, i32 4
  %14 = call ptr @memset(ptr %13, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %state) #4
  %15 = call ptr @memcpy(ptr %state, ptr @__const.igt_damage_iter_damage_not_visible.state, i32 124)
  %16 = ptrtoint ptr %old_state to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @mock_plane, ptr %old_state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %17 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @mock_plane, ptr %state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %src.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20
  %18 = ptrtoint ptr %src.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 262146, ptr %src.i, align 4
  %y13.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 1
  %19 = ptrtoint ptr %y13.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 262146, ptr %y13.i, align 4
  %x25.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 2
  %20 = ptrtoint ptr %x25.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 67371010, ptr %x25.i, align 4
  %y27.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 3
  %21 = ptrtoint ptr %y27.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 50593794, ptr %y27.i, align 4
  %src.i25 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20
  %22 = ptrtoint ptr %src.i25 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 262142, ptr %src.i25, align 4
  %y13.i26 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 1
  %23 = ptrtoint ptr %y13.i26 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 262142, ptr %y13.i26, align 4
  %x25.i27 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 2
  %24 = ptrtoint ptr %x25.i27 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 67371006, ptr %x25.i27, align 4
  %y27.i28 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 3
  %25 = ptrtoint ptr %y27.i28 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 50593790, ptr %y27.i28, align 4
  %26 = ptrtoint ptr %damage to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1360, ptr %damage, align 4
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1360, ptr %2, align 4
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1380, ptr %3, align 4
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1380, ptr %4, align 4
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 240, ptr %5, align 4
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 200, ptr %6, align 4
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 280, ptr %7, align 4
  %33 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 250, ptr %8, align 4
  %length.i = getelementptr inbounds %struct.drm_property_blob, ptr %damage_blob, i32 0, i32 4
  %34 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 32, ptr %length.i, align 4
  %data.i = getelementptr inbounds %struct.drm_property_blob, ptr %damage_blob, i32 0, i32 5
  %35 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %damage, ptr %data.i, align 4
  %fb_damage_clips.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 19
  %36 = ptrtoint ptr %fb_damage_clips.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %damage_blob, ptr %fb_damage_clips.i, align 4
  call void @drm_atomic_helper_damage_iter_init(ptr noundef nonnull %iter, ptr noundef nonnull %old_state, ptr noundef nonnull %state) #4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %num_hits.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond.while.cond_crit_edge ]
  %call = call zeroext i1 @drm_atomic_helper_damage_iter_next(ptr noundef nonnull %iter, ptr noundef nonnull %clip) #4
  %inc = add i32 %num_hits.0, 1
  br i1 %call, label %while.cond.while.cond_crit_edge, label %do.body

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

do.body:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_hits.0)
  %cmp.not = icmp eq i32 %num_hits.0, 1
  br i1 %cmp.not, label %do.body7, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, i32 noundef 633) #7
  br label %cleanup

do.body7:                                         ; preds = %do.body
  %37 = ptrtoint ptr %y27.i28 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %y27.i28, align 4
  %shr13.i = ashr i32 %38, 16
  %and16.i = and i32 %38, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.i = icmp ne i32 %and16.i, 0
  %lnot.ext21.i = zext i1 %tobool17.i to i32
  %add22.i = add nsw i32 %shr13.i, %lnot.ext21.i
  %39 = ptrtoint ptr %x25.i27 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %x25.i27, align 4
  %shr7.i = ashr i32 %40, 16
  %and.i = and i32 %40, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  %add.i = add nsw i32 %shr7.i, %lnot.ext.i
  %41 = ptrtoint ptr %y13.i26 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %y13.i26, align 4
  %43 = ptrtoint ptr %src.i25 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %src.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262143, i32 %44)
  %cmp24.i = icmp sgt i32 %44, 262143
  call void @__sanitizer_cov_trace_const_cmp4(i32 262143, i32 %42)
  %cmp26.i = icmp sgt i32 %42, 262143
  %or.cond83.i = select i1 %cmp24.i, i1 true, i1 %cmp26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1028, i32 %add.i)
  %cmp28.i = icmp slt i32 %add.i, 1028
  %or.cond84.i = select i1 %or.cond83.i, i1 true, i1 %cmp28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 772, i32 %add22.i)
  %cmp30.i = icmp slt i32 %add22.i, 772
  %or.cond85.i = select i1 %or.cond84.i, i1 true, i1 %cmp30.i
  br i1 %or.cond85.i, label %do.end34.i, label %if.end37.i

do.end34.i:                                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #6
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #7
  br label %do.end12

if.end37.i:                                       ; preds = %do.body7
  %45 = ptrtoint ptr %clip to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %clip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %46)
  %cmp39.not.i = icmp eq i32 %46, 3
  br i1 %cmp39.not.i, label %lor.lhs.false40.i, label %if.end37.i.do.end52.i_crit_edge

if.end37.i.do.end52.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false40.i:                                ; preds = %if.end37.i
  %47 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %48)
  %cmp42.not.i = icmp eq i32 %48, 3
  br i1 %cmp42.not.i, label %lor.lhs.false43.i, label %lor.lhs.false40.i.do.end52.i_crit_edge

lor.lhs.false40.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false43.i:                                ; preds = %lor.lhs.false40.i
  %49 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1028, i32 %50)
  %cmp45.not.i = icmp eq i32 %50, 1028
  br i1 %cmp45.not.i, label %lor.lhs.false46.i, label %lor.lhs.false43.i.do.end52.i_crit_edge

lor.lhs.false43.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false43.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false46.i:                                ; preds = %lor.lhs.false43.i
  %51 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 772, i32 %52)
  %cmp48.not.i = icmp eq i32 %52, 772
  br i1 %cmp48.not.i, label %lor.lhs.false46.i.cleanup_crit_edge, label %lor.lhs.false46.i.do.end52.i_crit_edge

lor.lhs.false46.i.do.end52.i_crit_edge:           ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52.i

lor.lhs.false46.i.cleanup_crit_edge:              ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end52.i:                                       ; preds = %lor.lhs.false46.i.do.end52.i_crit_edge, %lor.lhs.false43.i.do.end52.i_crit_edge, %lor.lhs.false40.i.do.end52.i_crit_edge, %if.end37.i.do.end52.i_crit_edge
  %53 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %9, align 4
  %55 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %10, align 4
  %57 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %11, align 4
  %call58.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %46, i32 noundef %54, i32 noundef %56, i32 noundef %58) #7
  br label %do.end12

do.end12:                                         ; preds = %do.end52.i, %do.end34.i
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.71, i32 noundef 634, ptr noundef nonnull @.str.11) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %lor.lhs.false46.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end12 ], [ 0, %lor.lhs.false46.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %state) #4
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %old_state) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clip) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %damage) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %damage_blob) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igt_damage_iter_damage_not_visible(ptr nocapture noundef readnone %ignored) local_unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.drm_atomic_helper_damage_iter, align 4
  %damage_blob = alloca %struct.drm_property_blob, align 4
  %damage = alloca [2 x %struct.drm_mode_rect], align 4
  %clip = alloca %struct.drm_rect, align 4
  %old_state = alloca %struct.drm_plane_state, align 4
  %state = alloca %struct.drm_plane_state, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iter) #4
  %0 = call ptr @memset(ptr %iter, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %damage_blob) #4
  %1 = call ptr @memset(ptr %damage_blob, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %damage) #4
  %2 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 1
  %3 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 2
  %4 = getelementptr inbounds %struct.drm_mode_rect, ptr %damage, i32 0, i32 3
  %5 = getelementptr inbounds [2 x %struct.drm_mode_rect], ptr %damage, i32 0, i32 1
  %6 = getelementptr inbounds [2 x %struct.drm_mode_rect], ptr %damage, i32 0, i32 1, i32 1
  %7 = getelementptr inbounds [2 x %struct.drm_mode_rect], ptr %damage, i32 0, i32 1, i32 2
  %8 = getelementptr inbounds [2 x %struct.drm_mode_rect], ptr %damage, i32 0, i32 1, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clip) #4
  %9 = call ptr @memset(ptr %clip, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %old_state) #4
  %10 = getelementptr inbounds i8, ptr %old_state, i32 4
  %11 = call ptr @memset(ptr %10, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %state) #4
  %12 = call ptr @memcpy(ptr %state, ptr @__const.igt_damage_iter_damage_not_visible.state, i32 124)
  %13 = ptrtoint ptr %old_state to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mock_plane, ptr %old_state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %14 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @mock_plane, ptr %state, align 4
  store ptr @mock_driver, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 4), align 4
  store ptr @mock_prop, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_device, i32 0, i32 30, i32 53), align 4
  store ptr @mock_device, ptr @mock_plane, align 8
  store i32 0, ptr @mock_obj_props, align 8
  store ptr @mock_obj_props, ptr getelementptr inbounds (%struct.drm_plane, ptr @mock_plane, i32 0, i32 4, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 1), align 4
  store ptr @mock_device, ptr getelementptr inbounds (%struct.drm_property, ptr @mock_prop, i32 0, i32 6), align 4
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull @mock_plane) #4
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 22
  %15 = ptrtoint ptr %visible to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %visible, align 4
  %src.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20
  %16 = ptrtoint ptr %src.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 262146, ptr %src.i, align 4
  %y13.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 1
  %17 = ptrtoint ptr %y13.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 262146, ptr %y13.i, align 4
  %x25.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 2
  %18 = ptrtoint ptr %x25.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 67371010, ptr %x25.i, align 4
  %y27.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 3
  %19 = ptrtoint ptr %y27.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 50593794, ptr %y27.i, align 4
  %src.i14 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20
  %20 = ptrtoint ptr %src.i14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 262142, ptr %src.i14, align 4
  %y13.i15 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 1
  %21 = ptrtoint ptr %y13.i15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 262142, ptr %y13.i15, align 4
  %x25.i16 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 2
  %22 = ptrtoint ptr %x25.i16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 67371006, ptr %x25.i16, align 4
  %y27.i17 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 3
  %23 = ptrtoint ptr %y27.i17 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 50593790, ptr %y27.i17, align 4
  %24 = ptrtoint ptr %damage to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1360, ptr %damage, align 4
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1360, ptr %2, align 4
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1380, ptr %3, align 4
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1380, ptr %4, align 4
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 240, ptr %5, align 4
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 200, ptr %6, align 4
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 280, ptr %7, align 4
  %31 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 250, ptr %8, align 4
  %length.i = getelementptr inbounds %struct.drm_property_blob, ptr %damage_blob, i32 0, i32 4
  %32 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 32, ptr %length.i, align 4
  %data.i = getelementptr inbounds %struct.drm_property_blob, ptr %damage_blob, i32 0, i32 5
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %damage, ptr %data.i, align 4
  %fb_damage_clips.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 19
  %34 = ptrtoint ptr %fb_damage_clips.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %damage_blob, ptr %fb_damage_clips.i, align 4
  call void @drm_atomic_helper_damage_iter_init(ptr noundef nonnull %iter, ptr noundef nonnull %old_state, ptr noundef nonnull %state) #4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %num_hits.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond.while.cond_crit_edge ]
  %call = call zeroext i1 @drm_atomic_helper_damage_iter_next(ptr noundef nonnull %iter, ptr noundef nonnull %clip) #4
  %inc = add i32 %num_hits.0, 1
  br i1 %call, label %while.cond.while.cond_crit_edge, label %do.body

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

do.body:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_hits.0)
  %cmp.not = icmp eq i32 %num_hits.0, 0
  br i1 %cmp.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i32 noundef 664) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %state) #4
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %old_state) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clip) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %damage) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %damage_blob) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_enable_fb_damage_clips(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
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

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !111, !112, !113, !115, !116, !118, !119, !120, !121, !123, !124, !125, !127, !128, !130, !131, !132, !134, !135, !137, !138, !140, !141, !142, !144, !145, !147, !148, !149, !150, !152, !153, !155, !156, !157, !158, !160, !162, !164, !166, !168, !170, !172, !173, !174, !175, !177, !178, !179, !181, !182}
!llvm.module.flags = !{!183, !184, !185, !186, !187, !188, !189, !190}
!llvm.ident = !{!191}

!0 = !{ptr @fb, !1, !"fb", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 102, i32 30}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 133, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @igt_damage_iter_no_damage._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @igt_damage_iter_no_damage._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 134, i32 2}
!10 = !{ptr @igt_damage_iter_no_damage._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @igt_damage_iter_no_damage._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 156, i32 2}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @igt_damage_iter_no_damage_fractional_src._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @igt_damage_iter_no_damage_fractional_src._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @igt_damage_iter_no_damage_fractional_src._entry.9, !19, !"_entry", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 157, i32 2}
!20 = !{ptr @igt_damage_iter_no_damage_fractional_src._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 178, i32 2}
!24 = !{ptr @igt_damage_iter_no_damage_src_moved._entry, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @igt_damage_iter_no_damage_src_moved._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @igt_damage_iter_no_damage_src_moved._entry.13, !27, !"_entry", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 179, i32 2}
!28 = !{ptr @igt_damage_iter_no_damage_src_moved._entry_ptr.14, !27, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 201, i32 2}
!32 = !{ptr @igt_damage_iter_no_damage_fractional_src_moved._entry, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @igt_damage_iter_no_damage_fractional_src_moved._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @igt_damage_iter_no_damage_fractional_src_moved._entry.17, !35, !"_entry", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 202, i32 2}
!36 = !{ptr @igt_damage_iter_no_damage_fractional_src_moved._entry_ptr.18, !35, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 225, i32 2}
!40 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @igt_damage_iter_no_damage_not_visible._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @igt_damage_iter_no_damage_not_visible._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 246, i32 2}
!45 = !{ptr @igt_damage_iter_no_damage_no_crtc._entry, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @igt_damage_iter_no_damage_no_crtc._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 271, i32 2}
!49 = !{ptr @igt_damage_iter_no_damage_no_fb._entry, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @igt_damage_iter_no_damage_no_fb._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 296, i32 2}
!53 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @igt_damage_iter_simple_damage._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @igt_damage_iter_simple_damage._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @igt_damage_iter_simple_damage._entry.26, !57, !"_entry", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 297, i32 2}
!58 = !{ptr @igt_damage_iter_simple_damage._entry_ptr.27, !57, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 321, i32 2}
!62 = !{ptr @igt_damage_iter_single_damage._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @igt_damage_iter_single_damage._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @igt_damage_iter_single_damage._entry.30, !65, !"_entry", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 322, i32 2}
!66 = !{ptr @igt_damage_iter_single_damage._entry_ptr.31, !65, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 347, i32 2}
!70 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @igt_damage_iter_single_damage_intersect_src._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @igt_damage_iter_single_damage_intersect_src._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @igt_damage_iter_single_damage_intersect_src._entry.35, !74, !"_entry", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 348, i32 2}
!75 = !{ptr @igt_damage_iter_single_damage_intersect_src._entry_ptr.36, !74, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 373, i32 2}
!79 = !{ptr @igt_damage_iter_single_damage_outside_src._entry, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @igt_damage_iter_single_damage_outside_src._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 400, i32 2}
!83 = !{ptr @igt_damage_iter_single_damage_fractional_src._entry, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @igt_damage_iter_single_damage_fractional_src._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @igt_damage_iter_single_damage_fractional_src._entry.40, !86, !"_entry", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 401, i32 2}
!87 = !{ptr @igt_damage_iter_single_damage_fractional_src._entry_ptr.41, !86, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 429, i32 2}
!91 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @igt_damage_iter_single_damage_intersect_fractional_src._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @igt_damage_iter_single_damage_intersect_fractional_src._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @igt_damage_iter_single_damage_intersect_fractional_src._entry.45, !95, !"_entry", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 430, i32 2}
!96 = !{ptr @igt_damage_iter_single_damage_intersect_fractional_src._entry_ptr.46, !95, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 458, i32 2}
!100 = !{ptr @igt_damage_iter_single_damage_outside_fractional_src._entry, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @igt_damage_iter_single_damage_outside_fractional_src._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 484, i32 2}
!104 = !{ptr @igt_damage_iter_single_damage_src_moved._entry, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @igt_damage_iter_single_damage_src_moved._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @igt_damage_iter_single_damage_src_moved._entry.50, !107, !"_entry", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 485, i32 2}
!108 = !{ptr @igt_damage_iter_single_damage_src_moved._entry_ptr.51, !107, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 513, i32 2}
!111 = !{ptr @igt_damage_iter_single_damage_fractional_src_moved._entry, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @igt_damage_iter_single_damage_fractional_src_moved._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @igt_damage_iter_single_damage_fractional_src_moved._entry.53, !114, !"_entry", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 514, i32 2}
!115 = !{ptr @igt_damage_iter_single_damage_fractional_src_moved._entry_ptr.54, !114, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 539, i32 4}
!118 = !{ptr @igt_damage_iter_damage._entry, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @igt_damage_iter_damage._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @igt_damage_iter_damage._entry.57, !122, !"_entry", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 541, i32 4}
!123 = !{ptr @igt_damage_iter_damage._entry_ptr.58, !122, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @igt_damage_iter_damage._entry.60, !126, !"_entry", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 545, i32 2}
!127 = !{ptr @igt_damage_iter_damage._entry_ptr.61, !126, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.62, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 572, i32 4}
!130 = !{ptr @igt_damage_iter_damage_one_intersect._entry, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @igt_damage_iter_damage_one_intersect._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @igt_damage_iter_damage_one_intersect._entry.63, !133, !"_entry", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 574, i32 4}
!134 = !{ptr @igt_damage_iter_damage_one_intersect._entry_ptr.64, !133, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @igt_damage_iter_damage_one_intersect._entry.65, !136, !"_entry", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 578, i32 2}
!137 = !{ptr @igt_damage_iter_damage_one_intersect._entry_ptr.66, !136, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 604, i32 2}
!140 = !{ptr @igt_damage_iter_damage_one_outside._entry, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @igt_damage_iter_damage_one_outside._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @igt_damage_iter_damage_one_outside._entry.68, !143, !"_entry", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 605, i32 2}
!144 = !{ptr @igt_damage_iter_damage_one_outside._entry_ptr.69, !143, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.70, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 633, i32 2}
!147 = !{ptr @.str.71, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @igt_damage_iter_damage_src_moved._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @igt_damage_iter_damage_src_moved._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @igt_damage_iter_damage_src_moved._entry.72, !151, !"_entry", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 634, i32 2}
!152 = !{ptr @igt_damage_iter_damage_src_moved._entry_ptr.73, !151, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.74, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 664, i32 2}
!155 = !{ptr @.str.75, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @igt_damage_iter_damage_not_visible._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @igt_damage_iter_damage_not_visible._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @mock_driver, !159, !"mock_driver", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 14, i32 19}
!160 = distinct !{null, !161, !"setup_done", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 22, i32 14}
!162 = !{ptr @mock_plane, !163, !"mock_plane", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 17, i32 25}
!164 = !{ptr @mock_device, !165, !"mock_device", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 15, i32 26}
!166 = !{ptr @mock_prop, !167, !"mock_prop", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 18, i32 28}
!168 = !{ptr @mock_obj_props, !169, !"mock_obj_props", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 16, i32 37}
!170 = !{ptr @.str.76, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 85, i32 3}
!172 = !{ptr @.str.77, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @check_damage_clip._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @check_damage_clip._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.79, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 90, i32 3}
!177 = !{ptr @check_damage_clip._entry.78, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @check_damage_clip._entry_ptr.80, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.82, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/selftests/test-drm_damage_helper.c", i32 95, i32 3}
!181 = !{ptr @check_damage_clip._entry.81, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @check_damage_clip._entry_ptr.83, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{i32 1, !"wchar_size", i32 2}
!184 = !{i32 1, !"min_enum_size", i32 4}
!185 = !{i32 8, !"branch-target-enforcement", i32 0}
!186 = !{i32 8, !"sign-return-address", i32 0}
!187 = !{i32 8, !"sign-return-address-all", i32 0}
!188 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!189 = !{i32 7, !"uwtable", i32 1}
!190 = !{i32 7, !"frame-pointer", i32 2}
!191 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
