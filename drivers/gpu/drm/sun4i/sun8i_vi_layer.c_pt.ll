; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/sun4i/sun8i_vi_layer.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun8i_vi_layer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.sun8i_mixer = type { %struct.sunxi_engine, ptr, ptr, ptr, ptr }
%struct.sunxi_engine = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.sun8i_mixer_cfg = type { i32, i32, i32, i32, i32, i8, i32 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.sun8i_vi_layer = type { %struct.drm_plane, ptr, i32, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
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

@sun8i_vi_layer_de3_formats = internal constant { [40 x i32], [32 x i8] } { [40 x i32] [i32 892420673, i32 808665665, i32 842089025, i32 875708993, i32 892424769, i32 808669761, i32 842093121, i32 875713089, i32 909199170, i32 875710274, i32 808665410, i32 892420418, i32 842088770, i32 875708738, i32 875714626, i32 909199186, i32 875710290, i32 808665426, i32 842088786, i32 892420434, i32 875708754, i32 875714642, i32 875709016, i32 875713112, i32 909203022, i32 842094158, i32 825382478, i32 825644622, i32 808530000, i32 808530512, i32 1498831189, i32 1498765654, i32 1448695129, i32 1431918169, i32 825316697, i32 842093913, i32 909202777, i32 825316953, i32 842094169, i32 909203033], [32 x i8] zeroinitializer }, align 32
@sun8i_vi_layer_formats = internal constant { [30 x i32], [40 x i8] } { [30 x i32] [i32 909199170, i32 875710274, i32 842094658, i32 892426306, i32 875714626, i32 909199186, i32 875710290, i32 842094674, i32 892426322, i32 875714642, i32 892420696, i32 842089048, i32 875709016, i32 892424792, i32 842093144, i32 875713112, i32 909203022, i32 842094158, i32 825382478, i32 825644622, i32 1498831189, i32 1498765654, i32 1448695129, i32 1431918169, i32 825316697, i32 842093913, i32 909202777, i32 825316953, i32 842094169, i32 909203033], [40 x i8] zeroinitializer }, align 32
@sun8i_vi_layer_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_plane_cleanup, ptr @drm_atomic_helper_plane_reset, ptr null, ptr @drm_atomic_helper_plane_duplicate_state, ptr @drm_atomic_helper_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@sun8i_layer_modifiers = internal constant { [2 x i64], [16 x i8] } { [2 x i64] [i64 0, i64 72057594037927935], [16 x i8] zeroinitializer }, align 32
@sun8i_vi_layer_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 570, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Couldn't initialize layer\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sun8i_vi_layer_init_one\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/sun4i/sun8i_vi_layer.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun8i_vi_layer_init_one._entry_ptr = internal global ptr @sun8i_vi_layer_init_one._entry, section ".printk_index", align 4
@sun8i_vi_layer_init_one._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 579, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't add alpha property\0A\00", [35 x i8] zeroinitializer }, align 32
@sun8i_vi_layer_init_one._entry_ptr.7 = internal global ptr @sun8i_vi_layer_init_one._entry.5, section ".printk_index", align 4
@sun8i_vi_layer_init_one._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 587, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Couldn't add zpos property\0A\00", [36 x i8] zeroinitializer }, align 32
@sun8i_vi_layer_init_one._entry_ptr.10 = internal global ptr @sun8i_vi_layer_init_one._entry.8, section ".printk_index", align 4
@sun8i_vi_layer_init_one._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 605, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Couldn't add encoding and range properties!\0A\00", [51 x i8] zeroinitializer }, align 32
@sun8i_vi_layer_init_one._entry_ptr.13 = internal global ptr @sun8i_vi_layer_init_one._entry.11, section ".printk_index", align 4
@sun8i_vi_layer_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @sun8i_vi_layer_atomic_check, ptr @sun8i_vi_layer_atomic_update, ptr @sun8i_vi_layer_atomic_disable, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%sabling VI channel %d overlay %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"En\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Dis\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Updating VI channel %d overlay %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Layer source offset X: %d Y: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Layer source size W: %d H: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HW scaling is enabled\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Using vertical coarse scaling\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Using horizontal coarse scaling\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HW scaling is not needed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Layer destination coordinates X: %d Y: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Layer destination size W: %d H: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Invalid format\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Using GEM @ %pad\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Layer %d. line width: %d bytes\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Setting %d. buffer address to %pad\0A\00", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 825316953, i64 842094169, i64 875714137, i64 909203033]
@___asan_gen_.30 = private unnamed_addr constant [27 x i8] c"sun8i_vi_layer_de3_formats\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 492, i32 18 }
@___asan_gen_.33 = private unnamed_addr constant [23 x i8] c"sun8i_vi_layer_formats\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 458, i32 18 }
@___asan_gen_.36 = private unnamed_addr constant [21 x i8] c"sun8i_vi_layer_funcs\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 444, i32 37 }
@___asan_gen_.39 = private unnamed_addr constant [22 x i8] c"sun8i_layer_modifiers\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 536, i32 23 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 570, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 579, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 587, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 605, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [28 x i8] c"sun8i_vi_layer_helper_funcs\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 438, i32 44 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 29, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 113, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 150, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 153, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 173, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 185, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 195, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 209, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 231, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 233, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 273, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 326, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 344, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private constant [42 x i8] c"../drivers/gpu/drm/sun4i/sun8i_vi_layer.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 351, i32 3 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @sun8i_vi_layer_init_one._entry, ptr @sun8i_vi_layer_init_one._entry.11, ptr @sun8i_vi_layer_init_one._entry.5, ptr @sun8i_vi_layer_init_one._entry.8, ptr @sun8i_vi_layer_init_one._entry_ptr, ptr @sun8i_vi_layer_init_one._entry_ptr.10, ptr @sun8i_vi_layer_init_one._entry_ptr.13, ptr @sun8i_vi_layer_init_one._entry_ptr.7, ptr @sun8i_vi_layer_de3_formats, ptr @sun8i_vi_layer_formats, ptr @sun8i_vi_layer_funcs, ptr @sun8i_layer_modifiers, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @sun8i_vi_layer_helper_funcs, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_vi_layer_de3_formats to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_vi_layer_formats to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_vi_layer_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_layer_modifiers to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_vi_layer_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_vi_layer_init_one._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_vi_layer_init_one._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_vi_layer_init_one._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_vi_layer_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sun8i_vi_layer_init_one(ptr noundef %drm, ptr noundef %mixer, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 544, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %cfg = getelementptr inbounds %struct.sun8i_mixer, ptr %mixer, i32 0, i32 1
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 4
  %is_de3 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %is_de3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %is_de3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool2.not = icmp sgt i8 %bf.load, -1
  %. = select i1 %tobool2.not, i32 30, i32 40
  %sun8i_vi_layer_formats.sun8i_vi_layer_de3_formats = select i1 %tobool2.not, ptr @sun8i_vi_layer_formats, ptr @sun8i_vi_layer_de3_formats
  %call5 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %drm, ptr noundef nonnull %call.i, i32 noundef 0, ptr noundef nonnull @sun8i_vi_layer_funcs, ptr noundef nonnull %sun8i_vi_layer_formats.sun8i_vi_layer_de3_formats, i32 noundef %., ptr noundef nonnull @sun8i_layer_modifiers, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str) #8
  %7 = inttoptr i32 %call5 to ptr
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %8 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg, align 4
  %ui_num = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %ui_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ui_num, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp = icmp eq i32 %13, 1
  br i1 %cmp, label %if.end10.if.then21_crit_edge, label %lor.lhs.false

if.end10.if.then21_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then21

lor.lhs.false:                                    ; preds = %if.end10
  %is_de316 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %9, i32 0, i32 5
  %14 = ptrtoint ptr %is_de316 to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load17 = load i8, ptr %is_de316, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load17)
  %tobool20.not = icmp sgt i8 %bf.load17, -1
  br i1 %tobool20.not, label %lor.lhs.false.if.end32_crit_edge, label %lor.lhs.false.if.then21_crit_edge

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then21

lor.lhs.false.if.end32_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then21:                                        ; preds = %lor.lhs.false.if.then21_crit_edge, %if.end10.if.then21_crit_edge
  %call23 = tail call i32 @drm_plane_create_alpha_property(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then21.if.end32_crit_edge, label %do.end28

if.then21.if.end32_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

do.end28:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.6) #8
  %17 = inttoptr i32 %call23 to ptr
  br label %cleanup

if.end32:                                         ; preds = %if.then21.if.end32_crit_edge, %lor.lhs.false.if.end32_crit_edge
  %add = add i32 %11, -1
  %sub = add i32 %add, %13
  %call34 = tail call i32 @drm_plane_create_zpos_property(ptr noundef nonnull %call.i, i32 noundef %index, i32 noundef 0, i32 noundef %sub) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end42, label %do.end39

do.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.9) #8
  %20 = inttoptr i32 %call34 to ptr
  br label %cleanup

if.end42:                                         ; preds = %if.end32
  %21 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cfg, align 4
  %is_de344 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %is_de344 to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load45 = load i8, ptr %is_de344, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load45)
  %tobool48.not = icmp sgt i8 %bf.load45, -1
  %spec.select = select i1 %tobool48.not, i32 3, i32 7
  %call52 = tail call i32 @drm_plane_create_color_properties(ptr noundef nonnull %call.i, i32 noundef %spec.select, i32 noundef 3, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end60, label %do.end57

do.end57:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.12) #8
  %26 = inttoptr i32 %call52 to ptr
  br label %cleanup

if.end60:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %helper_private.i = getelementptr inbounds %struct.drm_plane, ptr %call.i, i32 0, i32 18
  %27 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @sun8i_vi_layer_helper_funcs, ptr %helper_private.i, align 8
  %mixer62 = getelementptr inbounds %struct.sun8i_vi_layer, ptr %call.i, i32 0, i32 1
  %28 = ptrtoint ptr %mixer62 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %mixer, ptr %mixer62, align 8
  %channel = getelementptr inbounds %struct.sun8i_vi_layer, ptr %call.i, i32 0, i32 2
  %29 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %index, ptr %channel, align 4
  %overlay = getelementptr inbounds %struct.sun8i_vi_layer, ptr %call.i, i32 0, i32 3
  %30 = ptrtoint ptr %overlay to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %overlay, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %do.end57, %do.end39, %do.end28, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %7, %do.end ], [ %17, %do.end28 ], [ %20, %do.end39 ], [ %26, %do.end57 ], [ %call.i, %if.end60 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_color_properties(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

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
define internal i32 @sun8i_vi_layer_atomic_check(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
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
  br i1 %tobool4.not, label %do.end, label %if.end29, !prof !69

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 378, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end29:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %mixer = getelementptr inbounds %struct.sun8i_vi_layer, ptr %plane, i32 0, i32 1
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
  %channel = getelementptr inbounds %struct.sun8i_vi_layer, ptr %plane, i32 0, i32 2
  %20 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channel, align 4
  %shl = shl nuw i32 1, %21
  %and = and i32 %shl, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool30.not, i32 65536, i32 1
  %spec.select46 = select i1 %tobool30.not, i32 65536, i32 1048575
  %call33 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %5, ptr noundef nonnull %13, i32 noundef %spec.select, i32 noundef %spec.select46, i1 noundef zeroext true, i1 noundef zeroext true) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call33, %if.end29 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_vi_layer_atomic_update(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  %paddr.i = alloca i32, align 4
  %hw_fmt.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
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
  %mixer4 = getelementptr inbounds %struct.sun8i_vi_layer, ptr %plane, i32 0, i32 1
  %10 = ptrtoint ptr %mixer4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mixer4, align 8
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 22
  %12 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %visible, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %channel = getelementptr inbounds %struct.sun8i_vi_layer, ptr %plane, i32 0, i32 2
  %14 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel, align 4
  %overlay = getelementptr inbounds %struct.sun8i_vi_layer, ptr %plane, i32 0, i32 3
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
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16, i32 noundef %15, i32 noundef %17) #5
  %regs.i = getelementptr inbounds %struct.sunxi_engine, ptr %11, i32 0, i32 2
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %mul.i = mul i32 %17, 48
  %add.i = add i32 %retval.0.i.i, %mul.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef %add.i, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  %add10.i = add i32 %9, 8
  %shl.i = shl nuw i32 1, %add10.i
  %call.i62.i = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef %cond.i.i, i32 noundef %shl.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %add14.i = or i32 %cond.i.i, 128
  %shl15.i = shl i32 %9, 2
  %shl16.i = shl i32 15, %shl15.i
  %call.i63.i = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef %add14.i, i32 noundef %shl16.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %normalized_zpos = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 16
  %27 = ptrtoint ptr %normalized_zpos to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %normalized_zpos, align 4
  %channel5 = getelementptr inbounds %struct.sun8i_vi_layer, ptr %plane, i32 0, i32 2
  %29 = ptrtoint ptr %channel5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %channel5, align 4
  %overlay6 = getelementptr inbounds %struct.sun8i_vi_layer, ptr %plane, i32 0, i32 3
  %31 = ptrtoint ptr %overlay6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %overlay6, align 8
  %state1.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %33 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %state1.i, align 4
  %fb.i = getelementptr inbounds %struct.drm_plane_state, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fb.i, align 4
  %format2.i = getelementptr inbounds %struct.drm_framebuffer, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %format2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %format2.i, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.17, i32 noundef %30, i32 noundef %32) #5
  %cfg.i.i52 = getelementptr inbounds %struct.sun8i_mixer, ptr %11, i32 0, i32 1
  %39 = ptrtoint ptr %cfg.i.i52 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cfg.i.i52, align 4
  %is_de3.i.i53 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %is_de3.i.i53 to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load.i.i54 = load i8, ptr %is_de3.i.i53, align 4
  %mul.i.i55 = shl i32 %30, 11
  %add.i.i56 = add i32 %mul.i.i55, 4096
  %mul1.i.i57 = shl i32 %30, 12
  %add2.i.i58 = add i32 %mul1.i.i57, 8192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i54)
  %tobool.not4.i.i59 = icmp slt i8 %bf.load.i.i54, 0
  %retval.0.i.i60 = select i1 %tobool.not4.i.i59, i32 %add.i.i56, i32 %add2.i.i58
  %src.i = getelementptr inbounds %struct.drm_plane_state, ptr %34, i32 0, i32 20
  %x2.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %34, i32 0, i32 20, i32 2
  %42 = ptrtoint ptr %x2.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %x2.i.i, align 4
  %44 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %src.i, align 4
  %sub.i.i = sub i32 %43, %45
  %shr.i = ashr i32 %sub.i.i, 16
  %y2.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %34, i32 0, i32 20, i32 3
  %46 = ptrtoint ptr %y2.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %y2.i.i, align 4
  %y1.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %34, i32 0, i32 20, i32 1
  %48 = ptrtoint ptr %y1.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %y1.i.i, align 4
  %sub.i6.i = sub i32 %47, %49
  %shr7.i = ashr i32 %sub.i6.i, 16
  %dst.i = getelementptr inbounds %struct.drm_plane_state, ptr %34, i32 0, i32 21
  %x2.i7.i = getelementptr inbounds %struct.drm_plane_state, ptr %34, i32 0, i32 21, i32 2
  %50 = ptrtoint ptr %x2.i7.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %x2.i7.i, align 4
  %52 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dst.i, align 4
  %sub.i8.i = sub i32 %51, %53
  %y2.i9.i = getelementptr inbounds %struct.drm_plane_state, ptr %34, i32 0, i32 21, i32 3
  %54 = ptrtoint ptr %y2.i9.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %y2.i9.i, align 4
  %y1.i10.i = getelementptr inbounds %struct.drm_plane_state, ptr %34, i32 0, i32 21, i32 1
  %56 = ptrtoint ptr %y1.i10.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %y1.i10.i, align 4
  %sub.i11.i = sub i32 %55, %57
  %and.i = and i32 %45, 65535
  %and13.i = and i32 %49, 65535
  %hsub.i = getelementptr inbounds %struct.drm_format_info, ptr %38, i32 0, i32 6
  %58 = ptrtoint ptr %hsub.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %hsub.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %59)
  %cmp.i = icmp ugt i8 %59, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = zext i8 %59 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %shr19.i = ashr i32 %45, 16
  %and20.i = and i32 %sub.i, %shr19.i
  %add.i61 = add nsw i32 %and20.i, %shr.i
  %neg.i = sub nsw i32 0, %conv.i
  %and21.i = and i32 %add.i61, %neg.i
  %shl.i62 = shl nuw nsw i32 %and20.i, 16
  %add22.i = or i32 %shl.i62, %and.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %hphase.0.i = phi i32 [ %add22.i, %if.then.i ], [ %and.i, %if.end.if.end.i_crit_edge ]
  %src_w.0.i = phi i32 [ %and21.i, %if.then.i ], [ %shr.i, %if.end.if.end.i_crit_edge ]
  %vsub.i = getelementptr inbounds %struct.drm_format_info, ptr %38, i32 0, i32 7
  %60 = ptrtoint ptr %vsub.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %vsub.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %61)
  %cmp24.i = icmp ugt i8 %61, 1
  br i1 %cmp24.i, label %if.then26.i, label %if.end.if.end41_crit_edge.i

if.end.if.end41_crit_edge.i:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %.pre.i = ashr i32 %49, 16
  %.pre38.i = zext i8 %61 to i32
  %.pre39.i = sub nsw i32 0, %.pre38.i
  br label %if.end41.i

if.then26.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv23.i = zext i8 %61 to i32
  %sub31.i = add nsw i32 %conv23.i, -1
  %shr34.i = ashr i32 %49, 16
  %and35.i = and i32 %sub31.i, %shr34.i
  %add36.i = add nsw i32 %and35.i, %shr7.i
  %neg37.i = sub nsw i32 0, %conv23.i
  %and38.i = and i32 %add36.i, %neg37.i
  %shl39.i = shl nuw nsw i32 %and35.i, 16
  %add40.i = or i32 %shl39.i, %and13.i
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then26.i, %if.end.if.end41_crit_edge.i
  %neg63.pre-phi.i = phi i32 [ %.pre39.i, %if.end.if.end41_crit_edge.i ], [ %neg37.i, %if.then26.i ]
  %shr59.pre-phi.i = phi i32 [ %.pre.i, %if.end.if.end41_crit_edge.i ], [ %shr34.i, %if.then26.i ]
  %vphase.0.i = phi i32 [ %and13.i, %if.end.if.end41_crit_edge.i ], [ %add40.i, %if.then26.i ]
  %src_h.0.i = phi i32 [ %shr7.i, %if.end.if.end41_crit_edge.i ], [ %and38.i, %if.then26.i ]
  %sub42.i = shl i32 %src_h.0.i, 16
  %shl43.i = add i32 %sub42.i, -65536
  %sub44.i = add nsw i32 %src_w.0.i, -1
  %or.i = or i32 %shl43.i, %sub44.i
  %sub45.i = shl i32 %sub.i11.i, 16
  %shl46.i = add i32 %sub45.i, -65536
  %sub47.i = add i32 %sub.i8.i, -1
  %or48.i = or i32 %shl46.i, %sub47.i
  %shr51.i = ashr i32 %45, 16
  %conv53.i = zext i8 %59 to i32
  %neg55.i = sub nsw i32 0, %conv53.i
  %and56.i = and i32 %shr51.i, %neg55.i
  %and64.i = and i32 %shr59.pre-phi.i, %neg63.pre-phi.i
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef %and56.i, i32 noundef %and64.i) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.19, i32 noundef %src_w.0.i, i32 noundef %src_h.0.i) #5
  %regs.i63 = getelementptr inbounds %struct.sunxi_engine, ptr %11, i32 0, i32 2
  %62 = ptrtoint ptr %regs.i63 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs.i63, align 4
  %mul.i64 = mul i32 %32, 48
  %add65.i = add i32 %retval.0.i.i60, %mul.i64
  %add66.i = or i32 %add65.i, 4
  %call67.i = tail call i32 @regmap_write(ptr noundef %63, i32 noundef %add66.i, i32 noundef %or.i) #5
  %64 = ptrtoint ptr %regs.i63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i63, align 4
  %add70.i = or i32 %retval.0.i.i60, 232
  %call71.i = tail call i32 @regmap_write(ptr noundef %65, i32 noundef %add70.i, i32 noundef %or.i) #5
  %66 = ptrtoint ptr %hsub.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %hsub.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %67)
  %cmp74.i = icmp ugt i8 %67, 1
  br i1 %cmp74.i, label %if.end41.i.lor.end.i_crit_edge, label %lor.rhs.i

if.end41.i.lor.end.i_crit_edge:                   ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end.i

lor.rhs.i:                                        ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %vsub.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %vsub.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %69)
  %cmp78.i = icmp ugt i8 %69, 1
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %if.end41.i.lor.end.i_crit_edge
  %70 = phi i1 [ true, %if.end41.i.lor.end.i_crit_edge ], [ %cmp78.i, %lor.rhs.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %or48.i)
  %cmp80.not.i = icmp ne i32 %or.i, %or48.i
  %brmerge.i = select i1 %cmp80.not.i, i1 true, i1 %70
  %brmerge.not.i = xor i1 %brmerge.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hphase.0.i)
  %tobool84.not.i = icmp eq i32 %hphase.0.i, 0
  %or.cond.i = select i1 %brmerge.not.i, i1 %tobool84.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vphase.0.i)
  %tobool86.not.i = icmp eq i32 %vphase.0.i, 0
  %or.cond2.i = select i1 %or.cond.i, i1 %tobool86.not.i, i1 false
  br i1 %or.cond2.i, label %if.else327.i, label %if.then87.i

if.then87.i:                                      ; preds = %lor.end.i
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.20) #5
  %71 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %state1.i, align 4
  %crtc.i = getelementptr inbounds %struct.drm_plane_state, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %crtc.i, align 4
  %state89.i = getelementptr inbounds %struct.drm_crtc, ptr %74, i32 0, i32 22
  %75 = ptrtoint ptr %state89.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %state89.i, align 4
  %mode90.i = getelementptr inbounds %struct.drm_crtc_state, ptr %76, i32 0, i32 8
  %77 = ptrtoint ptr %mode90.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %mode90.i, align 4
  %mul91.i = mul i32 %78, 1000
  %vtotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %76, i32 0, i32 8, i32 9
  %79 = ptrtoint ptr %vtotal.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %vtotal.i, align 4
  %conv92.i = zext i16 %80 to i32
  %htotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %76, i32 0, i32 8, i32 4
  %81 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %htotal.i, align 2
  %conv93.i = zext i16 %82 to i32
  %mul94.i = mul nuw i32 %conv93.i, %conv92.i
  %div.i = sdiv i32 %mul91.i, %mul94.i
  %mod_clk.i = getelementptr inbounds %struct.sun8i_mixer, ptr %11, i32 0, i32 4
  %83 = ptrtoint ptr %mod_clk.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mod_clk.i, align 4
  %call95.i = tail call i32 @clk_get_rate(ptr noundef %84) #5
  %conv96.i = zext i32 %call95.i to i64
  %mul97.i = mul nuw nsw i64 %conv96.i, 80
  %vdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %76, i32 0, i32 8, i32 6
  %85 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %vdisplay.i, align 2
  %conv98.i = zext i16 %86 to i32
  %87 = tail call i32 @llvm.umax.i32(i32 %src_w.0.i, i32 %sub.i8.i) #5
  %mul99.i = mul i32 %div.i, %87
  %mul102.i = mul i32 %mul99.i, %conv98.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul97.i)
  %cmp287.i = icmp ult i64 %mul97.i, 4294967296
  br i1 %cmp287.i, label %if.then291.i, label %if.else297.i, !prof !71

if.then291.i:                                     ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv292.i = trunc i64 %mul97.i to i32
  %div295.i = udiv i32 %conv292.i, %mul102.i
  %conv296.i = zext i32 %div295.i to i64
  br label %if.end301.i

if.else297.i:                                     ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #7
  %88 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul102.i, i64 %mul97.i) #9, !srcloc !72
  %asmresult1.i.i = extractvalue { i64, i64 } %88, 1
  br label %if.end301.i

if.end301.i:                                      ; preds = %if.else297.i, %if.then291.i
  %ability.0.i = phi i64 [ %conv296.i, %if.then291.i ], [ %asmresult1.i.i, %if.else297.i ]
  %mul303.i = mul nsw i32 %src_h.0.i, 100
  %div304.i = udiv i32 %mul303.i, %sub.i11.i
  %conv305.i = zext i32 %div304.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %ability.0.i, i64 %conv305.i)
  %cmp306.i = icmp ult i64 %ability.0.i, %conv305.i
  br i1 %cmp306.i, label %if.then308.i, label %if.end301.i.if.end312.i_crit_edge

if.end301.i.if.end312.i_crit_edge:                ; preds = %if.end301.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end312.i

if.then308.i:                                     ; preds = %if.end301.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.21) #5
  %conv309.i = trunc i64 %ability.0.i to i32
  %mul310.i = mul i32 %sub.i11.i, %conv309.i
  %div311.i = udiv i32 %mul310.i, 100
  br label %if.end312.i

if.end312.i:                                      ; preds = %if.then308.i, %if.end301.i.if.end312.i_crit_edge
  %vn.0.i = phi i32 [ %div311.i, %if.then308.i ], [ 0, %if.end301.i.if.end312.i_crit_edge ]
  %vm.0.i = phi i32 [ %src_h.0.i, %if.then308.i ], [ 0, %if.end301.i.if.end312.i_crit_edge ]
  %src_h.1.i = phi i32 [ %div311.i, %if.then308.i ], [ %src_h.0.i, %if.end301.i.if.end312.i_crit_edge ]
  br i1 %70, label %cond.true315.i, label %if.end312.i.cond.end317.i_crit_edge

if.end312.i.cond.end317.i_crit_edge:              ; preds = %if.end312.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end317.i

cond.true315.i:                                   ; preds = %if.end312.i
  call void @__sanitizer_cov_trace_pc() #7
  %89 = ptrtoint ptr %cfg.i.i52 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cfg.i.i52, align 4
  %scanline_yuv.i = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %90, i32 0, i32 6
  %91 = ptrtoint ptr %scanline_yuv.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %scanline_yuv.i, align 4
  br label %cond.end317.i

cond.end317.i:                                    ; preds = %cond.true315.i, %if.end312.i.cond.end317.i_crit_edge
  %cond318.i = phi i32 [ %92, %cond.true315.i ], [ 2048, %if.end312.i.cond.end317.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %src_w.0.i, i32 %cond318.i)
  %cmp319.i = icmp ugt i32 %src_w.0.i, %cond318.i
  br i1 %cmp319.i, label %if.then321.i, label %cond.end317.i.if.end322.i_crit_edge

cond.end317.i.if.end322.i_crit_edge:              ; preds = %cond.end317.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end322.i

if.then321.i:                                     ; preds = %cond.end317.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.22) #5
  br label %if.end322.i

if.end322.i:                                      ; preds = %if.then321.i, %cond.end317.i.if.end322.i_crit_edge
  %hn.0.i = phi i32 [ %cond318.i, %if.then321.i ], [ 0, %cond.end317.i.if.end322.i_crit_edge ]
  %hm.0.i = phi i32 [ %src_w.0.i, %if.then321.i ], [ 0, %cond.end317.i.if.end322.i_crit_edge ]
  %src_w.1.i = phi i32 [ %cond318.i, %if.then321.i ], [ %src_w.0.i, %cond.end317.i.if.end322.i_crit_edge ]
  %shl323.i = shl i32 %src_w.1.i, 16
  %div324.i = udiv i32 %shl323.i, %sub.i8.i
  %shl325.i = shl i32 %src_h.1.i, 16
  %div326.i = udiv i32 %shl325.i, %sub.i11.i
  tail call void @sun8i_vi_scaler_setup(ptr noundef %11, i32 noundef %30, i32 noundef %src_w.1.i, i32 noundef %src_h.1.i, i32 noundef %sub.i8.i, i32 noundef %sub.i11.i, i32 noundef %div324.i, i32 noundef %div326.i, i32 noundef %hphase.0.i, i32 noundef %vphase.0.i, ptr noundef %38) #5
  br label %sun8i_vi_layer_update_coord.exit

if.else327.i:                                     ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.23) #5
  br label %sun8i_vi_layer_update_coord.exit

sun8i_vi_layer_update_coord.exit:                 ; preds = %if.else327.i, %if.end322.i
  %hn.1.i = phi i32 [ %hn.0.i, %if.end322.i ], [ 0, %if.else327.i ]
  %hm.1.i = phi i32 [ %hm.0.i, %if.end322.i ], [ 0, %if.else327.i ]
  %vn.1.i = phi i32 [ %vn.0.i, %if.end322.i ], [ 0, %if.else327.i ]
  %vm.1.i = phi i32 [ %vm.0.i, %if.end322.i ], [ 0, %if.else327.i ]
  %93 = xor i1 %or.cond2.i, true
  tail call void @sun8i_vi_scaler_enable(ptr noundef %11, i32 noundef %30, i1 noundef zeroext %93) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i54)
  %tobool.not.i.i65 = icmp sgt i8 %bf.load.i.i54, -1
  %cond.i.i66 = select i1 %tobool.not.i.i65, i32 4096, i32 2048
  %94 = ptrtoint ptr %regs.i63 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs.i63, align 4
  %add331.i = or i32 %retval.0.i.i60, 240
  %shl332.i = shl i32 %hn.1.i, 16
  %or334.i = or i32 %shl332.i, %hm.1.i
  %call335.i = tail call i32 @regmap_write(ptr noundef %95, i32 noundef %add331.i, i32 noundef %or334.i) #5
  %96 = ptrtoint ptr %regs.i63 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs.i63, align 4
  %add338.i = or i32 %retval.0.i.i60, 244
  %call342.i = tail call i32 @regmap_write(ptr noundef %97, i32 noundef %add338.i, i32 noundef %or334.i) #5
  %98 = ptrtoint ptr %regs.i63 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs.i63, align 4
  %add345.i = or i32 %retval.0.i.i60, 248
  %shl346.i = shl i32 %vn.1.i, 16
  %or348.i = or i32 %shl346.i, %vm.1.i
  %call349.i = tail call i32 @regmap_write(ptr noundef %99, i32 noundef %add345.i, i32 noundef %or348.i) #5
  %100 = ptrtoint ptr %regs.i63 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regs.i63, align 4
  %add352.i = or i32 %retval.0.i.i60, 252
  %call356.i = tail call i32 @regmap_write(ptr noundef %101, i32 noundef %add352.i, i32 noundef %or348.i) #5
  %102 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %dst.i, align 4
  %104 = ptrtoint ptr %y1.i10.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %y1.i10.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.24, i32 noundef %103, i32 noundef %105) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.25, i32 noundef %sub.i8.i, i32 noundef %sub.i11.i) #5
  %106 = ptrtoint ptr %regs.i63 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regs.i63, align 4
  %mul364.i = shl i32 %28, 4
  %add363.i = or i32 %mul364.i, 12
  %add365.i = add i32 %add363.i, %cond.i.i66
  %108 = ptrtoint ptr %y1.i10.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %y1.i10.i, align 4
  %shl368.i = shl i32 %109, 16
  %110 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %dst.i, align 4
  %or371.i = or i32 %shl368.i, %111
  %call372.i = tail call i32 @regmap_write(ptr noundef %107, i32 noundef %add365.i, i32 noundef %or371.i) #5
  %112 = ptrtoint ptr %regs.i63 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regs.i63, align 4
  %add375.i = or i32 %mul364.i, 8
  %add377.i = add i32 %add375.i, %cond.i.i66
  %call378.i = tail call i32 @regmap_write(ptr noundef %113, i32 noundef %add377.i, i32 noundef %or48.i) #5
  %114 = ptrtoint ptr %cfg.i.i52 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %cfg.i.i52, align 4
  %is_de3.i.i68 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %115, i32 0, i32 5
  %116 = ptrtoint ptr %is_de3.i.i68 to i32
  call void @__asan_load1_noabort(i32 %116)
  %bf.load.i.i69 = load i8, ptr %is_de3.i.i68, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i69)
  %tobool.not.i = icmp sgt i8 %bf.load.i.i69, -1
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i80

if.then.i80:                                      ; preds = %sun8i_vi_layer_update_coord.exit
  call void @__sanitizer_cov_trace_pc() #7
  %117 = ptrtoint ptr %overlay6 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %overlay6, align 8
  %119 = ptrtoint ptr %channel5 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %channel5, align 4
  %mul.i.i70 = shl i32 %120, 11
  %121 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %state1.i, align 4
  %alpha.i = getelementptr inbounds %struct.drm_plane_state, ptr %122, i32 0, i32 12
  %123 = ptrtoint ptr %alpha.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %alpha.i, align 4
  %conv.i72 = zext i16 %124 to i32
  %125 = shl nuw i32 %conv.i72, 16
  %shl.i73 = and i32 %125, -16777216
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %124)
  %cmp.i74 = icmp eq i16 %124, -1
  %cond.i = select i1 %cmp.i74, i32 0, i32 4
  %or.i75 = or i32 %shl.i73, %cond.i
  %126 = ptrtoint ptr %regs.i63 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %regs.i63, align 4
  %mul.i77 = mul i32 %118, 48
  %add.i.i71 = add i32 %mul.i77, 4096
  %add.i78 = add i32 %add.i.i71, %mul.i.i70
  %call.i.i79 = tail call i32 @regmap_update_bits_base(ptr noundef %127, i32 noundef %add.i78, i32 noundef -16777210, i32 noundef %or.i75, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %sun8i_vi_layer_update_alpha.exit

if.else.i:                                        ; preds = %sun8i_vi_layer_update_coord.exit
  %128 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %115, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %129)
  %cmp8.i = icmp eq i32 %129, 1
  br i1 %cmp8.i, label %if.then10.i, label %if.else.i.sun8i_vi_layer_update_alpha.exit_crit_edge

if.else.i.sun8i_vi_layer_update_alpha.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sun8i_vi_layer_update_alpha.exit

if.then10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %130 = ptrtoint ptr %regs.i63 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regs.i63, align 4
  %132 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %state1.i, align 4
  %alpha14.i = getelementptr inbounds %struct.drm_plane_state, ptr %133, i32 0, i32 12
  %134 = ptrtoint ptr %alpha14.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %alpha14.i, align 4
  %136 = lshr i16 %135, 8
  %137 = zext i16 %136 to i32
  %shl17.i = shl nuw i32 %137, 24
  %call.i27.i = tail call i32 @regmap_update_bits_base(ptr noundef %131, i32 noundef 696464, i32 noundef -16777216, i32 noundef %shl17.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %sun8i_vi_layer_update_alpha.exit

sun8i_vi_layer_update_alpha.exit:                 ; preds = %if.then10.i, %if.else.i.sun8i_vi_layer_update_alpha.exit_crit_edge, %if.then.i80
  %138 = ptrtoint ptr %channel5 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %channel5, align 4
  %140 = ptrtoint ptr %overlay6 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %overlay6, align 8
  %142 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %state1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hw_fmt.i) #5
  %144 = ptrtoint ptr %hw_fmt.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 -1, ptr %hw_fmt.i, align 4, !annotation !73
  %145 = ptrtoint ptr %cfg.i.i52 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %cfg.i.i52, align 4
  %is_de3.i.i83 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %146, i32 0, i32 5
  %147 = ptrtoint ptr %is_de3.i.i83 to i32
  call void @__asan_load1_noabort(i32 %147)
  %bf.load.i.i84 = load i8, ptr %is_de3.i.i83, align 4
  %fb.i85 = getelementptr inbounds %struct.drm_plane_state, ptr %143, i32 0, i32 2
  %148 = ptrtoint ptr %fb.i85 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %fb.i85, align 4
  %format.i = getelementptr inbounds %struct.drm_framebuffer, ptr %149, i32 0, i32 4
  %150 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %format.i, align 8
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %151, align 4
  %call3.i = call i32 @sun8i_mixer_drm_format_to_hw(i32 noundef %153, ptr noundef nonnull %hw_fmt.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i86 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i86, label %if.end.i100, label %if.then.i87

if.then.i87:                                      ; preds = %sun8i_vi_layer_update_alpha.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.26) #5
  br label %sun8i_vi_layer_update_formats.exit

if.end.i100:                                      ; preds = %sun8i_vi_layer_update_alpha.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i84)
  %tobool.not4.i.i88 = icmp slt i8 %bf.load.i.i84, 0
  %mul.i.i89 = shl i32 %139, 11
  %add.i.i90 = add i32 %mul.i.i89, 4096
  %mul1.i.i91 = shl i32 %139, 12
  %add2.i.i92 = add i32 %mul1.i.i91, 8192
  %retval.0.i.i93 = select i1 %tobool.not4.i.i88, i32 %add.i.i90, i32 %add2.i.i92
  %154 = ptrtoint ptr %hw_fmt.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %hw_fmt.i, align 4
  %shl.i94 = shl i32 %155, 8
  %156 = ptrtoint ptr %regs.i63 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %regs.i63, align 4
  %mul.i96 = mul i32 %141, 48
  %add.i97 = add i32 %retval.0.i.i93, %mul.i96
  %call.i.i98 = call i32 @regmap_update_bits_base(ptr noundef %157, i32 noundef %add.i97, i32 noundef 7936, i32 noundef %shl.i94, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %is_yuv.i.i = getelementptr inbounds %struct.drm_format_info, ptr %151, i32 0, i32 9
  %158 = ptrtoint ptr %is_yuv.i.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %is_yuv.i.i, align 1, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool.not.i.i99 = icmp eq i8 %159, 0
  br i1 %tobool.not.i.i99, label %if.end.i100.if.end8.i_crit_edge, label %if.end.i.i

if.end.i100.if.end8.i_crit_edge:                  ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

if.end.i.i:                                       ; preds = %if.end.i100
  %160 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %151, align 4
  %162 = zext i32 %161 to i64
  call void @__sanitizer_cov_trace_switch(i64 %162, ptr @__sancov_gen_cov_switch_values)
  switch i32 %161, label %sw.default.i.i [
    i32 825316953, label %if.end.i.i.if.then7.i_crit_edge
    i32 842094169, label %if.end.i.i.if.then7.i_crit_edge148
    i32 909203033, label %if.end.i.i.if.then7.i_crit_edge149
    i32 875714137, label %if.end.i.i.if.then7.i_crit_edge150
  ]

if.end.i.i.if.then7.i_crit_edge150:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i

if.end.i.i.if.then7.i_crit_edge149:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i

if.end.i.i.if.then7.i_crit_edge148:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i

if.end.i.i.if.then7.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i

sw.default.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i

if.then7.i:                                       ; preds = %sw.default.i.i, %if.end.i.i.if.then7.i_crit_edge, %if.end.i.i.if.then7.i_crit_edge148, %if.end.i.i.if.then7.i_crit_edge149, %if.end.i.i.if.then7.i_crit_edge150
  %retval.0.i1.ph.i = phi i32 [ 2, %if.end.i.i.if.then7.i_crit_edge ], [ 2, %if.end.i.i.if.then7.i_crit_edge148 ], [ 2, %if.end.i.i.if.then7.i_crit_edge149 ], [ 2, %if.end.i.i.if.then7.i_crit_edge150 ], [ 1, %sw.default.i.i ]
  %color_encoding.i = getelementptr inbounds %struct.drm_plane_state, ptr %143, i32 0, i32 17
  %163 = ptrtoint ptr %color_encoding.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %color_encoding.i, align 4
  %color_range.i = getelementptr inbounds %struct.drm_plane_state, ptr %143, i32 0, i32 18
  %165 = ptrtoint ptr %color_range.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %color_range.i, align 4
  call void @sun8i_csc_set_ccsc_coefficients(ptr noundef %11, i32 noundef %139, i32 noundef %retval.0.i1.ph.i, i32 noundef %164, i32 noundef %166) #5
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.end.i100.if.end8.i_crit_edge
  %167 = xor i1 %tobool.not.i.i99, true
  call void @sun8i_csc_enable_ccsc(ptr noundef %11, i32 noundef %139, i1 noundef zeroext %167) #5
  %168 = ptrtoint ptr %is_yuv.i.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %is_yuv.i.i, align 1, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool9.not.i = icmp eq i8 %169, 0
  %..i = select i1 %tobool9.not.i, i32 32768, i32 0
  %170 = ptrtoint ptr %regs.i63 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %regs.i63, align 4
  %call.i2.i = call i32 @regmap_update_bits_base(ptr noundef %171, i32 noundef %add.i97, i32 noundef 32768, i32 noundef %..i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %sun8i_vi_layer_update_formats.exit

sun8i_vi_layer_update_formats.exit:               ; preds = %if.end8.i, %if.then.i87
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw_fmt.i) #5
  %172 = ptrtoint ptr %channel5 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %channel5, align 4
  %174 = ptrtoint ptr %overlay6 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %overlay6, align 8
  %176 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %state1.i, align 4
  %fb2.i = getelementptr inbounds %struct.drm_plane_state, ptr %177, i32 0, i32 2
  %178 = ptrtoint ptr %fb2.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %fb2.i, align 4
  %format3.i = getelementptr inbounds %struct.drm_framebuffer, ptr %179, i32 0, i32 4
  %180 = ptrtoint ptr %format3.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %format3.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %paddr.i) #5
  %src.i102 = getelementptr inbounds %struct.drm_plane_state, ptr %177, i32 0, i32 20
  %182 = ptrtoint ptr %src.i102 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %src.i102, align 4
  %shr.i103 = ashr i32 %183, 16
  %hsub.i104 = getelementptr inbounds %struct.drm_format_info, ptr %181, i32 0, i32 6
  %184 = ptrtoint ptr %hsub.i104 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %hsub.i104, align 2
  %conv.i105 = zext i8 %185 to i32
  %neg.i106 = sub nsw i32 0, %conv.i105
  %and.i107 = and i32 %shr.i103, %neg.i106
  %y1.i = getelementptr inbounds %struct.drm_plane_state, ptr %177, i32 0, i32 20, i32 1
  %186 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %y1.i, align 4
  %shr5.i = ashr i32 %187, 16
  %vsub.i108 = getelementptr inbounds %struct.drm_format_info, ptr %181, i32 0, i32 7
  %188 = ptrtoint ptr %vsub.i108 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %vsub.i108, align 1
  %conv6.i = zext i8 %189 to i32
  %neg8.i = sub nsw i32 0, %conv6.i
  %and9.i = and i32 %shr5.i, %neg8.i
  %num_planes.i = getelementptr inbounds %struct.drm_format_info, ptr %181, i32 0, i32 2
  %190 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %num_planes.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %191)
  %cmp2.not.i = icmp eq i8 %191, 0
  br i1 %cmp2.not.i, label %sun8i_vi_layer_update_formats.exit.sun8i_vi_layer_update_buffer.exit_crit_edge, label %if.end.peel.i

sun8i_vi_layer_update_formats.exit.sun8i_vi_layer_update_buffer.exit_crit_edge: ; preds = %sun8i_vi_layer_update_formats.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sun8i_vi_layer_update_buffer.exit

if.end.peel.i:                                    ; preds = %sun8i_vi_layer_update_formats.exit
  %192 = ptrtoint ptr %cfg.i.i52 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %cfg.i.i52, align 4
  %is_de3.i.i110 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %193, i32 0, i32 5
  %194 = ptrtoint ptr %is_de3.i.i110 to i32
  call void @__asan_load1_noabort(i32 %194)
  %bf.load.i.i111 = load i8, ptr %is_de3.i.i110, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i111)
  %tobool.not4.i.i112 = icmp slt i8 %bf.load.i.i111, 0
  %mul.i.i113 = shl i32 %173, 11
  %add.i.i114 = add i32 %mul.i.i113, 4096
  %mul1.i.i115 = shl i32 %173, 12
  %add2.i.i116 = add i32 %mul1.i.i115, 8192
  %retval.0.i.i117 = select i1 %tobool.not4.i.i112, i32 %add.i.i114, i32 %add2.i.i116
  %195 = getelementptr inbounds %struct.drm_format_info, ptr %181, i32 0, i32 3
  %mul31.i = mul i32 %175, 48
  %add32.i = add i32 %retval.0.i.i117, %mul31.i
  %add33.i = or i32 %add32.i, 12
  %add44.i = add i32 %add32.i, 24
  %call12.peel.i = call ptr @drm_fb_cma_get_gem_obj(ptr noundef %179, i32 noundef 0) #5
  %paddr13.peel.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call12.peel.i, i32 0, i32 1
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.27, ptr noundef %paddr13.peel.i) #5
  %196 = ptrtoint ptr %paddr13.peel.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %paddr13.peel.i, align 8
  %arrayidx.peel.i = getelementptr %struct.drm_framebuffer, ptr %179, i32 0, i32 7, i32 0
  %198 = ptrtoint ptr %arrayidx.peel.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx.peel.i, align 4
  %add.peel.i = add i32 %199, %197
  %200 = ptrtoint ptr %195 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %195, align 1
  %conv23.peel.i = zext i8 %201 to i32
  %mul.peel.i = mul nsw i32 %and.i107, %conv23.peel.i
  %add24.peel.i = add i32 %add.peel.i, %mul.peel.i
  %arrayidx25.peel.i = getelementptr %struct.drm_framebuffer, ptr %179, i32 0, i32 6, i32 0
  %202 = ptrtoint ptr %arrayidx25.peel.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %arrayidx25.peel.i, align 4
  %mul26.peel.i = mul i32 %203, %and9.i
  %add27.peel.i = add i32 %add24.peel.i, %mul26.peel.i
  %204 = ptrtoint ptr %paddr.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %add27.peel.i, ptr %paddr.i, align 4
  %205 = load i32, ptr %arrayidx25.peel.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.28, i32 noundef 1, i32 noundef %205) #5
  %206 = ptrtoint ptr %regs.i63 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %regs.i63, align 4
  %208 = ptrtoint ptr %arrayidx25.peel.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %arrayidx25.peel.i, align 4
  %call38.peel.i = call i32 @regmap_write(ptr noundef %207, i32 noundef %add33.i, i32 noundef %209) #5
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.29, i32 noundef 1, ptr noundef nonnull %paddr.i) #5
  %210 = ptrtoint ptr %regs.i63 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %regs.i63, align 4
  %212 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %paddr.i, align 4
  %call48.peel.i = call i32 @regmap_write(ptr noundef %211, i32 noundef %add44.i, i32 noundef %213) #5
  %214 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %num_planes.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %215)
  %cmp.peel.i = icmp ugt i8 %215, 1
  br i1 %cmp.peel.i, label %if.end.peel.i.if.end.i124_crit_edge, label %if.end.peel.i.sun8i_vi_layer_update_buffer.exit_crit_edge

if.end.peel.i.sun8i_vi_layer_update_buffer.exit_crit_edge: ; preds = %if.end.peel.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sun8i_vi_layer_update_buffer.exit

if.end.peel.i.if.end.i124_crit_edge:              ; preds = %if.end.peel.i
  br label %if.end.i124

if.end.i124:                                      ; preds = %if.end.i124.if.end.i124_crit_edge, %if.end.peel.i.if.end.i124_crit_edge
  %i.03.i = phi i32 [ %add28.i, %if.end.i124.if.end.i124_crit_edge ], [ 1, %if.end.peel.i.if.end.i124_crit_edge ]
  %call12.i = call ptr @drm_fb_cma_get_gem_obj(ptr noundef %179, i32 noundef %i.03.i) #5
  %paddr13.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call12.i, i32 0, i32 1
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.27, ptr noundef %paddr13.i) #5
  %216 = ptrtoint ptr %paddr13.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %paddr13.i, align 8
  %arrayidx.i = getelementptr %struct.drm_framebuffer, ptr %179, i32 0, i32 7, i32 %i.03.i
  %218 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %arrayidx.i, align 4
  %add.i119 = add i32 %219, %217
  %220 = ptrtoint ptr %hsub.i104 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %hsub.i104, align 2
  %conv18.i = zext i8 %221 to i32
  %div.i120 = udiv i32 %and.i107, %conv18.i
  %222 = ptrtoint ptr %vsub.i108 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %vsub.i108, align 1
  %conv20.i = zext i8 %223 to i32
  %div21.i = udiv i32 %and9.i, %conv20.i
  %arrayidx22.i = getelementptr [4 x i8], ptr %195, i32 0, i32 %i.03.i
  %224 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %arrayidx22.i, align 1
  %conv23.i121 = zext i8 %225 to i32
  %mul.i122 = mul i32 %div.i120, %conv23.i121
  %add24.i = add i32 %add.i119, %mul.i122
  %arrayidx25.i = getelementptr %struct.drm_framebuffer, ptr %179, i32 0, i32 6, i32 %i.03.i
  %226 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %arrayidx25.i, align 4
  %mul26.i = mul i32 %227, %div21.i
  %add27.i = add i32 %add24.i, %mul26.i
  %228 = ptrtoint ptr %paddr.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %add27.i, ptr %paddr.i, align 4
  %add28.i = add nuw nsw i32 %i.03.i, 1
  %229 = load i32, ptr %arrayidx25.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.28, i32 noundef %add28.i, i32 noundef %229) #5
  %230 = ptrtoint ptr %regs.i63 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %regs.i63, align 4
  %mul34.i = shl i32 %i.03.i, 2
  %add35.i = add i32 %mul34.i, %add33.i
  %232 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %arrayidx25.i, align 4
  %call38.i = call i32 @regmap_write(ptr noundef %231, i32 noundef %add35.i, i32 noundef %233) #5
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.29, i32 noundef %add28.i, ptr noundef nonnull %paddr.i) #5
  %234 = ptrtoint ptr %regs.i63 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %regs.i63, align 4
  %add46.i = add i32 %mul34.i, %add44.i
  %236 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %paddr.i, align 4
  %call48.i = call i32 @regmap_write(ptr noundef %235, i32 noundef %add46.i, i32 noundef %237) #5
  %238 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %num_planes.i, align 1
  %conv10.i = zext i8 %239 to i32
  %cmp.i123 = icmp ult i32 %add28.i, %conv10.i
  br i1 %cmp.i123, label %if.end.i124.if.end.i124_crit_edge, label %if.end.i124.sun8i_vi_layer_update_buffer.exit_crit_edge, !llvm.loop !74

if.end.i124.sun8i_vi_layer_update_buffer.exit_crit_edge: ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #7
  br label %sun8i_vi_layer_update_buffer.exit

if.end.i124.if.end.i124_crit_edge:                ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i124

sun8i_vi_layer_update_buffer.exit:                ; preds = %if.end.i124.sun8i_vi_layer_update_buffer.exit_crit_edge, %if.end.peel.i.sun8i_vi_layer_update_buffer.exit_crit_edge, %sun8i_vi_layer_update_formats.exit.sun8i_vi_layer_update_buffer.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr.i) #5
  %240 = ptrtoint ptr %channel5 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %channel5, align 4
  %242 = ptrtoint ptr %overlay6 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %overlay6, align 8
  %244 = ptrtoint ptr %cfg.i.i52 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %cfg.i.i52, align 4
  %is_de3.i.i126 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %245, i32 0, i32 5
  %246 = ptrtoint ptr %is_de3.i.i126 to i32
  call void @__asan_load1_noabort(i32 %246)
  %bf.load.i.i127 = load i8, ptr %is_de3.i.i126, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i127)
  %tobool.not.i.i128 = icmp sgt i8 %bf.load.i.i127, -1
  %cond.i.i129 = select i1 %tobool.not.i.i128, i32 4096, i32 2048
  %mul.i.i130 = shl i32 %241, 11
  %add.i.i131 = add i32 %mul.i.i130, 4096
  %mul1.i.i132 = shl i32 %241, 12
  %add2.i.i133 = add i32 %mul1.i.i132, 8192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i127)
  %tobool.not4.i.i134 = icmp slt i8 %bf.load.i.i127, 0
  %retval.0.i.i135 = select i1 %tobool.not4.i.i134, i32 %add.i.i131, i32 %add2.i.i133
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %241, i32 noundef %243) #5
  %247 = ptrtoint ptr %regs.i63 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %regs.i63, align 4
  %mul.i137 = mul i32 %243, 48
  %add.i138 = add i32 %retval.0.i.i135, %mul.i137
  %call.i.i139 = call i32 @regmap_update_bits_base(ptr noundef %248, i32 noundef %add.i138, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %9)
  %cmp.not.i140 = icmp eq i32 %28, %9
  br i1 %cmp.not.i140, label %sun8i_vi_layer_update_buffer.exit.sun8i_vi_layer_enable.exit_crit_edge, label %if.then6.i

sun8i_vi_layer_update_buffer.exit.sun8i_vi_layer_enable.exit_crit_edge: ; preds = %sun8i_vi_layer_update_buffer.exit
  call void @__sanitizer_cov_trace_pc() #7
  %.pre = or i32 %cond.i.i129, 128
  br label %sun8i_vi_layer_enable.exit

if.then6.i:                                       ; preds = %sun8i_vi_layer_update_buffer.exit
  call void @__sanitizer_cov_trace_pc() #7
  %249 = ptrtoint ptr %regs.i63 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %regs.i63, align 4
  %add10.i141 = add i32 %9, 8
  %shl.i142 = shl nuw i32 1, %add10.i141
  %call.i62.i143 = call i32 @regmap_update_bits_base(ptr noundef %250, i32 noundef %cond.i.i129, i32 noundef %shl.i142, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %251 = ptrtoint ptr %regs.i63 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %regs.i63, align 4
  %add14.i144 = or i32 %cond.i.i129, 128
  %shl15.i145 = shl i32 %9, 2
  %shl16.i146 = shl i32 15, %shl15.i145
  %call.i63.i147 = call i32 @regmap_update_bits_base(ptr noundef %252, i32 noundef %add14.i144, i32 noundef %shl16.i146, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %sun8i_vi_layer_enable.exit

sun8i_vi_layer_enable.exit:                       ; preds = %if.then6.i, %sun8i_vi_layer_update_buffer.exit.sun8i_vi_layer_enable.exit_crit_edge
  %add31.i.pre-phi = phi i32 [ %.pre, %sun8i_vi_layer_update_buffer.exit.sun8i_vi_layer_enable.exit_crit_edge ], [ %add14.i144, %if.then6.i ]
  %add21.i = add i32 %28, 8
  %shl22.i = shl nuw i32 1, %add21.i
  %253 = ptrtoint ptr %regs.i63 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %regs.i63, align 4
  %call.i64.i = call i32 @regmap_update_bits_base(ptr noundef %254, i32 noundef %cond.i.i129, i32 noundef %shl22.i, i32 noundef %shl22.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %shl27.i = shl i32 %28, 2
  %shl28.i = shl i32 %241, %shl27.i
  %255 = ptrtoint ptr %regs.i63 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %regs.i63, align 4
  %shl33.i = shl i32 15, %shl27.i
  %call.i65.i = call i32 @regmap_update_bits_base(ptr noundef %256, i32 noundef %add31.i.pre-phi, i32 noundef %shl33.i, i32 noundef %shl28.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %sun8i_vi_layer_enable.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_vi_layer_atomic_disable(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %mixer2 = getelementptr inbounds %struct.sun8i_vi_layer, ptr %plane, i32 0, i32 1
  %8 = ptrtoint ptr %mixer2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mixer2, align 8
  %channel = getelementptr inbounds %struct.sun8i_vi_layer, ptr %plane, i32 0, i32 2
  %10 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channel, align 4
  %overlay = getelementptr inbounds %struct.sun8i_vi_layer, ptr %plane, i32 0, i32 3
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
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16, i32 noundef %11, i32 noundef %13) #5
  %regs.i = getelementptr inbounds %struct.sunxi_engine, ptr %9, i32 0, i32 2
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %mul.i = mul i32 %13, 48
  %add.i = add i32 %retval.0.i.i, %mul.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef %add.i, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %add10.i = add i32 %7, 8
  %shl.i = shl nuw i32 1, %add10.i
  %call.i62.i = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef %cond.i.i, i32 noundef %shl.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %add14.i = or i32 %cond.i.i, 128
  %shl15.i = shl i32 %7, 2
  %shl16.i = shl i32 15, %shl15.i
  %call.i63.i = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef %add14.i, i32 noundef %shl16.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
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
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun8i_vi_scaler_setup(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun8i_vi_scaler_enable(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_mixer_drm_format_to_hw(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun8i_csc_set_ccsc_coefficients(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun8i_csc_enable_ccsc(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !24, !26, !28, !30, !32, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/sun4i/sun8i_vi_layer.c", i32 570, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sun8i_vi_layer_init_one._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @sun8i_vi_layer_init_one._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/sun4i/sun8i_vi_layer.c", i32 579, i32 4}
!10 = !{ptr @sun8i_vi_layer_init_one._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @sun8i_vi_layer_init_one._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/sun4i/sun8i_vi_layer.c", i32 587, i32 3}
!14 = !{ptr @sun8i_vi_layer_init_one._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @sun8i_vi_layer_init_one._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/sun4i/sun8i_vi_layer.c", i32 605, i32 3}
!18 = !{ptr @sun8i_vi_layer_init_one._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @sun8i_vi_layer_init_one._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @sun8i_vi_layer_de3_formats, !21, !"sun8i_vi_layer_de3_formats", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/sun4i/sun8i_vi_layer.c", i32 492, i32 18}
!22 = !{ptr @sun8i_vi_layer_formats, !23, !"sun8i_vi_layer_formats", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/sun4i/sun8i_vi_layer.c", i32 458, i32 18}
!24 = !{ptr @sun8i_vi_layer_funcs, !25, !"sun8i_vi_layer_funcs", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/sun4i/sun8i_vi_layer.c", i32 444, i32 37}
!26 = !{ptr @sun8i_layer_modifiers, !27, !"sun8i_layer_modifiers", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/sun4i/sun8i_vi_layer.c", i32 536, i32 23}
!28 = !{ptr @sun8i_vi_layer_helper_funcs, !29, !"sun8i_vi_layer_helper_funcs", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/sun4i/sun8i_vi_layer.c", i32 438, i32 44}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/sun4i/sun8i_vi_layer.c", i32 29, i32 2}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/sun4i/sun8i_vi_layer.c", i32 113, i32 2}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/sun4i/sun8i_vi_layer.c", i32 150, i32 2}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/sun4i/sun8i_vi_layer.c", i32 153, i32 2}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/sun4i/sun8i_vi_layer.c", i32 173, i32 3}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/sun4i/sun8i_vi_layer.c", i32 185, i32 4}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/sun4i/sun8i_vi_layer.c", i32 195, i32 4}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/sun4i/sun8i_vi_layer.c", i32 209, i32 3}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/sun4i/sun8i_vi_layer.c", i32 231, i32 2}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/sun4i/sun8i_vi_layer.c", i32 233, i32 2}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/sun4i/sun8i_vi_layer.c", i32 273, i32 3}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/sun4i/sun8i_vi_layer.c", i32 326, i32 3}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/sun4i/sun8i_vi_layer.c", i32 344, i32 3}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/sun4i/sun8i_vi_layer.c", i32 351, i32 3}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{!"branch_weights", i32 1, i32 2000}
!70 = !{i8 0, i8 2}
!71 = !{!"branch_weights", i32 2000, i32 1}
!72 = !{i64 2149114835, i64 2149115115, i64 2149115449, i64 2149115783}
!73 = !{!"auto-init"}
!74 = distinct !{!74, !75}
!75 = !{!"llvm.loop.peeled.count", i32 1}
