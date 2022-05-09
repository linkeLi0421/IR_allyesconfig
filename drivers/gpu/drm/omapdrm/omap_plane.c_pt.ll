; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/omapdrm/omap_plane.c_pt.bc'
source_filename = "../drivers/gpu/drm/omapdrm/omap_plane.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.omap_plane_state = type { %struct.drm_plane_state, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.87, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.87 = type { i32, ptr }
%struct.omap_drm_private = type { ptr, ptr, i32, ptr, ptr, i8, i32, [8 x %struct.omap_drm_pipeline], [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], %struct.drm_private_obj, ptr, ptr, %struct.mutex, %struct.list_head, ptr, i8, ptr, %struct.spinlock, %struct.list_head, i32, i32 }
%struct.omap_drm_pipeline = type { ptr, ptr, ptr, ptr, i32 }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.omap_plane = type { %struct.drm_plane, i32 }
%struct.omap_hw_overlay = type { i32, ptr, i32, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }
%struct.omap_overlay_info = type { i32, i32, i16, i16, i16, i32, i8, i32, i16, i16, i16, i16, i8, i8, i8, i32, i32 }

@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/omapdrm/omap_plane.c\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%d: type=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\09crtc_mask: 0x%04x\0A\00", [44 x i8] zeroinitializer }, align 32
@omap_plane_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @omap_plane_destroy, ptr @omap_plane_reset, ptr null, ptr @omap_plane_atomic_duplicate_state, ptr @drm_atomic_helper_plane_destroy_state, ptr @omap_plane_atomic_set_property, ptr @omap_plane_atomic_get_property, ptr null, ptr null, ptr @omap_plane_atomic_print_state, ptr null }, [44 x i8] zeroinitializer }, align 32
@omap_plane_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr @omap_plane_prepare_fb, ptr @omap_plane_cleanup_fb, ptr @omap_plane_atomic_check, ptr @omap_plane_atomic_update, ptr @omap_plane_atomic_disable, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@omap_plane_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 585, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(): could not create plane: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"omap_plane_init\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap_plane_init._entry_ptr = internal global ptr @omap_plane_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\09overlay=%s (caps=0x%x)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\09overlay=None\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\09r_overlay=%s (caps=0x%x)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\09r_overlay=None\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: visible %d -> %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: failed to assign hw_overlay\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"plane: %s overlay_id: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"plane: %s r_overlay_id: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[PLANE:%d:%s] no overlay attached\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s, crtc=%p fb=%p\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: %dx%d -> %dx%d (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%d,%d %pad %pad\0A\00", [47 x i8] zeroinitializer }, align 32
@omap_plane_atomic_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str, i32 144, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to setup plane %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"omap_plane_atomic_update\00", [39 x i8] zeroinitializer }, align 32
@omap_plane_atomic_update._entry_ptr = internal global ptr @omap_plane_atomic_update._entry, section ".printk_index", align 4
@omap_plane_atomic_update._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str, i32 157, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to setup plane right-overlay %s\0A\00", [56 x i8] zeroinitializer }, align 32
@omap_plane_atomic_update._entry_ptr.24 = internal global ptr @omap_plane_atomic_update._entry.22, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 842094158, i64 1448695129, i64 1498831189]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 540, i32 6 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 549, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 550, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"omap_plane_funcs\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 499, i32 37 }
@___asan_gen_.37 = private unnamed_addr constant [24 x i8] c"omap_plane_helper_funcs\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 361, i32 44 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 584, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 373, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 456, i32 17 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 460, i32 17 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 462, i32 17 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 466, i32 17 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 248, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 340, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 353, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 356, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 89, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 94, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 115, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 118, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 143, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.107 = private constant [40 x i8] c"../drivers/gpu/drm/omapdrm/omap_plane.c\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 156, i32 4 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @omap_plane_atomic_update._entry, ptr @omap_plane_atomic_update._entry.22, ptr @omap_plane_atomic_update._entry_ptr, ptr @omap_plane_atomic_update._entry_ptr.24, ptr @omap_plane_init._entry, ptr @omap_plane_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @omap_plane_funcs, ptr @omap_plane_helper_funcs, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_plane_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_plane_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_plane_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_plane_atomic_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_plane_atomic_update._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @is_omap_plane_dual_overlay(ptr nocapture noundef readonly %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %r_overlay = getelementptr inbounds %struct.omap_plane_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %r_overlay to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %r_overlay, align 4
  %tobool = icmp ne ptr %1, null
  ret i1 %tobool
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_plane_install_properties(ptr noundef %plane, ptr noundef %obj) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plane, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %has_dmm = getelementptr inbounds %struct.omap_drm_private, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %has_dmm to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_dmm, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then:                                          ; preds = %entry
  %rotation_property = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 22
  %6 = ptrtoint ptr %rotation_property to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rotation_property, align 8
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.then3, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @drm_plane_create_rotation_property(ptr noundef %plane, i32 noundef 1, i32 noundef 63) #7
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %8 = ptrtoint ptr %rotation_property to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rotation_property, align 8
  %tobool5.not = icmp eq ptr %9, null
  %base = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 4
  %cmp.not = icmp eq ptr %base, %obj
  %or.cond = select i1 %tobool5.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_object_attach_property(ptr noundef %obj, ptr noundef nonnull %9, i64 noundef 1) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge, %entry.if.end9_crit_edge
  %zorder_prop = getelementptr inbounds %struct.omap_drm_private, ptr %3, i32 0, i32 20
  %10 = ptrtoint ptr %zorder_prop to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %zorder_prop, align 4
  tail call void @drm_object_attach_property(ptr noundef %obj, ptr noundef %11, i64 noundef 0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_rotation_property(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_object_attach_property(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @omap_plane_init(ptr noundef %dev, i32 noundef %idx, i32 noundef %type, i32 noundef %possible_crtcs) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %dispc = getelementptr inbounds %struct.omap_drm_private, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dispc, align 4
  %call = tail call i32 @dispc_get_num_ovls(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %idx)
  %cmp.not = icmp ugt i32 %call, %idx
  br i1 %cmp.not, label %if.end22, label %do.end, !prof !62

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 540, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end22:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 536) #10
  %tobool24.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %if.end27

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %id = getelementptr inbounds %struct.omap_plane, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %idx, ptr %id, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef %idx, i32 noundef %type) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef %possible_crtcs) #7
  %6 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dispc, align 4
  %call31 = tail call ptr @dispc_ovl_get_color_modes(ptr noundef %7, i32 noundef %idx) #7
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %if.end27
  %nformats.0 = phi i32 [ 0, %if.end27 ], [ %inc, %for.cond.for.cond_crit_edge ]
  %arrayidx = getelementptr i32, ptr %call31, i32 %nformats.0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %tobool32.not = icmp eq i32 %9, 0
  %inc = add i32 %nformats.0, 1
  br i1 %tobool32.not, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call33 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, i32 noundef %possible_crtcs, ptr noundef nonnull @omap_plane_funcs, ptr noundef %call31, i32 noundef %nformats.0, ptr noundef null, i32 noundef %type, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %do.end47, label %if.end36

if.end36:                                         ; preds = %for.end
  %helper_private.i = getelementptr inbounds %struct.drm_plane, ptr %call7.i.i, i32 0, i32 18
  %10 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @omap_plane_helper_funcs, ptr %helper_private.i, align 8
  %base37 = getelementptr inbounds %struct.drm_plane, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call7.i.i, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_private.i, align 4
  %has_dmm.i = getelementptr inbounds %struct.omap_drm_private, ptr %14, i32 0, i32 19
  %15 = ptrtoint ptr %has_dmm.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %has_dmm.i, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %if.end36.omap_plane_install_properties.exit_crit_edge, label %if.then.i

if.end36.omap_plane_install_properties.exit_crit_edge: ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %omap_plane_install_properties.exit

if.then.i:                                        ; preds = %if.end36
  %rotation_property.i = getelementptr inbounds %struct.drm_plane, ptr %call7.i.i, i32 0, i32 22
  %17 = ptrtoint ptr %rotation_property.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rotation_property.i, align 8
  %tobool2.not.i = icmp eq ptr %18, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.then.i.omap_plane_install_properties.exit_crit_edge

if.then.i.omap_plane_install_properties.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %omap_plane_install_properties.exit

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @drm_plane_create_rotation_property(ptr noundef nonnull %call7.i.i, i32 noundef 1, i32 noundef 63) #7
  br label %omap_plane_install_properties.exit

omap_plane_install_properties.exit:               ; preds = %if.then3.i, %if.then.i.omap_plane_install_properties.exit_crit_edge, %if.end36.omap_plane_install_properties.exit_crit_edge
  %zorder_prop.i = getelementptr inbounds %struct.omap_drm_private, ptr %14, i32 0, i32 20
  %19 = ptrtoint ptr %zorder_prop.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %zorder_prop.i, align 4
  tail call void @drm_object_attach_property(ptr noundef %base37, ptr noundef %20, i64 noundef 0) #7
  %sub = add i32 %call, -1
  %call38 = tail call i32 @drm_plane_create_zpos_property(ptr noundef nonnull %call7.i.i, i32 noundef 0, i32 noundef 0, i32 noundef %sub) #7
  %call39 = tail call i32 @drm_plane_create_alpha_property(ptr noundef nonnull %call7.i.i) #7
  %call40 = tail call i32 @drm_plane_create_blend_mode_property(ptr noundef nonnull %call7.i.i, i32 noundef 3) #7
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call7.i.i, align 8
  %dev_private.i82 = getelementptr inbounds %struct.drm_device, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %dev_private.i82 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_private.i82, align 4
  %dispc.i = getelementptr inbounds %struct.omap_drm_private, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %dispc.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dispc.i, align 4
  %27 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id, align 8
  %call.i83 = tail call ptr @dispc_ovl_get_color_modes(ptr noundef %26, i32 noundef %28) #7
  %29 = ptrtoint ptr %call.i83 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call.i83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not18.i = icmp eq i32 %30, 0
  br i1 %tobool.not18.i, label %omap_plane_install_properties.exit.cleanup_crit_edge, label %omap_plane_install_properties.exit.for.body.i_crit_edge

omap_plane_install_properties.exit.for.body.i_crit_edge: ; preds = %omap_plane_install_properties.exit
  br label %for.body.i

omap_plane_install_properties.exit.cleanup_crit_edge: ; preds = %omap_plane_install_properties.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %omap_plane_install_properties.exit.for.body.i_crit_edge
  %31 = phi i32 [ %34, %for.inc.i.for.body.i_crit_edge ], [ %30, %omap_plane_install_properties.exit.for.body.i_crit_edge ]
  %i.019.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %omap_plane_install_properties.exit.for.body.i_crit_edge ]
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %31, label %for.inc.i [
    i32 1448695129, label %for.body.i.if.then42_crit_edge
    i32 1498831189, label %for.body.i.if.then42_crit_edge86
    i32 842094158, label %for.body.i.if.then42_crit_edge87
  ]

for.body.i.if.then42_crit_edge87:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then42

for.body.i.if.then42_crit_edge86:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then42

for.body.i.if.then42_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then42

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add i32 %i.019.i, 1
  %arrayidx.i = getelementptr i32, ptr %call.i83, i32 %inc.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i, align 4
  %tobool.not.i84 = icmp eq i32 %34, 0
  br i1 %tobool.not.i84, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then42:                                        ; preds = %for.body.i.if.then42_crit_edge, %for.body.i.if.then42_crit_edge86, %for.body.i.if.then42_crit_edge87
  %call43 = tail call i32 @drm_plane_create_color_properties(ptr noundef nonnull %call7.i.i, i32 noundef 3, i32 noundef 3, i32 noundef 0, i32 noundef 1) #7
  br label %cleanup

do.end47:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev48 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %35 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev48, align 4
  %37 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %id, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %38) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end47, %if.then42, %for.inc.i.cleanup_crit_edge, %omap_plane_install_properties.exit.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ null, %do.end47 ], [ %call7.i.i, %if.then42 ], [ inttoptr (i32 -12 to ptr), %if.end22.cleanup_crit_edge ], [ %call7.i.i, %omap_plane_install_properties.exit.cleanup_crit_edge ], [ %call7.i.i, %for.inc.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dispc_get_num_ovls(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dispc_ovl_get_color_modes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_property(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_alpha_property(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_blend_mode_property(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_color_properties(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_plane_destroy(ptr noundef %plane) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 2
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, ptr noundef %1) #7
  tail call void @drm_plane_cleanup(ptr noundef %plane) #7
  tail call void @kfree(ptr noundef %plane) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_plane_reset(ptr noundef %plane) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_atomic_helper_plane_destroy_state(ptr noundef %plane, ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 132) #10
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @__drm_atomic_helper_plane_reset(ptr noundef %plane, ptr noundef nonnull %call7.i.i) #7
  %type = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 16
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.end4.cond.end_crit_edge, label %cond.false

if.end4.cond.end_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %id = getelementptr inbounds %struct.omap_plane, ptr %plane, i32 0, i32 1
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end4.cond.end_crit_edge
  %cond = phi i32 [ %6, %cond.false ], [ 0, %if.end4.cond.end_crit_edge ]
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %state, align 4
  %zpos = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %zpos to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond, ptr %zpos, align 4
  %10 = load ptr, ptr %state, align 4
  %color_encoding = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 17
  %11 = ptrtoint ptr %color_encoding to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %color_encoding, align 4
  %12 = load ptr, ptr %state, align 4
  %color_range = getelementptr inbounds %struct.drm_plane_state, ptr %12, i32 0, i32 18
  %13 = ptrtoint ptr %color_range to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %color_range, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @omap_plane_atomic_duplicate_state(ptr noundef %plane) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !63

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 433, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end24:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 132) #10
  %tobool27.not = icmp eq ptr %call7.i, null
  br i1 %tobool27.not, label %if.end24.cleanup_crit_edge, label %if.end29

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__drm_atomic_helper_plane_duplicate_state(ptr noundef %plane, ptr noundef nonnull %call7.i) #7
  %overlay = getelementptr inbounds %struct.omap_plane_state, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %overlay to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %overlay, align 4
  %overlay30 = getelementptr inbounds %struct.omap_plane_state, ptr %call7.i, i32 0, i32 1
  %5 = ptrtoint ptr %overlay30 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %overlay30, align 4
  %r_overlay = getelementptr inbounds %struct.omap_plane_state, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %r_overlay to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %r_overlay, align 4
  %r_overlay31 = getelementptr inbounds %struct.omap_plane_state, ptr %call7.i, i32 0, i32 2
  %8 = ptrtoint ptr %r_overlay31 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %r_overlay31, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end24.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %call7.i, %if.end29 ], [ null, %if.end24.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_destroy_state(ptr noundef, ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @omap_plane_atomic_set_property(ptr nocapture noundef readonly %plane, ptr nocapture noundef writeonly %state, ptr noundef readnone %property, i64 noundef %val) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plane, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %zorder_prop = getelementptr inbounds %struct.omap_drm_private, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %zorder_prop to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %zorder_prop, align 4
  %cmp = icmp eq ptr %5, %property
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i64 %val to i32
  %zpos = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 15
  %6 = ptrtoint ptr %zpos to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %zpos, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @omap_plane_atomic_get_property(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state, ptr noundef readnone %property, ptr nocapture noundef writeonly %val) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plane, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %zorder_prop = getelementptr inbounds %struct.omap_drm_private, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %zorder_prop to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %zorder_prop, align 4
  %cmp = icmp eq ptr %5, %property
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %zpos = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 15
  %6 = ptrtoint ptr %zpos to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %zpos, align 4
  %conv = zext i32 %7 to i64
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv, ptr %val, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_plane_atomic_print_state(ptr noundef %p, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %overlay = getelementptr inbounds %struct.omap_plane_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %overlay to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %overlay, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.omap_hw_overlay, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %caps = getelementptr inbounds %struct.omap_hw_overlay, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.8, ptr noundef %3, i32 noundef %5) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.9) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %r_overlay = getelementptr inbounds %struct.omap_plane_state, ptr %state, i32 0, i32 2
  %6 = ptrtoint ptr %r_overlay to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %r_overlay, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.else9, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %name6 = getelementptr inbounds %struct.omap_hw_overlay, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %name6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name6, align 4
  %caps8 = getelementptr inbounds %struct.omap_hw_overlay, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %caps8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %caps8, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.10, ptr noundef %9, i32 noundef %11) #7
  br label %if.end10

if.else9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.11) #7
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %if.then4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_reset(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_plane_prepare_fb(ptr noundef %plane, ptr noundef %new_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %new_state, i32 0, i32 2
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @drm_gem_plane_helper_prepare_fb(ptr noundef %plane, ptr noundef %new_state) #7
  %2 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb, align 4
  %call2 = tail call i32 @omap_framebuffer_pin(ptr noundef %3) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_plane_cleanup_fb(ptr nocapture noundef readnone %plane, ptr nocapture noundef readonly %old_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 2
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @omap_framebuffer_unpin(ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_plane_atomic_check(ptr noundef %plane, ptr noundef %state) #2 align 64 {
entry:
  %width = alloca i16, align 2
  %height = alloca i16, align 2
  %new_ovl = alloca ptr, align 4
  %new_r_ovl = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 17
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 3
  %4 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %new_state.i, align 4
  %old_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 2
  %6 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %old_state.i, align 4
  %8 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %plane, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %width) #7
  %12 = ptrtoint ptr %width to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %width, align 2, !annotation !64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %height) #7
  %13 = ptrtoint ptr %height to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %height, align 2, !annotation !64
  %call2 = tail call ptr @omap_get_global_state(ptr noundef %state) #7
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %call2 to i32
  br label %cleanup225

if.end:                                           ; preds = %entry
  %dispc = getelementptr inbounds %struct.omap_drm_private, ptr %11, i32 0, i32 4
  %15 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dispc, align 4
  call void @dispc_ovl_get_max_size(ptr noundef %16, ptr noundef nonnull %width, ptr noundef nonnull %height) #7
  %17 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %width, align 2
  %conv = zext i16 %18 to i32
  %shl = shl nuw i32 %conv, 16
  %19 = ptrtoint ptr %height to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %height, align 2
  %conv5 = zext i16 %20 to i32
  %shl6 = shl nuw i32 %conv5, 16
  %crtc7 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %crtc7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %crtc7, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %cond.end, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

cond.end:                                         ; preds = %if.end
  %state9 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %23 = ptrtoint ptr %state9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %state9, align 4
  %crtc10 = getelementptr inbounds %struct.drm_plane_state, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %crtc10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %crtc10, align 4
  %tobool11.not = icmp eq ptr %26, null
  br i1 %tobool11.not, label %cond.end.cleanup225_crit_edge, label %cond.end.if.end13_crit_edge

cond.end.if.end13_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

cond.end.cleanup225_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup225

if.end13:                                         ; preds = %cond.end.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %cond338 = phi ptr [ %26, %cond.end.if.end13_crit_edge ], [ %22, %if.end.if.end13_crit_edge ]
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %27 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %crtcs.i, align 4
  %index.i.i335 = getelementptr inbounds %struct.drm_crtc, ptr %cond338, i32 0, i32 8
  %29 = ptrtoint ptr %index.i.i335 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %index.i.i335, align 4
  %state1.i = getelementptr %struct.__drm_crtcs_state, ptr %28, i32 %30, i32 1
  %31 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %state1.i, align 4
  %tobool15.not = icmp eq ptr %32, null
  br i1 %tobool15.not, label %do.end, label %if.end41, !prof !63

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 233, i32 noundef 9, ptr noundef null) #7
  br label %cleanup225

if.end41:                                         ; preds = %if.end13
  %call42 = call i32 @drm_atomic_helper_check_plane_state(ptr noundef %5, ptr noundef nonnull %32, i32 noundef 8192, i32 noundef 524288, i1 noundef zeroext true, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end41.cleanup225_crit_edge

if.end41.cleanup225_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup225

if.end45:                                         ; preds = %if.end41
  %name = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 2
  %33 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name, align 4
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 22
  %35 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %visible, align 4, !range !61
  %37 = zext i8 %36 to i32
  %visible48 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 22
  %38 = ptrtoint ptr %visible48 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %visible48, align 4, !range !61
  %40 = zext i8 %39 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.12, ptr noundef %34, i32 noundef %37, i32 noundef %40) #7
  %41 = ptrtoint ptr %visible48 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %visible48, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool52.not = icmp eq i8 %42, 0
  br i1 %tobool52.not, label %if.then53, label %if.end56

if.then53:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %overlay = getelementptr inbounds %struct.omap_plane_state, ptr %5, i32 0, i32 1
  %43 = ptrtoint ptr %overlay to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %overlay, align 4
  call void @omap_overlay_release(ptr noundef %state, ptr noundef %44) #7
  %r_overlay = getelementptr inbounds %struct.omap_plane_state, ptr %5, i32 0, i32 2
  %45 = ptrtoint ptr %r_overlay to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %r_overlay, align 4
  call void @omap_overlay_release(ptr noundef %state, ptr noundef %46) #7
  %47 = ptrtoint ptr %overlay to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %overlay, align 4
  %48 = ptrtoint ptr %r_overlay to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %r_overlay, align 4
  br label %cleanup225

if.end56:                                         ; preds = %if.end45
  %crtc_x = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 4
  %49 = ptrtoint ptr %crtc_x to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %crtc_x, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp = icmp slt i32 %50, 0
  br i1 %cmp, label %if.end56.cleanup225_crit_edge, label %lor.lhs.false

if.end56.cleanup225_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup225

lor.lhs.false:                                    ; preds = %if.end56
  %crtc_y = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 5
  %51 = ptrtoint ptr %crtc_y to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %crtc_y, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp58 = icmp slt i32 %52, 0
  br i1 %cmp58, label %lor.lhs.false.cleanup225_crit_edge, label %if.end61

lor.lhs.false.cleanup225_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup225

if.end61:                                         ; preds = %lor.lhs.false
  %crtc_w = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 6
  %53 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %crtc_w, align 4
  %add = add i32 %54, %50
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %32, i32 0, i32 7, i32 1
  %55 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %hdisplay, align 4
  %conv63 = zext i16 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv63)
  %cmp64 = icmp ugt i32 %add, %conv63
  br i1 %cmp64, label %if.end61.cleanup225_crit_edge, label %if.end67

if.end61.cleanup225_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup225

if.end67:                                         ; preds = %if.end61
  %crtc_h = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 7
  %57 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %crtc_h, align 4
  %add69 = add i32 %58, %52
  %vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %32, i32 0, i32 7, i32 6
  %59 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %vdisplay, align 2
  %conv71 = zext i16 %60 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add69, i32 %conv71)
  %cmp72 = icmp ugt i32 %add69, %conv71
  br i1 %cmp72, label %if.end67.cleanup225_crit_edge, label %if.end75

if.end67.cleanup225_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup225

if.end75:                                         ; preds = %if.end67
  %src_h = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 10
  %61 = ptrtoint ptr %src_h to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %src_h, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %shl6)
  %cmp76 = icmp ugt i32 %62, %shl6
  br i1 %cmp76, label %if.end75.cleanup225_crit_edge, label %lor.lhs.false78

if.end75.cleanup225_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup225

lor.lhs.false78:                                  ; preds = %if.end75
  %63 = ptrtoint ptr %height to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %height, align 2
  %conv80 = zext i16 %64 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %conv80)
  %cmp81 = icmp ugt i32 %58, %conv80
  br i1 %cmp81, label %lor.lhs.false78.cleanup225_crit_edge, label %if.end84

lor.lhs.false78.cleanup225_crit_edge:             ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup225

if.end84:                                         ; preds = %lor.lhs.false78
  %src_w = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 11
  %65 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %src_w, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %shl)
  %cmp85 = icmp ugt i32 %66, %shl
  br i1 %cmp85, label %if.end84.if.then92_crit_edge, label %lor.lhs.false87

if.end84.if.then92_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then92

lor.lhs.false87:                                  ; preds = %if.end84
  %67 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %width, align 2
  %conv89 = zext i16 %68 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %conv89)
  %cmp90 = icmp ugt i32 %54, %conv89
  br i1 %cmp90, label %lor.lhs.false87.if.then92_crit_edge, label %lor.lhs.false87.if.end133_crit_edge

lor.lhs.false87.if.end133_crit_edge:              ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133

lor.lhs.false87.if.then92_crit_edge:              ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then92

if.then92:                                        ; preds = %lor.lhs.false87.if.then92_crit_edge, %if.end84.if.then92_crit_edge
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %69 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %fb, align 4
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %70, i32 0, i32 4
  %71 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %format, align 8
  %is_yuv = getelementptr inbounds %struct.drm_format_info, ptr %72, i32 0, i32 9
  %73 = ptrtoint ptr %is_yuv to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %is_yuv, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool93.not = icmp eq i8 %74, 0
  br i1 %tobool93.not, label %if.then92.if.else118_crit_edge, label %land.lhs.true

if.then92.if.else118_crit_edge:                   ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else118

land.lhs.true:                                    ; preds = %if.then92
  %75 = and i32 %66, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool97.not = icmp eq i32 %75, 0
  %76 = and i32 %54, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool102.not = icmp eq i32 %76, 0
  %or.cond = select i1 %tobool97.not, i1 %tobool102.not, i1 false
  br i1 %or.cond, label %land.lhs.true.if.else118_crit_edge, label %if.then103

land.lhs.true.if.else118_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else118

if.then103:                                       ; preds = %land.lhs.true
  %77 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %width, align 2
  %conv105 = zext i16 %78 to i32
  %mul = shl nuw nsw i32 %conv105, 1
  %sub = add nsw i32 %mul, -1
  %shl106 = shl i32 %sub, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %shl106)
  %cmp107.not = icmp ugt i32 %66, %shl106
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %sub)
  %cmp114.not = icmp ugt i32 %54, %sub
  %or.cond342 = select i1 %cmp107.not, i1 true, i1 %cmp114.not
  br i1 %or.cond342, label %if.then103.cleanup225_crit_edge, label %if.then103.if.end133_crit_edge

if.then103.if.end133_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133

if.then103.cleanup225_crit_edge:                  ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup225

if.else118:                                       ; preds = %land.lhs.true.if.else118_crit_edge, %if.then92.if.else118_crit_edge
  %mul120 = shl i32 %conv, 17
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %mul120)
  %cmp121.not = icmp ugt i32 %66, %mul120
  br i1 %cmp121.not, label %if.else118.cleanup225_crit_edge, label %land.lhs.true123

if.else118.cleanup225_crit_edge:                  ; preds = %if.else118
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup225

land.lhs.true123:                                 ; preds = %if.else118
  %79 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %width, align 2
  %conv125 = zext i16 %80 to i32
  %mul126 = shl nuw nsw i32 %conv125, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %mul126)
  %cmp127.not = icmp ugt i32 %54, %mul126
  br i1 %cmp127.not, label %land.lhs.true123.cleanup225_crit_edge, label %land.lhs.true123.if.end133_crit_edge

land.lhs.true123.if.end133_crit_edge:             ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133

land.lhs.true123.cleanup225_crit_edge:            ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup225

if.end133:                                        ; preds = %land.lhs.true123.if.end133_crit_edge, %if.then103.if.end133_crit_edge, %lor.lhs.false87.if.end133_crit_edge
  %new_r_hw_overlay.2.off0 = phi i1 [ false, %lor.lhs.false87.if.end133_crit_edge ], [ true, %land.lhs.true123.if.end133_crit_edge ], [ true, %if.then103.if.end133_crit_edge ]
  %rotation = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 14
  %81 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rotation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %cmp134.not = icmp eq i32 %82, 1
  br i1 %cmp134.not, label %if.end133.if.end140_crit_edge, label %land.lhs.true136

if.end133.if.end140_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end140

land.lhs.true136:                                 ; preds = %if.end133
  %fb137 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %83 = ptrtoint ptr %fb137 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %fb137, align 4
  %call138 = call zeroext i1 @omap_framebuffer_supports_rotation(ptr noundef %84) #7
  br i1 %call138, label %land.lhs.true136.if.end140_crit_edge, label %land.lhs.true136.cleanup225_crit_edge

land.lhs.true136.cleanup225_crit_edge:            ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup225

land.lhs.true136.if.end140_crit_edge:             ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end140

if.end140:                                        ; preds = %land.lhs.true136.if.end140_crit_edge, %if.end133.if.end140_crit_edge
  %85 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %src_w, align 4
  %shr142 = lshr i32 %86, 16
  %87 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %crtc_w, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr142, i32 %88)
  %cmp144.not = icmp eq i32 %shr142, %88
  br i1 %cmp144.not, label %lor.lhs.false146, label %if.end140.if.then152_crit_edge

if.end140.if.then152_crit_edge:                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then152

lor.lhs.false146:                                 ; preds = %if.end140
  %89 = ptrtoint ptr %src_h to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %src_h, align 4
  %shr148 = lshr i32 %90, 16
  %91 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %crtc_h, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr148, i32 %92)
  %cmp150.not = icmp eq i32 %shr148, %92
  br i1 %cmp150.not, label %lor.lhs.false146.if.end153_crit_edge, label %lor.lhs.false146.if.then152_crit_edge

lor.lhs.false146.if.then152_crit_edge:            ; preds = %lor.lhs.false146
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then152

lor.lhs.false146.if.end153_crit_edge:             ; preds = %lor.lhs.false146
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end153

if.then152:                                       ; preds = %lor.lhs.false146.if.then152_crit_edge, %if.end140.if.then152_crit_edge
  br label %if.end153

if.end153:                                        ; preds = %if.then152, %lor.lhs.false146.if.end153_crit_edge
  %caps.0 = phi i32 [ 1, %if.then152 ], [ 0, %lor.lhs.false146.if.end153_crit_edge ]
  %fb154 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %93 = ptrtoint ptr %fb154 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %fb154, align 4
  %format155 = getelementptr inbounds %struct.drm_framebuffer, ptr %94, i32 0, i32 4
  %95 = ptrtoint ptr %format155 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %format155, align 8
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %96, align 4
  %overlay157 = getelementptr inbounds %struct.omap_plane_state, ptr %5, i32 0, i32 1
  %99 = ptrtoint ptr %overlay157 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %overlay157, align 4
  %tobool158.not = icmp eq ptr %100, null
  br i1 %tobool158.not, label %if.end153.if.end171_crit_edge, label %lor.lhs.false159

if.end153.if.end171_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end171

lor.lhs.false159:                                 ; preds = %if.end153
  %caps161 = getelementptr inbounds %struct.omap_hw_overlay, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %caps161 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %caps161, align 4
  %neg = xor i32 %102, -1
  %and162 = and i32 %caps.0, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %if.else165, label %lor.lhs.false159.if.end171_crit_edge

lor.lhs.false159.if.end171_crit_edge:             ; preds = %lor.lhs.false159
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end171

if.else165:                                       ; preds = %lor.lhs.false159
  call void @__sanitizer_cov_trace_pc() #9
  %103 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dispc, align 4
  %id = getelementptr inbounds %struct.omap_hw_overlay, ptr %100, i32 0, i32 2
  %105 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %id, align 4
  %call168 = call zeroext i1 @dispc_ovl_color_mode_supported(ptr noundef %104, i32 noundef %106, i32 noundef %98) #7
  %not.call168 = xor i1 %call168, true
  br label %if.end171

if.end171:                                        ; preds = %if.else165, %lor.lhs.false159.if.end171_crit_edge, %if.end153.if.end171_crit_edge
  %new_hw_overlay.0.off0 = phi i1 [ true, %lor.lhs.false159.if.end171_crit_edge ], [ true, %if.end153.if.end171_crit_edge ], [ %not.call168, %if.else165 ]
  %r_overlay175 = getelementptr inbounds %struct.omap_plane_state, ptr %5, i32 0, i32 2
  %107 = ptrtoint ptr %r_overlay175 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %r_overlay175, align 4
  br i1 %new_r_hw_overlay.2.off0, label %land.lhs.true174, label %land.lhs.true179.critedge

land.lhs.true174:                                 ; preds = %if.end171
  %tobool176.not = icmp eq ptr %108, null
  %brmerge = select i1 %tobool176.not, i1 true, i1 %new_hw_overlay.0.off0
  br i1 %brmerge, label %land.lhs.true174.if.then185_crit_edge, label %land.lhs.true174.if.end214_crit_edge

land.lhs.true174.if.end214_crit_edge:             ; preds = %land.lhs.true174
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end214

land.lhs.true174.if.then185_crit_edge:            ; preds = %land.lhs.true174
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then185

land.lhs.true179.critedge:                        ; preds = %if.end171
  %tobool181.not = icmp ne ptr %108, null
  %brmerge332 = select i1 %tobool181.not, i1 true, i1 %new_hw_overlay.0.off0
  br i1 %brmerge332, label %land.lhs.true179.critedge.if.then185_crit_edge, label %land.lhs.true179.critedge.if.end214_crit_edge

land.lhs.true179.critedge.if.end214_crit_edge:    ; preds = %land.lhs.true179.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end214

land.lhs.true179.critedge.if.then185_crit_edge:   ; preds = %land.lhs.true179.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then185

if.then185:                                       ; preds = %land.lhs.true179.critedge.if.then185_crit_edge, %land.lhs.true174.if.then185_crit_edge
  %new_r_ovl. = phi ptr [ null, %land.lhs.true179.critedge.if.then185_crit_edge ], [ %new_r_ovl, %land.lhs.true174.if.then185_crit_edge ]
  %109 = ptrtoint ptr %overlay157 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %overlay157, align 4
  %r_overlay187 = getelementptr inbounds %struct.omap_plane_state, ptr %5, i32 0, i32 2
  %111 = ptrtoint ptr %r_overlay187 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %r_overlay187, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_ovl) #7
  %113 = ptrtoint ptr %new_ovl to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %new_ovl, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_r_ovl) #7
  %114 = ptrtoint ptr %new_r_ovl to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr null, ptr %new_r_ovl, align 4
  call void @omap_overlay_release(ptr noundef %state, ptr noundef %110) #7
  call void @omap_overlay_release(ptr noundef %state, ptr noundef %112) #7
  %call194 = call i32 @omap_overlay_assign(ptr noundef %state, ptr noundef %plane, i32 noundef %caps.0, i32 noundef %98, ptr noundef nonnull %new_ovl, ptr noundef %new_r_ovl.) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %if.end200, label %cleanup208

if.end200:                                        ; preds = %if.then185
  %115 = ptrtoint ptr %new_ovl to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %new_ovl, align 4
  %117 = ptrtoint ptr %overlay157 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %116, ptr %overlay157, align 4
  br i1 %new_r_hw_overlay.2.off0, label %if.then203, label %if.end200.cleanup208.thread_crit_edge

if.end200.cleanup208.thread_crit_edge:            ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup208.thread

if.then203:                                       ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #9
  %118 = ptrtoint ptr %new_r_ovl to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %new_r_ovl, align 4
  br label %cleanup208.thread

cleanup208.thread:                                ; preds = %if.then203, %if.end200.cleanup208.thread_crit_edge
  %storemerge329.ph = phi ptr [ null, %if.end200.cleanup208.thread_crit_edge ], [ %119, %if.then203 ]
  %120 = ptrtoint ptr %r_overlay187 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %storemerge329.ph, ptr %r_overlay187, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_r_ovl) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_ovl) #7
  br label %if.end214

cleanup208:                                       ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #9
  %121 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %name, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13, ptr noundef %122) #7
  %123 = ptrtoint ptr %overlay157 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr null, ptr %overlay157, align 4
  %124 = ptrtoint ptr %r_overlay187 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr null, ptr %r_overlay187, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_r_ovl) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_ovl) #7
  br label %cleanup225

if.end214:                                        ; preds = %cleanup208.thread, %land.lhs.true179.critedge.if.end214_crit_edge, %land.lhs.true174.if.end214_crit_edge
  %125 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %name, align 4
  %127 = ptrtoint ptr %overlay157 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %overlay157, align 4
  %id217 = getelementptr inbounds %struct.omap_hw_overlay, ptr %128, i32 0, i32 2
  %129 = ptrtoint ptr %id217 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %id217, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.14, ptr noundef %126, i32 noundef %130) #7
  %r_overlay218 = getelementptr inbounds %struct.omap_plane_state, ptr %5, i32 0, i32 2
  %131 = ptrtoint ptr %r_overlay218 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %r_overlay218, align 4
  %tobool219.not = icmp eq ptr %132, null
  br i1 %tobool219.not, label %if.end214.cleanup225_crit_edge, label %if.then220

if.end214.cleanup225_crit_edge:                   ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup225

if.then220:                                       ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #9
  %133 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %name, align 4
  %id223 = getelementptr inbounds %struct.omap_hw_overlay, ptr %132, i32 0, i32 2
  %135 = ptrtoint ptr %id223 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %id223, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.15, ptr noundef %134, i32 noundef %136) #7
  br label %cleanup225

cleanup225:                                       ; preds = %if.then220, %if.end214.cleanup225_crit_edge, %cleanup208, %land.lhs.true136.cleanup225_crit_edge, %land.lhs.true123.cleanup225_crit_edge, %if.else118.cleanup225_crit_edge, %if.then103.cleanup225_crit_edge, %lor.lhs.false78.cleanup225_crit_edge, %if.end75.cleanup225_crit_edge, %if.end67.cleanup225_crit_edge, %if.end61.cleanup225_crit_edge, %lor.lhs.false.cleanup225_crit_edge, %if.end56.cleanup225_crit_edge, %if.then53, %if.end41.cleanup225_crit_edge, %do.end, %cond.end.cleanup225_crit_edge, %if.then
  %retval.3 = phi i32 [ %14, %if.then ], [ 0, %do.end ], [ %call194, %cleanup208 ], [ 0, %if.then53 ], [ 0, %cond.end.cleanup225_crit_edge ], [ %call42, %if.end41.cleanup225_crit_edge ], [ -22, %lor.lhs.false.cleanup225_crit_edge ], [ -22, %if.end56.cleanup225_crit_edge ], [ -22, %if.end61.cleanup225_crit_edge ], [ -22, %if.end67.cleanup225_crit_edge ], [ -22, %lor.lhs.false78.cleanup225_crit_edge ], [ -22, %if.end75.cleanup225_crit_edge ], [ -22, %land.lhs.true136.cleanup225_crit_edge ], [ 0, %if.then220 ], [ 0, %if.end214.cleanup225_crit_edge ], [ -22, %if.then103.cleanup225_crit_edge ], [ -22, %land.lhs.true123.cleanup225_crit_edge ], [ -22, %if.else118.cleanup225_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %height) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %width) #7
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_plane_atomic_update(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  %info = alloca %struct.omap_overlay_info, align 4
  %r_info = alloca %struct.omap_overlay_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plane, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %4 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 17
  %6 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %5, i32 %7, i32 3
  %8 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %new_state.i, align 4
  %old_state.i = getelementptr %struct.__drm_planes_state, ptr %5, i32 %7, i32 2
  %10 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %old_state.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %info) #7
  %12 = call ptr @memset(ptr %info, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %r_info) #7
  %r_overlay.i = getelementptr inbounds %struct.omap_plane_state, ptr %9, i32 0, i32 2
  %13 = ptrtoint ptr %r_overlay.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %r_overlay.i, align 4
  %tobool.i.not = icmp eq ptr %14, null
  %overlay = getelementptr inbounds %struct.omap_plane_state, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %overlay to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %overlay, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @omap_overlay_update_state(ptr noundef %3, ptr noundef nonnull %16) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %r_overlay = getelementptr inbounds %struct.omap_plane_state, ptr %11, i32 0, i32 2
  %17 = ptrtoint ptr %r_overlay to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %r_overlay, align 4
  %tobool7.not = icmp eq ptr %18, null
  br i1 %tobool7.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @omap_overlay_update_state(ptr noundef %3, ptr noundef nonnull %18) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %overlay11 = getelementptr inbounds %struct.omap_plane_state, ptr %9, i32 0, i32 1
  %19 = ptrtoint ptr %overlay11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %overlay11, align 4
  %tobool12.not = icmp eq ptr %20, null
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %base = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 4
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %base, align 4
  %name = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 2
  %23 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.16, i32 noundef %22, ptr noundef %24) #7
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %id16 = getelementptr inbounds %struct.omap_hw_overlay, ptr %20, i32 0, i32 2
  %25 = ptrtoint ptr %id16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id16, align 4
  %name17 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 2
  %27 = ptrtoint ptr %name17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name17, align 4
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 1
  %29 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %crtc, align 4
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 2
  %31 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fb, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.17, ptr noundef %28, ptr noundef %30, ptr noundef %32) #7
  %rotation = getelementptr inbounds %struct.omap_overlay_info, ptr %info, i32 0, i32 6
  %33 = call ptr @memset(ptr %info, i32 0, i32 40)
  %34 = ptrtoint ptr %rotation to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %rotation, align 4
  %alpha = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 12
  %35 = ptrtoint ptr %alpha to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %alpha, align 4
  %37 = lshr i16 %36, 8
  %conv18 = trunc i16 %37 to i8
  %global_alpha = getelementptr inbounds %struct.omap_overlay_info, ptr %info, i32 0, i32 12
  %38 = ptrtoint ptr %global_alpha to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv18, ptr %global_alpha, align 4
  %normalized_zpos = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 16
  %39 = ptrtoint ptr %normalized_zpos to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %normalized_zpos, align 4
  %conv19 = trunc i32 %40 to i8
  %zorder = getelementptr inbounds %struct.omap_overlay_info, ptr %info, i32 0, i32 14
  %41 = ptrtoint ptr %zorder to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv19, ptr %zorder, align 2
  %pixel_blend_mode = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 13
  %42 = ptrtoint ptr %pixel_blend_mode to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %pixel_blend_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp = icmp eq i16 %43, 0
  %spec.select = zext i1 %cmp to i8
  %44 = getelementptr inbounds %struct.omap_overlay_info, ptr %info, i32 0, i32 13
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %spec.select, ptr %44, align 1
  %color_encoding = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 17
  %46 = ptrtoint ptr %color_encoding to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %color_encoding, align 4
  %color_encoding25 = getelementptr inbounds %struct.omap_overlay_info, ptr %info, i32 0, i32 15
  %48 = ptrtoint ptr %color_encoding25 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %color_encoding25, align 4
  %color_range = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 18
  %49 = ptrtoint ptr %color_range to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %color_range, align 4
  %color_range26 = getelementptr inbounds %struct.omap_overlay_info, ptr %info, i32 0, i32 16
  %51 = ptrtoint ptr %color_range26 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %color_range26, align 4
  %52 = call ptr @memcpy(ptr %r_info, ptr %info, i32 48)
  %53 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fb, align 4
  %r_info. = select i1 %tobool.i.not, ptr null, ptr %r_info
  call void @omap_framebuffer_update_scanout(ptr noundef %54, ptr noundef %9, ptr noundef nonnull %info, ptr noundef %r_info.) #7
  %55 = ptrtoint ptr %overlay11 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %overlay11, align 4
  %name31 = getelementptr inbounds %struct.omap_hw_overlay, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %name31 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name31, align 4
  %width = getelementptr inbounds %struct.omap_overlay_info, ptr %info, i32 0, i32 3
  %59 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %width, align 2
  %conv32 = zext i16 %60 to i32
  %height = getelementptr inbounds %struct.omap_overlay_info, ptr %info, i32 0, i32 4
  %61 = ptrtoint ptr %height to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %height, align 4
  %conv33 = zext i16 %62 to i32
  %out_width = getelementptr inbounds %struct.omap_overlay_info, ptr %info, i32 0, i32 10
  %63 = ptrtoint ptr %out_width to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %out_width, align 4
  %conv34 = zext i16 %64 to i32
  %out_height = getelementptr inbounds %struct.omap_overlay_info, ptr %info, i32 0, i32 11
  %65 = ptrtoint ptr %out_height to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %out_height, align 2
  %conv35 = zext i16 %66 to i32
  %screen_width = getelementptr inbounds %struct.omap_overlay_info, ptr %info, i32 0, i32 2
  %67 = ptrtoint ptr %screen_width to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %screen_width, align 4
  %conv36 = zext i16 %68 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.18, ptr noundef %58, i32 noundef %conv32, i32 noundef %conv33, i32 noundef %conv34, i32 noundef %conv35, i32 noundef %conv36) #7
  %pos_x = getelementptr inbounds %struct.omap_overlay_info, ptr %info, i32 0, i32 8
  %69 = ptrtoint ptr %pos_x to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %pos_x, align 4
  %conv37 = zext i16 %70 to i32
  %pos_y = getelementptr inbounds %struct.omap_overlay_info, ptr %info, i32 0, i32 9
  %71 = ptrtoint ptr %pos_y to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %pos_y, align 2
  %conv38 = zext i16 %72 to i32
  %p_uv_addr = getelementptr inbounds %struct.omap_overlay_info, ptr %info, i32 0, i32 1
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.19, i32 noundef %conv37, i32 noundef %conv38, ptr noundef nonnull %info, ptr noundef %p_uv_addr) #7
  br i1 %tobool.i.not, label %if.end14.if.end65_crit_edge, label %if.then40

if.end14.if.end65_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then40:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %r_overlay.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %r_overlay.i, align 4
  %id42 = getelementptr inbounds %struct.omap_hw_overlay, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %id42 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %id42, align 4
  %77 = ptrtoint ptr %zorder to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %zorder, align 2
  %add = add i8 %78, 1
  %zorder46 = getelementptr inbounds %struct.omap_overlay_info, ptr %r_info, i32 0, i32 14
  %79 = ptrtoint ptr %zorder46 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %add, ptr %zorder46, align 2
  %name48 = getelementptr inbounds %struct.omap_hw_overlay, ptr %74, i32 0, i32 1
  %80 = ptrtoint ptr %name48 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %name48, align 4
  %width49 = getelementptr inbounds %struct.omap_overlay_info, ptr %r_info, i32 0, i32 3
  %82 = ptrtoint ptr %width49 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %width49, align 2
  %conv50 = zext i16 %83 to i32
  %height51 = getelementptr inbounds %struct.omap_overlay_info, ptr %r_info, i32 0, i32 4
  %84 = ptrtoint ptr %height51 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %height51, align 4
  %conv52 = zext i16 %85 to i32
  %out_width53 = getelementptr inbounds %struct.omap_overlay_info, ptr %r_info, i32 0, i32 10
  %86 = ptrtoint ptr %out_width53 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %out_width53, align 4
  %conv54 = zext i16 %87 to i32
  %out_height55 = getelementptr inbounds %struct.omap_overlay_info, ptr %r_info, i32 0, i32 11
  %88 = ptrtoint ptr %out_height55 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %out_height55, align 2
  %conv56 = zext i16 %89 to i32
  %screen_width57 = getelementptr inbounds %struct.omap_overlay_info, ptr %r_info, i32 0, i32 2
  %90 = ptrtoint ptr %screen_width57 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %screen_width57, align 4
  %conv58 = zext i16 %91 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.18, ptr noundef %81, i32 noundef %conv50, i32 noundef %conv52, i32 noundef %conv54, i32 noundef %conv56, i32 noundef %conv58) #7
  %pos_x59 = getelementptr inbounds %struct.omap_overlay_info, ptr %r_info, i32 0, i32 8
  %92 = ptrtoint ptr %pos_x59 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %pos_x59, align 4
  %conv60 = zext i16 %93 to i32
  %pos_y61 = getelementptr inbounds %struct.omap_overlay_info, ptr %r_info, i32 0, i32 9
  %94 = ptrtoint ptr %pos_y61 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %pos_y61, align 2
  %conv62 = zext i16 %95 to i32
  %p_uv_addr64 = getelementptr inbounds %struct.omap_overlay_info, ptr %r_info, i32 0, i32 1
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.19, i32 noundef %conv60, i32 noundef %conv62, ptr noundef nonnull %r_info, ptr noundef %p_uv_addr64) #7
  br label %if.end65

if.end65:                                         ; preds = %if.then40, %if.end14.if.end65_crit_edge
  %r_ovl_id.0 = phi i32 [ %76, %if.then40 ], [ -1, %if.end14.if.end65_crit_edge ]
  %dispc = getelementptr inbounds %struct.omap_drm_private, ptr %3, i32 0, i32 4
  %96 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dispc, align 4
  %98 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %crtc, align 4
  %call67 = call ptr @omap_crtc_timings(ptr noundef %99) #7
  %100 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %crtc, align 4
  %call69 = call i32 @omap_crtc_channel(ptr noundef %101) #7
  %call70 = call i32 @dispc_ovl_setup(ptr noundef %97, i32 noundef %26, ptr noundef nonnull %info, ptr noundef %call67, i1 noundef zeroext false, i32 noundef %call69) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end78, label %do.end

do.end:                                           ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %102 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %plane, align 8
  %dev74 = getelementptr inbounds %struct.drm_device, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %dev74 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev74, align 4
  %106 = ptrtoint ptr %name17 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %name17, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.20, ptr noundef %107) #11
  %108 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dispc, align 4
  %call77 = call i32 @dispc_ovl_enable(ptr noundef %109, i32 noundef %26, i1 noundef zeroext false) #7
  br label %cleanup

if.end78:                                         ; preds = %if.end65
  %110 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dispc, align 4
  %call80 = call i32 @dispc_ovl_enable(ptr noundef %111, i32 noundef %26, i1 noundef zeroext true) #7
  br i1 %tobool.i.not, label %if.end78.cleanup_crit_edge, label %if.then82

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then82:                                        ; preds = %if.end78
  %112 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dispc, align 4
  %114 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %crtc, align 4
  %call85 = call ptr @omap_crtc_timings(ptr noundef %115) #7
  %116 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %crtc, align 4
  %call87 = call i32 @omap_crtc_channel(ptr noundef %117) #7
  %call88 = call i32 @dispc_ovl_setup(ptr noundef %113, i32 noundef %r_ovl_id.0, ptr noundef nonnull %r_info, ptr noundef %call85, i1 noundef zeroext false, i32 noundef %call87) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end101, label %do.end93

do.end93:                                         ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #9
  %118 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %plane, align 8
  %dev95 = getelementptr inbounds %struct.drm_device, ptr %119, i32 0, i32 2
  %120 = ptrtoint ptr %dev95 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev95, align 4
  %122 = ptrtoint ptr %name17 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %name17, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.23, ptr noundef %123) #11
  %124 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dispc, align 4
  %call98 = call i32 @dispc_ovl_enable(ptr noundef %125, i32 noundef %r_ovl_id.0, i1 noundef zeroext false) #7
  %126 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dispc, align 4
  %call100 = call i32 @dispc_ovl_enable(ptr noundef %127, i32 noundef %26, i1 noundef zeroext false) #7
  br label %cleanup

if.end101:                                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #9
  %128 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dispc, align 4
  %call103 = call i32 @dispc_ovl_enable(ptr noundef %129, i32 noundef %r_ovl_id.0, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end101, %do.end93, %if.end78.cleanup_crit_edge, %do.end, %if.then13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %r_info) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %info) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_plane_atomic_disable(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plane, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %4 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 17
  %6 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %5, i32 %7, i32 3
  %8 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %new_state.i, align 4
  %old_state.i = getelementptr %struct.__drm_planes_state, ptr %5, i32 %7, i32 2
  %10 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %old_state.i, align 4
  %overlay = getelementptr inbounds %struct.omap_plane_state, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %overlay to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %overlay, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %rotation = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 14
  %14 = ptrtoint ptr %rotation to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %rotation, align 4
  %type = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 16
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp = icmp eq i32 %16, 1
  br i1 %cmp, label %if.end.cond.end_crit_edge, label %cond.false

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %id = getelementptr inbounds %struct.omap_plane, ptr %plane, i32 0, i32 1
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %18, %cond.false ], [ 0, %if.end.cond.end_crit_edge ]
  %zpos = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 15
  %19 = ptrtoint ptr %zpos to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond, ptr %zpos, align 4
  %20 = ptrtoint ptr %overlay to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %overlay, align 4
  tail call void @omap_overlay_update_state(ptr noundef %3, ptr noundef %21) #7
  %overlay9 = getelementptr inbounds %struct.omap_plane_state, ptr %9, i32 0, i32 1
  %22 = ptrtoint ptr %overlay9 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %overlay9, align 4
  %r_overlay.i = getelementptr inbounds %struct.omap_plane_state, ptr %11, i32 0, i32 2
  %23 = ptrtoint ptr %r_overlay.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %r_overlay.i, align 4
  %tobool.i.not = icmp eq ptr %24, null
  br i1 %tobool.i.not, label %cond.end.cleanup_crit_edge, label %if.then11

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @omap_overlay_update_state(ptr noundef %3, ptr noundef nonnull %24) #7
  %r_overlay12 = getelementptr inbounds %struct.omap_plane_state, ptr %9, i32 0, i32 2
  %25 = ptrtoint ptr %r_overlay12 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %r_overlay12, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_plane_helper_prepare_fb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_framebuffer_pin(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_framebuffer_unpin(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap_get_global_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dispc_ovl_get_max_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_overlay_release(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @omap_framebuffer_supports_rotation(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dispc_ovl_color_mode_supported(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_overlay_assign(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_overlay_update_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_framebuffer_update_scanout(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dispc_ovl_setup(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap_crtc_timings(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_crtc_channel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dispc_ovl_enable(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !46, !47, !48, !50, !51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/omapdrm/omap_plane.c", i32 540, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/omapdrm/omap_plane.c", i32 549, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/omapdrm/omap_plane.c", i32 550, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/omapdrm/omap_plane.c", i32 584, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @omap_plane_init._entry, !7, !"_entry", i1 false, i1 false}
!12 = !{ptr @omap_plane_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @omap_plane_funcs, !14, !"omap_plane_funcs", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/omapdrm/omap_plane.c", i32 499, i32 37}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/omapdrm/omap_plane.c", i32 373, i32 2}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/omapdrm/omap_plane.c", i32 456, i32 17}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/omapdrm/omap_plane.c", i32 460, i32 17}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/omapdrm/omap_plane.c", i32 462, i32 17}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/omapdrm/omap_plane.c", i32 466, i32 17}
!25 = !{ptr @omap_plane_helper_funcs, !26, !"omap_plane_helper_funcs", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/omapdrm/omap_plane.c", i32 361, i32 44}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/omapdrm/omap_plane.c", i32 248, i32 2}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/omapdrm/omap_plane.c", i32 340, i32 4}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/omapdrm/omap_plane.c", i32 353, i32 2}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/omapdrm/omap_plane.c", i32 356, i32 3}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/omapdrm/omap_plane.c", i32 89, i32 3}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/omapdrm/omap_plane.c", i32 94, i32 2}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/omapdrm/omap_plane.c", i32 115, i32 2}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/omapdrm/omap_plane.c", i32 118, i32 2}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/omapdrm/omap_plane.c", i32 143, i32 3}
!45 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @omap_plane_atomic_update._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @omap_plane_atomic_update._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/omapdrm/omap_plane.c", i32 156, i32 4}
!50 = !{ptr @omap_plane_atomic_update._entry.22, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @omap_plane_atomic_update._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{i8 0, i8 2}
!62 = !{!"branch_weights", i32 2000, i32 1}
!63 = !{!"branch_weights", i32 1, i32 2000}
!64 = !{!"auto-init"}
