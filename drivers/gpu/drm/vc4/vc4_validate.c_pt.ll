; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/vc4/vc4_validate.c_pt.bc'
source_filename = "../drivers/gpu/drm/vc4/vc4_validate.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cmd_info = type { i16, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vc4_exec_info = type { i64, i64, ptr, i32, i32, ptr, ptr, i32, [4 x ptr], i32, %struct.list_head, %struct.list_head, [2 x i32], ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.vc4_bo = type { %struct.drm_gem_cma_object, i64, i64, i8, %struct.list_head, i32, %struct.list_head, ptr, i32, %struct.refcount_struct, i32, %struct.mutex }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_vc4_submit_cl = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface, [2 x i32], i32, i8, [3 x i8], i32, i64, i32, i32, i32, i32 }
%struct.drm_vc4_submit_rcl_surface = type { i32, i32, i16, i16 }
%struct.vc4_shader_state = type { i32, i32 }
%struct.vc4_validated_shader_info = type { i32, i32, i32, ptr, i32, ptr, i8 }
%struct.vc4_texture_sample_info = type { i8, [4 x i32] }
%struct.vc4_dev = type { %struct.drm_device, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.vc4_bo_cache, i32, ptr, %struct.mutex, %struct.anon.89, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct, ptr, %struct.list_head, ptr, i32, i32, i32, %struct.atomic_t, %struct.work_struct, i32, i8, %struct.mutex, %struct.anon.90, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.drm_private_obj, %struct.drm_private_obj, %struct.list_head, %struct.mutex, %struct.kref }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.86, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.86 = type { i32, ptr }
%struct.vc4_bo_cache = type { ptr, i32, %struct.list_head, %struct.work_struct, %struct.timer_list }
%struct.anon.89 = type { %struct.list_head, i32, i32, i32, i32, %struct.mutex }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.90 = type { %struct.timer_list, %struct.work_struct }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }

@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"BO index %d greater than BO count %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Trying to use shader BO as something other than a shader\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Surface dimensions (%d,%d) too large\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"buffer tiling %d unsupported\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Overflow in %dx%d (%dx%d) fbo size (%d + %d > %zd)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"0x%08x: packet %d out of bounds\0A\00", [63 x i8] zeroinitializer }, align 32
@cmd_info = internal constant { [255 x %struct.cmd_info], [748 x i8] } { [255 x %struct.cmd_info] [%struct.cmd_info { i16 1, ptr @.str.12, ptr null }, %struct.cmd_info { i16 1, ptr @.str.13, ptr null }, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info { i16 1, ptr @.str.14, ptr @validate_flush }, %struct.cmd_info { i16 1, ptr @.str.15, ptr null }, %struct.cmd_info { i16 1, ptr @.str.16, ptr @validate_start_tile_binning }, %struct.cmd_info { i16 1, ptr @.str.17, ptr @validate_increment_semaphore }, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info { i16 14, ptr @.str.18, ptr @validate_indexed_prim_list }, %struct.cmd_info { i16 10, ptr @.str.19, ptr @validate_gl_array_primitive }, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info { i16 2, ptr @.str.20, ptr null }, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info { i16 5, ptr @.str.21, ptr @validate_gl_shader_state }, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info { i16 4, ptr @.str.22, ptr null }, %struct.cmd_info { i16 5, ptr @.str.23, ptr null }, %struct.cmd_info { i16 5, ptr @.str.24, ptr null }, %struct.cmd_info { i16 5, ptr @.str.25, ptr null }, %struct.cmd_info { i16 3, ptr @.str.26, ptr null }, %struct.cmd_info { i16 5, ptr @.str.27, ptr null }, %struct.cmd_info { i16 9, ptr @.str.28, ptr null }, %struct.cmd_info { i16 5, ptr @.str.29, ptr null }, %struct.cmd_info zeroinitializer, %struct.cmd_info { i16 9, ptr @.str.30, ptr null }, %struct.cmd_info { i16 9, ptr @.str.31, ptr null }, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info { i16 16, ptr @.str.32, ptr @validate_tile_binning_config }, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info { i16 9, ptr @.str.33, ptr @validate_gem_handles }], [748 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"0x%08x: packet %d invalid\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"0x%08x: packet %d (%s) length 0x%08x exceeds bounds (0x%08x)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"0x%08x: packet %d (%s) failed to validate\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Bin CL missing VC4_PACKET_START_TILE_BINNING\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Bin CL missing VC4_PACKET_INCREMENT_SEMAPHORE + VC4_PACKET_FLUSH\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"unknown cpp: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"VC4_PACKET_HALT\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"VC4_PACKET_NOP\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"VC4_PACKET_FLUSH\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"VC4_PACKET_FLUSH_ALL\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"VC4_PACKET_START_TILE_BINNING\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VC4_PACKET_INCREMENT_SEMAPHORE\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"VC4_PACKET_GL_INDEXED_PRIMITIVE\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"VC4_PACKET_GL_ARRAY_PRIMITIVE\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"VC4_PACKET_PRIMITIVE_LIST_FORMAT\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"VC4_PACKET_GL_SHADER_STATE\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"VC4_PACKET_CONFIGURATION_BITS\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"VC4_PACKET_FLAT_SHADE_FLAGS\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"VC4_PACKET_POINT_SIZE\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"VC4_PACKET_LINE_WIDTH\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"VC4_PACKET_RHT_X_BOUNDARY\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"VC4_PACKET_DEPTH_OFFSET\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"VC4_PACKET_CLIP_WINDOW\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"VC4_PACKET_VIEWPORT_OFFSET\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"VC4_PACKET_CLIPPER_XY_SCALING\00", [34 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"VC4_PACKET_CLIPPER_Z_SCALING\00", [35 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VC4_PACKET_TILE_BINNING_MODE_CONFIG\00", [60 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"VC4_PACKET_GEM_HANDLES\00", [41 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Bin CL must end with VC4_PACKET_FLUSH\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Duplicate VC4_PACKET_START_TILE_BINNING\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"missing VC4_PACKET_TILE_BINNING_MODE_CONFIG\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Bin CL must end with VC4_PACKET_INCREMENT_SEMAPHORE\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"shader state must precede primitives\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"IB access overflow (%d + %d*%d > %zd)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"primitive vertex count overflow\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"More requests for shader states than declared\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"high bits set in GL shader rec reference\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Duplicate VC4_PACKET_TILE_BINNING_MODE_CONFIG\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Tile binning config of %dx%d too small\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unsupported binning config flags 0x%02x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to allocate binner memory: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/vc4/vc4_validate.c\00", [61 x i8] zeroinitializer }, align 32
@validate_gl_shader_rec.shader_reloc_offsets = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 4, i32 16, i32 28], [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"overflowed shader recs reading %d handles from %d bytes left\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"overflowed shader recs copying %db packet from %d bytes left\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Shader handle %d too big\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Thread mode of CL and FS do not match\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cs and vs cannot be threaded\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Shaders must be at offset 0 of the BO.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Uniforms src buffer overflow\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"BO offset overflow (%d + %d > %zu)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"primitives use index %d out of supplied %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"UBO offset greater than UBO size\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"UBO clamp would allow reads outside of UBO\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Cube map stride set twice\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Cube map stride not set\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Texture format %d unsupported\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Level %d (%dx%d -> %dx%d) size %db overflowed buffer bounds (offset %d)\0A\00", [55 x i8] zeroinitializer }, align 32
@reloc_tex._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.47, i32 736, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016[drm] Texture p0 at %d: 0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reloc_tex\00", [22 x i8] zeroinitializer }, align 32
@reloc_tex._entry_ptr = internal global ptr @reloc_tex._entry, section ".printk_index", align 4
@reloc_tex._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.47, i32 737, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016[drm] Texture p1 at %d: 0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@reloc_tex._entry_ptr.67 = internal global ptr @reloc_tex._entry.65, section ".printk_index", align 4
@reloc_tex._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.64, ptr @.str.47, i32 738, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016[drm] Texture p2 at %d: 0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@reloc_tex._entry_ptr.70 = internal global ptr @reloc_tex._entry.68, section ".printk_index", align 4
@reloc_tex._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.64, ptr @.str.47, i32 739, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016[drm] Texture p3 at %d: 0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@reloc_tex._entry_ptr.73 = internal global ptr @reloc_tex._entry.71, section ".printk_index", align 4
@switch.table.vc4_validate_shader_recs = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 32, i32 16, i32 32, i32 16, i32 32, i32 32, i32 32, i32 16], [32 x i8] zeroinitializer }, align 32
@switch.table.vc4_validate_shader_recs.74 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 32, i32 32, i32 32, i32 16, i32 32, i32 32, i32 32, i32 8], [32 x i8] zeroinitializer }, align 32
@switch.table.vc4_validate_shader_recs.75 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 32, i32 16, i32 32, i32 16, i32 32, i32 32, i32 32, i32 16], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.76 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.78 = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 16]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 4294966784, i64 4294967292]
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 112, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 120, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 175, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 194, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 203, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 496, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant [9 x i8] c"cmd_info\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 440, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 503, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 509, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 522, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 540, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 552, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 68, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 441, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 442, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 443, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 444, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 445, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 447, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 450, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 452, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 455, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 457, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 459, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 460, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 461, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 462, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 463, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 464, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 465, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 466, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 467, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 471, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 473, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 476, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 217, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 229, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 235, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 246, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 267, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 284, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 310, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 327, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 335, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 359, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 371, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 378, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 385, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 409, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant [21 x i8] c"shader_reloc_offsets\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 750, i32 24 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 767, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 777, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 797, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 813, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 819, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 834, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 845, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 903, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 912, i32 5 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 591, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 595, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 615, i32 5 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 622, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 663, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 716, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 736, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 737, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 738, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.300 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.301 = private constant [38 x i8] c"../drivers/gpu/drm/vc4/vc4_validate.c\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 739, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant [38 x i8] c"switch.table.vc4_validate_shader_recs\00", align 1
@___asan_gen_.304 = private unnamed_addr constant [41 x i8] c"switch.table.vc4_validate_shader_recs.74\00", align 1
@___asan_gen_.305 = private unnamed_addr constant [41 x i8] c"switch.table.vc4_validate_shader_recs.75\00", align 1
@llvm.compiler.used = appending global [81 x ptr] [ptr @reloc_tex._entry, ptr @reloc_tex._entry.65, ptr @reloc_tex._entry.68, ptr @reloc_tex._entry.71, ptr @reloc_tex._entry_ptr, ptr @reloc_tex._entry_ptr.67, ptr @reloc_tex._entry_ptr.70, ptr @reloc_tex._entry_ptr.73, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @cmd_info, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @validate_gl_shader_rec.shader_reloc_offsets, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @switch.table.vc4_validate_shader_recs, ptr @switch.table.vc4_validate_shader_recs.74, ptr @switch.table.vc4_validate_shader_recs.75], section "llvm.metadata"
@0 = internal global [77 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd_info to i32), i32 3060, i32 3808, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_gl_shader_rec.shader_reloc_offsets to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reloc_tex._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reloc_tex._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reloc_tex._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reloc_tex._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vc4_validate_shader_recs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vc4_validate_shader_recs.74 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vc4_validate_shader_recs.75 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vc4_use_bo(ptr nocapture noundef readonly %exec, i32 noundef %hindex) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bo_count = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 7
  %0 = ptrtoint ptr %bo_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bo_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %hindex)
  %cmp.not = icmp ugt i32 %1, %hindex
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %hindex, i32 noundef %1) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %bo2 = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 6
  %2 = ptrtoint ptr %bo2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bo2, align 8
  %arrayidx = getelementptr ptr, ptr %3, i32 %hindex
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %validated_shader = getelementptr inbounds %struct.vc4_bo, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %validated_shader to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %validated_shader, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ null, %if.then3 ], [ %5, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @vc4_check_tex_size(ptr nocapture readnone %exec, ptr nocapture noundef readonly %fbo, i32 noundef %offset, i8 noundef zeroext %tiling_format, i32 noundef %width, i32 noundef %height, i8 noundef zeroext %cpp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %cpp to i32
  %0 = zext i8 %cpp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %cpp, label %sw.default.i [
    i8 1, label %entry.utile_width.exit_crit_edge
    i8 2, label %entry.utile_width.exit_crit_edge78
    i8 4, label %entry.sw.bb1.i72_crit_edge
    i8 8, label %sw.bb2.i
  ]

entry.sw.bb1.i72_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i72

entry.utile_width.exit_crit_edge78:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %utile_width.exit

entry.utile_width.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %utile_width.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i72

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, i32 noundef %conv) #6
  br label %utile_width.exit

utile_width.exit:                                 ; preds = %sw.default.i, %entry.utile_width.exit_crit_edge, %entry.utile_width.exit_crit_edge78
  %retval.0.i = phi i32 [ 1, %sw.default.i ], [ 8, %entry.utile_width.exit_crit_edge ], [ 8, %entry.utile_width.exit_crit_edge78 ]
  %1 = zext i8 %cpp to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %cpp, label %sw.default.i73 [
    i8 1, label %utile_width.exit.utile_height.exit_crit_edge
    i8 2, label %utile_width.exit.sw.bb1.i72_crit_edge
    i8 4, label %utile_width.exit.sw.bb1.i72_crit_edge79
    i8 8, label %utile_width.exit.sw.bb1.i72_crit_edge80
  ]

utile_width.exit.sw.bb1.i72_crit_edge80:          ; preds = %utile_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i72

utile_width.exit.sw.bb1.i72_crit_edge79:          ; preds = %utile_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i72

utile_width.exit.sw.bb1.i72_crit_edge:            ; preds = %utile_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i72

utile_width.exit.utile_height.exit_crit_edge:     ; preds = %utile_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %utile_height.exit

sw.bb1.i72:                                       ; preds = %utile_width.exit.sw.bb1.i72_crit_edge, %utile_width.exit.sw.bb1.i72_crit_edge79, %utile_width.exit.sw.bb1.i72_crit_edge80, %sw.bb2.i, %entry.sw.bb1.i72_crit_edge
  %retval.0.i76 = phi i32 [ %retval.0.i, %utile_width.exit.sw.bb1.i72_crit_edge ], [ %retval.0.i, %utile_width.exit.sw.bb1.i72_crit_edge79 ], [ %retval.0.i, %utile_width.exit.sw.bb1.i72_crit_edge80 ], [ 2, %sw.bb2.i ], [ 4, %entry.sw.bb1.i72_crit_edge ]
  br label %utile_height.exit

sw.default.i73:                                   ; preds = %utile_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, i32 noundef %conv) #6
  br label %utile_height.exit

utile_height.exit:                                ; preds = %sw.default.i73, %sw.bb1.i72, %utile_width.exit.utile_height.exit_crit_edge
  %retval.0.i77 = phi i32 [ %retval.0.i, %sw.default.i73 ], [ %retval.0.i76, %sw.bb1.i72 ], [ %retval.0.i, %utile_width.exit.utile_height.exit_crit_edge ]
  %retval.0.i74 = phi i32 [ 1, %sw.default.i73 ], [ 4, %sw.bb1.i72 ], [ 8, %utile_width.exit.utile_height.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %width)
  %cmp = icmp ugt i32 %width, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %height)
  %cmp4 = icmp ugt i32 %height, 4096
  %or.cond = or i1 %cmp, %cmp4
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %utile_height.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %width, i32 noundef %height) #6
  br label %cleanup

if.end:                                           ; preds = %utile_height.exit
  %2 = zext i8 %tiling_format to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.77)
  switch i8 %tiling_format, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb8
    i8 2, label %sw.bb18
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add nsw i32 %width, -1
  %sub7 = add nsw i32 %retval.0.i77, -1
  %or = or i32 %sub7, %sub
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sub9 = add nsw i32 %width, -1
  %mul = shl nuw nsw i32 %retval.0.i77, 3
  %sub10 = add nsw i32 %mul, -1
  %or11 = or i32 %sub10, %sub9
  %sub13 = add nsw i32 %height, -1
  %mul14 = shl nuw nsw i32 %retval.0.i74, 3
  %sub15 = add nsw i32 %mul14, -1
  %or16 = or i32 %sub15, %sub13
  %add17 = add i32 %or16, 1
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sub19 = add nsw i32 %width, -1
  %sub20 = add nsw i32 %retval.0.i77, -1
  %or21 = or i32 %sub20, %sub19
  %sub23 = add nsw i32 %height, -1
  %sub24 = add nsw i32 %retval.0.i74, -1
  %or25 = or i32 %sub24, %sub23
  %add26 = add i32 %or25, 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv6 = zext i8 %tiling_format to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %conv6) #6
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb18, %sw.bb8, %sw.bb
  %aligned_width.0.in = phi i32 [ %or21, %sw.bb18 ], [ %or11, %sw.bb8 ], [ %or, %sw.bb ]
  %aligned_height.0 = phi i32 [ %add26, %sw.bb18 ], [ %add17, %sw.bb8 ], [ %height, %sw.bb ]
  %aligned_width.0 = add i32 %aligned_width.0.in, 1
  %mul29 = mul i32 %aligned_width.0, %conv
  %mul30 = mul i32 %mul29, %aligned_height.0
  %add31 = add i32 %mul30, %offset
  call void @__sanitizer_cov_trace_cmp4(i32 %add31, i32 %mul30)
  %cmp32 = icmp ult i32 %add31, %mul30
  br i1 %cmp32, label %sw.epilog.if.then39_crit_edge, label %lor.lhs.false34

sw.epilog.if.then39_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39

lor.lhs.false34:                                  ; preds = %sw.epilog
  %size36 = getelementptr inbounds %struct.drm_gem_object, ptr %fbo, i32 0, i32 5
  %3 = ptrtoint ptr %size36 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size36, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add31, i32 %4)
  %cmp37 = icmp ugt i32 %add31, %4
  br i1 %cmp37, label %lor.lhs.false34.if.then39_crit_edge, label %lor.lhs.false34.cleanup_crit_edge

lor.lhs.false34.cleanup_crit_edge:                ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false34.if.then39_crit_edge:              ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39

if.then39:                                        ; preds = %lor.lhs.false34.if.then39_crit_edge, %sw.epilog.if.then39_crit_edge
  %size41 = getelementptr inbounds %struct.drm_gem_object, ptr %fbo, i32 0, i32 5
  %5 = ptrtoint ptr %size41 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size41, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef %width, i32 noundef %height, i32 noundef %aligned_width.0, i32 noundef %aligned_height.0, i32 noundef %mul30, i32 noundef %offset, i32 noundef %6) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %lor.lhs.false34.cleanup_crit_edge, %sw.default, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ false, %sw.default ], [ false, %if.then39 ], [ true, %lor.lhs.false34.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vc4_validate_bin_cl(ptr nocapture noundef readnone %dev, ptr noundef %validated, ptr noundef %unvalidated, ptr noundef %exec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 5
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %args, align 4
  %bin_cl_size = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %bin_cl_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bin_cl_size, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end34.while.cond_crit_edge, %entry
  %dst_offset.0 = phi i32 [ 0, %entry ], [ %spec.select, %if.end34.while.cond_crit_edge ]
  %src_offset.0 = phi i32 [ 0, %entry ], [ %add, %if.end34.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %src_offset.0, i32 %3)
  %cmp = icmp ult i32 %src_offset.0, %3
  br i1 %cmp, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.cond
  %add.ptr = getelementptr i8, ptr %validated, i32 %dst_offset.0
  %add.ptr1 = getelementptr i8, ptr %unvalidated, i32 %src_offset.0
  %4 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr1, align 1
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp2 = icmp eq i8 %5, -1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef %src_offset.0, i32 noundef 255) #6
  br label %cleanup62

if.end:                                           ; preds = %while.body
  %name = getelementptr [255 x %struct.cmd_info], ptr @cmd_info, i32 0, i32 %conv, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv.le153 = zext i8 %5 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef %src_offset.0, i32 noundef %conv.le153) #6
  br label %cleanup62

if.end7:                                          ; preds = %if.end
  %arrayidx = getelementptr [255 x %struct.cmd_info], ptr @cmd_info, i32 0, i32 %conv
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 4
  %conv9 = zext i16 %9 to i32
  %add = add i32 %src_offset.0, %conv9
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp10 = icmp ugt i32 %add, %3
  br i1 %cmp10, label %if.then12, label %if.end18

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %conv.le151 = zext i8 %5 to i32
  %conv9.le = zext i16 %9 to i32
  %add17 = add i32 %src_offset.0, %3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef %src_offset.0, i32 noundef %conv.le151, ptr noundef nonnull %7, i32 noundef %conv9.le, i32 noundef %add17) #6
  br label %cleanup62

if.end18:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %5)
  %cmp20.not = icmp eq i8 %5, -2
  br i1 %cmp20.not, label %if.end18.if.end25_crit_edge, label %if.then22

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %10 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr1, i32 %conv9)
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end18.if.end25_crit_edge
  %func = getelementptr [255 x %struct.cmd_info], ptr @cmd_info, i32 0, i32 %conv, i32 2
  %11 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %func, align 4
  %tobool26.not = icmp eq ptr %12, null
  br i1 %tobool26.not, label %if.end25.if.end34_crit_edge, label %land.lhs.true

if.end25.if.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end25
  %add.ptr28 = getelementptr i8, ptr %add.ptr, i32 1
  %add.ptr29 = getelementptr i8, ptr %add.ptr1, i32 1
  %call = tail call i32 %12(ptr noundef %exec, ptr noundef %add.ptr28, ptr noundef %add.ptr29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool30.not = icmp eq i32 %call, 0
  br i1 %tobool30.not, label %land.lhs.true.if.end34_crit_edge, label %if.then31

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %conv.le = zext i8 %5 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef %src_offset.0, i32 noundef %conv.le, ptr noundef nonnull %7) #6
  br label %cleanup62

if.end34:                                         ; preds = %land.lhs.true.if.end34_crit_edge, %if.end25.if.end34_crit_edge
  %add44 = select i1 %cmp20.not, i32 0, i32 %conv9
  %spec.select = add i32 %add44, %dst_offset.0
  %cmp47 = icmp eq i8 %5, 0
  br i1 %cmp47, label %if.end34.while.end_crit_edge, label %if.end34.while.cond_crit_edge

if.end34.while.cond_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

if.end34.while.end_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end34.while.end_crit_edge, %while.cond.while.end_crit_edge
  %dst_offset.3 = phi i32 [ %dst_offset.0, %while.cond.while.end_crit_edge ], [ %spec.select, %if.end34.while.end_crit_edge ]
  %ct0ca = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 25
  %13 = ptrtoint ptr %ct0ca to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ct0ca, align 4
  %add54 = add i32 %14, %dst_offset.3
  %ct0ea = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 26
  %15 = ptrtoint ptr %ct0ea to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add54, ptr %ct0ea, align 8
  %found_start_tile_binning_packet = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 18
  %16 = ptrtoint ptr %found_start_tile_binning_packet to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %found_start_tile_binning_packet, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool55.not = icmp eq i8 %17, 0
  br i1 %tobool55.not, label %if.then56, label %if.end57

if.then56:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.9) #6
  br label %cleanup62

if.end57:                                         ; preds = %while.end
  %found_increment_semaphore_packet = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 19
  %18 = ptrtoint ptr %found_increment_semaphore_packet to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %found_increment_semaphore_packet, align 2, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool58.not = icmp eq i8 %19, 0
  br i1 %tobool58.not, label %if.end57.if.then60_crit_edge, label %lor.lhs.false

if.end57.if.then60_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then60

lor.lhs.false:                                    ; preds = %if.end57
  %found_flush = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 20
  %20 = ptrtoint ptr %found_flush to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %found_flush, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool59.not = icmp eq i8 %21, 0
  br i1 %tobool59.not, label %lor.lhs.false.if.then60_crit_edge, label %lor.lhs.false.cleanup62_crit_edge

lor.lhs.false.cleanup62_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup62

lor.lhs.false.if.then60_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then60

if.then60:                                        ; preds = %lor.lhs.false.if.then60_crit_edge, %if.end57.if.then60_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.10) #6
  br label %cleanup62

cleanup62:                                        ; preds = %if.then60, %lor.lhs.false.cleanup62_crit_edge, %if.then56, %if.then31, %if.then12, %if.then5, %if.then
  %retval.2 = phi i32 [ -22, %if.then60 ], [ -22, %if.then56 ], [ 0, %lor.lhs.false.cleanup62_crit_edge ], [ -22, %if.then ], [ -22, %if.then12 ], [ -22, %if.then31 ], [ -22, %if.then5 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vc4_validate_shader_recs(ptr nocapture noundef readnone %dev, ptr nocapture noundef %exec) local_unnamed_addr #0 align 64 {
entry:
  %bo.i = alloca [11 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shader_state_count = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 16
  %0 = ptrtoint ptr %shader_state_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %shader_state_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp268.not = icmp eq i32 %1, 0
  br i1 %cmp268.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %shader_state = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 14
  %2 = getelementptr inbounds i8, ptr %bo.i, i32 12
  %shader_rec_size.i = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 33
  %shader_rec_u.i = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 30
  %shader_rec_v.i = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 31
  %bo_count.i = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 7
  %bo48.i = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 6
  %arrayidx51.1.i = getelementptr inbounds [11 x ptr], ptr %bo.i, i32 0, i32 1
  %arrayidx51.2.i = getelementptr inbounds [11 x ptr], ptr %bo.i, i32 0, i32 2
  %uniforms_size.i = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 37
  %uniforms_u.i = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 34
  %uniforms_v.i = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 35
  %bin_dep_seqno.i.i = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 1
  %uniforms_p.i = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 36
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0269 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %shader_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %shader_state, align 8
  %arrayidx = getelementptr %struct.vc4_shader_state, ptr %4, i32 %i.0269
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %bo.i) #6
  %5 = call ptr @memset(ptr %2, i32 255, i32 32)
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %and.i = and i32 %7, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  %spec.store.select.i = select i1 %cmp.i, i32 8, i32 %and.i
  %and1.i.i = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i, 0
  %mul.i.i = shl nuw nsw i32 %spec.store.select.i, 2
  %add.i.i = add nuw nsw i32 %mul.i.i, 100
  %mul4.i.i = shl nuw nsw i32 %spec.store.select.i, 3
  %add5.i.i = add nuw nsw i32 %mul4.i.i, 36
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %add5.i.i, i32 %add.i.i
  %add.i = add nuw nsw i32 %spec.store.select.i, 3
  %mul.i = shl nuw nsw i32 %add.i, 2
  %8 = ptrtoint ptr %shader_rec_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %shader_rec_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %mul.i)
  %cmp2.i = icmp ult i32 %9, %mul.i
  br i1 %cmp2.i, label %if.then3.i, label %if.end5.i

if.then3.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.48, i32 noundef %add.i, i32 noundef %9) #6
  br label %validate_gl_shader_rec.exit.thread

if.end5.i:                                        ; preds = %for.body
  %10 = ptrtoint ptr %shader_rec_u.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %shader_rec_u.i, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 %mul.i
  store ptr %add.ptr.i, ptr %shader_rec_u.i, align 8
  %sub.i = sub i32 %9, %mul.i
  %12 = ptrtoint ptr %shader_rec_size.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub.i, ptr %shader_rec_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %sub.i)
  %cmp11.i = icmp ugt i32 %retval.0.i.i, %sub.i
  br i1 %cmp11.i, label %if.then12.i, label %if.end14.i

if.then12.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.49, i32 noundef %retval.0.i.i, i32 noundef %sub.i) #6
  br label %validate_gl_shader_rec.exit.thread

if.end14.i:                                       ; preds = %if.end5.i
  %13 = ptrtoint ptr %shader_rec_v.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %shader_rec_v.i, align 4
  %15 = call ptr @memcpy(ptr %14, ptr %add.ptr.i, i32 %retval.0.i.i)
  %16 = ptrtoint ptr %shader_rec_u.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %shader_rec_u.i, align 8
  %add.ptr17.i = getelementptr i8, ptr %17, i32 %retval.0.i.i
  store ptr %add.ptr17.i, ptr %shader_rec_u.i, align 8
  %add19.i = add nuw nsw i32 %retval.0.i.i, 15
  %div1.i = and i32 %add19.i, -16
  %sub21.i = sub nsw i32 %div1.i, %retval.0.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub21.i, i32 %mul.i)
  %cmp23.i = icmp ugt i32 %sub21.i, %mul.i
  br i1 %cmp23.i, label %do.body26.i, label %do.end32.i, !prof !157

do.body26.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/vc4/vc4_validate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 791, 0\0A.popsection", ""() #6, !srcloc !158
  unreachable

do.end32.i:                                       ; preds = %if.end14.i
  %18 = ptrtoint ptr %shader_rec_v.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %shader_rec_v.i, align 4
  %add.ptr40.i = getelementptr i8, ptr %19, i32 %div1.i
  store ptr %add.ptr40.i, ptr %shader_rec_v.i, align 4
  %20 = ptrtoint ptr %shader_rec_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %shader_rec_size.i, align 4
  %sub42.i = sub i32 %21, %retval.0.i.i
  store i32 %sub42.i, ptr %shader_rec_size.i, align 4
  %22 = ptrtoint ptr %bo_count.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bo_count.i, align 4
  %24 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %23)
  %cmp44.i = icmp ugt i32 %25, %23
  br i1 %cmp44.i, label %do.end32.i.if.then45.i_crit_edge, label %if.end47.i

do.end32.i.if.then45.i_crit_edge:                 ; preds = %do.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45.i

for.cond.i:                                       ; preds = %if.end47.i
  %arrayidx.1.i = getelementptr i32, ptr %11, i32 1
  %26 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %23)
  %cmp44.1.i = icmp ugt i32 %27, %23
  br i1 %cmp44.1.i, label %for.cond.i.if.then45.i_crit_edge, label %if.end47.1.i

for.cond.i.if.then45.i_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45.i

if.end47.1.i:                                     ; preds = %for.cond.i
  %arrayidx50.1.i = getelementptr ptr, ptr %37, i32 %27
  %28 = ptrtoint ptr %arrayidx50.1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx50.1.i, align 4
  %30 = ptrtoint ptr %arrayidx51.1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %arrayidx51.1.i, align 4
  %tobool53.not.1.i = icmp eq ptr %29, null
  br i1 %tobool53.not.1.i, label %if.end47.1.i.validate_gl_shader_rec.exit.thread_crit_edge, label %for.cond.1.i

if.end47.1.i.validate_gl_shader_rec.exit.thread_crit_edge: ; preds = %if.end47.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %validate_gl_shader_rec.exit.thread

for.cond.1.i:                                     ; preds = %if.end47.1.i
  %arrayidx.2.i = getelementptr i32, ptr %11, i32 2
  %31 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %23)
  %cmp44.2.i = icmp ugt i32 %32, %23
  br i1 %cmp44.2.i, label %for.cond.1.i.if.then45.i_crit_edge, label %if.end47.2.i

for.cond.1.i.if.then45.i_crit_edge:               ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45.i

if.end47.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx50.2.i = getelementptr ptr, ptr %37, i32 %32
  %33 = ptrtoint ptr %arrayidx50.2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx50.2.i, align 4
  %35 = ptrtoint ptr %arrayidx51.2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %arrayidx51.2.i, align 4
  %tobool53.not.2.i = icmp eq ptr %34, null
  br i1 %tobool53.not.2.i, label %if.end47.2.i.validate_gl_shader_rec.exit.thread_crit_edge, label %if.end47.2.i.for.body58.i_crit_edge

if.end47.2.i.for.body58.i_crit_edge:              ; preds = %if.end47.2.i
  br label %for.body58.i

if.end47.2.i.validate_gl_shader_rec.exit.thread_crit_edge: ; preds = %if.end47.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %validate_gl_shader_rec.exit.thread

if.then45.i:                                      ; preds = %for.cond.1.i.if.then45.i_crit_edge, %for.cond.i.if.then45.i_crit_edge, %do.end32.i.if.then45.i_crit_edge
  %.lcssa299.i = phi i32 [ %25, %do.end32.i.if.then45.i_crit_edge ], [ %27, %for.cond.i.if.then45.i_crit_edge ], [ %32, %for.cond.1.i.if.then45.i_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.50, i32 noundef %.lcssa299.i) #6
  br label %validate_gl_shader_rec.exit.thread

if.end47.i:                                       ; preds = %do.end32.i
  %36 = ptrtoint ptr %bo48.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bo48.i, align 8
  %arrayidx50.i = getelementptr ptr, ptr %37, i32 %25
  %38 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx50.i, align 4
  %40 = ptrtoint ptr %bo.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %bo.i, align 4
  %tobool53.not.i = icmp eq ptr %39, null
  br i1 %tobool53.not.i, label %if.end47.i.validate_gl_shader_rec.exit.thread_crit_edge, label %for.cond.i

if.end47.i.validate_gl_shader_rec.exit.thread_crit_edge: ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %validate_gl_shader_rec.exit.thread

for.body58.i:                                     ; preds = %for.inc66.i.for.body58.i_crit_edge, %if.end47.2.i.for.body58.i_crit_edge
  %i.1149.i = phi i32 [ %inc67.i, %for.inc66.i.for.body58.i_crit_edge ], [ 3, %if.end47.2.i.for.body58.i_crit_edge ]
  %arrayidx59.i = getelementptr i32, ptr %11, i32 %i.1149.i
  %41 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx59.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %42)
  %cmp.not.i.i = icmp ugt i32 %23, %42
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body58.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %42, i32 noundef %23) #6
  br label %vc4_use_bo.exit.thread.i

if.end.i.i:                                       ; preds = %for.body58.i
  %arrayidx.i.i = getelementptr ptr, ptr %37, i32 %42
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i.i, align 4
  %validated_shader.i.i = getelementptr inbounds %struct.vc4_bo, ptr %44, i32 0, i32 7
  %45 = ptrtoint ptr %validated_shader.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %validated_shader.i.i, align 8
  %tobool.not.i2.i = icmp eq ptr %46, null
  br i1 %tobool.not.i2.i, label %vc4_use_bo.exit.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1) #6
  br label %vc4_use_bo.exit.thread.i

vc4_use_bo.exit.thread.i:                         ; preds = %if.then3.i.i, %if.then.i.i
  %arrayidx6112.i = getelementptr [11 x ptr], ptr %bo.i, i32 0, i32 %i.1149.i
  %47 = ptrtoint ptr %arrayidx6112.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %arrayidx6112.i, align 4
  br label %validate_gl_shader_rec.exit.thread

vc4_use_bo.exit.i:                                ; preds = %if.end.i.i
  %arrayidx61.i = getelementptr [11 x ptr], ptr %bo.i, i32 0, i32 %i.1149.i
  %48 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %44, ptr %arrayidx61.i, align 4
  %tobool63.not.i = icmp eq ptr %44, null
  br i1 %tobool63.not.i, label %vc4_use_bo.exit.i.validate_gl_shader_rec.exit.thread_crit_edge, label %for.inc66.i

vc4_use_bo.exit.i.validate_gl_shader_rec.exit.thread_crit_edge: ; preds = %vc4_use_bo.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %validate_gl_shader_rec.exit.thread

for.inc66.i:                                      ; preds = %vc4_use_bo.exit.i
  %inc67.i = add nuw nsw i32 %i.1149.i, 1
  %exitcond.not.i = icmp eq i32 %inc67.i, %add.i
  br i1 %exitcond.not.i, label %for.end68.i, label %for.inc66.i.for.body58.i_crit_edge

for.inc66.i.for.body58.i_crit_edge:               ; preds = %for.inc66.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body58.i

for.end68.i:                                      ; preds = %for.inc66.i
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %add.ptr.i, align 2
  %51 = and i16 %50, 1
  %52 = xor i16 %51, 1
  %53 = ptrtoint ptr %bo.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bo.i, align 4
  %validated_shader.i = getelementptr inbounds %struct.vc4_bo, ptr %54, i32 0, i32 7
  %55 = ptrtoint ptr %validated_shader.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %validated_shader.i, align 8
  %is_threaded.i = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %56, i32 0, i32 6
  %57 = ptrtoint ptr %is_threaded.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %is_threaded.i, align 4, !range !156
  %59 = zext i8 %58 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %52, i16 %59)
  %cmp76.not.i = icmp eq i16 %52, %59
  br i1 %cmp76.not.i, label %if.end79.i, label %if.then78.i

if.then78.i:                                      ; preds = %for.end68.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.51) #6
  br label %validate_gl_shader_rec.exit.thread

if.end79.i:                                       ; preds = %for.end68.i
  %60 = ptrtoint ptr %arrayidx51.1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx51.1.i, align 4
  %validated_shader83.i = getelementptr inbounds %struct.vc4_bo, ptr %61, i32 0, i32 7
  %62 = ptrtoint ptr %validated_shader83.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %validated_shader83.i, align 8
  %is_threaded84.i = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %is_threaded84.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %is_threaded84.i, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool85.not.i = icmp eq i8 %65, 0
  br i1 %tobool85.not.i, label %lor.lhs.false.i, label %if.end79.i.if.then94.i_crit_edge

if.end79.i.if.then94.i_crit_edge:                 ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then94.i

lor.lhs.false.i:                                  ; preds = %if.end79.i
  %66 = ptrtoint ptr %arrayidx51.2.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx51.2.i, align 4
  %validated_shader90.i = getelementptr inbounds %struct.vc4_bo, ptr %67, i32 0, i32 7
  %68 = ptrtoint ptr %validated_shader90.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %validated_shader90.i, align 8
  %is_threaded91.i = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %69, i32 0, i32 6
  %70 = ptrtoint ptr %is_threaded91.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %is_threaded91.i, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool92.not.i = icmp eq i8 %71, 0
  br i1 %tobool92.not.i, label %lor.lhs.false.i.for.body99.i_crit_edge, label %lor.lhs.false.i.if.then94.i_crit_edge

lor.lhs.false.i.if.then94.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then94.i

lor.lhs.false.i.for.body99.i_crit_edge:           ; preds = %lor.lhs.false.i
  br label %for.body99.i

if.then94.i:                                      ; preds = %lor.lhs.false.i.if.then94.i_crit_edge, %if.end79.i.if.then94.i_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.52) #6
  br label %validate_gl_shader_rec.exit.thread

for.body173.lr.ph.i:                              ; preds = %for.end148.i
  %add.ptr198.i = getelementptr i8, ptr %add.ptr.i, i32 100
  %max_index224.i = getelementptr %struct.vc4_shader_state, ptr %4, i32 %i.0269, i32 1
  %umax303.i = tail call i32 @llvm.umax.i32(i32 %spec.store.select.i, i32 1) #6
  br label %for.body173.i

for.body99.i:                                     ; preds = %for.end148.i.for.body99.i_crit_edge, %lor.lhs.false.i.for.body99.i_crit_edge
  %i.2154.i = phi i32 [ %inc168.i, %for.end148.i.for.body99.i_crit_edge ], [ 0, %lor.lhs.false.i.for.body99.i_crit_edge ]
  %arrayidx101.i = getelementptr [3 x i32], ptr @validate_gl_shader_rec.shader_reloc_offsets, i32 0, i32 %i.2154.i
  %72 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx101.i, align 4
  %add.ptr102.i = getelementptr i8, ptr %add.ptr.i, i32 %73
  %74 = ptrtoint ptr %add.ptr102.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %add.ptr102.i, align 4
  %arrayidx103.i = getelementptr [11 x ptr], ptr %bo.i, i32 0, i32 %i.2154.i
  %76 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx103.i, align 4
  %paddr.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %paddr.i, align 8
  %add104.i = add i32 %79, %75
  %add.ptr105.i = getelementptr i8, ptr %14, i32 %73
  %80 = ptrtoint ptr %add.ptr105.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %add104.i, ptr %add.ptr105.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp106.not.i = icmp eq i32 %75, 0
  br i1 %cmp106.not.i, label %if.end109.i, label %if.then108.i

if.then108.i:                                     ; preds = %for.body99.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.53) #6
  br label %validate_gl_shader_rec.exit.thread

if.end109.i:                                      ; preds = %for.body99.i
  %validated_shader113.i = getelementptr inbounds %struct.vc4_bo, ptr %77, i32 0, i32 7
  %81 = ptrtoint ptr %validated_shader113.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %validated_shader113.i, align 8
  %tobool114.not.i = icmp eq ptr %82, null
  br i1 %tobool114.not.i, label %if.end109.i.validate_gl_shader_rec.exit.thread_crit_edge, label %if.end116.i

if.end109.i.validate_gl_shader_rec.exit.thread_crit_edge: ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %validate_gl_shader_rec.exit.thread

if.end116.i:                                      ; preds = %if.end109.i
  %uniforms_src_size.i = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %uniforms_src_size.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %uniforms_src_size.i, align 4
  %85 = ptrtoint ptr %uniforms_size.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %uniforms_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %86)
  %cmp117.i = icmp ugt i32 %84, %86
  br i1 %cmp117.i, label %if.then119.i, label %if.end120.i

if.then119.i:                                     ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.54) #6
  br label %validate_gl_shader_rec.exit.thread

if.end120.i:                                      ; preds = %if.end116.i
  %87 = ptrtoint ptr %uniforms_u.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %uniforms_u.i, align 8
  %num_texture_samples.i = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %82, i32 0, i32 2
  %89 = ptrtoint ptr %num_texture_samples.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %num_texture_samples.i, align 4
  %add.ptr121.i = getelementptr i32, ptr %88, i32 %90
  %91 = ptrtoint ptr %uniforms_v.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %uniforms_v.i, align 4
  %93 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %82, align 4
  %95 = call ptr @memcpy(ptr %92, ptr %add.ptr121.i, i32 %94)
  %96 = load i32, ptr %num_texture_samples.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp125150.not.i = icmp eq i32 %96, 0
  br i1 %cmp125150.not.i, label %if.end120.i.for.cond138.preheader.i_crit_edge, label %for.body127.lr.ph.i

if.end120.i.for.cond138.preheader.i_crit_edge:    ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond138.preheader.i

for.body127.lr.ph.i:                              ; preds = %if.end120.i
  %texture_samples.i = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %82, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.2154.i)
  %cmp130.i = icmp eq i32 %i.2154.i, 2
  br label %for.body127.i

for.cond138.preheader.i:                          ; preds = %for.inc135.i.for.cond138.preheader.i_crit_edge, %if.end120.i.for.cond138.preheader.i_crit_edge
  %num_uniform_addr_offsets.i = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %82, i32 0, i32 4
  %97 = ptrtoint ptr %num_uniform_addr_offsets.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %num_uniform_addr_offsets.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp139152.not.i = icmp eq i32 %98, 0
  br i1 %cmp139152.not.i, label %for.cond138.preheader.i.for.end148.i_crit_edge, label %for.body141.lr.ph.i

for.cond138.preheader.i.for.end148.i_crit_edge:   ; preds = %for.cond138.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end148.i

for.body141.lr.ph.i:                              ; preds = %for.cond138.preheader.i
  %uniform_addr_offsets.i = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %82, i32 0, i32 5
  br label %for.body141.i

for.body127.i:                                    ; preds = %for.inc135.i.for.body127.i_crit_edge, %for.body127.lr.ph.i
  %tex.0151.i = phi i32 [ 0, %for.body127.lr.ph.i ], [ %inc136.i, %for.inc135.i.for.body127.i_crit_edge ]
  %99 = ptrtoint ptr %texture_samples.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %texture_samples.i, align 4
  %arrayidx128.i = getelementptr %struct.vc4_texture_sample_info, ptr %100, i32 %tex.0151.i
  %arrayidx129.i = getelementptr i32, ptr %88, i32 %tex.0151.i
  %101 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx129.i, align 4
  %p_offset.i.i = getelementptr %struct.vc4_texture_sample_info, ptr %100, i32 %tex.0151.i, i32 1
  %103 = ptrtoint ptr %p_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %p_offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr121.i, i32 %104
  %105 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %add.ptr.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.vc4_texture_sample_info, ptr %100, i32 %tex.0151.i, i32 1, i32 1
  %107 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx2.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %add.ptr121.i, i32 %108
  %109 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %add.ptr3.i.i, align 4
  %arrayidx5.i.i = getelementptr %struct.vc4_texture_sample_info, ptr %100, i32 %tex.0151.i, i32 1, i32 2
  %111 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %112)
  %cmp.not.i4.i = icmp eq i32 %112, -1
  br i1 %cmp.not.i4.i, label %for.body127.i.cond.end.i.i_crit_edge, label %cond.true.i.i

for.body127.i.cond.end.i.i_crit_edge:             ; preds = %for.body127.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %for.body127.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr8.i.i = getelementptr i8, ptr %add.ptr121.i, i32 %112
  %113 = ptrtoint ptr %add.ptr8.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %add.ptr8.i.i, align 4
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %for.body127.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %114, %cond.true.i.i ], [ 0, %for.body127.i.cond.end.i.i_crit_edge ]
  %arrayidx10.i.i = getelementptr %struct.vc4_texture_sample_info, ptr %100, i32 %tex.0151.i, i32 1, i32 3
  %115 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx10.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %116)
  %cmp11.not.i.i = icmp eq i32 %116, -1
  br i1 %cmp11.not.i.i, label %cond.end.i.i.cond.end17.i.i_crit_edge, label %cond.true12.i.i

cond.end.i.i.cond.end17.i.i_crit_edge:            ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end17.i.i

cond.true12.i.i:                                  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr15.i.i = getelementptr i8, ptr %add.ptr121.i, i32 %116
  %117 = ptrtoint ptr %add.ptr15.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %add.ptr15.i.i, align 4
  br label %cond.end17.i.i

cond.end17.i.i:                                   ; preds = %cond.true12.i.i, %cond.end.i.i.cond.end17.i.i_crit_edge
  %cond18.i.i = phi i32 [ %118, %cond.true12.i.i ], [ 0, %cond.end.i.i.cond.end17.i.i_crit_edge ]
  %119 = ptrtoint ptr %uniforms_v.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %uniforms_v.i, align 4
  %add.ptr21.i.i = getelementptr i8, ptr %120, i32 %104
  %and.i5.i = and i32 %106, -4096
  %and34.i.i = and i32 %106, 15
  %and51.i.i = lshr i32 %110, 8
  %shr52.i.i = and i32 %and51.i.i, 2047
  %and69.i.i = lshr i32 %110, 20
  %shr70.i.i = and i32 %and69.i.i, 2047
  %121 = ptrtoint ptr %bo_count.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %bo_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %102)
  %cmp.not.i.i.i = icmp ugt i32 %122, %102
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %cond.end17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %102, i32 noundef %122) #6
  br label %validate_gl_shader_rec.exit.thread

if.end.i.i.i:                                     ; preds = %cond.end17.i.i
  %123 = ptrtoint ptr %bo48.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %bo48.i, align 8
  %arrayidx.i.i.i = getelementptr ptr, ptr %124, i32 %102
  %125 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx.i.i.i, align 4
  %validated_shader.i.i.i = getelementptr inbounds %struct.vc4_bo, ptr %126, i32 0, i32 7
  %127 = ptrtoint ptr %validated_shader.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %validated_shader.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %128, null
  br i1 %tobool.not.i.i.i, label %vc4_use_bo.exit.i.i, label %if.then3.i.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1) #6
  br label %validate_gl_shader_rec.exit.thread

vc4_use_bo.exit.i.i:                              ; preds = %if.end.i.i.i
  %tobool.not.i6.i = icmp eq ptr %126, null
  br i1 %tobool.not.i6.i, label %vc4_use_bo.exit.i.i.validate_gl_shader_rec.exit.thread_crit_edge, label %if.end.i7.i

vc4_use_bo.exit.i.i.validate_gl_shader_rec.exit.thread_crit_edge: ; preds = %vc4_use_bo.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %validate_gl_shader_rec.exit.thread

if.end.i7.i:                                      ; preds = %vc4_use_bo.exit.i.i
  %129 = ptrtoint ptr %arrayidx128.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx128.i, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool71.not.i.i = icmp eq i8 %130, 0
  br i1 %tobool71.not.i.i, label %if.end83.i.i, label %if.then72.i.i

if.then72.i.i:                                    ; preds = %if.end.i7.i
  %size.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %126, i32 0, i32 5
  %131 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %size.i.i, align 8
  %sub75.i.i = add i32 %132, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %sub75.i.i)
  %cmp76.i.i = icmp ugt i32 %106, %sub75.i.i
  br i1 %cmp76.i.i, label %if.then77.i.i, label %if.end78.i.i

if.then77.i.i:                                    ; preds = %if.then72.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.57) #6
  br label %do.end282.i.i

if.end78.i.i:                                     ; preds = %if.then72.i.i
  %sub.i.i = sub i32 -4, %106
  %sub79.i.i = add i32 %sub.i.i, %132
  call void @__sanitizer_cov_trace_cmp4(i32 %110, i32 %sub79.i.i)
  %cmp80.i.i = icmp ugt i32 %110, %sub79.i.i
  br i1 %cmp80.i.i, label %if.then81.i.i, label %if.end82.i.i

if.then81.i.i:                                    ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.58) #6
  br label %do.end282.i.i

if.end82.i.i:                                     ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %paddr.i.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %126, i32 0, i32 1
  %133 = ptrtoint ptr %paddr.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %paddr.i.i, align 8
  %add.i8.i = add i32 %134, %106
  %135 = ptrtoint ptr %add.ptr21.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %add.i8.i, ptr %add.ptr21.i.i, align 4
  br label %for.inc135.i

if.end83.i.i:                                     ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr52.i.i)
  %cmp84.i.i = icmp eq i32 %shr52.i.i, 0
  %spec.store.select.i9.i = select i1 %cmp84.i.i, i32 2048, i32 %shr52.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr70.i.i)
  %cmp87.i.i = icmp eq i32 %shr70.i.i, 0
  %spec.store.select326.i.i = select i1 %cmp87.i.i, i32 2048, i32 %shr70.i.i
  %and90.i.i = and i32 %106, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90.i.i)
  %tobool91.not.i.i = icmp eq i32 %and90.i.i, 0
  br i1 %tobool91.not.i.i, label %if.end83.i.i.do.end158.i.i_crit_edge, label %do.end107.i.i

if.end83.i.i.do.end158.i.i_crit_edge:             ; preds = %if.end83.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end158.i.i

do.end107.i.i:                                    ; preds = %if.end83.i.i
  %shr110.mask.i.i = and i32 %cond.i.i, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %shr110.mask.i.i)
  %cmp111.i.i = icmp eq i32 %shr110.mask.i.i, 1073741824
  %and113.i.i = and i32 %cond.i.i, 1073737728
  %spec.select.i.i = select i1 %cmp111.i.i, i32 %and113.i.i, i32 0
  %shr132.mask.i.i = and i32 %cond18.i.i, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %shr132.mask.i.i)
  %cmp133.i.i = icmp eq i32 %shr132.mask.i.i, 1073741824
  br i1 %cmp133.i.i, label %if.then134.i.i, label %do.end107.i.i.if.end139.i.i_crit_edge

do.end107.i.i.if.end139.i.i_crit_edge:            ; preds = %do.end107.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139.i.i

if.then134.i.i:                                   ; preds = %do.end107.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i)
  %tobool135.not.i.i = icmp eq i32 %spec.select.i.i, 0
  br i1 %tobool135.not.i.i, label %if.end137.i.i, label %if.then136.i.i

if.then136.i.i:                                   ; preds = %if.then134.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.59) #6
  br label %do.end282.i.i

if.end137.i.i:                                    ; preds = %if.then134.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and138.i.i = and i32 %cond18.i.i, 1073737728
  br label %if.end139.i.i

if.end139.i.i:                                    ; preds = %if.end137.i.i, %do.end107.i.i.if.end139.i.i_crit_edge
  %cube_map_stride.1.i.i = phi i32 [ %and138.i.i, %if.end137.i.i ], [ %spec.select.i.i, %do.end107.i.i.if.end139.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cube_map_stride.1.i.i)
  %tobool140.not.i.i = icmp eq i32 %cube_map_stride.1.i.i, 0
  br i1 %tobool140.not.i.i, label %if.then141.i.i, label %if.end139.i.i.do.end158.i.i_crit_edge

if.end139.i.i.do.end158.i.i_crit_edge:            ; preds = %if.end139.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end158.i.i

if.then141.i.i:                                   ; preds = %if.end139.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.60) #6
  br label %do.end282.i.i

do.end158.i.i:                                    ; preds = %if.end139.i.i.do.end158.i.i_crit_edge, %if.end83.i.i.do.end158.i.i_crit_edge
  %cube_map_stride.2.i.i = phi i32 [ %cube_map_stride.1.i.i, %if.end139.i.i.do.end158.i.i_crit_edge ], [ 0, %if.end83.i.i.do.end158.i.i_crit_edge ]
  %and160.i.i = lshr i32 %106, 4
  %shr161.i.i = and i32 %and160.i.i, 15
  %136 = lshr i32 %110, 27
  %shl.i.i = and i32 %136, 16
  %or.i.i = or i32 %shl.i.i, %shr161.i.i
  %137 = zext i32 %or.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %137, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %or.i.i, label %sw.default.i.i [
    i32 8, label %sw.bb2.i.i.i.i
    i32 10, label %do.end158.i.i.utile_width.exit.thread472.i.i_crit_edge
    i32 6, label %do.end158.i.i.utile_width.exit.thread472.i.i_crit_edge1602
    i32 2, label %do.end158.i.i.utile_width.exit.i.i.i_crit_edge
    i32 3, label %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1603
    i32 4, label %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1604
    i32 7, label %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1605
    i32 9, label %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1606
    i32 11, label %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1607
    i32 5, label %do.end158.i.i.utile_width.exit.thread472.i.i_crit_edge1608
    i32 16, label %do.end158.i.i.if.end196.i.i_crit_edge
    i32 0, label %do.end158.i.i.utile_width.exit.i.fold.split.i.i_crit_edge
    i32 1, label %do.end158.i.i.utile_width.exit.i.fold.split.i.i_crit_edge1609
  ]

do.end158.i.i.utile_width.exit.i.fold.split.i.i_crit_edge1609: ; preds = %do.end158.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %utile_width.exit.i.fold.split.i.i

do.end158.i.i.utile_width.exit.i.fold.split.i.i_crit_edge: ; preds = %do.end158.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %utile_width.exit.i.fold.split.i.i

do.end158.i.i.if.end196.i.i_crit_edge:            ; preds = %do.end158.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end196.i.i

do.end158.i.i.utile_width.exit.thread472.i.i_crit_edge1608: ; preds = %do.end158.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %utile_width.exit.thread472.i.i

do.end158.i.i.utile_width.exit.i.i.i_crit_edge1607: ; preds = %do.end158.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %utile_width.exit.i.i.i

do.end158.i.i.utile_width.exit.i.i.i_crit_edge1606: ; preds = %do.end158.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %utile_width.exit.i.i.i

do.end158.i.i.utile_width.exit.i.i.i_crit_edge1605: ; preds = %do.end158.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %utile_width.exit.i.i.i

do.end158.i.i.utile_width.exit.i.i.i_crit_edge1604: ; preds = %do.end158.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %utile_width.exit.i.i.i

do.end158.i.i.utile_width.exit.i.i.i_crit_edge1603: ; preds = %do.end158.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %utile_width.exit.i.i.i

do.end158.i.i.utile_width.exit.i.i.i_crit_edge:   ; preds = %do.end158.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %utile_width.exit.i.i.i

do.end158.i.i.utile_width.exit.thread472.i.i_crit_edge1602: ; preds = %do.end158.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %utile_width.exit.thread472.i.i

do.end158.i.i.utile_width.exit.thread472.i.i_crit_edge: ; preds = %do.end158.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %utile_width.exit.thread472.i.i

utile_width.exit.thread472.i.i:                   ; preds = %do.end158.i.i.utile_width.exit.thread472.i.i_crit_edge, %do.end158.i.i.utile_width.exit.thread472.i.i_crit_edge1602, %do.end158.i.i.utile_width.exit.thread472.i.i_crit_edge1608
  br label %utile_width.exit.i.i.i

sw.default.i.i:                                   ; preds = %do.end158.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.61, i32 noundef %or.i.i) #6
  br label %do.end282.i.i

sw.bb2.i.i.i.i:                                   ; preds = %do.end158.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add183.i.i = add nuw nsw i32 %spec.store.select.i9.i, 3
  %shr184.i.i = lshr i32 %add183.i.i, 2
  %add185.i.i = add nuw nsw i32 %spec.store.select326.i.i, 3
  %shr186.i.i = lshr i32 %add185.i.i, 2
  br label %utile_width.exit.i.i.i

utile_width.exit.i.fold.split.i.i:                ; preds = %do.end158.i.i.utile_width.exit.i.fold.split.i.i_crit_edge, %do.end158.i.i.utile_width.exit.i.fold.split.i.i_crit_edge1609
  br label %utile_width.exit.i.i.i

utile_width.exit.i.i.i:                           ; preds = %utile_width.exit.i.fold.split.i.i, %sw.bb2.i.i.i.i, %utile_width.exit.thread472.i.i, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1603, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1604, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1605, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1606, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1607
  %retval.0.i424471480511.i.i = phi i32 [ 2, %sw.bb2.i.i.i.i ], [ 8, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge ], [ 8, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1603 ], [ 8, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1604 ], [ 8, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1605 ], [ 8, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1606 ], [ 8, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1607 ], [ 8, %utile_width.exit.thread472.i.i ], [ 4, %utile_width.exit.i.fold.split.i.i ]
  %cpp.0447469482509.i.i = phi i32 [ 8, %sw.bb2.i.i.i.i ], [ 2, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge ], [ 2, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1603 ], [ 2, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1604 ], [ 2, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1605 ], [ 2, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1606 ], [ 2, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1607 ], [ 1, %utile_width.exit.thread472.i.i ], [ 4, %utile_width.exit.i.fold.split.i.i ]
  %height.0449467484507.i.i = phi i32 [ %shr186.i.i, %sw.bb2.i.i.i.i ], [ %spec.store.select326.i.i, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge ], [ %spec.store.select326.i.i, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1603 ], [ %spec.store.select326.i.i, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1604 ], [ %spec.store.select326.i.i, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1605 ], [ %spec.store.select326.i.i, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1606 ], [ %spec.store.select326.i.i, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1607 ], [ %spec.store.select326.i.i, %utile_width.exit.thread472.i.i ], [ %spec.store.select326.i.i, %utile_width.exit.i.fold.split.i.i ]
  %width.0450465486505.i.i = phi i32 [ %shr184.i.i, %sw.bb2.i.i.i.i ], [ %spec.store.select.i9.i, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge ], [ %spec.store.select.i9.i, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1603 ], [ %spec.store.select.i9.i, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1604 ], [ %spec.store.select.i9.i, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1605 ], [ %spec.store.select.i9.i, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1606 ], [ %spec.store.select.i9.i, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1607 ], [ %spec.store.select.i9.i, %utile_width.exit.thread472.i.i ], [ %spec.store.select.i9.i, %utile_width.exit.i.fold.split.i.i ]
  %retval.0.i427488502.i.i = phi i32 [ 4, %sw.bb2.i.i.i.i ], [ 4, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge ], [ 4, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1603 ], [ 4, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1604 ], [ 4, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1605 ], [ 4, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1606 ], [ 4, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1607 ], [ 8, %utile_width.exit.thread472.i.i ], [ 4, %utile_width.exit.i.fold.split.i.i ]
  %retval.0.i.i.i.i = phi i32 [ 8, %sw.bb2.i.i.i.i ], [ 32, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge ], [ 32, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1603 ], [ 32, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1604 ], [ 32, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1605 ], [ 32, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1606 ], [ 32, %do.end158.i.i.utile_width.exit.i.i.i_crit_edge1607 ], [ 32, %utile_width.exit.thread472.i.i ], [ 16, %utile_width.exit.i.fold.split.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i.i, i32 %width.0450465486505.i.i)
  %cmp.not.i428.i.i = icmp ult i32 %retval.0.i.i.i.i, %width.0450465486505.i.i
  br i1 %cmp.not.i428.i.i, label %lor.rhs.i.i.i, label %utile_width.exit.i.i.i.size_is_lt.exit.thread.i.i_crit_edge

utile_width.exit.i.i.i.size_is_lt.exit.thread.i.i_crit_edge: ; preds = %utile_width.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %size_is_lt.exit.thread.i.i

lor.rhs.i.i.i:                                    ; preds = %utile_width.exit.i.i.i
  %switch.tableidx = add nsw i32 %cpp.0447469482509.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %138 = icmp ult i32 %switch.tableidx, 8
  br i1 %138, label %switch.hole_check, label %lor.rhs.i.i.i.sw.default.i6.i.i.i_crit_edge

lor.rhs.i.i.i.sw.default.i6.i.i.i_crit_edge:      ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default.i6.i.i.i

sw.default.i6.i.i.i:                              ; preds = %switch.hole_check.sw.default.i6.i.i.i_crit_edge, %lor.rhs.i.i.i.sw.default.i6.i.i.i_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, i32 noundef %cpp.0447469482509.i.i) #6
  br label %size_is_lt.exit.i.i

switch.hole_check:                                ; preds = %lor.rhs.i.i.i
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %139 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %switch.lobit.not = icmp eq i8 %139, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.default.i6.i.i.i_crit_edge, label %switch.lookup

switch.hole_check.sw.default.i6.i.i.i_crit_edge:  ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default.i6.i.i.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.vc4_validate_shader_recs, i32 0, i32 %switch.tableidx
  %140 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %140)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %size_is_lt.exit.i.i

size_is_lt.exit.i.i:                              ; preds = %switch.lookup, %sw.default.i6.i.i.i
  %retval.0.i7.i.i.i = phi i32 [ 4, %sw.default.i6.i.i.i ], [ %switch.load, %switch.lookup ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i7.i.i.i, i32 %height.0449467484507.i.i)
  %cmp3.i.not.i.i = icmp ult i32 %retval.0.i7.i.i.i, %height.0449467484507.i.i
  br i1 %cmp3.i.not.i.i, label %size_is_lt.exit.i.i.if.end196.i.i_crit_edge, label %size_is_lt.exit.i.i.size_is_lt.exit.thread.i.i_crit_edge

size_is_lt.exit.i.i.size_is_lt.exit.thread.i.i_crit_edge: ; preds = %size_is_lt.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %size_is_lt.exit.thread.i.i

size_is_lt.exit.i.i.if.end196.i.i_crit_edge:      ; preds = %size_is_lt.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end196.i.i

size_is_lt.exit.thread.i.i:                       ; preds = %size_is_lt.exit.i.i.size_is_lt.exit.thread.i.i_crit_edge, %utile_width.exit.i.i.i.size_is_lt.exit.thread.i.i_crit_edge
  br label %if.end196.i.i

if.end196.i.i:                                    ; preds = %size_is_lt.exit.thread.i.i, %size_is_lt.exit.i.i.if.end196.i.i_crit_edge, %do.end158.i.i.if.end196.i.i_crit_edge
  %retval.0.i427489.i.i = phi i32 [ %retval.0.i427488502.i.i, %size_is_lt.exit.i.i.if.end196.i.i_crit_edge ], [ %retval.0.i427488502.i.i, %size_is_lt.exit.thread.i.i ], [ 4, %do.end158.i.i.if.end196.i.i_crit_edge ]
  %width.0450465487.i.i = phi i32 [ %width.0450465486505.i.i, %size_is_lt.exit.i.i.if.end196.i.i_crit_edge ], [ %width.0450465486505.i.i, %size_is_lt.exit.thread.i.i ], [ %spec.store.select.i9.i, %do.end158.i.i.if.end196.i.i_crit_edge ]
  %height.0449467485.i.i = phi i32 [ %height.0449467484507.i.i, %size_is_lt.exit.i.i.if.end196.i.i_crit_edge ], [ %height.0449467484507.i.i, %size_is_lt.exit.thread.i.i ], [ %spec.store.select326.i.i, %do.end158.i.i.if.end196.i.i_crit_edge ]
  %cpp.0447469483.i.i = phi i32 [ %cpp.0447469482509.i.i, %size_is_lt.exit.i.i.if.end196.i.i_crit_edge ], [ %cpp.0447469482509.i.i, %size_is_lt.exit.thread.i.i ], [ 4, %do.end158.i.i.if.end196.i.i_crit_edge ]
  %retval.0.i424471481.i.i = phi i32 [ %retval.0.i424471480511.i.i, %size_is_lt.exit.i.i.if.end196.i.i_crit_edge ], [ %retval.0.i424471480511.i.i, %size_is_lt.exit.thread.i.i ], [ 4, %do.end158.i.i.if.end196.i.i_crit_edge ]
  %tiling_format.0.i.i = phi i32 [ 1, %size_is_lt.exit.i.i.if.end196.i.i_crit_edge ], [ 2, %size_is_lt.exit.thread.i.i ], [ 0, %do.end158.i.i.if.end196.i.i_crit_edge ]
  %mul.i10.i = mul i32 %cube_map_stride.2.i.i, 5
  %add197.i.i = add i32 %mul.i10.i, %and.i5.i
  %conv.i.i = trunc i32 %tiling_format.0.i.i to i8
  %conv198.i.i = trunc i32 %cpp.0447469483.i.i to i8
  %call199.i.i = tail call zeroext i1 @vc4_check_tex_size(ptr undef, ptr noundef nonnull %126, i32 noundef %add197.i.i, i8 noundef zeroext %conv.i.i, i32 noundef %width.0450465487.i.i, i32 noundef %height.0449467485.i.i, i8 noundef zeroext %conv198.i.i) #6
  br i1 %call199.i.i, label %for.cond.preheader.i.i, label %if.end196.i.i.do.end282.i.i_crit_edge

if.end196.i.i.do.end282.i.i_crit_edge:            ; preds = %if.end196.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end282.i.i

for.cond.preheader.i.i:                           ; preds = %if.end196.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i.i)
  %cmp202.not540.i.i = icmp eq i32 %and34.i.i, 0
  br i1 %cmp202.not540.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %sub239.i.i = add nsw i32 %retval.0.i424471481.i.i, -1
  %sub243.i.i = add nsw i32 %retval.0.i427489.i.i, -1
  %mul228.i.i = shl nuw nsw i32 %retval.0.i424471481.i.i, 3
  %sub229.i.i = add nsw i32 %mul228.i.i, -1
  %mul233.i.i = shl nuw nsw i32 %retval.0.i427489.i.i, 3
  %sub234.i.i = add nsw i32 %mul233.i.i, -1
  %switch.tableidx1060 = add nsw i32 %cpp.0447469483.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx1060)
  %141 = icmp ult i32 %switch.tableidx1060, 8
  %switch.maskindex1063 = trunc i32 %switch.tableidx1060 to i8
  %switch.shifted1064 = lshr i8 -117, %switch.maskindex1063
  %142 = and i8 %switch.shifted1064, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %switch.lobit1065.not = icmp eq i8 %142, 0
  %switch.gep1066 = getelementptr inbounds [8 x i32], ptr @switch.table.vc4_validate_shader_recs.74, i32 0, i32 %switch.tableidx1060
  %switch.tableidx1069 = add nsw i32 %cpp.0447469483.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx1069)
  %143 = icmp ult i32 %switch.tableidx1069, 8
  %switch.maskindex1072 = trunc i32 %switch.tableidx1069 to i8
  %switch.shifted1073 = lshr i8 -117, %switch.maskindex1072
  %144 = and i8 %switch.shifted1073, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %switch.lobit1074.not = icmp eq i8 %144, 0
  %switch.gep1075 = getelementptr inbounds [8 x i32], ptr @switch.table.vc4_validate_shader_recs.75, i32 0, i32 %switch.tableidx1069
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %offset.0543.i.i = phi i32 [ %and.i5.i, %for.body.lr.ph.i.i ], [ %sub258.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %i.0542.i.i = phi i32 [ 1, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %tiling_format.1541.i.i = phi i32 [ %tiling_format.0.i.i, %for.body.lr.ph.i.i ], [ %tiling_format.2527.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %shr204.i.i = lshr i32 %width.0450465487.i.i, %i.0542.i.i
  %145 = tail call i32 @llvm.umax.i32(i32 %shr204.i.i, i32 1) #6
  %shr212.i.i = lshr i32 %height.0449467485.i.i, %i.0542.i.i
  %146 = tail call i32 @llvm.umax.i32(i32 %shr212.i.i, i32 1) #6
  %147 = zext i32 %tiling_format.1541.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %147, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %tiling_format.1541.i.i, label %sw.default246.i.i [
    i32 1, label %land.lhs.true.i.i
    i32 2, label %for.body.i.i.sw.bb237.i.i_crit_edge
  ]

for.body.i.i.sw.bb237.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb237.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %.not = xor i1 %141, true
  %brmerge = select i1 %.not, i1 true, i1 %switch.lobit1065.not
  br i1 %brmerge, label %sw.default.i.i431.i.i, label %switch.lookup1062

sw.default.i.i431.i.i:                            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, i32 noundef %cpp.0447469483.i.i) #6
  br label %utile_width.exit.i434.i.i

switch.lookup1062:                                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %148 = ptrtoint ptr %switch.gep1066 to i32
  call void @__asan_load4_noabort(i32 %148)
  %switch.load1067 = load i32, ptr %switch.gep1066, align 4
  br label %utile_width.exit.i434.i.i

utile_width.exit.i434.i.i:                        ; preds = %switch.lookup1062, %sw.default.i.i431.i.i
  %retval.0.i.i432.i.i = phi i32 [ 4, %sw.default.i.i431.i.i ], [ %switch.load1067, %switch.lookup1062 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i432.i.i, i32 %145)
  %cmp.not.i433.i.i = icmp ult i32 %retval.0.i.i432.i.i, %145
  br i1 %cmp.not.i433.i.i, label %lor.rhs.i435.i.i, label %utile_width.exit.i434.i.i.sw.bb237.i.i_crit_edge

utile_width.exit.i434.i.i.sw.bb237.i.i_crit_edge: ; preds = %utile_width.exit.i434.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb237.i.i

lor.rhs.i435.i.i:                                 ; preds = %utile_width.exit.i434.i.i
  %.not1600 = xor i1 %143, true
  %brmerge1601 = select i1 %.not1600, i1 true, i1 %switch.lobit1074.not
  br i1 %brmerge1601, label %sw.default.i6.i437.i.i, label %switch.lookup1071

sw.default.i6.i437.i.i:                           ; preds = %lor.rhs.i435.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, i32 noundef %cpp.0447469483.i.i) #6
  br label %size_is_lt.exit441.i.i

switch.lookup1071:                                ; preds = %lor.rhs.i435.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %149 = ptrtoint ptr %switch.gep1075 to i32
  call void @__asan_load4_noabort(i32 %149)
  %switch.load1076 = load i32, ptr %switch.gep1075, align 4
  br label %size_is_lt.exit441.i.i

size_is_lt.exit441.i.i:                           ; preds = %switch.lookup1071, %sw.default.i6.i437.i.i
  %retval.0.i7.i438.i.i = phi i32 [ 4, %sw.default.i6.i437.i.i ], [ %switch.load1076, %switch.lookup1071 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i7.i438.i.i, i32 %146)
  %cmp3.i439.not.i.i = icmp ult i32 %retval.0.i7.i438.i.i, %146
  br i1 %cmp3.i439.not.i.i, label %sw.bb226.i.i, label %size_is_lt.exit441.i.i.sw.bb237.i.i_crit_edge

size_is_lt.exit441.i.i.sw.bb237.i.i_crit_edge:    ; preds = %size_is_lt.exit441.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb237.i.i

sw.bb226.i.i:                                     ; preds = %size_is_lt.exit441.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub227.i.i = add nsw i32 %145, -1
  %or230.i.i = or i32 %sub227.i.i, %sub229.i.i
  %sub232.i.i = add nsw i32 %146, -1
  %or235.i.i = or i32 %sub232.i.i, %sub234.i.i
  %add236.i.i = add i32 %or235.i.i, 1
  br label %sw.epilog251.i.i

sw.bb237.i.i:                                     ; preds = %size_is_lt.exit441.i.i.sw.bb237.i.i_crit_edge, %utile_width.exit.i434.i.i.sw.bb237.i.i_crit_edge, %for.body.i.i.sw.bb237.i.i_crit_edge
  %sub238.i.i = add nsw i32 %145, -1
  %or240.i.i = or i32 %sub238.i.i, %sub239.i.i
  %sub242.i.i = add nsw i32 %146, -1
  %or244.i.i = or i32 %sub242.i.i, %sub243.i.i
  %add245.i.i = add i32 %or244.i.i, 1
  br label %sw.epilog251.i.i

sw.default246.i.i:                                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub247.i.i = add nsw i32 %145, -1
  %or249.i.i = or i32 %sub247.i.i, %sub239.i.i
  br label %sw.epilog251.i.i

sw.epilog251.i.i:                                 ; preds = %sw.default246.i.i, %sw.bb237.i.i, %sw.bb226.i.i
  %tiling_format.2527.i.i = phi i32 [ %tiling_format.1541.i.i, %sw.default246.i.i ], [ 2, %sw.bb237.i.i ], [ 1, %sw.bb226.i.i ]
  %aligned_width.0.in.i.i = phi i32 [ %or249.i.i, %sw.default246.i.i ], [ %or240.i.i, %sw.bb237.i.i ], [ %or230.i.i, %sw.bb226.i.i ]
  %aligned_height.0.i.i = phi i32 [ %146, %sw.default246.i.i ], [ %add245.i.i, %sw.bb237.i.i ], [ %add236.i.i, %sw.bb226.i.i ]
  %aligned_width.0.i.i = add i32 %aligned_width.0.in.i.i, 1
  %mul252.i.i = mul i32 %aligned_width.0.i.i, %cpp.0447469483.i.i
  %mul253.i.i = mul i32 %mul252.i.i, %aligned_height.0.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0543.i.i, i32 %mul253.i.i)
  %cmp254.i.i = icmp ult i32 %offset.0543.i.i, %mul253.i.i
  br i1 %cmp254.i.i, label %cleanup259.i.i, label %for.inc.i.i

cleanup259.i.i:                                   ; preds = %sw.epilog251.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.62, i32 noundef %i.0542.i.i, i32 noundef %145, i32 noundef %146, i32 noundef %aligned_width.0.i.i, i32 noundef %aligned_height.0.i.i, i32 noundef %mul253.i.i, i32 noundef %offset.0543.i.i) #6
  br label %do.end282.i.i

for.inc.i.i:                                      ; preds = %sw.epilog251.i.i
  %sub258.i.i = sub i32 %offset.0543.i.i, %mul253.i.i
  %inc.i.i = add nuw nsw i32 %i.0542.i.i, 1
  %exitcond.i.i = icmp eq i32 %i.0542.i.i, %and34.i.i
  br i1 %exitcond.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %paddr264.i.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %126, i32 0, i32 1
  %150 = ptrtoint ptr %paddr264.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %paddr264.i.i, align 8
  %add265.i.i = add i32 %151, %106
  %152 = ptrtoint ptr %add.ptr21.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %add265.i.i, ptr %add.ptr21.i.i, align 4
  br i1 %cmp130.i, label %if.then267.i.i, label %for.end.i.i.for.inc135.i_crit_edge

for.end.i.i.for.inc135.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc135.i

if.then267.i.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %153 = ptrtoint ptr %bin_dep_seqno.i.i to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %bin_dep_seqno.i.i, align 8
  %write_seqno.i.i = getelementptr inbounds %struct.vc4_bo, ptr %126, i32 0, i32 2
  %155 = ptrtoint ptr %write_seqno.i.i to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %write_seqno.i.i, align 8
  %157 = tail call i64 @llvm.umax.i64(i64 %154, i64 %156) #6
  %158 = ptrtoint ptr %bin_dep_seqno.i.i to i32
  call void @__asan_store8_noabort(i32 %158)
  store i64 %157, ptr %bin_dep_seqno.i.i, align 8
  br label %for.inc135.i

do.end282.i.i:                                    ; preds = %cleanup259.i.i, %if.end196.i.i.do.end282.i.i_crit_edge, %sw.default.i.i, %if.then141.i.i, %if.then136.i.i, %if.then81.i.i, %if.then77.i.i
  %159 = ptrtoint ptr %p_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %p_offset.i.i, align 4
  %call286.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %160, i32 noundef %106) #9
  %161 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx2.i.i, align 4
  %call293.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %162, i32 noundef %110) #9
  %163 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx5.i.i, align 4
  %call300.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %164, i32 noundef %cond.i.i) #9
  %165 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx10.i.i, align 4
  %call307.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef %166, i32 noundef %cond18.i.i) #9
  br label %validate_gl_shader_rec.exit.thread

for.inc135.i:                                     ; preds = %if.then267.i.i, %for.end.i.i.for.inc135.i_crit_edge, %if.end82.i.i
  %inc136.i = add nuw i32 %tex.0151.i, 1
  %167 = ptrtoint ptr %num_texture_samples.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %num_texture_samples.i, align 4
  %cmp125.i = icmp ult i32 %inc136.i, %168
  br i1 %cmp125.i, label %for.inc135.i.for.body127.i_crit_edge, label %for.inc135.i.for.cond138.preheader.i_crit_edge

for.inc135.i.for.cond138.preheader.i_crit_edge:   ; preds = %for.inc135.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond138.preheader.i

for.inc135.i.for.body127.i_crit_edge:             ; preds = %for.inc135.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body127.i

for.body141.i:                                    ; preds = %for.body141.i.for.body141.i_crit_edge, %for.body141.lr.ph.i
  %uni.0153.i = phi i32 [ 0, %for.body141.lr.ph.i ], [ %inc147.i, %for.body141.i.for.body141.i_crit_edge ]
  %169 = ptrtoint ptr %uniform_addr_offsets.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %uniform_addr_offsets.i, align 4
  %arrayidx143.i = getelementptr i32, ptr %170, i32 %uni.0153.i
  %171 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %arrayidx143.i, align 4
  %173 = ptrtoint ptr %uniforms_p.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %uniforms_p.i, align 8
  %175 = ptrtoint ptr %uniforms_v.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %uniforms_v.i, align 4
  %arrayidx145.i = getelementptr i32, ptr %176, i32 %172
  %177 = ptrtoint ptr %arrayidx145.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %174, ptr %arrayidx145.i, align 4
  %inc147.i = add nuw i32 %uni.0153.i, 1
  %178 = ptrtoint ptr %num_uniform_addr_offsets.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %num_uniform_addr_offsets.i, align 4
  %cmp139.i = icmp ult i32 %inc147.i, %179
  br i1 %cmp139.i, label %for.body141.i.for.body141.i_crit_edge, label %for.body141.i.for.end148.i_crit_edge

for.body141.i.for.end148.i_crit_edge:             ; preds = %for.body141.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end148.i

for.body141.i.for.body141.i_crit_edge:            ; preds = %for.body141.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body141.i

for.end148.i:                                     ; preds = %for.body141.i.for.end148.i_crit_edge, %for.cond138.preheader.i.for.end148.i_crit_edge
  %180 = ptrtoint ptr %uniforms_p.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %uniforms_p.i, align 8
  %add.ptr151.i = getelementptr i8, ptr %add.ptr105.i, i32 4
  %182 = ptrtoint ptr %add.ptr151.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %181, ptr %add.ptr151.i, align 4
  %183 = ptrtoint ptr %uniforms_src_size.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %uniforms_src_size.i, align 4
  %185 = ptrtoint ptr %uniforms_u.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %uniforms_u.i, align 8
  %add.ptr154.i = getelementptr i8, ptr %186, i32 %184
  store ptr %add.ptr154.i, ptr %uniforms_u.i, align 8
  %187 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %82, align 4
  %189 = ptrtoint ptr %uniforms_v.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %uniforms_v.i, align 4
  %add.ptr157.i = getelementptr i8, ptr %190, i32 %188
  store ptr %add.ptr157.i, ptr %uniforms_v.i, align 4
  %191 = load i32, ptr %82, align 4
  %192 = load i32, ptr %uniforms_p.i, align 8
  %add160.i = add i32 %192, %191
  store i32 %add160.i, ptr %uniforms_p.i, align 8
  %inc168.i = add nuw nsw i32 %i.2154.i, 1
  %exitcond302.not.i = icmp eq i32 %inc168.i, 3
  br i1 %exitcond302.not.i, label %for.body173.lr.ph.i, label %for.end148.i.for.body99.i_crit_edge

for.end148.i.for.body99.i_crit_edge:              ; preds = %for.end148.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body99.i

for.body173.i:                                    ; preds = %if.end230.i.for.body173.i_crit_edge, %for.body173.lr.ph.i
  %i.3156.i = phi i32 [ 0, %for.body173.lr.ph.i ], [ %inc243.i, %if.end230.i.for.body173.i_crit_edge ]
  %add174.i = add nuw nsw i32 %i.3156.i, 3
  %arrayidx175.i = getelementptr [11 x ptr], ptr %bo.i, i32 0, i32 %add174.i
  %193 = ptrtoint ptr %arrayidx175.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %arrayidx175.i, align 4
  %mul177.i = shl i32 %i.3156.i, 3
  %add178.i = add nuw nsw i32 %mul177.i, 36
  %add.ptr179.i = getelementptr i8, ptr %add.ptr.i, i32 %add178.i
  %195 = ptrtoint ptr %add.ptr179.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %add.ptr179.i, align 4
  %add.ptr182.i = getelementptr i8, ptr %add.ptr179.i, i32 4
  %197 = ptrtoint ptr %add.ptr182.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %add.ptr182.i, align 1
  %conv183.i = zext i8 %198 to i32
  %add184.i = add nuw nsw i32 %conv183.i, 1
  %add.ptr186.i = getelementptr i8, ptr %add.ptr179.i, i32 5
  %199 = ptrtoint ptr %add.ptr186.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %add.ptr186.i, align 1
  %conv187.i = zext i8 %200 to i32
  %201 = ptrtoint ptr %bin_dep_seqno.i.i to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %bin_dep_seqno.i.i, align 8
  %write_seqno.i = getelementptr inbounds %struct.vc4_bo, ptr %194, i32 0, i32 2
  %203 = ptrtoint ptr %write_seqno.i to i32
  call void @__asan_load8_noabort(i32 %203)
  %204 = load i64, ptr %write_seqno.i, align 8
  %205 = tail call i64 @llvm.umax.i64(i64 %202, i64 %204) #6
  %206 = ptrtoint ptr %bin_dep_seqno.i.i to i32
  call void @__asan_store8_noabort(i32 %206)
  store i64 %205, ptr %bin_dep_seqno.i.i, align 8
  %207 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx, align 4
  %and195.i = and i32 %208, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and195.i)
  %tobool196.not.i = icmp eq i32 %and195.i, 0
  br i1 %tobool196.not.i, label %for.body173.i.if.end202.i_crit_edge, label %if.then197.i

for.body173.i.if.end202.i_crit_edge:              ; preds = %for.body173.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end202.i

if.then197.i:                                     ; preds = %for.body173.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul199.i = shl i32 %i.3156.i, 2
  %add.ptr200.i = getelementptr i8, ptr %add.ptr198.i, i32 %mul199.i
  %209 = ptrtoint ptr %add.ptr200.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %add.ptr200.i, align 4
  %and201.i = and i32 %210, -256
  %or.i = or i32 %and201.i, %conv187.i
  br label %if.end202.i

if.end202.i:                                      ; preds = %if.then197.i, %for.body173.i.if.end202.i_crit_edge
  %stride.0.i = phi i32 [ %or.i, %if.then197.i ], [ %conv187.i, %for.body173.i.if.end202.i_crit_edge ]
  %size.i = getelementptr inbounds %struct.drm_gem_object, ptr %194, i32 0, i32 5
  %211 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %212, i32 %196)
  %cmp204.i = icmp ult i32 %212, %196
  br i1 %cmp204.i, label %if.end202.i.if.then212.i_crit_edge, label %lor.lhs.false206.i

if.end202.i.if.then212.i_crit_edge:               ; preds = %if.end202.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then212.i

lor.lhs.false206.i:                               ; preds = %if.end202.i
  %sub209.i = sub i32 %212, %196
  call void @__sanitizer_cov_trace_cmp4(i32 %sub209.i, i32 %conv183.i)
  %cmp210.not.i = icmp ugt i32 %sub209.i, %conv183.i
  br i1 %cmp210.not.i, label %if.end215.i, label %lor.lhs.false206.i.if.then212.i_crit_edge

lor.lhs.false206.i.if.then212.i_crit_edge:        ; preds = %lor.lhs.false206.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then212.i

if.then212.i:                                     ; preds = %lor.lhs.false206.i.if.then212.i_crit_edge, %if.end202.i.if.then212.i_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.55, i32 noundef %196, i32 noundef %add184.i, i32 noundef %212) #6
  br label %validate_gl_shader_rec.exit.thread

if.end215.i:                                      ; preds = %lor.lhs.false206.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stride.0.i)
  %cmp216.not.i = icmp eq i32 %stride.0.i, 0
  br i1 %cmp216.not.i, label %if.end215.i.if.end230.i_crit_edge, label %if.then218.i

if.end215.i.if.end230.i_crit_edge:                ; preds = %if.end215.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end230.i

if.then218.i:                                     ; preds = %if.end215.i
  %sub222.i = sub i32 %sub209.i, %add184.i
  %div223.i = udiv i32 %sub222.i, %stride.0.i
  %213 = ptrtoint ptr %max_index224.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %max_index224.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %214, i32 %div223.i)
  %cmp225.i = icmp ugt i32 %214, %div223.i
  br i1 %cmp225.i, label %if.then227.i, label %if.then218.i.if.end230.i_crit_edge

if.then218.i.if.end230.i_crit_edge:               ; preds = %if.then218.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end230.i

if.then227.i:                                     ; preds = %if.then218.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.56, i32 noundef %214, i32 noundef %div223.i) #6
  br label %validate_gl_shader_rec.exit.thread

if.end230.i:                                      ; preds = %if.then218.i.if.end230.i_crit_edge, %if.end215.i.if.end230.i_crit_edge
  %paddr231.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %194, i32 0, i32 1
  %215 = ptrtoint ptr %paddr231.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %paddr231.i, align 8
  %add232.i = add i32 %216, %196
  %add.ptr233.i = getelementptr i8, ptr %14, i32 %add178.i
  %217 = ptrtoint ptr %add.ptr233.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %add232.i, ptr %add.ptr233.i, align 4
  %inc243.i = add nuw nsw i32 %i.3156.i, 1
  %exitcond304.not.i = icmp eq i32 %inc243.i, %umax303.i
  br i1 %exitcond304.not.i, label %for.inc, label %if.end230.i.for.body173.i_crit_edge

if.end230.i.for.body173.i_crit_edge:              ; preds = %if.end230.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body173.i

validate_gl_shader_rec.exit.thread:               ; preds = %if.then227.i, %if.then212.i, %do.end282.i.i, %vc4_use_bo.exit.i.i.validate_gl_shader_rec.exit.thread_crit_edge, %if.then3.i.i.i, %if.then.i.i.i, %if.then119.i, %if.end109.i.validate_gl_shader_rec.exit.thread_crit_edge, %if.then108.i, %if.then94.i, %if.then78.i, %vc4_use_bo.exit.i.validate_gl_shader_rec.exit.thread_crit_edge, %vc4_use_bo.exit.thread.i, %if.end47.i.validate_gl_shader_rec.exit.thread_crit_edge, %if.then45.i, %if.end47.2.i.validate_gl_shader_rec.exit.thread_crit_edge, %if.end47.1.i.validate_gl_shader_rec.exit.thread_crit_edge, %if.then12.i, %if.then3.i
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %bo.i) #6
  br label %cleanup

for.inc:                                          ; preds = %if.end230.i
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %bo.i) #6
  %inc = add nuw i32 %i.0269, 1
  %218 = ptrtoint ptr %shader_state_count to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %shader_state_count, align 8
  %cmp = icmp ult i32 %inc, %219
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %validate_gl_shader_rec.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %validate_gl_shader_rec.exit.thread ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @validate_flush(ptr nocapture noundef %exec, ptr nocapture noundef readnone %validated, ptr noundef readnone %untrusted) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 5
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %args, align 4
  %bin_cl_size = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %bin_cl_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bin_cl_size, align 8
  %sub = add i32 %3, -1
  %add.ptr.i = getelementptr i8, ptr %untrusted, i32 -1
  %bin_u.i = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 29
  %4 = ptrtoint ptr %bin_u.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bin_u.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %5, i32 %sub
  %cmp.i = icmp eq ptr %add.ptr.i, %add.ptr1.i
  br i1 %cmp.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.34) #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %found_flush = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 20
  %6 = ptrtoint ptr %found_flush to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %found_flush, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @validate_start_tile_binning(ptr nocapture noundef %exec, ptr nocapture noundef readnone %validated, ptr nocapture noundef readnone %untrusted) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %found_start_tile_binning_packet = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 18
  %0 = ptrtoint ptr %found_start_tile_binning_packet to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %found_start_tile_binning_packet, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return.sink.split_crit_edge

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %found_start_tile_binning_packet to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %found_start_tile_binning_packet, align 1
  %found_tile_binning_mode_config_packet = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 17
  %3 = ptrtoint ptr %found_tile_binning_mode_config_packet to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %found_tile_binning_mode_config_packet, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %if.end.return.sink.split_crit_edge, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.return.sink.split_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

return.sink.split:                                ; preds = %if.end.return.sink.split_crit_edge, %entry.return.sink.split_crit_edge
  %.str.36.sink = phi ptr [ @.str.35, %entry.return.sink.split_crit_edge ], [ @.str.36, %if.end.return.sink.split_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull %.str.36.sink) #6
  br label %return

return:                                           ; preds = %return.sink.split, %if.end.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.return_crit_edge ], [ -22, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @validate_increment_semaphore(ptr nocapture noundef %exec, ptr nocapture noundef readnone %validated, ptr noundef readnone %untrusted) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 5
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %args, align 4
  %bin_cl_size = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %bin_cl_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bin_cl_size, align 8
  %sub = add i32 %3, -2
  %add.ptr.i = getelementptr i8, ptr %untrusted, i32 -1
  %bin_u.i = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 29
  %4 = ptrtoint ptr %bin_u.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bin_u.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %5, i32 %sub
  %cmp.i = icmp eq ptr %add.ptr.i, %add.ptr1.i
  br i1 %cmp.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.37) #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %found_increment_semaphore_packet = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 19
  %6 = ptrtoint ptr %found_increment_semaphore_packet to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %found_increment_semaphore_packet, align 2
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @validate_indexed_prim_list(ptr nocapture noundef %exec, ptr nocapture noundef writeonly %validated, ptr nocapture noundef readonly %untrusted) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %untrusted, i32 1
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %add.ptr1 = getelementptr i8, ptr %untrusted, i32 5
  %2 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr1, align 4
  %add.ptr2 = getelementptr i8, ptr %untrusted, i32 9
  %4 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr2, align 4
  %6 = ptrtoint ptr %untrusted to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %untrusted, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %7)
  %tobool.not = icmp ult i8 %7, 16
  %cond = select i1 %tobool.not, i32 1, i32 2
  %shader_state_count = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 16
  %8 = ptrtoint ptr %shader_state_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %shader_state_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.38) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %shader_state5 = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 14
  %10 = ptrtoint ptr %shader_state5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %shader_state5, align 8
  %sub = add i32 %9, -1
  %max_index7 = getelementptr %struct.vc4_shader_state, ptr %11, i32 %sub, i32 1
  %12 = ptrtoint ptr %max_index7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_index7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %13)
  %cmp8 = icmp ugt i32 %5, %13
  br i1 %cmp8, label %if.then10, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %max_index7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %5, ptr %max_index7, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end.if.end12_crit_edge
  %bo_index.i = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 12
  %15 = ptrtoint ptr %bo_index.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bo_index.i, align 4
  %bo_count.i.i = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 7
  %17 = ptrtoint ptr %bo_count.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bo_count.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %16)
  %cmp.not.i.i = icmp ugt i32 %18, %16
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %16, i32 noundef %18) #6
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end12
  %bo2.i.i = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 6
  %19 = ptrtoint ptr %bo2.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bo2.i.i, align 8
  %arrayidx.i.i = getelementptr ptr, ptr %20, i32 %16
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i, align 4
  %validated_shader.i.i = getelementptr inbounds %struct.vc4_bo, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %validated_shader.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %validated_shader.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %vc4_use_handle.exit, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1) #6
  br label %cleanup

vc4_use_handle.exit:                              ; preds = %if.end.i.i
  %tobool13.not = icmp eq ptr %22, null
  br i1 %tobool13.not, label %vc4_use_handle.exit.cleanup_crit_edge, label %if.end15

vc4_use_handle.exit.cleanup_crit_edge:            ; preds = %vc4_use_handle.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %vc4_use_handle.exit
  %bin_dep_seqno = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 1
  %25 = ptrtoint ptr %bin_dep_seqno to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %bin_dep_seqno, align 8
  %write_seqno = getelementptr inbounds %struct.vc4_bo, ptr %22, i32 0, i32 2
  %27 = ptrtoint ptr %write_seqno to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %write_seqno, align 8
  %29 = tail call i64 @llvm.umax.i64(i64 %26, i64 %28)
  %30 = ptrtoint ptr %bin_dep_seqno to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %bin_dep_seqno, align 8
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %22, i32 0, i32 5
  %31 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %3)
  %cmp22 = icmp ult i32 %32, %3
  br i1 %cmp22, label %if.end15.if.then29_crit_edge, label %lor.lhs.false

if.end15.if.then29_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29

lor.lhs.false:                                    ; preds = %if.end15
  %sub26 = sub i32 %32, %3
  %not.tobool.not = xor i1 %tobool.not, true
  %33 = zext i1 %not.tobool.not to i32
  %div66 = lshr i32 %sub26, %33
  call void @__sanitizer_cov_trace_cmp4(i32 %div66, i32 %1)
  %cmp27 = icmp ult i32 %div66, %1
  br i1 %cmp27, label %lor.lhs.false.if.then29_crit_edge, label %if.end32

lor.lhs.false.if.then29_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29

if.then29:                                        ; preds = %lor.lhs.false.if.then29_crit_edge, %if.end15.if.then29_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.39, i32 noundef %3, i32 noundef %1, i32 noundef %cond, i32 noundef %32) #6
  br label %cleanup

if.end32:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %paddr = getelementptr inbounds %struct.drm_gem_cma_object, ptr %22, i32 0, i32 1
  %34 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %paddr, align 8
  %add = add i32 %35, %3
  %add.ptr33 = getelementptr i8, ptr %validated, i32 5
  %36 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add, ptr %add.ptr33, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then29, %vc4_use_handle.exit.cleanup_crit_edge, %if.then3.i.i, %if.then.i.i, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then29 ], [ 0, %if.end32 ], [ -22, %vc4_use_handle.exit.cleanup_crit_edge ], [ -22, %if.then.i.i ], [ -22, %if.then3.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @validate_gl_array_primitive(ptr nocapture noundef readonly %exec, ptr nocapture noundef readnone %validated, ptr nocapture noundef readonly %untrusted) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shader_state_count = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 16
  %0 = ptrtoint ptr %shader_state_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %shader_state_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.38) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr1 = getelementptr i8, ptr %untrusted, i32 5
  %2 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr1, align 4
  %add.ptr = getelementptr i8, ptr %untrusted, i32 1
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %add = add i32 %5, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp4 = icmp ult i32 %add, %5
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.40) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %shader_state2 = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 14
  %6 = ptrtoint ptr %shader_state2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shader_state2, align 8
  %sub = add i32 %1, -1
  %sub8 = add i32 %add, -1
  %max_index9 = getelementptr %struct.vc4_shader_state, ptr %7, i32 %sub, i32 1
  %8 = ptrtoint ptr %max_index9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_index9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub8, i32 %9)
  %cmp10 = icmp ugt i32 %sub8, %9
  br i1 %cmp10, label %if.then11, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %max_index9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub8, ptr %max_index9, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end6.cleanup_crit_edge, %if.then5, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then5 ], [ 0, %if.then11 ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @validate_gl_shader_state(ptr nocapture noundef %exec, ptr nocapture noundef writeonly %validated, ptr nocapture noundef readonly %untrusted) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shader_state_count = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 16
  %0 = ptrtoint ptr %shader_state_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %shader_state_count, align 8
  %inc = add i32 %1, 1
  store i32 %inc, ptr %shader_state_count, align 8
  %shader_state_size = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 15
  %2 = ptrtoint ptr %shader_state_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %shader_state_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ult i32 %1, %3
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.41) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %untrusted to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %untrusted, align 4
  %shader_state = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 14
  %6 = ptrtoint ptr %shader_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shader_state, align 8
  %arrayidx = getelementptr %struct.vc4_shader_state, ptr %7, i32 %1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %arrayidx, align 4
  %9 = load ptr, ptr %shader_state, align 8
  %max_index = getelementptr %struct.vc4_shader_state, ptr %9, i32 %1, i32 1
  %10 = ptrtoint ptr %max_index to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %max_index, align 4
  %11 = load ptr, ptr %shader_state, align 8
  %arrayidx4 = getelementptr %struct.vc4_shader_state, ptr %11, i32 %1
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %13)
  %tobool.not = icmp ult i32 %13, 16
  br i1 %tobool.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.42) #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %shader_rec_p = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 32
  %14 = ptrtoint ptr %shader_rec_p to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %shader_rec_p, align 8
  %add = add i32 %15, %13
  %16 = ptrtoint ptr %validated to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add, ptr %validated, align 4
  %17 = ptrtoint ptr %shader_state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %shader_state, align 8
  %arrayidx12 = getelementptr %struct.vc4_shader_state, ptr %18, i32 %1
  %19 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx12, align 4
  %and.i = and i32 %20, 7
  %and1.i = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  %spec.store.select.i = select i1 %cmp.i, i32 8, i32 %and.i
  %mul.i = shl nuw nsw i32 %spec.store.select.i, 2
  %add.i = add nuw nsw i32 %mul.i, 100
  %mul4.i = shl nuw nsw i32 %spec.store.select.i, 3
  %add5.i = add nuw nsw i32 %mul4.i, 36
  %retval.0.i = select i1 %tobool.not.i, i32 %add5.i, i32 %add.i
  %add14 = add nuw nsw i32 %retval.0.i, 15
  %div32 = and i32 %add14, -16
  %21 = ptrtoint ptr %shader_rec_p to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %shader_rec_p, align 8
  %add16 = add i32 %div32, %22
  store i32 %add16, ptr %shader_rec_p, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then6 ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @validate_tile_binning_config(ptr nocapture noundef %exec, ptr nocapture noundef writeonly %validated, ptr nocapture noundef readonly %untrusted) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %exec_bo = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 13
  %0 = ptrtoint ptr %exec_bo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %exec_bo, align 4
  %dev1 = getelementptr inbounds %struct.drm_gem_object, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %found_tile_binning_mode_config_packet = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 17
  %4 = ptrtoint ptr %found_tile_binning_mode_config_packet to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %found_tile_binning_mode_config_packet, align 4, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.43) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %found_tile_binning_mode_config_packet to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %found_tile_binning_mode_config_packet, align 4
  %add.ptr = getelementptr i8, ptr %untrusted, i32 12
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %add.ptr, align 1
  %bin_tiles_x = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 21
  %9 = ptrtoint ptr %bin_tiles_x to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %bin_tiles_x, align 8
  %add.ptr3 = getelementptr i8, ptr %untrusted, i32 13
  %10 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr3, align 1
  %bin_tiles_y = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 22
  %12 = ptrtoint ptr %bin_tiles_y to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %bin_tiles_y, align 1
  %conv = zext i8 %8 to i32
  %conv6 = zext i8 %11 to i32
  %add.ptr7 = getelementptr i8, ptr %untrusted, i32 14
  %13 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %add.ptr7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp = icmp eq i8 %8, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp13 = icmp eq i8 %11, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp13
  br i1 %or.cond, label %if.then15, label %if.end20

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.44, i32 noundef %conv, i32 noundef %conv6) #6
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %conv21 = zext i8 %14 to i32
  %and = and i32 %conv21, 130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.end25, label %if.then23

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.45, i32 noundef %conv21) #6
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %call26 = tail call i32 @vc4_v3d_get_bin_slot(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then29, label %if.end36

if.then29:                                        ; preds = %if.end25
  %15 = zext i32 %call26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %call26, label %if.then34 [
    i32 -4, label %if.then29.cleanup_crit_edge
    i32 -512, label %if.then29.cleanup_crit_edge224
  ]

if.then29.cleanup_crit_edge224:                   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then34:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.46, i32 noundef %call26) #6
  br label %cleanup

if.end36:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %shl = shl nuw i32 1, %call26
  %bin_slots = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 24
  %16 = ptrtoint ptr %bin_slots to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bin_slots, align 8
  %or = or i32 %17, %shl
  store i32 %or, ptr %bin_slots, align 8
  %bin_bo = getelementptr inbounds %struct.vc4_dev, ptr %3, i32 0, i32 24
  %18 = ptrtoint ptr %bin_bo to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bin_bo, align 8
  %paddr = getelementptr inbounds %struct.drm_gem_cma_object, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %paddr, align 8
  %bin_alloc_size = getelementptr inbounds %struct.vc4_dev, ptr %3, i32 0, i32 25
  %22 = ptrtoint ptr %bin_alloc_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bin_alloc_size, align 4
  %mul38 = mul i32 %23, %call26
  %add = add i32 %mul38, %21
  %mul = mul nuw nsw i32 %conv, 48
  %mul39 = mul nuw nsw i32 %mul, %conv6
  %add40 = add nuw nsw i32 %mul39, 4095
  %div223 = and i32 %add40, 8384512
  %add42 = add i32 %add, %div223
  %tile_alloc_offset = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 23
  %24 = ptrtoint ptr %tile_alloc_offset to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add42, ptr %tile_alloc_offset, align 4
  %and44 = and i8 %14, -125
  %or170 = or i8 %and44, 68
  %add.ptr172 = getelementptr i8, ptr %validated, i32 14
  %25 = ptrtoint ptr %add.ptr172 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %or170, ptr %add.ptr172, align 1
  %26 = load i32, ptr %tile_alloc_offset, align 4
  %27 = ptrtoint ptr %validated to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %validated, align 4
  %28 = load i32, ptr %bin_alloc_size, align 4
  %add176 = add i32 %28, %add
  %29 = load i32, ptr %tile_alloc_offset, align 4
  %sub178 = sub i32 %add176, %29
  %add.ptr179 = getelementptr i8, ptr %validated, i32 4
  %30 = ptrtoint ptr %add.ptr179 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub178, ptr %add.ptr179, align 4
  %add.ptr180 = getelementptr i8, ptr %validated, i32 8
  %31 = ptrtoint ptr %add.ptr180 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add, ptr %add.ptr180, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then34, %if.then29.cleanup_crit_edge, %if.then29.cleanup_crit_edge224, %if.then23, %if.then15, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then15 ], [ -22, %if.then23 ], [ 0, %if.end36 ], [ %call26, %if.then29.cleanup_crit_edge ], [ %call26, %if.then29.cleanup_crit_edge224 ], [ %call26, %if.then34 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @validate_gem_handles(ptr nocapture noundef writeonly %exec, ptr nocapture noundef readnone %validated, ptr nocapture noundef readonly %untrusted) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bo_index = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 12
  %0 = ptrtoint ptr %untrusted to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %untrusted, align 1
  %2 = ptrtoint ptr %bo_index to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 %1, ptr %bo_index, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_v3d_get_bin_slot(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146}
!llvm.module.flags = !{!147, !148, !149, !150, !151, !152, !153, !154}
!llvm.ident = !{!155}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 112, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 120, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 175, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 194, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 203, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 496, i32 4}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 503, i32 4}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 509, i32 4}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 522, i32 4}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 540, i32 3}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 552, i32 3}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 68, i32 3}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 441, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 442, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 443, i32 2}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 444, i32 2}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 445, i32 2}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 447, i32 2}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 450, i32 2}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 452, i32 2}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 455, i32 2}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 457, i32 2}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 459, i32 2}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 460, i32 2}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 461, i32 2}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 462, i32 2}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 463, i32 2}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 464, i32 2}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 465, i32 2}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 466, i32 2}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 467, i32 2}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 471, i32 2}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 473, i32 2}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 476, i32 2}
!68 = !{ptr @cmd_info, !69, !"cmd_info", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 440, i32 3}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 217, i32 3}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 229, i32 3}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 235, i32 3}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 246, i32 3}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 267, i32 3}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 284, i32 3}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 310, i32 3}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 327, i32 3}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 335, i32 3}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 359, i32 3}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 371, i32 3}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 378, i32 3}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 385, i32 4}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 409, i32 4}
!98 = !{ptr @validate_gl_shader_rec.shader_reloc_offsets, !99, !"shader_reloc_offsets", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 750, i32 24}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 767, i32 3}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 777, i32 3}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 797, i32 4}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 813, i32 3}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 819, i32 3}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 834, i32 4}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 845, i32 4}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 903, i32 4}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 912, i32 5}
!118 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 591, i32 4}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 595, i32 4}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 615, i32 5}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 622, i32 4}
!126 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 663, i32 3}
!128 = !{ptr @.str.62, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 716, i32 4}
!130 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 736, i32 2}
!132 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @reloc_tex._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @reloc_tex._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.66, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 737, i32 2}
!137 = !{ptr @reloc_tex._entry.65, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @reloc_tex._entry_ptr.67, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.69, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 738, i32 2}
!141 = !{ptr @reloc_tex._entry.68, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @reloc_tex._entry_ptr.70, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.72, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/vc4/vc4_validate.c", i32 739, i32 2}
!145 = !{ptr @reloc_tex._entry.71, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @reloc_tex._entry_ptr.73, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{i32 1, !"wchar_size", i32 2}
!148 = !{i32 1, !"min_enum_size", i32 4}
!149 = !{i32 8, !"branch-target-enforcement", i32 0}
!150 = !{i32 8, !"sign-return-address", i32 0}
!151 = !{i32 8, !"sign-return-address-all", i32 0}
!152 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!153 = !{i32 7, !"uwtable", i32 1}
!154 = !{i32 7, !"frame-pointer", i32 2}
!155 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!156 = !{i8 0, i8 2}
!157 = !{!"branch_weights", i32 1, i32 2000}
!158 = !{i64 2157335618, i64 2157336117, i64 2157335655, i64 2157335711, i64 2157335745, i64 2157335769, i64 2157335810, i64 2157335831, i64 2157335859, i64 2157335893}
