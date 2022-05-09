; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/sun4i/sun8i_ui_layer.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun8i_ui_layer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sun8i_mixer = type { %struct.sunxi_engine, ptr, ptr, ptr, ptr }
%struct.sunxi_engine = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.87 = type { i32, ptr }
%struct.sun8i_mixer_cfg = type { i32, i32, i32, i32, i32, i8, i32 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.sun8i_ui_layer = type { %struct.drm_plane, ptr, i32, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }

@sun8i_ui_layer_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_plane_cleanup, ptr @drm_atomic_helper_plane_reset, ptr null, ptr @drm_atomic_helper_plane_duplicate_state, ptr @drm_atomic_helper_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@sun8i_ui_layer_formats = internal constant { [20 x i32], [48 x i8] } { [20 x i32] [i32 892420673, i32 842089025, i32 875708993, i32 892424769, i32 842093121, i32 875713089, i32 909199170, i32 875710274, i32 892420418, i32 842088770, i32 875708738, i32 875714626, i32 909199186, i32 875710290, i32 842088786, i32 892420434, i32 875708754, i32 875714642, i32 875709016, i32 875713112], [48 x i8] zeroinitializer }, align 32
@sun8i_layer_modifiers = internal constant { [2 x i64], [16 x i8] } { [2 x i64] [i64 0, i64 72057594037927935], [16 x i8] zeroinitializer }, align 32
@sun8i_ui_layer_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 401, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Couldn't initialize layer\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sun8i_ui_layer_init_one\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/sun4i/sun8i_ui_layer.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun8i_ui_layer_init_one._entry_ptr = internal global ptr @sun8i_ui_layer_init_one._entry, section ".printk_index", align 4
@sun8i_ui_layer_init_one._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 409, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't add alpha property\0A\00", [35 x i8] zeroinitializer }, align 32
@sun8i_ui_layer_init_one._entry_ptr.7 = internal global ptr @sun8i_ui_layer_init_one._entry.5, section ".printk_index", align 4
@sun8i_ui_layer_init_one._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 416, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Couldn't add zpos property\0A\00", [36 x i8] zeroinitializer }, align 32
@sun8i_ui_layer_init_one._entry_ptr.10 = internal global ptr @sun8i_ui_layer_init_one._entry.8, section ".printk_index", align 4
@sun8i_ui_layer_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @sun8i_ui_layer_atomic_check, ptr @sun8i_ui_layer_atomic_update, ptr @sun8i_ui_layer_atomic_disable, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%sabling channel %d overlay %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"En\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Dis\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Updating UI channel %d overlay %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Primary layer, updating global size W: %u H: %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Switching display mixer interlaced mode %s\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Layer source offset X: %d Y: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Layer source size W: %d H: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HW scaling is enabled\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HW scaling is not needed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Layer destination coordinates X: %d Y: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Layer destination size W: %d H: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Invalid format\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Using GEM @ %pad\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Layer line width: %d bytes\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Setting buffer address to %pad\0A\00", [32 x i8] zeroinitializer }, align 32
@___asan_gen_.29 = private unnamed_addr constant [21 x i8] c"sun8i_ui_layer_funcs\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 340, i32 37 }
@___asan_gen_.32 = private unnamed_addr constant [23 x i8] c"sun8i_ui_layer_formats\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 349, i32 18 }
@___asan_gen_.35 = private unnamed_addr constant [22 x i8] c"sun8i_layer_modifiers\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 372, i32 23 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 401, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 409, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 416, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [28 x i8] c"sun8i_ui_layer_helper_funcs\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 334, i32 44 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 35, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 106, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 127, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 149, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 154, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 156, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 167, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 176, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 181, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 183, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 207, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 234, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 245, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.123 = private constant [42 x i8] c"../drivers/gpu/drm/sun4i/sun8i_ui_layer.c\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 250, i32 2 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @sun8i_ui_layer_init_one._entry, ptr @sun8i_ui_layer_init_one._entry.5, ptr @sun8i_ui_layer_init_one._entry.8, ptr @sun8i_ui_layer_init_one._entry_ptr, ptr @sun8i_ui_layer_init_one._entry_ptr.10, ptr @sun8i_ui_layer_init_one._entry_ptr.7, ptr @sun8i_ui_layer_funcs, ptr @sun8i_ui_layer_formats, ptr @sun8i_layer_modifiers, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @sun8i_ui_layer_helper_funcs, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ui_layer_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ui_layer_formats to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_layer_modifiers to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ui_layer_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ui_layer_init_one._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ui_layer_init_one._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ui_layer_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sun8i_ui_layer_init_one(ptr noundef %drm, ptr noundef %mixer, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.sun8i_mixer, ptr %mixer, i32 0, i32 1
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %add = add i32 %3, %index
  %dev = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 544, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp = icmp eq i32 %index, 0
  %spec.select = zext i1 %cmp to i32
  %call4 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %drm, ptr noundef nonnull %call.i, i32 noundef 0, ptr noundef nonnull @sun8i_ui_layer_funcs, ptr noundef nonnull @sun8i_ui_layer_formats, i32 noundef 20, ptr noundef nonnull @sun8i_layer_modifiers, i32 noundef %spec.select, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str) #7
  %8 = inttoptr i32 %call4 to ptr
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %9 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cfg, align 4
  %ui_num = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %ui_num to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ui_num, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %10, align 4
  %call15 = tail call i32 @drm_plane_create_alpha_property(ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end23, label %do.end20

do.end20:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.6) #7
  %17 = inttoptr i32 %call15 to ptr
  br label %cleanup

if.end23:                                         ; preds = %if.end9
  %add13 = add i32 %12, -1
  %sub = add i32 %add13, %14
  %call25 = tail call i32 @drm_plane_create_zpos_property(ptr noundef nonnull %call.i, i32 noundef %add, i32 noundef 0, i32 noundef %sub) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end33, label %do.end30

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.9) #7
  %20 = inttoptr i32 %call25 to ptr
  br label %cleanup

if.end33:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %helper_private.i = getelementptr inbounds %struct.drm_plane, ptr %call.i, i32 0, i32 18
  %21 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @sun8i_ui_layer_helper_funcs, ptr %helper_private.i, align 8
  %mixer35 = getelementptr inbounds %struct.sun8i_ui_layer, ptr %call.i, i32 0, i32 1
  %22 = ptrtoint ptr %mixer35 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %mixer, ptr %mixer35, align 8
  %channel36 = getelementptr inbounds %struct.sun8i_ui_layer, ptr %call.i, i32 0, i32 2
  %23 = ptrtoint ptr %channel36 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add, ptr %channel36, align 4
  %overlay = getelementptr inbounds %struct.sun8i_ui_layer, ptr %call.i, i32 0, i32 3
  %24 = ptrtoint ptr %overlay to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %overlay, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %do.end30, %do.end20, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %8, %do.end ], [ %17, %do.end20 ], [ %20, %do.end30 ], [ %call.i, %if.end33 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_alpha_property(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_property(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_plane_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_ui_layer_atomic_check(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %crtc2 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %crtc2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc2, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %8 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtcs.i, align 4
  %index.i.i47 = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 8
  %10 = ptrtoint ptr %index.i.i47 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index.i.i47, align 4
  %state1.i = getelementptr %struct.__drm_crtcs_state, ptr %9, i32 %11, i32 1
  %12 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state1.i, align 4
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %do.end, label %if.end29, !prof !65

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 274, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end29:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %mixer = getelementptr inbounds %struct.sun8i_ui_layer, ptr %plane, i32 0, i32 1
  %14 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mixer, align 8
  %cfg = getelementptr inbounds %struct.sun8i_mixer, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg, align 4
  %scaler_mask = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %scaler_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %scaler_mask, align 4
  %channel = getelementptr inbounds %struct.sun8i_ui_layer, ptr %plane, i32 0, i32 2
  %20 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channel, align 4
  %shl = shl nuw i32 1, %21
  %and = and i32 %shl, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool30.not, i32 65536, i32 1
  %spec.select46 = select i1 %tobool30.not, i32 65536, i32 1048575
  %call33 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %5, ptr noundef nonnull %13, i32 noundef %spec.select, i32 noundef %spec.select46, i1 noundef zeroext true, i1 noundef zeroext true) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call33, %if.end29 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_ui_layer_atomic_update(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  %paddr.i = alloca i32, align 4
  %hw_fmt.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 17
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %old_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 2
  %4 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %old_state.i, align 4
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 3
  %6 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %new_state.i, align 4
  %normalized_zpos3 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 16
  %8 = ptrtoint ptr %normalized_zpos3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %normalized_zpos3, align 4
  %mixer4 = getelementptr inbounds %struct.sun8i_ui_layer, ptr %plane, i32 0, i32 1
  %10 = ptrtoint ptr %mixer4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mixer4, align 8
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 22
  %12 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %visible, align 4, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %channel = getelementptr inbounds %struct.sun8i_ui_layer, ptr %plane, i32 0, i32 2
  %14 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel, align 4
  %overlay = getelementptr inbounds %struct.sun8i_ui_layer, ptr %plane, i32 0, i32 3
  %16 = ptrtoint ptr %overlay to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %overlay, align 8
  %cfg.i.i = getelementptr inbounds %struct.sun8i_mixer, ptr %11, i32 0, i32 1
  %18 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cfg.i.i, align 4
  %is_de3.i.i = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %is_de3.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i.i = load i8, ptr %is_de3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  %cond.i.i = select i1 %tobool.not.i.i, i32 4096, i32 2048
  %mul.i.i = shl i32 %15, 11
  %add.i.i = add i32 %mul.i.i, 4096
  %mul1.i.i = shl i32 %15, 12
  %add2.i.i = add i32 %mul1.i.i, 8192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i)
  %tobool.not4.i.i = icmp slt i8 %bf.load.i.i, 0
  %retval.0.i.i = select i1 %tobool.not4.i.i, i32 %add.i.i, i32 %add2.i.i
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.13, i32 noundef %15, i32 noundef %17) #4
  %regs.i = getelementptr inbounds %struct.sunxi_engine, ptr %11, i32 0, i32 2
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %mul.i = shl i32 %17, 5
  %add.i = add i32 %retval.0.i.i, %mul.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef %add.i, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  %add10.i = add i32 %9, 8
  %shl.i = shl nuw i32 1, %add10.i
  %call.i62.i = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef %cond.i.i, i32 noundef %shl.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %add14.i = or i32 %cond.i.i, 128
  %shl15.i = shl i32 %9, 2
  %shl16.i = shl i32 15, %shl15.i
  %call.i63.i = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef %add14.i, i32 noundef %shl16.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %normalized_zpos = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 16
  %27 = ptrtoint ptr %normalized_zpos to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %normalized_zpos, align 4
  %channel5 = getelementptr inbounds %struct.sun8i_ui_layer, ptr %plane, i32 0, i32 2
  %29 = ptrtoint ptr %channel5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %channel5, align 4
  %overlay6 = getelementptr inbounds %struct.sun8i_ui_layer, ptr %plane, i32 0, i32 3
  %31 = ptrtoint ptr %overlay6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %overlay6, align 8
  %state1.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %33 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %state1.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.14, i32 noundef %30, i32 noundef %32) #4
  %cfg.i.i52 = getelementptr inbounds %struct.sun8i_mixer, ptr %11, i32 0, i32 1
  %35 = ptrtoint ptr %cfg.i.i52 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cfg.i.i52, align 4
  %is_de3.i.i53 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %is_de3.i.i53 to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load.i.i54 = load i8, ptr %is_de3.i.i53, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i54)
  %tobool.not.i.i55 = icmp sgt i8 %bf.load.i.i54, -1
  %cond.i.i56 = select i1 %tobool.not.i.i55, i32 4096, i32 2048
  %mul.i.i57 = shl i32 %30, 11
  %add.i.i58 = add i32 %mul.i.i57, 4096
  %mul1.i.i59 = shl i32 %30, 12
  %add2.i.i60 = add i32 %mul1.i.i59, 8192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i54)
  %tobool.not4.i.i61 = icmp slt i8 %bf.load.i.i54, 0
  %retval.0.i.i62 = select i1 %tobool.not4.i.i61, i32 %add.i.i58, i32 %add2.i.i60
  %src.i = getelementptr inbounds %struct.drm_plane_state, ptr %34, i32 0, i32 20
  %x2.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %34, i32 0, i32 20, i32 2
  %38 = ptrtoint ptr %x2.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %x2.i.i, align 4
  %40 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %src.i, align 4
  %sub.i.i = sub i32 %39, %41
  %shr.i = ashr i32 %sub.i.i, 16
  %y2.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %34, i32 0, i32 20, i32 3
  %42 = ptrtoint ptr %y2.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %y2.i.i, align 4
  %y1.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %34, i32 0, i32 20, i32 1
  %44 = ptrtoint ptr %y1.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %y1.i.i, align 4
  %sub.i5.i = sub i32 %43, %45
  %shr6.i = ashr i32 %sub.i5.i, 16
  %dst.i = getelementptr inbounds %struct.drm_plane_state, ptr %34, i32 0, i32 21
  %x2.i6.i = getelementptr inbounds %struct.drm_plane_state, ptr %34, i32 0, i32 21, i32 2
  %46 = ptrtoint ptr %x2.i6.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %x2.i6.i, align 4
  %48 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dst.i, align 4
  %sub.i7.i = sub i32 %47, %49
  %y2.i8.i = getelementptr inbounds %struct.drm_plane_state, ptr %34, i32 0, i32 21, i32 3
  %50 = ptrtoint ptr %y2.i8.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %y2.i8.i, align 4
  %y1.i9.i = getelementptr inbounds %struct.drm_plane_state, ptr %34, i32 0, i32 21, i32 1
  %52 = ptrtoint ptr %y1.i9.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %y1.i9.i, align 4
  %sub.i10.i = sub i32 %51, %53
  %and.i = and i32 %41, 65535
  %and12.i = and i32 %45, 65535
  %54 = add i32 %sub.i5.i, -65536
  %shl.i63 = and i32 %54, -65536
  %sub13.i = add nsw i32 %shr.i, -1
  %or.i = or i32 %shl.i63, %sub13.i
  %sub14.i = shl i32 %sub.i10.i, 16
  %shl15.i64 = add i32 %sub14.i, -65536
  %sub16.i = add i32 %sub.i7.i, -1
  %or17.i = or i32 %shl15.i64, %sub16.i
  %type.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 16
  %55 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp.i = icmp eq i32 %56, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.if.end35.i_crit_edge

if.end.if.end35.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35.i

if.then.i:                                        ; preds = %if.end
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.15, i32 noundef %sub.i7.i, i32 noundef %sub.i10.i) #4
  %regs.i65 = getelementptr inbounds %struct.sunxi_engine, ptr %11, i32 0, i32 2
  %57 = ptrtoint ptr %regs.i65 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs.i65, align 4
  %call18.i = tail call i32 @regmap_write(ptr noundef %58, i32 noundef 12, i32 noundef %or17.i) #4
  %59 = ptrtoint ptr %regs.i65 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i65, align 4
  %add.i66 = or i32 %cond.i.i56, 140
  %call21.i = tail call i32 @regmap_write(ptr noundef %60, i32 noundef %add.i66, i32 noundef %or17.i) #4
  %crtc.i = getelementptr inbounds %struct.drm_plane_state, ptr %34, i32 0, i32 1
  %61 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %crtc.i, align 4
  %tobool.not.i = icmp eq ptr %62, null
  br i1 %tobool.not.i, label %if.then.i..thread.i_crit_edge, label %if.end.i

if.then.i..thread.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %.thread.i

if.end.i:                                         ; preds = %if.then.i
  %state24.i = getelementptr inbounds %struct.drm_crtc, ptr %62, i32 0, i32 22
  %63 = ptrtoint ptr %state24.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %state24.i, align 4
  %flags.i = getelementptr inbounds %struct.drm_crtc_state, ptr %64, i32 0, i32 7, i32 11
  %65 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags.i, align 4
  %and25.i = and i32 %66, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.end.i..thread.i_crit_edge, label %if.end.i._crit_edge

if.end.i._crit_edge:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %67

if.end.i..thread.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %.thread.i

.thread.i:                                        ; preds = %if.end.i..thread.i_crit_edge, %if.then.i..thread.i_crit_edge
  br label %67

67:                                               ; preds = %.thread.i, %if.end.i._crit_edge
  %68 = phi ptr [ @.str.18, %.thread.i ], [ @.str.17, %if.end.i._crit_edge ]
  %69 = phi i32 [ 0, %.thread.i ], [ 2, %if.end.i._crit_edge ]
  %70 = ptrtoint ptr %regs.i65 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs.i65, align 4
  %add32.i = or i32 %cond.i.i56, 252
  %call.i.i67 = tail call i32 @regmap_update_bits_base(ptr noundef %71, i32 noundef %add32.i, i32 noundef 2, i32 noundef %69, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.16, ptr noundef nonnull %68) #4
  br label %if.end35.i

if.end35.i:                                       ; preds = %67, %if.end.if.end35.i_crit_edge
  %72 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %src.i, align 4
  %shr38.i = ashr i32 %73, 16
  %74 = ptrtoint ptr %y1.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %y1.i.i, align 4
  %shr41.i = ashr i32 %75, 16
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.19, i32 noundef %shr38.i, i32 noundef %shr41.i) #4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.20, i32 noundef %shr.i, i32 noundef %shr6.i) #4
  %regs43.i = getelementptr inbounds %struct.sunxi_engine, ptr %11, i32 0, i32 2
  %76 = ptrtoint ptr %regs43.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs43.i, align 4
  %mul.i68 = shl i32 %32, 5
  %add44.i = add i32 %retval.0.i.i62, %mul.i68
  %add45.i = or i32 %add44.i, 4
  %call46.i = tail call i32 @regmap_write(ptr noundef %77, i32 noundef %add45.i, i32 noundef %or.i) #4
  %78 = ptrtoint ptr %regs43.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs43.i, align 4
  %add49.i = or i32 %retval.0.i.i62, 136
  %call50.i = tail call i32 @regmap_write(ptr noundef %79, i32 noundef %add49.i, i32 noundef %or.i) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %or17.i)
  %cmp51.not.i = icmp eq i32 %or.i, %or17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool52.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %cmp51.not.i, i1 %tobool52.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool54.not.i = icmp eq i32 %and12.i, 0
  %or.cond1.i = select i1 %or.cond.i, i1 %tobool54.not.i, i1 false
  br i1 %or.cond1.i, label %if.else59.i, label %if.then55.i

if.then55.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.21) #4
  %src_w56.i = getelementptr inbounds %struct.drm_plane_state, ptr %34, i32 0, i32 11
  %80 = ptrtoint ptr %src_w56.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %src_w56.i, align 4
  %crtc_w.i = getelementptr inbounds %struct.drm_plane_state, ptr %34, i32 0, i32 6
  %82 = ptrtoint ptr %crtc_w.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %crtc_w.i, align 4
  %div.i = udiv i32 %81, %83
  %src_h57.i = getelementptr inbounds %struct.drm_plane_state, ptr %34, i32 0, i32 10
  %84 = ptrtoint ptr %src_h57.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %src_h57.i, align 4
  %crtc_h.i = getelementptr inbounds %struct.drm_plane_state, ptr %34, i32 0, i32 7
  %86 = ptrtoint ptr %crtc_h.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %crtc_h.i, align 4
  %div58.i = udiv i32 %85, %87
  tail call void @sun8i_ui_scaler_setup(ptr noundef %11, i32 noundef %30, i32 noundef %shr.i, i32 noundef %shr6.i, i32 noundef %sub.i7.i, i32 noundef %sub.i10.i, i32 noundef %div.i, i32 noundef %div58.i, i32 noundef %and.i, i32 noundef %and12.i) #4
  br label %sun8i_ui_layer_update_coord.exit

if.else59.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.22) #4
  br label %sun8i_ui_layer_update_coord.exit

sun8i_ui_layer_update_coord.exit:                 ; preds = %if.else59.i, %if.then55.i
  %88 = xor i1 %or.cond1.i, true
  tail call void @sun8i_ui_scaler_enable(ptr noundef %11, i32 noundef %30, i1 noundef zeroext %88) #4
  %89 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %dst.i, align 4
  %91 = ptrtoint ptr %y1.i9.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %y1.i9.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef %90, i32 noundef %92) #4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.24, i32 noundef %sub.i7.i, i32 noundef %sub.i10.i) #4
  %93 = ptrtoint ptr %regs43.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regs43.i, align 4
  %mul68.i = shl i32 %28, 4
  %add67.i = or i32 %mul68.i, 12
  %add69.i = add i32 %add67.i, %cond.i.i56
  %95 = ptrtoint ptr %y1.i9.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %y1.i9.i, align 4
  %shl72.i = shl i32 %96, 16
  %97 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %dst.i, align 4
  %or75.i = or i32 %shl72.i, %98
  %call76.i = tail call i32 @regmap_write(ptr noundef %94, i32 noundef %add69.i, i32 noundef %or75.i) #4
  %99 = ptrtoint ptr %regs43.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regs43.i, align 4
  %add79.i = or i32 %mul68.i, 8
  %add81.i = add i32 %add79.i, %cond.i.i56
  %call82.i = tail call i32 @regmap_write(ptr noundef %100, i32 noundef %add81.i, i32 noundef %or17.i) #4
  %101 = ptrtoint ptr %channel5 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %channel5, align 4
  %103 = ptrtoint ptr %overlay6 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %overlay6, align 8
  %105 = ptrtoint ptr %cfg.i.i52 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %cfg.i.i52, align 4
  %is_de3.i.i70 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %106, i32 0, i32 5
  %107 = ptrtoint ptr %is_de3.i.i70 to i32
  call void @__asan_load1_noabort(i32 %107)
  %bf.load.i.i71 = load i8, ptr %is_de3.i.i70, align 4
  %mul.i.i72 = shl i32 %102, 11
  %add.i.i73 = add i32 %mul.i.i72, 4096
  %mul1.i.i74 = shl i32 %102, 12
  %add2.i.i75 = add i32 %mul1.i.i74, 8192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i71)
  %tobool.not4.i.i76 = icmp slt i8 %bf.load.i.i71, 0
  %retval.0.i.i77 = select i1 %tobool.not4.i.i76, i32 %add.i.i73, i32 %add2.i.i75
  %108 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %state1.i, align 4
  %alpha.i = getelementptr inbounds %struct.drm_plane_state, ptr %109, i32 0, i32 12
  %110 = ptrtoint ptr %alpha.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %alpha.i, align 4
  %conv.i = zext i16 %111 to i32
  %112 = shl nuw i32 %conv.i, 16
  %shl.i78 = and i32 %112, -16777216
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %111)
  %cmp.i79 = icmp eq i16 %111, -1
  %cond.i = select i1 %cmp.i79, i32 0, i32 4
  %or.i80 = or i32 %shl.i78, %cond.i
  %113 = ptrtoint ptr %regs43.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regs43.i, align 4
  %mul.i82 = shl i32 %104, 5
  %add.i83 = add i32 %retval.0.i.i77, %mul.i82
  %call.i.i84 = tail call i32 @regmap_update_bits_base(ptr noundef %114, i32 noundef %add.i83, i32 noundef -16777210, i32 noundef %or.i80, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %115 = ptrtoint ptr %channel5 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %channel5, align 4
  %117 = ptrtoint ptr %overlay6 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %overlay6, align 8
  %119 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %state1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hw_fmt.i) #4
  %121 = ptrtoint ptr %hw_fmt.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 -1, ptr %hw_fmt.i, align 4, !annotation !67
  %122 = ptrtoint ptr %cfg.i.i52 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cfg.i.i52, align 4
  %is_de3.i.i87 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %123, i32 0, i32 5
  %124 = ptrtoint ptr %is_de3.i.i87 to i32
  call void @__asan_load1_noabort(i32 %124)
  %bf.load.i.i88 = load i8, ptr %is_de3.i.i87, align 4
  %mul.i.i89 = shl i32 %116, 11
  %add.i.i90 = add i32 %mul.i.i89, 4096
  %mul1.i.i91 = shl i32 %116, 12
  %add2.i.i92 = add i32 %mul1.i.i91, 8192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i88)
  %tobool.not4.i.i93 = icmp slt i8 %bf.load.i.i88, 0
  %retval.0.i.i94 = select i1 %tobool.not4.i.i93, i32 %add.i.i90, i32 %add2.i.i92
  %fb.i = getelementptr inbounds %struct.drm_plane_state, ptr %120, i32 0, i32 2
  %125 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %fb.i, align 4
  %format.i = getelementptr inbounds %struct.drm_framebuffer, ptr %126, i32 0, i32 4
  %127 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %format.i, align 8
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %128, align 4
  %call3.i = call i32 @sun8i_mixer_drm_format_to_hw(i32 noundef %130, ptr noundef nonnull %hw_fmt.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i95 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i95, label %lor.lhs.false.i, label %sun8i_ui_layer_update_coord.exit.if.then.i96_crit_edge

sun8i_ui_layer_update_coord.exit.if.then.i96_crit_edge: ; preds = %sun8i_ui_layer_update_coord.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i96

lor.lhs.false.i:                                  ; preds = %sun8i_ui_layer_update_coord.exit
  %is_yuv.i = getelementptr inbounds %struct.drm_format_info, ptr %128, i32 0, i32 9
  %131 = ptrtoint ptr %is_yuv.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %is_yuv.i, align 1, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool4.not.i = icmp eq i8 %132, 0
  br i1 %tobool4.not.i, label %if.end.i102, label %lor.lhs.false.i.if.then.i96_crit_edge

lor.lhs.false.i.if.then.i96_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i96

if.then.i96:                                      ; preds = %lor.lhs.false.i.if.then.i96_crit_edge, %sun8i_ui_layer_update_coord.exit.if.then.i96_crit_edge
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.25) #4
  br label %sun8i_ui_layer_update_formats.exit

if.end.i102:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  %133 = ptrtoint ptr %hw_fmt.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %hw_fmt.i, align 4
  %shl.i97 = shl i32 %134, 8
  %135 = ptrtoint ptr %regs43.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %regs43.i, align 4
  %mul.i99 = shl i32 %118, 5
  %add.i100 = add i32 %retval.0.i.i94, %mul.i99
  %call.i.i101 = call i32 @regmap_update_bits_base(ptr noundef %136, i32 noundef %add.i100, i32 noundef 7936, i32 noundef %shl.i97, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %sun8i_ui_layer_update_formats.exit

sun8i_ui_layer_update_formats.exit:               ; preds = %if.end.i102, %if.then.i96
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw_fmt.i) #4
  %137 = ptrtoint ptr %channel5 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %channel5, align 4
  %139 = ptrtoint ptr %overlay6 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %overlay6, align 8
  %141 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %state1.i, align 4
  %fb2.i = getelementptr inbounds %struct.drm_plane_state, ptr %142, i32 0, i32 2
  %143 = ptrtoint ptr %fb2.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %fb2.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %paddr.i) #4
  %145 = ptrtoint ptr %cfg.i.i52 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %cfg.i.i52, align 4
  %is_de3.i.i105 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %146, i32 0, i32 5
  %147 = ptrtoint ptr %is_de3.i.i105 to i32
  call void @__asan_load1_noabort(i32 %147)
  %bf.load.i.i106 = load i8, ptr %is_de3.i.i105, align 4
  %mul.i.i107 = shl i32 %138, 11
  %add.i.i108 = add i32 %mul.i.i107, 4096
  %mul1.i.i109 = shl i32 %138, 12
  %add2.i.i110 = add i32 %mul1.i.i109, 8192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i106)
  %tobool.not4.i.i111 = icmp slt i8 %bf.load.i.i106, 0
  %retval.0.i.i112 = select i1 %tobool.not4.i.i111, i32 %add.i.i108, i32 %add2.i.i110
  %call3.i113 = call ptr @drm_fb_cma_get_gem_obj(ptr noundef %144, i32 noundef 0) #4
  %paddr4.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call3.i113, i32 0, i32 1
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.26, ptr noundef %paddr4.i) #4
  %format.i114 = getelementptr inbounds %struct.drm_framebuffer, ptr %144, i32 0, i32 4
  %148 = ptrtoint ptr %format.i114 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %format.i114, align 8
  %150 = getelementptr inbounds %struct.drm_format_info, ptr %149, i32 0, i32 3
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %150, align 2
  %conv.i115 = zext i8 %152 to i32
  %153 = ptrtoint ptr %paddr4.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %paddr4.i, align 8
  %offsets.i = getelementptr inbounds %struct.drm_framebuffer, ptr %144, i32 0, i32 7
  %155 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %offsets.i, align 8
  %add.i116 = add i32 %156, %154
  %src.i117 = getelementptr inbounds %struct.drm_plane_state, ptr %142, i32 0, i32 20
  %157 = ptrtoint ptr %src.i117 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %src.i117, align 4
  %shr.i118 = ashr i32 %158, 16
  %mul.i119 = mul nsw i32 %shr.i118, %conv.i115
  %add7.i = add i32 %add.i116, %mul.i119
  %y1.i = getelementptr inbounds %struct.drm_plane_state, ptr %142, i32 0, i32 20, i32 1
  %159 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %y1.i, align 4
  %shr9.i = ashr i32 %160, 16
  %pitches.i = getelementptr inbounds %struct.drm_framebuffer, ptr %144, i32 0, i32 6
  %161 = ptrtoint ptr %pitches.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %pitches.i, align 8
  %mul11.i = mul i32 %shr9.i, %162
  %add12.i = add i32 %add7.i, %mul11.i
  %163 = ptrtoint ptr %paddr.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %add12.i, ptr %paddr.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.27, i32 noundef %162) #4
  %164 = ptrtoint ptr %regs43.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %regs43.i, align 4
  %mul15.i = shl i32 %140, 5
  %add16.i = add i32 %retval.0.i.i112, %mul15.i
  %add17.i = or i32 %add16.i, 12
  %166 = ptrtoint ptr %pitches.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %pitches.i, align 8
  %call20.i = call i32 @regmap_write(ptr noundef %165, i32 noundef %add17.i, i32 noundef %167) #4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.28, ptr noundef nonnull %paddr.i) #4
  %168 = ptrtoint ptr %regs43.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %regs43.i, align 4
  %add25.i = or i32 %add16.i, 16
  %170 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %paddr.i, align 4
  %call26.i = call i32 @regmap_write(ptr noundef %169, i32 noundef %add25.i, i32 noundef %171) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr.i) #4
  %172 = ptrtoint ptr %channel5 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %channel5, align 4
  %174 = ptrtoint ptr %overlay6 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %overlay6, align 8
  %176 = ptrtoint ptr %cfg.i.i52 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %cfg.i.i52, align 4
  %is_de3.i.i122 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %177, i32 0, i32 5
  %178 = ptrtoint ptr %is_de3.i.i122 to i32
  call void @__asan_load1_noabort(i32 %178)
  %bf.load.i.i123 = load i8, ptr %is_de3.i.i122, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i123)
  %tobool.not.i.i124 = icmp sgt i8 %bf.load.i.i123, -1
  %cond.i.i125 = select i1 %tobool.not.i.i124, i32 4096, i32 2048
  %mul.i.i126 = shl i32 %173, 11
  %add.i.i127 = add i32 %mul.i.i126, 4096
  %mul1.i.i128 = shl i32 %173, 12
  %add2.i.i129 = add i32 %mul1.i.i128, 8192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i123)
  %tobool.not4.i.i130 = icmp slt i8 %bf.load.i.i123, 0
  %retval.0.i.i131 = select i1 %tobool.not4.i.i130, i32 %add.i.i127, i32 %add2.i.i129
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %173, i32 noundef %175) #4
  %179 = ptrtoint ptr %regs43.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %regs43.i, align 4
  %mul.i133 = shl i32 %175, 5
  %add.i134 = add i32 %retval.0.i.i131, %mul.i133
  %call.i.i135 = call i32 @regmap_update_bits_base(ptr noundef %180, i32 noundef %add.i134, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %9)
  %cmp.not.i136 = icmp eq i32 %28, %9
  br i1 %cmp.not.i136, label %sun8i_ui_layer_update_formats.exit.sun8i_ui_layer_enable.exit_crit_edge, label %if.then6.i

sun8i_ui_layer_update_formats.exit.sun8i_ui_layer_enable.exit_crit_edge: ; preds = %sun8i_ui_layer_update_formats.exit
  call void @__sanitizer_cov_trace_pc() #6
  %.pre = or i32 %cond.i.i125, 128
  br label %sun8i_ui_layer_enable.exit

if.then6.i:                                       ; preds = %sun8i_ui_layer_update_formats.exit
  call void @__sanitizer_cov_trace_pc() #6
  %181 = ptrtoint ptr %regs43.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %regs43.i, align 4
  %add10.i137 = add i32 %9, 8
  %shl.i138 = shl nuw i32 1, %add10.i137
  %call.i62.i139 = call i32 @regmap_update_bits_base(ptr noundef %182, i32 noundef %cond.i.i125, i32 noundef %shl.i138, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %183 = ptrtoint ptr %regs43.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %regs43.i, align 4
  %add14.i140 = or i32 %cond.i.i125, 128
  %shl15.i141 = shl i32 %9, 2
  %shl16.i142 = shl i32 15, %shl15.i141
  %call.i63.i143 = call i32 @regmap_update_bits_base(ptr noundef %184, i32 noundef %add14.i140, i32 noundef %shl16.i142, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %sun8i_ui_layer_enable.exit

sun8i_ui_layer_enable.exit:                       ; preds = %if.then6.i, %sun8i_ui_layer_update_formats.exit.sun8i_ui_layer_enable.exit_crit_edge
  %add31.i.pre-phi = phi i32 [ %.pre, %sun8i_ui_layer_update_formats.exit.sun8i_ui_layer_enable.exit_crit_edge ], [ %add14.i140, %if.then6.i ]
  %add21.i = add i32 %28, 8
  %shl22.i = shl nuw i32 1, %add21.i
  %185 = ptrtoint ptr %regs43.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %regs43.i, align 4
  %call.i64.i = call i32 @regmap_update_bits_base(ptr noundef %186, i32 noundef %cond.i.i125, i32 noundef %shl22.i, i32 noundef %shl22.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %shl27.i = shl i32 %28, 2
  %shl28.i = shl i32 %173, %shl27.i
  %187 = ptrtoint ptr %regs43.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %regs43.i, align 4
  %shl33.i = shl i32 15, %shl27.i
  %call.i65.i = call i32 @regmap_update_bits_base(ptr noundef %188, i32 noundef %add31.i.pre-phi, i32 noundef %shl33.i, i32 noundef %shl28.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %cleanup

cleanup:                                          ; preds = %sun8i_ui_layer_enable.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_ui_layer_atomic_disable(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 17
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %old_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 2
  %4 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %old_state.i, align 4
  %normalized_zpos = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %normalized_zpos to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %normalized_zpos, align 4
  %mixer2 = getelementptr inbounds %struct.sun8i_ui_layer, ptr %plane, i32 0, i32 1
  %8 = ptrtoint ptr %mixer2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mixer2, align 8
  %channel = getelementptr inbounds %struct.sun8i_ui_layer, ptr %plane, i32 0, i32 2
  %10 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channel, align 4
  %overlay = getelementptr inbounds %struct.sun8i_ui_layer, ptr %plane, i32 0, i32 3
  %12 = ptrtoint ptr %overlay to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %overlay, align 8
  %cfg.i.i = getelementptr inbounds %struct.sun8i_mixer, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg.i.i, align 4
  %is_de3.i.i = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %is_de3.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i.i = load i8, ptr %is_de3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  %cond.i.i = select i1 %tobool.not.i.i, i32 4096, i32 2048
  %mul.i.i = shl i32 %11, 11
  %add.i.i = add i32 %mul.i.i, 4096
  %mul1.i.i = shl i32 %11, 12
  %add2.i.i = add i32 %mul1.i.i, 8192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i)
  %tobool.not4.i.i = icmp slt i8 %bf.load.i.i, 0
  %retval.0.i.i = select i1 %tobool.not4.i.i, i32 %add.i.i, i32 %add2.i.i
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.13, i32 noundef %11, i32 noundef %13) #4
  %regs.i = getelementptr inbounds %struct.sunxi_engine, ptr %9, i32 0, i32 2
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %mul.i = shl i32 %13, 5
  %add.i = add i32 %retval.0.i.i, %mul.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef %add.i, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %add10.i = add i32 %7, 8
  %shl.i = shl nuw i32 1, %add10.i
  %call.i62.i = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef %cond.i.i, i32 noundef %shl.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %add14.i = or i32 %cond.i.i, 128
  %shl15.i = shl i32 %7, 2
  %shl16.i = shl i32 15, %shl15.i
  %call.i63.i = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef %add14.i, i32 noundef %shl16.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun8i_ui_scaler_setup(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun8i_ui_scaler_enable(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_mixer_drm_format_to_hw(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !20, !22, !24, !26, !27, !28, !30, !32, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/sun4i/sun8i_ui_layer.c", i32 401, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sun8i_ui_layer_init_one._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @sun8i_ui_layer_init_one._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/sun4i/sun8i_ui_layer.c", i32 409, i32 3}
!10 = !{ptr @sun8i_ui_layer_init_one._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @sun8i_ui_layer_init_one._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/sun4i/sun8i_ui_layer.c", i32 416, i32 3}
!14 = !{ptr @sun8i_ui_layer_init_one._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @sun8i_ui_layer_init_one._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @sun8i_ui_layer_funcs, !17, !"sun8i_ui_layer_funcs", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/sun4i/sun8i_ui_layer.c", i32 340, i32 37}
!18 = !{ptr @sun8i_ui_layer_formats, !19, !"sun8i_ui_layer_formats", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/sun4i/sun8i_ui_layer.c", i32 349, i32 18}
!20 = !{ptr @sun8i_layer_modifiers, !21, !"sun8i_layer_modifiers", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/sun4i/sun8i_ui_layer.c", i32 372, i32 23}
!22 = !{ptr @sun8i_ui_layer_helper_funcs, !23, !"sun8i_ui_layer_helper_funcs", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/sun4i/sun8i_ui_layer.c", i32 334, i32 44}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/sun4i/sun8i_ui_layer.c", i32 35, i32 2}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/sun4i/sun8i_ui_layer.c", i32 106, i32 2}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/sun4i/sun8i_ui_layer.c", i32 127, i32 3}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/sun4i/sun8i_ui_layer.c", i32 149, i32 3}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/sun4i/sun8i_ui_layer.c", i32 154, i32 2}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/sun4i/sun8i_ui_layer.c", i32 156, i32 2}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/sun4i/sun8i_ui_layer.c", i32 167, i32 3}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/sun4i/sun8i_ui_layer.c", i32 176, i32 3}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/sun4i/sun8i_ui_layer.c", i32 181, i32 2}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/sun4i/sun8i_ui_layer.c", i32 183, i32 2}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/sun4i/sun8i_ui_layer.c", i32 207, i32 3}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/sun4i/sun8i_ui_layer.c", i32 234, i32 2}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/sun4i/sun8i_ui_layer.c", i32 245, i32 2}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/sun4i/sun8i_ui_layer.c", i32 250, i32 2}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"branch_weights", i32 1, i32 2000}
!66 = !{i8 0, i8 2}
!67 = !{!"auto-init"}
