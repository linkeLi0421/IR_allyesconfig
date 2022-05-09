; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/imx/ipuv3-plane.c_pt.bc'
source_filename = "../drivers/gpu/drm/imx/ipuv3-plane.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ipu_plane = type { %struct.drm_plane, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.ipu_plane_state = type { %struct.drm_plane_state, i8 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.87, ptr, i32, ptr, i8, i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.87 = type { i32, ptr }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"[%d] %s\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.ipu_plane_disable = private unnamed_addr constant [18 x i8] c"ipu_plane_disable\00", align 1
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[PLANE:%d] IDMAC timeout\0A\00", [38 x i8] zeroinitializer }, align 32
@ipu_format_modifiers = internal constant { [2 x i64], [16 x i8] } { [2 x i64] [i64 0, i64 72057594037927935], [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"channel %d, dp flow %d, possible_crtcs=0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@ipu_plane_all_formats = internal constant { [34 x i32], [56 x i8] } { [34 x i32] [i32 892424769, i32 892424792, i32 892420673, i32 892420696, i32 892420434, i32 892420418, i32 842093121, i32 875713089, i32 875713112, i32 875708993, i32 875709016, i32 875708754, i32 875714642, i32 875708738, i32 875714626, i32 1498831189, i32 1498765654, i32 1448695129, i32 1431918169, i32 842093913, i32 842094169, i32 909202777, i32 909203033, i32 875713881, i32 875714137, i32 842094158, i32 909203022, i32 909199186, i32 943797586, i32 943797570, i32 943798354, i32 943798338, i32 943806546, i32 943806530], [56 x i8] zeroinitializer }, align 32
@ipu_plane_rgb_formats = internal constant { [22 x i32], [40 x i8] } { [22 x i32] [i32 892424769, i32 892424792, i32 892420673, i32 892420696, i32 892420434, i32 892420418, i32 842093121, i32 875713089, i32 875713112, i32 875708993, i32 875709016, i32 875708754, i32 875714642, i32 875708738, i32 875714626, i32 909199186, i32 943797586, i32 943797570, i32 943798354, i32 943798338, i32 943806546, i32 943806530], [40 x i8] zeroinitializer }, align 32
@pre_format_modifiers = internal constant { [4 x i64], [32 x i8] } { [4 x i64] [i64 0, i64 432345564227567617, i64 432345564227567618, i64 72057594037927935], [32 x i8] zeroinitializer }, align 32
@ipu_plane_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr null, ptr @ipu_plane_state_reset, ptr null, ptr @ipu_plane_duplicate_state, ptr @ipu_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipu_plane_format_mod_supported }, [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to allocate and initialize %s plane\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"overlay\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"primary\00", [24 x i8] zeroinitializer }, align 32
@ipu_plane_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @ipu_plane_atomic_check, ptr @ipu_plane_atomic_update, ptr @ipu_plane_atomic_disable, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to get %s plane resources: %pe\0A\00", [57 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/imx/ipuv3-plane.c\00", [62 x i8] zeroinitializer }, align 32
@ipu_plane_atomic_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.7, i32 419, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unsupported plane type %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ipu_plane_atomic_check\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ipu_plane_atomic_check._entry_ptr = internal global ptr @ipu_plane_atomic_check._entry, section ".printk_index", align 4
@ipu_plane_atomic_check._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.9, ptr @.str.7, i32 452, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"pitch is not big enough for 8 pixels alignment\00", [49 x i8] zeroinitializer }, align 32
@ipu_plane_atomic_check._entry_ptr.14 = internal global ptr @ipu_plane_atomic_check._entry.12, section ".printk_index", align 4
@ipu_plane_atomic_update.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str.7, ptr @.str.17, i8 0, i8 -76, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"imxdrm\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ipu_plane_atomic_update\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"phy = %lu %lu %lu, x = %d, y = %d\00", [62 x i8] zeroinitializer }, align 32
@ipu_plane_atomic_update.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str.7, ptr @.str.18, i8 0, i8 -73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"phy = %lu %lu, x = %d, y = %d\00", [34 x i8] zeroinitializer }, align 32
@ipu_plane_atomic_update.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str.7, ptr @.str.19, i8 0, i8 -70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"phys = %lu %lu, x = %d, y = %d\00", [33 x i8] zeroinitializer }, align 32
@ipu_plane_atomic_update.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str.7, ptr @.str.20, i8 0, i8 -65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"phys = %lu, x = %d, y = %d\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to get idmac channel: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ipu_plane_put_resources\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to get alpha idmac channel %d: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get dmfc: ret %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get dp flow: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@switch.table.ipu_plane_init = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 17, i32 18, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 51, i32 52, i32 19, i32 17, i32 31, i32 17, i32 33], [32 x i8] zeroinitializer }, align 32
@switch.table.ipu_plane_atomic_update = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1, i32 0, i32 0, i32 0, i32 2, i32 3], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.26 = internal global [16 x i64] [i64 14, i64 32, i64 842093913, i64 842094158, i64 842094169, i64 875713881, i64 875714137, i64 909202777, i64 909203022, i64 909203033, i64 943797570, i64 943797586, i64 943798338, i64 943798354, i64 943806530, i64 943806546]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.29 = internal global [8 x i64] [i64 6, i64 32, i64 943797570, i64 943797586, i64 943798338, i64 943798354, i64 943806530, i64 943806546]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.31 = internal global [16 x i64] [i64 14, i64 32, i64 842093913, i64 842094158, i64 842094169, i64 875713881, i64 875714137, i64 909202777, i64 909203022, i64 909203033, i64 943797570, i64 943797586, i64 943798338, i64 943798354, i64 943806530, i64 943806546]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 842094169, i64 875714137, i64 909203033]
@__sancov_gen_cov_switch_values.33 = internal global [8 x i64] [i64 6, i64 32, i64 943797570, i64 943797586, i64 943798338, i64 943798354, i64 943806530, i64 943806546]
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 268, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 272, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [21 x i8] c"ipu_format_modifiers\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 105, i32 23 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 895, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [22 x i8] c"ipu_plane_all_formats\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 43, i32 23 }
@___asan_gen_.49 = private unnamed_addr constant [22 x i8] c"ipu_plane_rgb_formats\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 80, i32 23 }
@___asan_gen_.52 = private unnamed_addr constant [21 x i8] c"pre_format_modifiers\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 110, i32 23 }
@___asan_gen_.55 = private unnamed_addr constant [16 x i8] c"ipu_plane_funcs\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 362, i32 37 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 914, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [23 x i8] c"ipu_plane_helper_funcs\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 774, i32 44 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 945, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 326, i32 6 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 419, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 452, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 721, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 732, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 745, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 764, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 199, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 203, i32 8 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 212, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 221, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.128 = private constant [37 x i8] c"../drivers/gpu/drm/imx/ipuv3-plane.c\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 229, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant [28 x i8] c"switch.table.ipu_plane_init\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [37 x i8] c"switch.table.ipu_plane_atomic_update\00", align 1
@llvm.compiler.used = appending global [36 x ptr] [ptr @ipu_plane_atomic_check._entry, ptr @ipu_plane_atomic_check._entry.12, ptr @ipu_plane_atomic_check._entry_ptr, ptr @ipu_plane_atomic_check._entry_ptr.14, ptr @.str, ptr @.str.1, ptr @ipu_format_modifiers, ptr @.str.2, ptr @ipu_plane_all_formats, ptr @ipu_plane_rgb_formats, ptr @pre_format_modifiers, ptr @ipu_plane_funcs, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ipu_plane_helper_funcs, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @switch.table.ipu_plane_init, ptr @switch.table.ipu_plane_atomic_update], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_format_modifiers to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_plane_all_formats to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_plane_rgb_formats to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pre_format_modifiers to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_plane_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_plane_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_plane_atomic_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_plane_atomic_check._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ipu_plane_init to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ipu_plane_atomic_update to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipu_plane_irq(ptr nocapture noundef readonly %ipu_plane) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ipu = getelementptr inbounds %struct.ipu_plane, ptr %ipu_plane, i32 0, i32 1
  %0 = ptrtoint ptr %ipu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipu, align 8
  %ipu_ch = getelementptr inbounds %struct.ipu_plane, ptr %ipu_plane, i32 0, i32 2
  %2 = ptrtoint ptr %ipu_ch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ipu_ch, align 4
  %call = tail call i32 @ipu_idmac_channel_irq(ptr noundef %1, ptr noundef %3, i32 noundef 0) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_idmac_channel_irq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipu_plane_disable(ptr nocapture noundef readonly %ipu_plane, i1 noundef zeroext %disable_dp_channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef 268, ptr noundef nonnull @__func__.ipu_plane_disable) #6
  %ipu_ch = getelementptr inbounds %struct.ipu_plane, ptr %ipu_plane, i32 0, i32 2
  %0 = ptrtoint ptr %ipu_ch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipu_ch, align 4
  %call = tail call i32 @ipu_idmac_wait_busy(ptr noundef %1, i32 noundef 50) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call)
  %cmp = icmp eq i32 %call, -110
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %base1 = getelementptr inbounds %struct.drm_plane, ptr %ipu_plane, i32 0, i32 4
  %2 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base1, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dp = getelementptr inbounds %struct.ipu_plane, ptr %ipu_plane, i32 0, i32 5
  %4 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dp, align 8
  %tobool.not = icmp ne ptr %5, null
  %6 = and i1 %tobool.not, %disable_dp_channel
  br i1 %6, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ipu_dp_disable_channel(ptr noundef nonnull %5, i1 noundef zeroext false) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %7 = ptrtoint ptr %ipu_ch to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ipu_ch, align 4
  %call7 = tail call i32 @ipu_idmac_disable_channel(ptr noundef %8) #6
  %alpha_ch = getelementptr inbounds %struct.ipu_plane, ptr %ipu_plane, i32 0, i32 3
  %9 = ptrtoint ptr %alpha_ch to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %alpha_ch, align 8
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %if.end5.if.end12_crit_edge, label %if.then9

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call i32 @ipu_idmac_disable_channel(ptr noundef nonnull %10) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end5.if.end12_crit_edge
  %dmfc = getelementptr inbounds %struct.ipu_plane, ptr %ipu_plane, i32 0, i32 4
  %11 = ptrtoint ptr %dmfc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dmfc, align 4
  tail call void @ipu_dmfc_disable_channel(ptr noundef %12) #6
  %13 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dp, align 8
  %tobool14.not = icmp eq ptr %14, null
  br i1 %tobool14.not, label %if.end12.if.end16_crit_edge, label %if.then15

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %ipu = getelementptr inbounds %struct.ipu_plane, ptr %ipu_plane, i32 0, i32 1
  %15 = ptrtoint ptr %ipu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ipu, align 8
  tail call void @ipu_dp_disable(ptr noundef %16) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end12.if.end16_crit_edge
  %ipu17 = getelementptr inbounds %struct.ipu_plane, ptr %ipu_plane, i32 0, i32 1
  %17 = ptrtoint ptr %ipu17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ipu17, align 8
  %call18 = tail call zeroext i1 @ipu_prg_present(ptr noundef %18) #6
  br i1 %call18, label %if.then19, label %if.end16.if.end21_crit_edge

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %ipu_ch to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ipu_ch, align 4
  tail call void @ipu_prg_channel_disable(ptr noundef %20) #6
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end16.if.end21_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_idmac_wait_busy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_dp_disable_channel(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_idmac_disable_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_dmfc_disable_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_dp_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipu_prg_present(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_prg_channel_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipu_plane_disable_deferred(ptr nocapture noundef %plane) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %disabling = getelementptr inbounds %struct.ipu_plane, ptr %plane, i32 0, i32 8
  %0 = ptrtoint ptr %disabling to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %disabling, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %disabling to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %disabling, align 4
  tail call void @ipu_plane_disable(ptr noundef %plane, i1 noundef zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ipu_plane_atomic_update_pending(ptr nocapture noundef readonly %plane) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %use_pre = getelementptr inbounds %struct.ipu_plane_state, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %use_pre to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %use_pre, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %ipu_ch = getelementptr inbounds %struct.ipu_plane, ptr %plane, i32 0, i32 2
  %6 = ptrtoint ptr %ipu_ch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ipu_ch, align 4
  %call5 = tail call zeroext i1 @ipu_prg_channel_configure_pending(ptr noundef %7) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call5, %if.then4 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipu_prg_channel_configure_pending(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipu_planes_assign_pre(ptr nocapture noundef readnone %dev, ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ipu_prg_max_active_channels() #6
  %dev1 = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %num_crtc194 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 19
  %2 = ptrtoint ptr %num_crtc194 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_crtc194, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp195 = icmp sgt i32 %3, 0
  br i1 %cmp195, label %for.body.lr.ph, label %entry.for.cond13.preheader_crit_edge

entry.for.cond13.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond13.preheader

for.body.lr.ph:                                   ; preds = %entry
  %crtcs = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  br label %for.body

for.cond13.preheader:                             ; preds = %for.inc.for.cond13.preheader_crit_edge, %entry.for.cond13.preheader_crit_edge
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %num_total_plane197 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 17
  %6 = ptrtoint ptr %num_total_plane197 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_total_plane197, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp16198 = icmp sgt i32 %7, 0
  br i1 %cmp16198, label %for.body17.lr.ph, label %for.cond13.preheader.for.cond59.preheader_crit_edge

for.cond13.preheader.for.cond59.preheader_crit_edge: ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond59.preheader

for.body17.lr.ph:                                 ; preds = %for.cond13.preheader
  %planes = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  br label %for.body17

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0196 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %crtcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtcs, align 4
  %arrayidx = getelementptr %struct.__drm_crtcs_state, ptr %9, i32 %i.0196
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %call9 = tail call i32 @drm_atomic_add_affected_planes(ptr noundef %state, ptr noundef nonnull %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0196, 1
  %12 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1, align 4
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 30, i32 19
  %14 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_crtc, align 4
  %cmp = icmp slt i32 %inc, %15
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond13.preheader_crit_edge

for.inc.for.cond13.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond13.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond59.preheader:                             ; preds = %for.inc56.for.cond59.preheader_crit_edge, %for.cond13.preheader.for.cond59.preheader_crit_edge
  %available_pres.0.lcssa = phi i32 [ %call, %for.cond13.preheader.for.cond59.preheader_crit_edge ], [ %available_pres.1, %for.inc56.for.cond59.preheader_crit_edge ]
  %16 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev1, align 4
  %num_total_plane62202 = getelementptr inbounds %struct.drm_device, ptr %17, i32 0, i32 30, i32 17
  %18 = ptrtoint ptr %num_total_plane62202 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_total_plane62202, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp63203 = icmp sgt i32 %19, 0
  br i1 %cmp63203, label %for.body64.lr.ph, label %for.cond59.preheader.cleanup_crit_edge

for.cond59.preheader.cleanup_crit_edge:           ; preds = %for.cond59.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body64.lr.ph:                                 ; preds = %for.cond59.preheader
  %planes65 = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  br label %for.body64

for.body17:                                       ; preds = %for.inc56.for.body17_crit_edge, %for.body17.lr.ph
  %i.1200 = phi i32 [ 0, %for.body17.lr.ph ], [ %inc57, %for.inc56.for.body17_crit_edge ]
  %available_pres.0199 = phi i32 [ %call, %for.body17.lr.ph ], [ %available_pres.1, %for.inc56.for.body17_crit_edge ]
  %20 = ptrtoint ptr %planes to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %planes, align 4
  %arrayidx18 = getelementptr %struct.__drm_planes_state, ptr %21, i32 %i.1200
  %22 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx18, align 4
  %tobool20.not = icmp eq ptr %23, null
  br i1 %tobool20.not, label %for.body17.for.inc56_crit_edge, label %land.lhs.true21

for.body17.for.inc56_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc56

land.lhs.true21:                                  ; preds = %for.body17
  %new_state27 = getelementptr %struct.__drm_planes_state, ptr %21, i32 %i.1200, i32 3
  %24 = ptrtoint ptr %new_state27 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %new_state27, align 4
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fb, align 4
  %tobool32.not = icmp eq ptr %27, null
  br i1 %tobool32.not, label %if.then33, label %if.end34

if.then33:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #8
  %use_pre = getelementptr inbounds %struct.ipu_plane_state, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %use_pre to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %use_pre, align 4
  br label %for.inc56

if.end34:                                         ; preds = %land.lhs.true21
  %flags = getelementptr inbounds %struct.drm_framebuffer, ptr %27, i32 0, i32 11
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 8
  %and = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %if.end34.for.inc56_crit_edge, label %lor.lhs.false

if.end34.for.inc56_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc56

lor.lhs.false:                                    ; preds = %if.end34
  %modifier = getelementptr inbounds %struct.drm_framebuffer, ptr %27, i32 0, i32 8
  %31 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %modifier, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %32)
  %cmp38 = icmp eq i64 %32, 0
  br i1 %cmp38, label %lor.lhs.false.for.inc56_crit_edge, label %if.end40

lor.lhs.false.for.inc56_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc56

if.end40:                                         ; preds = %lor.lhs.false
  %ipu = getelementptr inbounds %struct.ipu_plane, ptr %23, i32 0, i32 1
  %33 = ptrtoint ptr %ipu to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ipu, align 8
  %call41 = tail call zeroext i1 @ipu_prg_present(ptr noundef %34) #6
  %call41.not = xor i1 %call41, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %available_pres.0199)
  %tobool43.not = icmp eq i32 %available_pres.0199, 0
  %or.cond = select i1 %call41.not, i1 true, i1 %tobool43.not
  br i1 %or.cond, label %if.end40.cleanup_crit_edge, label %if.end45

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end45:                                         ; preds = %if.end40
  %35 = ptrtoint ptr %ipu to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ipu, align 8
  %37 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fb, align 4
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %format, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %modifier50 = getelementptr inbounds %struct.drm_framebuffer, ptr %38, i32 0, i32 8
  %43 = ptrtoint ptr %modifier50 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %modifier50, align 8
  %call51 = tail call zeroext i1 @ipu_prg_format_supported(ptr noundef %36, i32 noundef %42, i64 noundef %44) #6
  br i1 %call51, label %if.end53, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end53:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %use_pre54 = getelementptr inbounds %struct.ipu_plane_state, ptr %25, i32 0, i32 1
  %45 = ptrtoint ptr %use_pre54 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %use_pre54, align 4
  %dec = add i32 %available_pres.0199, -1
  br label %for.inc56

for.inc56:                                        ; preds = %if.end53, %lor.lhs.false.for.inc56_crit_edge, %if.end34.for.inc56_crit_edge, %if.then33, %for.body17.for.inc56_crit_edge
  %available_pres.1 = phi i32 [ %available_pres.0199, %lor.lhs.false.for.inc56_crit_edge ], [ %dec, %if.end53 ], [ %available_pres.0199, %if.end34.for.inc56_crit_edge ], [ %available_pres.0199, %if.then33 ], [ %available_pres.0199, %for.body17.for.inc56_crit_edge ]
  %inc57 = add nuw nsw i32 %i.1200, 1
  %46 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev1, align 4
  %num_total_plane = getelementptr inbounds %struct.drm_device, ptr %47, i32 0, i32 30, i32 17
  %48 = ptrtoint ptr %num_total_plane to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_total_plane, align 4
  %cmp16 = icmp slt i32 %inc57, %49
  br i1 %cmp16, label %for.inc56.for.body17_crit_edge, label %for.inc56.for.cond59.preheader_crit_edge

for.inc56.for.cond59.preheader_crit_edge:         ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond59.preheader

for.inc56.for.body17_crit_edge:                   ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body17

for.body64:                                       ; preds = %for.inc116.for.body64_crit_edge, %for.body64.lr.ph
  %i.2206 = phi i32 [ 0, %for.body64.lr.ph ], [ %inc117, %for.inc116.for.body64_crit_edge ]
  %available_pres.2204 = phi i32 [ %available_pres.0.lcssa, %for.body64.lr.ph ], [ %available_pres.3, %for.inc116.for.body64_crit_edge ]
  %50 = ptrtoint ptr %planes65 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %planes65, align 4
  %arrayidx66 = getelementptr %struct.__drm_planes_state, ptr %51, i32 %i.2206
  %52 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx66, align 4
  %tobool68.not = icmp eq ptr %53, null
  br i1 %tobool68.not, label %for.body64.for.inc116_crit_edge, label %land.lhs.true69

for.body64.for.inc116_crit_edge:                  ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc116

land.lhs.true69:                                  ; preds = %for.body64
  %new_state75 = getelementptr %struct.__drm_planes_state, ptr %51, i32 %i.2206, i32 3
  %54 = ptrtoint ptr %new_state75 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %new_state75, align 4
  %fb80 = getelementptr inbounds %struct.drm_plane_state, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %fb80 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fb80, align 4
  %tobool81.not = icmp eq ptr %57, null
  br i1 %tobool81.not, label %if.then82, label %if.end84

if.then82:                                        ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #8
  %use_pre83 = getelementptr inbounds %struct.ipu_plane_state, ptr %55, i32 0, i32 1
  %58 = ptrtoint ptr %use_pre83 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %use_pre83, align 4
  br label %for.inc116

if.end84:                                         ; preds = %land.lhs.true69
  %flags86 = getelementptr inbounds %struct.drm_framebuffer, ptr %57, i32 0, i32 11
  %59 = ptrtoint ptr %flags86 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags86, align 8
  %and87 = and i32 %60, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.end84.if.end94_crit_edge, label %land.lhs.true89

if.end84.if.end94_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94

land.lhs.true89:                                  ; preds = %if.end84
  %modifier91 = getelementptr inbounds %struct.drm_framebuffer, ptr %57, i32 0, i32 8
  %61 = ptrtoint ptr %modifier91 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %modifier91, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %62)
  %cmp92.not = icmp eq i64 %62, 0
  br i1 %cmp92.not, label %land.lhs.true89.if.end94_crit_edge, label %land.lhs.true89.for.inc116_crit_edge

land.lhs.true89.for.inc116_crit_edge:             ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc116

land.lhs.true89.if.end94_crit_edge:               ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94

if.end94:                                         ; preds = %land.lhs.true89.if.end94_crit_edge, %if.end84.if.end94_crit_edge
  %modifier96 = getelementptr inbounds %struct.drm_framebuffer, ptr %57, i32 0, i32 8
  %63 = ptrtoint ptr %modifier96 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 0, ptr %modifier96, align 8
  %ipu97 = getelementptr inbounds %struct.ipu_plane, ptr %53, i32 0, i32 1
  %64 = ptrtoint ptr %ipu97 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ipu97, align 8
  %call98 = tail call zeroext i1 @ipu_prg_present(ptr noundef %65) #6
  %call98.not = xor i1 %call98, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %available_pres.2204)
  %tobool100.not = icmp eq i32 %available_pres.2204, 0
  %or.cond189 = select i1 %call98.not, i1 true, i1 %tobool100.not
  br i1 %or.cond189, label %if.end94.if.else112_crit_edge, label %land.lhs.true101

if.end94.if.else112_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else112

land.lhs.true101:                                 ; preds = %if.end94
  %66 = ptrtoint ptr %ipu97 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ipu97, align 8
  %68 = ptrtoint ptr %fb80 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %fb80, align 4
  %format104 = getelementptr inbounds %struct.drm_framebuffer, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %format104 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %format104, align 8
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  %modifier107 = getelementptr inbounds %struct.drm_framebuffer, ptr %69, i32 0, i32 8
  %74 = ptrtoint ptr %modifier107 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %modifier107, align 8
  %call108 = tail call zeroext i1 @ipu_prg_format_supported(ptr noundef %67, i32 noundef %73, i64 noundef %75) #6
  br i1 %call108, label %if.then109, label %land.lhs.true101.if.else112_crit_edge

land.lhs.true101.if.else112_crit_edge:            ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else112

if.then109:                                       ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #8
  %use_pre110 = getelementptr inbounds %struct.ipu_plane_state, ptr %55, i32 0, i32 1
  %76 = ptrtoint ptr %use_pre110 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %use_pre110, align 4
  %dec111 = add i32 %available_pres.2204, -1
  br label %for.inc116

if.else112:                                       ; preds = %land.lhs.true101.if.else112_crit_edge, %if.end94.if.else112_crit_edge
  %use_pre113 = getelementptr inbounds %struct.ipu_plane_state, ptr %55, i32 0, i32 1
  %77 = ptrtoint ptr %use_pre113 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %use_pre113, align 4
  br label %for.inc116

for.inc116:                                       ; preds = %if.else112, %if.then109, %land.lhs.true89.for.inc116_crit_edge, %if.then82, %for.body64.for.inc116_crit_edge
  %available_pres.3 = phi i32 [ %available_pres.2204, %land.lhs.true89.for.inc116_crit_edge ], [ %dec111, %if.then109 ], [ %available_pres.2204, %if.else112 ], [ %available_pres.2204, %if.then82 ], [ %available_pres.2204, %for.body64.for.inc116_crit_edge ]
  %inc117 = add nuw nsw i32 %i.2206, 1
  %78 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev1, align 4
  %num_total_plane62 = getelementptr inbounds %struct.drm_device, ptr %79, i32 0, i32 30, i32 17
  %80 = ptrtoint ptr %num_total_plane62 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num_total_plane62, align 4
  %cmp63 = icmp slt i32 %inc117, %81
  br i1 %cmp63, label %for.inc116.for.body64_crit_edge, label %for.inc116.cleanup_crit_edge

for.inc116.cleanup_crit_edge:                     ; preds = %for.inc116
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc116.for.body64_crit_edge:                  ; preds = %for.inc116
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body64

cleanup:                                          ; preds = %for.inc116.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %for.cond59.preheader.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.cond59.preheader.cleanup_crit_edge ], [ 0, %for.inc116.cleanup_crit_edge ], [ -22, %if.end40.cleanup_crit_edge ], [ -22, %if.end45.cleanup_crit_edge ], [ %call9, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_prg_max_active_channels() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_add_affected_planes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipu_prg_format_supported(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ipu_plane_init(ptr noundef %dev, ptr noundef %ipu, i32 noundef %dma, i32 noundef %dp, i32 noundef %possible_crtcs, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp = icmp ne i32 %type, 1
  %cond = zext i1 %cmp to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.2, i32 noundef %dma, i32 noundef %dp, i32 noundef %possible_crtcs) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dp)
  %0 = icmp ult i32 %dp, 2
  %format_count.0 = select i1 %0, i32 34, i32 22
  %formats.0 = select i1 %0, ptr @ipu_plane_all_formats, ptr @ipu_plane_rgb_formats
  %call = tail call zeroext i1 @ipu_prg_present(ptr noundef %ipu) #6
  %modifiers.0 = select i1 %call, ptr @pre_format_modifiers, ptr @ipu_format_modifiers
  %call5 = tail call ptr (ptr, i32, i32, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @__drmm_universal_plane_alloc(ptr noundef %dev, i32 noundef 560, i32 noundef 0, i32 noundef %possible_crtcs, ptr noundef nonnull @ipu_plane_funcs, ptr noundef nonnull %formats.0, i32 noundef %format_count.0, ptr noundef nonnull %modifiers.0, i32 noundef %type, ptr noundef null) #6
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cond8 = select i1 %cmp, ptr @.str.4, ptr @.str.5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, ptr noundef nonnull %cond8) #6
  br label %cleanup

if.end9:                                          ; preds = %entry
  %ipu10 = getelementptr inbounds %struct.ipu_plane, ptr %call5, i32 0, i32 1
  %1 = ptrtoint ptr %ipu10 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ipu, ptr %ipu10, align 8
  %dma11 = getelementptr inbounds %struct.ipu_plane, ptr %call5, i32 0, i32 6
  %2 = ptrtoint ptr %dma11 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dma, ptr %dma11, align 4
  %dp_flow = getelementptr inbounds %struct.ipu_plane, ptr %call5, i32 0, i32 7
  %3 = ptrtoint ptr %dp_flow to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %dp, ptr %dp_flow, align 8
  %helper_private.i = getelementptr inbounds %struct.drm_plane, ptr %call5, i32 0, i32 18
  %4 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ipu_plane_helper_funcs, ptr %helper_private.i, align 8
  br i1 %0, label %if.then15, label %if.else18

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 @drm_plane_create_zpos_property(ptr noundef %call5, i32 noundef %cond, i32 noundef 0, i32 noundef 1) #6
  br label %if.end21

if.else18:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = tail call i32 @drm_plane_create_zpos_immutable_property(ptr noundef %call5, i32 noundef 0) #6
  br label %if.end21

if.end21:                                         ; preds = %if.else18, %if.then15
  %storemerge = phi i32 [ %call20, %if.else18 ], [ %call17, %if.then15 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge)
  %tobool22.not = icmp eq i32 %storemerge, 0
  br i1 %tobool22.not, label %if.end25, label %if.then23

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %5 = inttoptr i32 %storemerge to ptr
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %call27 = tail call i32 @drm_plane_create_color_properties(ptr noundef %call5, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end31, label %if.then29

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %6 = inttoptr i32 %call27 to ptr
  br label %cleanup

if.end31:                                         ; preds = %if.end25
  %7 = ptrtoint ptr %ipu10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ipu10, align 8
  %9 = ptrtoint ptr %dma11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma11, align 4
  %call.i = tail call ptr @ipu_idmac_get(ptr noundef %8, i32 noundef %10) #6
  %ipu_ch.i = getelementptr inbounds %struct.ipu_plane, ptr %call5, i32 0, i32 2
  %11 = ptrtoint ptr %ipu_ch.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %ipu_ch.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call.i to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21, i32 noundef %12) #6
  br label %if.then34

if.end.i:                                         ; preds = %if.end31
  %call5.i = tail call i32 @__drmm_add_action_or_reset(ptr noundef %dev, ptr noundef nonnull @ipu_plane_put_resources, ptr noundef %call5, ptr noundef nonnull @.str.22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end7.i, label %if.end.i.if.then34_crit_edge

if.end.i.if.then34_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then34

if.end7.i:                                        ; preds = %if.end.i
  %13 = ptrtoint ptr %dma11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma11, align 4
  %switch.tableidx = add i32 %14, -14
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %switch.tableidx)
  %15 = icmp ult i32 %switch.tableidx, 16
  br i1 %15, label %switch.hole_check, label %if.end7.i.if.end20.i_crit_edge

if.end7.i.if.end20.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

switch.hole_check:                                ; preds = %if.end7.i
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 -20989, %switch.maskindex
  %16 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %switch.lobit.not = icmp eq i16 %16, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end20.i_crit_edge, label %switch.lookup

switch.hole_check.if.end20.i_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [16 x i32], ptr @switch.table.ipu_plane_init, i32 0, i32 %switch.tableidx
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load = load i32, ptr %switch.gep, align 4
  %18 = ptrtoint ptr %ipu10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ipu10, align 8
  %call12.i = tail call ptr @ipu_idmac_get(ptr noundef %19, i32 noundef %switch.load) #6
  %alpha_ch13.i = getelementptr inbounds %struct.ipu_plane, ptr %call5, i32 0, i32 3
  %20 = ptrtoint ptr %alpha_ch13.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call12.i, ptr %alpha_ch13.i, align 8
  %cmp.i75.i = icmp ugt ptr %call12.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i75.i, label %if.then16.i, label %switch.lookup.if.end20.i_crit_edge

switch.lookup.if.end20.i_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.then16.i:                                      ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %call12.i to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %switch.load, i32 noundef %21) #6
  br label %if.then34

if.end20.i:                                       ; preds = %switch.lookup.if.end20.i_crit_edge, %switch.hole_check.if.end20.i_crit_edge, %if.end7.i.if.end20.i_crit_edge
  %22 = ptrtoint ptr %ipu10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ipu10, align 8
  %24 = ptrtoint ptr %dma11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma11, align 4
  %call23.i = tail call ptr @ipu_dmfc_get(ptr noundef %23, i32 noundef %25) #6
  %dmfc.i = getelementptr inbounds %struct.ipu_plane, ptr %call5, i32 0, i32 4
  %26 = ptrtoint ptr %dmfc.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call23.i, ptr %dmfc.i, align 4
  %cmp.i76.i = icmp ugt ptr %call23.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i76.i, label %if.then26.i, label %if.end29.i

if.then26.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %call23.i to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.24, i32 noundef %27) #6
  br label %if.then34

if.end29.i:                                       ; preds = %if.end20.i
  %28 = ptrtoint ptr %dp_flow to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dp_flow, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp30.i = icmp sgt i32 %29, -1
  br i1 %cmp30.i, label %if.then31.i, label %if.end29.i.cleanup_crit_edge

if.end29.i.cleanup_crit_edge:                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then31.i:                                      ; preds = %if.end29.i
  %30 = ptrtoint ptr %ipu10 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ipu10, align 8
  %call34.i = tail call ptr @ipu_dp_get(ptr noundef %31, i32 noundef %29) #6
  %dp.i = getelementptr inbounds %struct.ipu_plane, ptr %call5, i32 0, i32 5
  %32 = ptrtoint ptr %dp.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call34.i, ptr %dp.i, align 8
  %cmp.i77.i = icmp ugt ptr %call34.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i77.i, label %if.then37.i, label %if.then31.i.cleanup_crit_edge

if.then31.i.cleanup_crit_edge:                    ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then37.i:                                      ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %call34.i to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.25, i32 noundef %33) #6
  br label %if.then34

if.then34:                                        ; preds = %if.then37.i, %if.then26.i, %if.then16.i, %if.end.i.if.then34_crit_edge, %if.then.i
  %storemerge72 = phi i32 [ %call5.i, %if.end.i.if.then34_crit_edge ], [ %12, %if.then.i ], [ %21, %if.then16.i ], [ %27, %if.then26.i ], [ %33, %if.then37.i ]
  %34 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %storemerge72, ptr %ret, align 4
  %cond36 = select i1 %cmp, ptr @.str.4, ptr @.str.5
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6, ptr noundef nonnull %cond36, ptr noundef nonnull %ret) #6
  %35 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ret, align 4
  %37 = inttoptr i32 %36 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.then31.i.cleanup_crit_edge, %if.end29.i.cleanup_crit_edge, %if.then29, %if.then23, %if.then7
  %retval.0 = phi ptr [ %call5, %if.then7 ], [ %5, %if.then23 ], [ %6, %if.then29 ], [ %37, %if.then34 ], [ %call5, %if.then31.i.cleanup_crit_edge ], [ %call5, %if.end29.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #6
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__drmm_universal_plane_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_property(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_immutable_property(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_color_properties(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipu_plane_state_reset(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 16
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ne i32 %1, 1
  %cond = zext i1 %cmp to i32
  %state = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__drm_atomic_helper_plane_destroy_state(ptr noundef nonnull %3) #6
  tail call void @kfree(ptr noundef nonnull %3) #6
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 128) #9
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end.if.end12_crit_edge, label %if.then6

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__drm_atomic_helper_plane_reset(ptr noundef %plane, ptr noundef nonnull %call7.i.i) #6
  %zpos8 = getelementptr inbounds %struct.drm_plane_state, ptr %call7.i.i, i32 0, i32 15
  %6 = ptrtoint ptr %zpos8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %zpos8, align 8
  %normalized_zpos = getelementptr inbounds %struct.drm_plane_state, ptr %call7.i.i, i32 0, i32 16
  %7 = ptrtoint ptr %normalized_zpos to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond, ptr %normalized_zpos, align 4
  %color_encoding = getelementptr inbounds %struct.drm_plane_state, ptr %call7.i.i, i32 0, i32 17
  %8 = ptrtoint ptr %color_encoding to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %color_encoding, align 8
  %color_range = getelementptr inbounds %struct.drm_plane_state, ptr %call7.i.i, i32 0, i32 18
  %9 = ptrtoint ptr %color_range to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %color_range, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then6, %if.end.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ipu_plane_duplicate_state(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !72

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 326, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end24:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 128) #9
  %tobool25.not = icmp eq ptr %call7.i, null
  br i1 %tobool25.not, label %if.end24.cleanup_crit_edge, label %if.then26

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__drm_atomic_helper_plane_duplicate_state(ptr noundef %plane, ptr noundef nonnull %call7.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end24.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %call7.i, %if.then26 ], [ null, %if.end24.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipu_plane_destroy_state(ptr nocapture noundef readnone %plane, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__drm_atomic_helper_plane_destroy_state(ptr noundef %state) #6
  tail call void @kfree(ptr noundef %state) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ipu_plane_format_mod_supported(ptr nocapture noundef readonly %plane, i32 noundef %format, i64 noundef %modifier) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %modifier)
  %cmp = icmp eq i64 %modifier, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ipu1 = getelementptr inbounds %struct.ipu_plane, ptr %plane, i32 0, i32 1
  %0 = ptrtoint ptr %ipu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipu1, align 8
  %call2 = tail call zeroext i1 @ipu_prg_format_supported(ptr noundef %1, i32 noundef %format, i64 noundef %modifier) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call2, %if.end ], [ true, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_destroy_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipu_plane_atomic_check(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %dev3 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev3, align 4
  %fb4 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %fb4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fb4, align 4
  %fb5 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 2
  %14 = ptrtoint ptr %fb5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fb5, align 4
  %type = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 16
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp = icmp eq i32 %17, 0
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %18 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %crtc, align 4
  %tobool6.not = icmp eq ptr %19, null
  br i1 %tobool6.not, label %do.end, label %if.end31, !prof !72

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 390, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end31:                                         ; preds = %if.end
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %20 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %crtcs.i, align 4
  %index.i.i374 = getelementptr inbounds %struct.drm_crtc, ptr %19, i32 0, i32 8
  %22 = ptrtoint ptr %index.i.i374 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index.i.i374, align 4
  %state1.i = getelementptr %struct.__drm_crtcs_state, ptr %21, i32 %23, i32 1
  %24 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %state1.i, align 4
  %tobool35.not = icmp eq ptr %25, null
  br i1 %tobool35.not, label %do.end53, label %if.end69, !prof !72

do.end53:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 396, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end69:                                         ; preds = %if.end31
  %call71 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %5, ptr noundef nonnull %25, i32 noundef 65536, i32 noundef 65536, i1 noundef zeroext %cmp, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end74:                                         ; preds = %if.end69
  %enable = getelementptr inbounds %struct.drm_crtc_state, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %enable, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool75.not = icmp eq i8 %27, 0
  br i1 %tobool75.not, label %if.end74.cleanup_crit_edge, label %if.end77

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end77:                                         ; preds = %if.end74
  %28 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type, align 8
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i32 %29, label %do.end85 [
    i32 1, label %sw.bb
    i32 0, label %if.end77.sw.epilog_crit_edge
  ]

if.end77.sw.epilog_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end77
  %dst = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21
  %x2.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21, i32 2
  %31 = ptrtoint ptr %x2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %x2.i, align 4
  %33 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dst, align 4
  %sub.i = sub i32 %32, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %sub.i)
  %cmp80 = icmp slt i32 %sub.i, 13
  br i1 %cmp80, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end85:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.8, i32 noundef %29) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %if.end77.sw.epilog_crit_edge
  %dst87 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21
  %y2.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21, i32 3
  %35 = ptrtoint ptr %y2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %y2.i, align 4
  %y1.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21, i32 1
  %37 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %y1.i, align 4
  %sub.i375 = sub i32 %36, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i375)
  %cmp89 = icmp slt i32 %sub.i375, 2
  br i1 %cmp89, label %sw.epilog.cleanup_crit_edge, label %if.end91

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end91:                                         ; preds = %sw.epilog
  %tobool92.not = icmp eq ptr %15, null
  br i1 %tobool92.not, label %if.end91.if.end107_crit_edge, label %land.lhs.true

if.end91.if.end107_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107

land.lhs.true:                                    ; preds = %if.end91
  %x2.i376 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21, i32 2
  %39 = ptrtoint ptr %x2.i376 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %x2.i376, align 4
  %41 = ptrtoint ptr %dst87 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dst87, align 4
  %sub.i377 = sub i32 %40, %42
  %dst95 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 21
  %x2.i378 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 21, i32 2
  %43 = ptrtoint ptr %x2.i378 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %x2.i378, align 4
  %45 = ptrtoint ptr %dst95 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dst95, align 4
  %sub.i379 = sub i32 %44, %46
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i377, i32 %sub.i379)
  %cmp97.not = icmp eq i32 %sub.i377, %sub.i379
  br i1 %cmp97.not, label %lor.lhs.false, label %land.lhs.true.if.then106_crit_edge

land.lhs.true.if.then106_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then106

lor.lhs.false:                                    ; preds = %land.lhs.true
  %y2.i383 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 21, i32 3
  %47 = ptrtoint ptr %y2.i383 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %y2.i383, align 4
  %y1.i384 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 21, i32 1
  %49 = ptrtoint ptr %y1.i384 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %y1.i384, align 4
  %sub.i385 = sub i32 %48, %50
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i375, i32 %sub.i385)
  %cmp102.not = icmp eq i32 %sub.i375, %sub.i385
  br i1 %cmp102.not, label %lor.lhs.false103, label %lor.lhs.false.if.then106_crit_edge

lor.lhs.false.if.then106_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then106

lor.lhs.false103:                                 ; preds = %lor.lhs.false
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 4
  %51 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %format, align 8
  %format104 = getelementptr inbounds %struct.drm_framebuffer, ptr %15, i32 0, i32 4
  %53 = ptrtoint ptr %format104 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %format104, align 8
  %cmp105.not = icmp eq ptr %52, %54
  br i1 %cmp105.not, label %lor.lhs.false103.if.end107_crit_edge, label %lor.lhs.false103.if.then106_crit_edge

lor.lhs.false103.if.then106_crit_edge:            ; preds = %lor.lhs.false103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then106

lor.lhs.false103.if.end107_crit_edge:             ; preds = %lor.lhs.false103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107

if.then106:                                       ; preds = %lor.lhs.false103.if.then106_crit_edge, %lor.lhs.false.if.then106_crit_edge, %land.lhs.true.if.then106_crit_edge
  %mode_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %25, i32 0, i32 3
  %55 = ptrtoint ptr %mode_changed to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load = load i8, ptr %mode_changed, align 2
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %mode_changed, align 2
  br label %if.end107

if.end107:                                        ; preds = %if.then106, %lor.lhs.false103.if.end107_crit_edge, %if.end91.if.end107_crit_edge
  %56 = ptrtoint ptr %fb4 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fb4, align 4
  %src.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20
  %58 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %src.i, align 4
  %y1.i386 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20, i32 1
  %60 = ptrtoint ptr %y1.i386 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %y1.i386, align 4
  %call.i = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %57, i32 noundef 0) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.body7.i, label %drm_plane_state_to_eba.exit, !prof !72

do.body7.i:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/imx/ipuv3-plane.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 132, 0\0A.popsection", ""() #6, !srcloc !73
  unreachable

drm_plane_state_to_eba.exit:                      ; preds = %if.end107
  %62 = lshr i32 %61, 16
  %63 = lshr i32 %59, 16
  %paddr.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call.i, i32 0, i32 1
  %64 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %paddr.i, align 8
  %arrayidx.i = getelementptr %struct.drm_framebuffer, ptr %57, i32 0, i32 7, i32 0
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %67, %65
  %arrayidx13.i = getelementptr %struct.drm_framebuffer, ptr %57, i32 0, i32 6, i32 0
  %68 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx13.i, align 4
  %mul.i = mul i32 %69, %62
  %add14.i = add i32 %add.i, %mul.i
  %format.i = getelementptr inbounds %struct.drm_framebuffer, ptr %57, i32 0, i32 4
  %70 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %format.i, align 8
  %72 = getelementptr inbounds %struct.drm_format_info, ptr %71, i32 0, i32 3
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %72, align 1
  %conv.i = zext i8 %74 to i32
  %mul16.i = mul nuw nsw i32 %63, %conv.i
  %add17.i = add i32 %add14.i, %mul16.i
  %and = and i32 %add17.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool109.not = icmp eq i32 %and, 0
  br i1 %tobool109.not, label %if.end111, label %drm_plane_state_to_eba.exit.cleanup_crit_edge

drm_plane_state_to_eba.exit.cleanup_crit_edge:    ; preds = %drm_plane_state_to_eba.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end111:                                        ; preds = %drm_plane_state_to_eba.exit
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 6
  %75 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pitches, align 8
  %77 = add i32 %76, -16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16384, i32 %77)
  %78 = icmp ult i32 %77, -16384
  br i1 %78, label %if.end111.cleanup_crit_edge, label %if.end118

if.end111.cleanup_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end118:                                        ; preds = %if.end111
  br i1 %tobool92.not, label %if.end118.if.end131_crit_edge, label %land.lhs.true120

if.end118.if.end131_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end131

land.lhs.true120:                                 ; preds = %if.end118
  %pitches123 = getelementptr inbounds %struct.drm_framebuffer, ptr %15, i32 0, i32 6
  %79 = ptrtoint ptr %pitches123 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pitches123, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %80)
  %cmp125.not = icmp eq i32 %76, %80
  br i1 %cmp125.not, label %land.lhs.true120.if.end131_crit_edge, label %if.then126

land.lhs.true120.if.end131_crit_edge:             ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end131

if.then126:                                       ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #8
  %mode_changed127 = getelementptr inbounds %struct.drm_crtc_state, ptr %25, i32 0, i32 3
  %81 = ptrtoint ptr %mode_changed127 to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load128 = load i8, ptr %mode_changed127, align 2
  %bf.set130 = or i8 %bf.load128, 64
  store i8 %bf.set130, ptr %mode_changed127, align 2
  br label %if.end131

if.end131:                                        ; preds = %if.then126, %land.lhs.true120.if.end131_crit_edge, %if.end118.if.end131_crit_edge
  %width = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 9
  %82 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %width, align 8
  %add = add i32 %83, 7
  %and132 = and i32 %add, -8
  %format133 = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 4
  %84 = ptrtoint ptr %format133 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %format133, align 8
  %86 = getelementptr inbounds %struct.drm_format_info, ptr %85, i32 0, i32 3
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %86, align 2
  %conv = zext i8 %88 to i32
  %mul = mul i32 %and132, %conv
  %89 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %pitches, align 8
  %offsets = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 7
  %91 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %offsets, align 8
  %add138 = add i32 %92, %90
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %add138)
  %cmp139 = icmp ugt i32 %mul, %add138
  br i1 %cmp139, label %do.end144, label %if.end145

do.end144:                                        ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.13) #10
  br label %cleanup

if.end145:                                        ; preds = %if.end131
  %93 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %85, align 4
  %95 = zext i32 %94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %94, label %if.end145.sw.epilog278_crit_edge [
    i32 842093913, label %if.end145.sw.bb148_crit_edge
    i32 842094169, label %if.end145.sw.bb148_crit_edge391
    i32 909202777, label %if.end145.sw.bb148_crit_edge392
    i32 909203033, label %if.end145.sw.bb148_crit_edge393
    i32 875713881, label %if.end145.sw.bb148_crit_edge394
    i32 875714137, label %if.end145.sw.bb148_crit_edge395
    i32 842094158, label %if.end145.sw.bb182_crit_edge
    i32 909203022, label %if.end145.sw.bb182_crit_edge396
    i32 943797586, label %if.end145.sw.bb247_crit_edge
    i32 943797570, label %if.end145.sw.bb247_crit_edge397
    i32 943798354, label %if.end145.sw.bb247_crit_edge398
    i32 943798338, label %if.end145.sw.bb247_crit_edge399
    i32 943806546, label %if.end145.sw.bb247_crit_edge400
    i32 943806530, label %if.end145.sw.bb247_crit_edge401
  ]

if.end145.sw.bb247_crit_edge401:                  ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb247

if.end145.sw.bb247_crit_edge400:                  ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb247

if.end145.sw.bb247_crit_edge399:                  ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb247

if.end145.sw.bb247_crit_edge398:                  ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb247

if.end145.sw.bb247_crit_edge397:                  ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb247

if.end145.sw.bb247_crit_edge:                     ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb247

if.end145.sw.bb182_crit_edge396:                  ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb182

if.end145.sw.bb182_crit_edge:                     ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb182

if.end145.sw.bb148_crit_edge395:                  ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb148

if.end145.sw.bb148_crit_edge394:                  ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb148

if.end145.sw.bb148_crit_edge393:                  ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb148

if.end145.sw.bb148_crit_edge392:                  ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb148

if.end145.sw.bb148_crit_edge391:                  ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb148

if.end145.sw.bb148_crit_edge:                     ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb148

if.end145.sw.epilog278_crit_edge:                 ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog278

sw.bb148:                                         ; preds = %if.end145.sw.bb148_crit_edge, %if.end145.sw.bb148_crit_edge391, %if.end145.sw.bb148_crit_edge392, %if.end145.sw.bb148_crit_edge393, %if.end145.sw.bb148_crit_edge394, %if.end145.sw.bb148_crit_edge395
  %call149 = tail call fastcc i32 @drm_plane_state_to_vbo(ptr noundef %5)
  %and150 = and i32 %call149, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp ne i32 %and150, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777208, i32 %call149)
  %cmp153 = icmp ugt i32 %call149, 16777208
  %or.cond368 = or i1 %cmp153, %tobool151.not
  br i1 %or.cond368, label %sw.bb148.cleanup_crit_edge, label %if.end156

sw.bb148.cleanup_crit_edge:                       ; preds = %sw.bb148
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end156:                                        ; preds = %sw.bb148
  br i1 %tobool92.not, label %if.end156.if.end173_crit_edge, label %land.lhs.true158

if.end156.if.end173_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end173

land.lhs.true158:                                 ; preds = %if.end156
  %96 = ptrtoint ptr %format133 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %format133, align 8
  %format160 = getelementptr inbounds %struct.drm_framebuffer, ptr %15, i32 0, i32 4
  %98 = ptrtoint ptr %format160 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %format160, align 8
  %cmp161 = icmp eq ptr %97, %99
  br i1 %cmp161, label %if.then163, label %land.lhs.true158.if.end173_crit_edge

land.lhs.true158.if.end173_crit_edge:             ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end173

if.then163:                                       ; preds = %land.lhs.true158
  %call164 = tail call fastcc i32 @drm_plane_state_to_vbo(ptr noundef %7)
  call void @__sanitizer_cov_trace_cmp4(i32 %call149, i32 %call164)
  %cmp165.not = icmp eq i32 %call149, %call164
  br i1 %cmp165.not, label %if.then163.if.end173_crit_edge, label %if.then167

if.then163.if.end173_crit_edge:                   ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end173

if.then167:                                       ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #8
  %mode_changed168 = getelementptr inbounds %struct.drm_crtc_state, ptr %25, i32 0, i32 3
  %100 = ptrtoint ptr %mode_changed168 to i32
  call void @__asan_load1_noabort(i32 %100)
  %bf.load169 = load i8, ptr %mode_changed168, align 2
  %bf.set171 = or i8 %bf.load169, 64
  store i8 %bf.set171, ptr %mode_changed168, align 2
  br label %if.end173

if.end173:                                        ; preds = %if.then167, %if.then163.if.end173_crit_edge, %land.lhs.true158.if.end173_crit_edge, %if.end156.if.end173_crit_edge
  %arrayidx175 = getelementptr %struct.drm_framebuffer, ptr %13, i32 0, i32 6, i32 1
  %101 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx175, align 4
  %arrayidx177 = getelementptr %struct.drm_framebuffer, ptr %13, i32 0, i32 6, i32 2
  %103 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx177, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %104)
  %cmp178.not = icmp eq i32 %102, %104
  br i1 %cmp178.not, label %if.end173.sw.bb182_crit_edge, label %if.end173.cleanup_crit_edge

if.end173.cleanup_crit_edge:                      ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end173.sw.bb182_crit_edge:                     ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb182

sw.bb182:                                         ; preds = %if.end173.sw.bb182_crit_edge, %if.end145.sw.bb182_crit_edge, %if.end145.sw.bb182_crit_edge396
  %call183 = tail call fastcc i32 @drm_plane_state_to_ubo(ptr noundef %5)
  %and184 = and i32 %call183, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and184)
  %tobool185.not = icmp ne i32 %and184, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777208, i32 %call183)
  %cmp187 = icmp ugt i32 %call183, 16777208
  %or.cond369 = or i1 %cmp187, %tobool185.not
  br i1 %or.cond369, label %sw.bb182.cleanup_crit_edge, label %if.end190

sw.bb182.cleanup_crit_edge:                       ; preds = %sw.bb182
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end190:                                        ; preds = %sw.bb182
  br i1 %tobool92.not, label %if.end207.thread, label %land.lhs.true192

land.lhs.true192:                                 ; preds = %if.end190
  %105 = ptrtoint ptr %format133 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %format133, align 8
  %format194 = getelementptr inbounds %struct.drm_framebuffer, ptr %15, i32 0, i32 4
  %107 = ptrtoint ptr %format194 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %format194, align 8
  %cmp195 = icmp eq ptr %106, %108
  br i1 %cmp195, label %if.then197, label %land.lhs.true192.if.end207_crit_edge

land.lhs.true192.if.end207_crit_edge:             ; preds = %land.lhs.true192
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end207

if.then197:                                       ; preds = %land.lhs.true192
  %call198 = tail call fastcc i32 @drm_plane_state_to_ubo(ptr noundef %7)
  call void @__sanitizer_cov_trace_cmp4(i32 %call183, i32 %call198)
  %cmp199.not = icmp eq i32 %call183, %call198
  br i1 %cmp199.not, label %if.then197.if.end207_crit_edge, label %if.then201

if.then197.if.end207_crit_edge:                   ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end207

if.then201:                                       ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #8
  %mode_changed202 = getelementptr inbounds %struct.drm_crtc_state, ptr %25, i32 0, i32 3
  %109 = ptrtoint ptr %mode_changed202 to i32
  call void @__asan_load1_noabort(i32 %109)
  %bf.load203 = load i8, ptr %mode_changed202, align 2
  %bf.set205 = or i8 %bf.load203, 64
  store i8 %bf.set205, ptr %mode_changed202, align 2
  br label %if.end207

if.end207:                                        ; preds = %if.then201, %if.then197.if.end207_crit_edge, %land.lhs.true192.if.end207_crit_edge
  %arrayidx209 = getelementptr %struct.drm_framebuffer, ptr %13, i32 0, i32 6, i32 1
  %110 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx209, align 4
  %112 = add i32 %111, -16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16384, i32 %112)
  %113 = icmp ult i32 %112, -16384
  br i1 %113, label %if.end207.cleanup_crit_edge, label %land.lhs.true220.critedge

if.end207.cleanup_crit_edge:                      ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end207.thread:                                 ; preds = %if.end190
  %arrayidx209387 = getelementptr %struct.drm_framebuffer, ptr %13, i32 0, i32 6, i32 1
  %114 = ptrtoint ptr %arrayidx209387 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx209387, align 4
  %116 = add i32 %115, -16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16384, i32 %116)
  %117 = icmp ult i32 %116, -16384
  br i1 %117, label %if.end207.thread.cleanup_crit_edge, label %if.end207.thread.if.end232_crit_edge

if.end207.thread.if.end232_crit_edge:             ; preds = %if.end207.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end232

if.end207.thread.cleanup_crit_edge:               ; preds = %if.end207.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true220.critedge:                        ; preds = %if.end207
  %arrayidx222 = getelementptr %struct.drm_framebuffer, ptr %15, i32 0, i32 6, i32 1
  %118 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx222, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %119, i32 %111)
  %cmp225.not = icmp eq i32 %119, %111
  br i1 %cmp225.not, label %land.lhs.true220.critedge.if.end232_crit_edge, label %if.then227

land.lhs.true220.critedge.if.end232_crit_edge:    ; preds = %land.lhs.true220.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end232

if.then227:                                       ; preds = %land.lhs.true220.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %mode_changed228 = getelementptr inbounds %struct.drm_crtc_state, ptr %25, i32 0, i32 3
  %120 = ptrtoint ptr %mode_changed228 to i32
  call void @__asan_load1_noabort(i32 %120)
  %bf.load229 = load i8, ptr %mode_changed228, align 2
  %bf.set231 = or i8 %bf.load229, 64
  store i8 %bf.set231, ptr %mode_changed228, align 2
  br label %if.end232

if.end232:                                        ; preds = %if.then227, %land.lhs.true220.critedge.if.end232_crit_edge, %if.end207.thread.if.end232_crit_edge
  %121 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %src.i, align 4
  %shr = ashr i32 %122, 16
  %123 = ptrtoint ptr %format133 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %format133, align 8
  %hsub = getelementptr inbounds %struct.drm_format_info, ptr %124, i32 0, i32 6
  %125 = ptrtoint ptr %hsub to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %hsub, align 2
  %conv234 = zext i8 %126 to i32
  %sub = add nsw i32 %conv234, -1
  %and235 = and i32 %sub, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and235)
  %tobool236.not = icmp eq i32 %and235, 0
  br i1 %tobool236.not, label %lor.lhs.false237, label %if.end232.cleanup_crit_edge

if.end232.cleanup_crit_edge:                      ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false237:                                 ; preds = %if.end232
  %127 = ptrtoint ptr %y1.i386 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %y1.i386, align 4
  %shr239 = ashr i32 %128, 16
  %vsub = getelementptr inbounds %struct.drm_format_info, ptr %124, i32 0, i32 7
  %129 = ptrtoint ptr %vsub to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %vsub, align 1
  %conv241 = zext i8 %130 to i32
  %sub242 = add nsw i32 %conv241, -1
  %and243 = and i32 %sub242, %shr239
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and243)
  %tobool244.not = icmp eq i32 %and243, 0
  br i1 %tobool244.not, label %lor.lhs.false237.sw.epilog278_crit_edge, label %lor.lhs.false237.cleanup_crit_edge

lor.lhs.false237.cleanup_crit_edge:               ; preds = %lor.lhs.false237
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false237.sw.epilog278_crit_edge:          ; preds = %lor.lhs.false237
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog278

sw.bb247:                                         ; preds = %if.end145.sw.bb247_crit_edge, %if.end145.sw.bb247_crit_edge397, %if.end145.sw.bb247_crit_edge398, %if.end145.sw.bb247_crit_edge399, %if.end145.sw.bb247_crit_edge400, %if.end145.sw.bb247_crit_edge401
  %call248 = tail call fastcc i32 @drm_plane_state_to_eba(ptr noundef %5, i32 noundef 1)
  %and249 = and i32 %call248, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and249)
  %tobool250.not = icmp eq i32 %and249, 0
  br i1 %tobool250.not, label %if.end252, label %sw.bb247.cleanup_crit_edge

sw.bb247.cleanup_crit_edge:                       ; preds = %sw.bb247
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end252:                                        ; preds = %sw.bb247
  %arrayidx254 = getelementptr %struct.drm_framebuffer, ptr %13, i32 0, i32 6, i32 1
  %131 = ptrtoint ptr %arrayidx254 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx254, align 4
  %133 = add i32 %132, -16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16384, i32 %133)
  %134 = icmp ult i32 %133, -16384
  br i1 %134, label %if.end252.cleanup_crit_edge, label %if.end263

if.end252.cleanup_crit_edge:                      ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end263:                                        ; preds = %if.end252
  br i1 %tobool92.not, label %if.end263.sw.epilog278_crit_edge, label %land.lhs.true265

if.end263.sw.epilog278_crit_edge:                 ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog278

land.lhs.true265:                                 ; preds = %if.end263
  %arrayidx267 = getelementptr %struct.drm_framebuffer, ptr %15, i32 0, i32 6, i32 1
  %135 = ptrtoint ptr %arrayidx267 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx267, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %132)
  %cmp270.not = icmp eq i32 %136, %132
  br i1 %cmp270.not, label %land.lhs.true265.sw.epilog278_crit_edge, label %if.then272

land.lhs.true265.sw.epilog278_crit_edge:          ; preds = %land.lhs.true265
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog278

if.then272:                                       ; preds = %land.lhs.true265
  call void @__sanitizer_cov_trace_pc() #8
  %mode_changed273 = getelementptr inbounds %struct.drm_crtc_state, ptr %25, i32 0, i32 3
  %137 = ptrtoint ptr %mode_changed273 to i32
  call void @__asan_load1_noabort(i32 %137)
  %bf.load274 = load i8, ptr %mode_changed273, align 2
  %bf.set276 = or i8 %bf.load274, 64
  store i8 %bf.set276, ptr %mode_changed273, align 2
  br label %sw.epilog278

sw.epilog278:                                     ; preds = %if.then272, %land.lhs.true265.sw.epilog278_crit_edge, %if.end263.sw.epilog278_crit_edge, %lor.lhs.false237.sw.epilog278_crit_edge, %if.end145.sw.epilog278_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog278, %if.end252.cleanup_crit_edge, %sw.bb247.cleanup_crit_edge, %lor.lhs.false237.cleanup_crit_edge, %if.end232.cleanup_crit_edge, %if.end207.thread.cleanup_crit_edge, %if.end207.cleanup_crit_edge, %sw.bb182.cleanup_crit_edge, %if.end173.cleanup_crit_edge, %sw.bb148.cleanup_crit_edge, %do.end144, %if.end111.cleanup_crit_edge, %drm_plane_state_to_eba.exit.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end85, %sw.bb.cleanup_crit_edge, %if.end74.cleanup_crit_edge, %if.end69.cleanup_crit_edge, %do.end53, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end53 ], [ -22, %do.end85 ], [ -22, %do.end144 ], [ 0, %sw.epilog278 ], [ 0, %entry.cleanup_crit_edge ], [ %call71, %if.end69.cleanup_crit_edge ], [ 0, %if.end74.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %drm_plane_state_to_eba.exit.cleanup_crit_edge ], [ -22, %if.end111.cleanup_crit_edge ], [ -22, %sw.bb148.cleanup_crit_edge ], [ -22, %if.end173.cleanup_crit_edge ], [ -22, %sw.bb182.cleanup_crit_edge ], [ -22, %if.end207.cleanup_crit_edge ], [ -22, %lor.lhs.false237.cleanup_crit_edge ], [ -22, %if.end232.cleanup_crit_edge ], [ -22, %sw.bb247.cleanup_crit_edge ], [ -22, %if.end252.cleanup_crit_edge ], [ -22, %if.end207.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipu_plane_atomic_update(ptr noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  %eba = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtc, align 4
  %state4 = getelementptr inbounds %struct.drm_crtc, ptr %9, i32 0, i32 22
  %10 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state4, align 4
  %fb5 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %fb5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fb5, align 4
  %dst6 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eba) #6
  %14 = ptrtoint ptr %eba to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %eba, align 4, !annotation !74
  %dp_flow = getelementptr inbounds %struct.ipu_plane, ptr %plane, i32 0, i32 7
  %15 = ptrtoint ptr %dp_flow to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dp_flow, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp = icmp eq i32 %16, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dp = getelementptr inbounds %struct.ipu_plane, ptr %plane, i32 0, i32 5
  %17 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dp, align 8
  %19 = ptrtoint ptr %dst6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dst6, align 4
  %conv = trunc i32 %20 to i16
  %y1 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 21, i32 1
  %21 = ptrtoint ptr %y1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %y1, align 4
  %conv7 = trunc i32 %22 to i16
  %call8 = tail call i32 @ipu_dp_set_window_pos(ptr noundef %18, i16 noundef zeroext %conv, i16 noundef zeroext %conv7) #6
  %23 = ptrtoint ptr %dp_flow to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr = load i32, ptr %dp_flow, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %24 = phi i32 [ %.pr, %if.then ], [ %16, %entry.if.end_crit_edge ]
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %24, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb18
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %normalized_zpos = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 16
  %26 = ptrtoint ptr %normalized_zpos to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %normalized_zpos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp10 = icmp eq i32 %27, 1
  %dp13 = getelementptr inbounds %struct.ipu_plane, ptr %plane, i32 0, i32 5
  %28 = ptrtoint ptr %dp13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dp13, align 8
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 4
  %30 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %format, align 8
  %has_alpha = getelementptr inbounds %struct.drm_format_info, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %has_alpha to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %has_alpha, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not = icmp eq i8 %33, 0
  %call14 = tail call i32 @ipu_dp_set_global_alpha(ptr noundef %29, i1 noundef zeroext %tobool.not, i8 noundef zeroext -1, i1 noundef zeroext true) #6
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call i32 @ipu_dp_set_global_alpha(ptr noundef %29, i1 noundef zeroext true, i8 noundef zeroext 0, i1 noundef zeroext true) #6
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  %normalized_zpos19 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 16
  %34 = ptrtoint ptr %normalized_zpos19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %normalized_zpos19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp20 = icmp eq i32 %35, 1
  br i1 %cmp20, label %if.then22, label %sw.bb18.sw.epilog_crit_edge

sw.bb18.sw.epilog_crit_edge:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then22:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #8
  %dp23 = getelementptr inbounds %struct.ipu_plane, ptr %plane, i32 0, i32 5
  %36 = ptrtoint ptr %dp23 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dp23, align 8
  %format24 = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 4
  %38 = ptrtoint ptr %format24 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %format24, align 8
  %has_alpha25 = getelementptr inbounds %struct.drm_format_info, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %has_alpha25 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %has_alpha25, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool26.not = icmp eq i8 %41, 0
  %call28 = tail call i32 @ipu_dp_set_global_alpha(ptr noundef %37, i1 noundef zeroext %tobool26.not, i8 noundef zeroext -1, i1 noundef zeroext false) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then22, %sw.bb18.sw.epilog_crit_edge, %if.else, %if.then12, %if.end.sw.epilog_crit_edge
  %42 = ptrtoint ptr %fb5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fb5, align 4
  %src.i = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 20
  %44 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %src.i, align 4
  %y1.i = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 20, i32 1
  %46 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %y1.i, align 4
  %call.i = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %43, i32 noundef 0) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.body7.i, label %drm_plane_state_to_eba.exit, !prof !72

do.body7.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/imx/ipuv3-plane.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 132, 0\0A.popsection", ""() #6, !srcloc !73
  unreachable

drm_plane_state_to_eba.exit:                      ; preds = %sw.epilog
  %shr3.i = ashr i32 %47, 16
  %shr.i = ashr i32 %45, 16
  %paddr.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call.i, i32 0, i32 1
  %48 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %paddr.i, align 8
  %arrayidx.i = getelementptr %struct.drm_framebuffer, ptr %43, i32 0, i32 7, i32 0
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %51, %49
  %arrayidx13.i = getelementptr %struct.drm_framebuffer, ptr %43, i32 0, i32 6, i32 0
  %52 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx13.i, align 4
  %mul.i = mul i32 %53, %shr3.i
  %add14.i = add i32 %add.i, %mul.i
  %format.i = getelementptr inbounds %struct.drm_framebuffer, ptr %43, i32 0, i32 4
  %54 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %format.i, align 8
  %56 = getelementptr inbounds %struct.drm_format_info, ptr %55, i32 0, i32 3
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %56, align 1
  %conv.i = zext i8 %58 to i32
  %mul16.i = mul nsw i32 %shr.i, %conv.i
  %add17.i = add i32 %add14.i, %mul16.i
  %59 = ptrtoint ptr %eba to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %add17.i, ptr %eba, align 4
  %use_pre = getelementptr inbounds %struct.ipu_plane_state, ptr %7, i32 0, i32 1
  %60 = ptrtoint ptr %use_pre to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %use_pre, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool31.not = icmp eq i8 %61, 0
  br i1 %tobool31.not, label %drm_plane_state_to_eba.exit.if.end39_crit_edge, label %if.then32

drm_plane_state_to_eba.exit.if.end39_crit_edge:   ; preds = %drm_plane_state_to_eba.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then32:                                        ; preds = %drm_plane_state_to_eba.exit
  %dma = getelementptr inbounds %struct.ipu_plane, ptr %plane, i32 0, i32 6
  %62 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dma, align 4
  %switch.tableidx = add i32 %63, -23
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %64 = icmp ult i32 %switch.tableidx, 6
  br i1 %64, label %switch.lookup, label %if.then32.ipu_chan_assign_axi_id.exit_crit_edge

if.then32.ipu_chan_assign_axi_id.exit_crit_edge:  ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipu_chan_assign_axi_id.exit

switch.lookup:                                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.ipu_plane_atomic_update, i32 0, i32 %switch.tableidx
  %65 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %65)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %ipu_chan_assign_axi_id.exit

ipu_chan_assign_axi_id.exit:                      ; preds = %switch.lookup, %if.then32.ipu_chan_assign_axi_id.exit_crit_edge
  %retval.0.i446 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.then32.ipu_chan_assign_axi_id.exit_crit_edge ]
  %ipu_ch = getelementptr inbounds %struct.ipu_plane, ptr %plane, i32 0, i32 2
  %66 = ptrtoint ptr %ipu_ch to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ipu_ch, align 4
  %x2.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 20, i32 2
  %68 = ptrtoint ptr %x2.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %x2.i.i, align 4
  %70 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %src.i, align 4
  %sub.i.i = sub i32 %69, %71
  %shr.i448 = ashr i32 %sub.i.i, 16
  %add.i449 = add nsw i32 %shr.i448, 7
  %and.i = and i32 %add.i449, -8
  %y2.i = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 20, i32 3
  %72 = ptrtoint ptr %y2.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %y2.i, align 4
  %74 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %y1.i, align 4
  %sub.i = sub i32 %73, %75
  %shr = ashr i32 %sub.i, 16
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 6
  %76 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pitches, align 8
  %format36 = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 4
  %78 = ptrtoint ptr %format36 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %format36, align 8
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  %modifier = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 8
  %82 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %modifier, align 8
  %call38 = call i32 @ipu_prg_channel_configure(ptr noundef %67, i32 noundef %retval.0.i446, i32 noundef %and.i, i32 noundef %shr, i32 noundef %77, i32 noundef %81, i64 noundef %83, ptr noundef nonnull %eba) #6
  br label %if.end39

if.end39:                                         ; preds = %ipu_chan_assign_axi_id.exit, %drm_plane_state_to_eba.exit.if.end39_crit_edge
  %axi_id.0 = phi i32 [ %retval.0.i446, %ipu_chan_assign_axi_id.exit ], [ 0, %drm_plane_state_to_eba.exit.if.end39_crit_edge ]
  %fb40 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %84 = ptrtoint ptr %fb40 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %fb40, align 4
  %tobool41.not = icmp eq ptr %85, null
  br i1 %tobool41.not, label %if.end39.if.then57_crit_edge, label %lor.lhs.false

if.end39.if.then57_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then57

lor.lhs.false:                                    ; preds = %if.end39
  %format43 = getelementptr inbounds %struct.drm_framebuffer, ptr %85, i32 0, i32 4
  %86 = ptrtoint ptr %format43 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %format43, align 8
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 4
  %format45 = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 4
  %90 = ptrtoint ptr %format45 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %format45, align 8
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %91, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %93)
  %cmp47.not = icmp eq i32 %89, %93
  br i1 %cmp47.not, label %lor.lhs.false49, label %lor.lhs.false.if.then57_crit_edge

lor.lhs.false.if.then57_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then57

lor.lhs.false49:                                  ; preds = %lor.lhs.false
  %color_encoding = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 17
  %94 = ptrtoint ptr %color_encoding to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %color_encoding, align 4
  %color_encoding50 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 17
  %96 = ptrtoint ptr %color_encoding50 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %color_encoding50, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %97)
  %cmp51.not = icmp eq i32 %95, %97
  br i1 %cmp51.not, label %lor.lhs.false53, label %lor.lhs.false49.if.then57_crit_edge

lor.lhs.false49.if.then57_crit_edge:              ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then57

lor.lhs.false53:                                  ; preds = %lor.lhs.false49
  %color_range = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 18
  %98 = ptrtoint ptr %color_range to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %color_range, align 4
  %color_range54 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 18
  %100 = ptrtoint ptr %color_range54 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %color_range54, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %101)
  %cmp55.not = icmp eq i32 %99, %101
  br i1 %cmp55.not, label %lor.lhs.false53.if.end73_crit_edge, label %lor.lhs.false53.if.then57_crit_edge

lor.lhs.false53.if.then57_crit_edge:              ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then57

lor.lhs.false53.if.end73_crit_edge:               ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.then57:                                        ; preds = %lor.lhs.false53.if.then57_crit_edge, %lor.lhs.false49.if.then57_crit_edge, %lor.lhs.false.if.then57_crit_edge, %if.end39.if.then57_crit_edge
  %format58 = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 4
  %102 = ptrtoint ptr %format58 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %format58, align 8
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %103, align 4
  %call60 = call i32 @ipu_drm_fourcc_to_colorspace(i32 noundef %105) #6
  %106 = ptrtoint ptr %dp_flow to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %dp_flow, align 8
  %108 = zext i32 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %107, label %if.then57.if.end73_crit_edge [
    i32 0, label %if.then57.if.end73.sink.split_crit_edge
    i32 1, label %sw.bb67
  ]

if.then57.if.end73.sink.split_crit_edge:          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73.sink.split

if.then57.if.end73_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

sw.bb67:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73.sink.split

if.end73.sink.split:                              ; preds = %sw.bb67, %if.then57.if.end73.sink.split_crit_edge
  %.sink613 = phi i32 [ 2, %sw.bb67 ], [ %107, %if.then57.if.end73.sink.split_crit_edge ]
  %dp63 = getelementptr inbounds %struct.ipu_plane, ptr %plane, i32 0, i32 5
  %109 = ptrtoint ptr %dp63 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dp63, align 8
  %color_encoding64 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 17
  %111 = ptrtoint ptr %color_encoding64 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %color_encoding64, align 4
  %color_range65 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 18
  %113 = ptrtoint ptr %color_range65 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %color_range65, align 4
  %call66 = call i32 @ipu_dp_setup_channel(ptr noundef %110, i32 noundef %112, i32 noundef %114, i32 noundef %call60, i32 noundef %.sink613) #6
  br label %if.end73

if.end73:                                         ; preds = %if.end73.sink.split, %if.then57.if.end73_crit_edge, %lor.lhs.false53.if.end73_crit_edge
  %115 = ptrtoint ptr %fb40 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %fb40, align 4
  %tobool75.not = icmp eq ptr %116, null
  br i1 %tobool75.not, label %if.end73.if.end103_crit_edge, label %land.lhs.true

if.end73.if.end103_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end103

land.lhs.true:                                    ; preds = %if.end73
  %mode_changed.i = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 3
  %117 = ptrtoint ptr %mode_changed.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %bf.load.i = load i8, ptr %mode_changed.i, align 2
  %118 = and i8 %bf.load.i, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %.not = icmp eq i8 %118, 0
  br i1 %.not, label %if.then77, label %land.lhs.true.if.end103_crit_edge

land.lhs.true.if.end103_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end103

if.then77:                                        ; preds = %land.lhs.true
  %119 = ptrtoint ptr %use_pre to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %use_pre, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool79.not = icmp eq i8 %120, 0
  br i1 %tobool79.not, label %if.end81, label %if.then77.cleanup_crit_edge

if.then77.cleanup_crit_edge:                      ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end81:                                         ; preds = %if.then77
  %ipu_ch82 = getelementptr inbounds %struct.ipu_plane, ptr %plane, i32 0, i32 2
  %121 = ptrtoint ptr %ipu_ch82 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ipu_ch82, align 4
  %call83 = call i32 @ipu_idmac_get_current_buffer(ptr noundef %122) #6
  %123 = ptrtoint ptr %ipu_ch82 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ipu_ch82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool85.not = icmp eq i32 %call83, 0
  %lnot.ext = zext i1 %tobool85.not to i32
  %125 = ptrtoint ptr %eba to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %eba, align 4
  call void @ipu_cpmem_set_buffer(ptr noundef %124, i32 noundef %lnot.ext, i32 noundef %126) #6
  %127 = ptrtoint ptr %ipu_ch82 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ipu_ch82, align 4
  call void @ipu_idmac_select_buffer(ptr noundef %128, i32 noundef %lnot.ext) #6
  %state.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %129 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %state.i, align 4
  %fb.i = getelementptr inbounds %struct.drm_plane_state, ptr %130, i32 0, i32 2
  %131 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %fb.i, align 4
  %format.i451 = getelementptr inbounds %struct.drm_framebuffer, ptr %132, i32 0, i32 4
  %133 = ptrtoint ptr %format.i451 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %format.i451, align 8
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %134, align 4
  %137 = zext i32 %136 to i64
  call void @__sanitizer_cov_trace_switch(i64 %137, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %136, label %if.end81.cleanup_crit_edge [
    i32 943797586, label %if.end81.if.then92_crit_edge
    i32 943797570, label %if.end81.if.then92_crit_edge615
    i32 943798354, label %if.end81.if.then92_crit_edge616
    i32 943798338, label %if.end81.if.then92_crit_edge617
    i32 943806546, label %if.end81.if.then92_crit_edge618
    i32 943806530, label %if.end81.if.then92_crit_edge619
  ]

if.end81.if.then92_crit_edge619:                  ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then92

if.end81.if.then92_crit_edge618:                  ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then92

if.end81.if.then92_crit_edge617:                  ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then92

if.end81.if.then92_crit_edge616:                  ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then92

if.end81.if.then92_crit_edge615:                  ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then92

if.end81.if.then92_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then92

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then92:                                        ; preds = %if.end81.if.then92_crit_edge, %if.end81.if.then92_crit_edge615, %if.end81.if.then92_crit_edge616, %if.end81.if.then92_crit_edge617, %if.end81.if.then92_crit_edge618, %if.end81.if.then92_crit_edge619
  %alpha_ch = getelementptr inbounds %struct.ipu_plane, ptr %plane, i32 0, i32 3
  %138 = ptrtoint ptr %alpha_ch to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %alpha_ch, align 8
  %call93 = call i32 @ipu_idmac_get_current_buffer(ptr noundef %139) #6
  %140 = ptrtoint ptr %alpha_ch to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %alpha_ch, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool95.not = icmp eq i32 %call93, 0
  %lnot.ext97 = zext i1 %tobool95.not to i32
  call void @ipu_cpmem_set_buffer(ptr noundef %141, i32 noundef %lnot.ext97, i32 noundef 0) #6
  %142 = ptrtoint ptr %alpha_ch to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %alpha_ch, align 8
  call void @ipu_idmac_select_buffer(ptr noundef %143, i32 noundef %lnot.ext97) #6
  br label %cleanup

if.end103:                                        ; preds = %land.lhs.true.if.end103_crit_edge, %if.end73.if.end103_crit_edge
  %format104 = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 4
  %144 = ptrtoint ptr %format104 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %format104, align 8
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %145, align 4
  %call106 = call i32 @ipu_drm_fourcc_to_colorspace(i32 noundef %147) #6
  %148 = ptrtoint ptr %dp_flow to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %dp_flow, align 8
  %150 = zext i32 %149 to i64
  call void @__sanitizer_cov_trace_switch(i64 %150, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %149, label %if.end103.sw.epilog114_crit_edge [
    i32 0, label %if.end103.sw.epilog114.sink.split_crit_edge
    i32 1, label %sw.bb111
  ]

if.end103.sw.epilog114.sink.split_crit_edge:      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog114.sink.split

if.end103.sw.epilog114_crit_edge:                 ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog114

sw.bb111:                                         ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog114.sink.split

sw.epilog114.sink.split:                          ; preds = %sw.bb111, %if.end103.sw.epilog114.sink.split_crit_edge
  %.sink614 = phi i32 [ 2, %sw.bb111 ], [ %149, %if.end103.sw.epilog114.sink.split_crit_edge ]
  %dp112 = getelementptr inbounds %struct.ipu_plane, ptr %plane, i32 0, i32 5
  %151 = ptrtoint ptr %dp112 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dp112, align 8
  %call113 = call i32 @ipu_dp_setup_channel(ptr noundef %152, i32 noundef 0, i32 noundef 0, i32 noundef %call106, i32 noundef %.sink614) #6
  br label %sw.epilog114

sw.epilog114:                                     ; preds = %sw.epilog114.sink.split, %if.end103.sw.epilog114_crit_edge
  %dmfc = getelementptr inbounds %struct.ipu_plane, ptr %plane, i32 0, i32 4
  %153 = ptrtoint ptr %dmfc to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dmfc, align 4
  %x2.i = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 21, i32 2
  %155 = ptrtoint ptr %x2.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %x2.i, align 4
  %157 = ptrtoint ptr %dst6 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %dst6, align 4
  %sub.i454 = add i32 %156, 7
  %add = sub i32 %sub.i454, %158
  %and = and i32 %add, -8
  call void @ipu_dmfc_config_wait4eot(ptr noundef %154, i32 noundef %and) #6
  %x2.i.i456 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 20, i32 2
  %159 = ptrtoint ptr %x2.i.i456 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %x2.i.i456, align 4
  %161 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %src.i, align 4
  %sub.i.i457 = sub i32 %160, %162
  %shr.i458 = ashr i32 %sub.i.i457, 16
  %add.i459 = add nsw i32 %shr.i458, 7
  %and.i460 = and i32 %add.i459, -8
  %y2.i461 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 20, i32 3
  %163 = ptrtoint ptr %y2.i461 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %y2.i461, align 4
  %165 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %y1.i, align 4
  %sub.i463 = sub i32 %164, %166
  %shr119 = ashr i32 %sub.i463, 16
  %167 = ptrtoint ptr %format104 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %format104, align 8
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %168, align 4
  %call122 = call ptr @drm_format_info(i32 noundef %170) #6
  %171 = getelementptr inbounds %struct.drm_format_info, ptr %call122, i32 0, i32 3
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %171, align 2
  %conv124 = zext i8 %173 to i32
  %pitches125 = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 6
  %174 = ptrtoint ptr %pitches125 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %pitches125, align 8
  %mul.i464 = mul nsw i32 %and.i460, %conv124
  %div.i594 = udiv i8 64, %173
  %div.i.zext = zext i8 %div.i594 to i32
  %sub.i465 = add nsw i32 %mul.i464, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %173)
  %cmp.not35.i = icmp ugt i8 %173, 64
  br i1 %cmp.not35.i, label %sw.epilog114.for.end.i_crit_edge, label %sw.epilog114.for.body.i_crit_edge

sw.epilog114.for.body.i_crit_edge:                ; preds = %sw.epilog114
  br label %for.body.i

sw.epilog114.for.end.i_crit_edge:                 ; preds = %sw.epilog114
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.epilog114.for.body.i_crit_edge
  %npb.036.i = phi i32 [ %dec.i, %for.inc.i.for.body.i_crit_edge ], [ %div.i.zext, %sw.epilog114.for.body.i_crit_edge ]
  %mul1.i = mul i32 %npb.036.i, %conv124
  %sub2.i = add nsw i32 %mul1.i, -1
  %or.i = or i32 %sub2.i, %sub.i465
  %add.i466 = add i32 %or.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i466, i32 %175)
  %cmp3.not.i = icmp ugt i32 %add.i466, %175
  br i1 %cmp3.not.i, label %for.inc.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %dec.i = add nsw i32 %npb.036.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %sw.epilog114.for.end.i_crit_edge
  %npb.0.lcssa.i = phi i32 [ %div.i.zext, %sw.epilog114.for.end.i_crit_edge ], [ 0, %for.inc.i.for.end.i_crit_edge ], [ %npb.036.i, %for.body.i.for.end.i_crit_edge ]
  %mul9.i = mul i32 %npb.0.lcssa.i, %conv124
  %mul10.i = shl i32 %mul9.i, 3
  %sub11.i = add i32 %mul10.i, -1
  %or12.i = or i32 %sub11.i, %sub.i465
  %add13.i = add i32 %or12.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add13.i, i32 %175)
  %cmp14.not.i = icmp ugt i32 %add13.i, %175
  br i1 %cmp14.not.i, label %for.inc18.i, label %for.end.i.ipu_calculate_bursts.exit_crit_edge

for.end.i.ipu_calculate_bursts.exit_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipu_calculate_bursts.exit

for.inc18.i:                                      ; preds = %for.end.i
  %mul10.1.i = shl i32 %mul9.i, 2
  %sub11.1.i = add i32 %mul10.1.i, -1
  %or12.1.i = or i32 %sub11.1.i, %sub.i465
  %add13.1.i = add i32 %or12.1.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add13.1.i, i32 %175)
  %cmp14.not.1.i = icmp ugt i32 %add13.1.i, %175
  br i1 %cmp14.not.1.i, label %for.inc18.1.i, label %for.inc18.i.ipu_calculate_bursts.exit_crit_edge

for.inc18.i.ipu_calculate_bursts.exit_crit_edge:  ; preds = %for.inc18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipu_calculate_bursts.exit

for.inc18.1.i:                                    ; preds = %for.inc18.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul10.2.i = shl i32 %mul9.i, 1
  %sub11.2.i = add i32 %mul10.2.i, -1
  %or12.2.i = or i32 %sub11.2.i, %sub.i465
  %add13.2.i = add i32 %or12.2.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add13.2.i, i32 %175)
  %cmp14.not.2.i = icmp ugt i32 %add13.2.i, %175
  %spec.select.i = select i1 %cmp14.not.2.i, i8 1, i8 2
  br label %ipu_calculate_bursts.exit

ipu_calculate_bursts.exit:                        ; preds = %for.inc18.1.i, %for.inc18.i.ipu_calculate_bursts.exit_crit_edge, %for.end.i.ipu_calculate_bursts.exit_crit_edge
  %bursts.0.lcssa.i = phi i8 [ 8, %for.end.i.ipu_calculate_bursts.exit_crit_edge ], [ 4, %for.inc18.i.ipu_calculate_bursts.exit_crit_edge ], [ %spec.select.i, %for.inc18.1.i ]
  %ipu_ch127 = getelementptr inbounds %struct.ipu_plane, ptr %plane, i32 0, i32 2
  %176 = ptrtoint ptr %ipu_ch127 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %ipu_ch127, align 4
  call void @ipu_cpmem_zero(ptr noundef %177) #6
  %178 = ptrtoint ptr %ipu_ch127 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %ipu_ch127, align 4
  call void @ipu_cpmem_set_resolution(ptr noundef %179, i32 noundef %and.i460, i32 noundef %shr119) #6
  %180 = ptrtoint ptr %ipu_ch127 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %ipu_ch127, align 4
  %182 = ptrtoint ptr %format104 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %format104, align 8
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %183, align 4
  %call132 = call i32 @ipu_cpmem_set_fmt(ptr noundef %181, i32 noundef %185) #6
  %186 = ptrtoint ptr %ipu_ch127 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %ipu_ch127, align 4
  %conv134 = and i32 %npb.0.lcssa.i, 255
  call void @ipu_cpmem_set_burstsize(ptr noundef %187, i32 noundef %conv134) #6
  %188 = ptrtoint ptr %ipu_ch127 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %ipu_ch127, align 4
  call void @ipu_cpmem_set_high_priority(ptr noundef %189) #6
  %190 = ptrtoint ptr %ipu_ch127 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %ipu_ch127, align 4
  call void @ipu_idmac_enable_watermark(ptr noundef %191, i1 noundef zeroext true) #6
  %192 = ptrtoint ptr %ipu_ch127 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %ipu_ch127, align 4
  call void @ipu_idmac_set_double_buffer(ptr noundef %193, i1 noundef zeroext true) #6
  %194 = ptrtoint ptr %ipu_ch127 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %ipu_ch127, align 4
  %196 = ptrtoint ptr %pitches125 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %pitches125, align 8
  call void @ipu_cpmem_set_stride(ptr noundef %195, i32 noundef %197) #6
  %198 = ptrtoint ptr %ipu_ch127 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %ipu_ch127, align 4
  call void @ipu_cpmem_set_axi_id(ptr noundef %199, i32 noundef %axi_id.0) #6
  %200 = ptrtoint ptr %format104 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %format104, align 8
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %201, align 4
  %204 = zext i32 %203 to i64
  call void @__sanitizer_cov_trace_switch(i64 %204, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %203, label %do.body259 [
    i32 842093913, label %ipu_calculate_bursts.exit.sw.bb144_crit_edge
    i32 842094169, label %ipu_calculate_bursts.exit.sw.bb144_crit_edge620
    i32 909202777, label %ipu_calculate_bursts.exit.sw.bb144_crit_edge621
    i32 909203033, label %ipu_calculate_bursts.exit.sw.bb144_crit_edge622
    i32 875713881, label %ipu_calculate_bursts.exit.sw.bb144_crit_edge623
    i32 875714137, label %ipu_calculate_bursts.exit.sw.bb144_crit_edge624
    i32 842094158, label %ipu_calculate_bursts.exit.sw.bb185_crit_edge
    i32 909203022, label %ipu_calculate_bursts.exit.sw.bb185_crit_edge625
    i32 943797586, label %ipu_calculate_bursts.exit.sw.bb215_crit_edge
    i32 943797570, label %ipu_calculate_bursts.exit.sw.bb215_crit_edge626
    i32 943798354, label %ipu_calculate_bursts.exit.sw.bb215_crit_edge627
    i32 943798338, label %ipu_calculate_bursts.exit.sw.bb215_crit_edge628
    i32 943806546, label %ipu_calculate_bursts.exit.sw.bb215_crit_edge629
    i32 943806530, label %ipu_calculate_bursts.exit.sw.bb215_crit_edge630
  ]

ipu_calculate_bursts.exit.sw.bb215_crit_edge630:  ; preds = %ipu_calculate_bursts.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb215

ipu_calculate_bursts.exit.sw.bb215_crit_edge629:  ; preds = %ipu_calculate_bursts.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb215

ipu_calculate_bursts.exit.sw.bb215_crit_edge628:  ; preds = %ipu_calculate_bursts.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb215

ipu_calculate_bursts.exit.sw.bb215_crit_edge627:  ; preds = %ipu_calculate_bursts.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb215

ipu_calculate_bursts.exit.sw.bb215_crit_edge626:  ; preds = %ipu_calculate_bursts.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb215

ipu_calculate_bursts.exit.sw.bb215_crit_edge:     ; preds = %ipu_calculate_bursts.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb215

ipu_calculate_bursts.exit.sw.bb185_crit_edge625:  ; preds = %ipu_calculate_bursts.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb185

ipu_calculate_bursts.exit.sw.bb185_crit_edge:     ; preds = %ipu_calculate_bursts.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb185

ipu_calculate_bursts.exit.sw.bb144_crit_edge624:  ; preds = %ipu_calculate_bursts.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb144

ipu_calculate_bursts.exit.sw.bb144_crit_edge623:  ; preds = %ipu_calculate_bursts.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb144

ipu_calculate_bursts.exit.sw.bb144_crit_edge622:  ; preds = %ipu_calculate_bursts.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb144

ipu_calculate_bursts.exit.sw.bb144_crit_edge621:  ; preds = %ipu_calculate_bursts.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb144

ipu_calculate_bursts.exit.sw.bb144_crit_edge620:  ; preds = %ipu_calculate_bursts.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb144

ipu_calculate_bursts.exit.sw.bb144_crit_edge:     ; preds = %ipu_calculate_bursts.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb144

sw.bb144:                                         ; preds = %ipu_calculate_bursts.exit.sw.bb144_crit_edge, %ipu_calculate_bursts.exit.sw.bb144_crit_edge620, %ipu_calculate_bursts.exit.sw.bb144_crit_edge621, %ipu_calculate_bursts.exit.sw.bb144_crit_edge622, %ipu_calculate_bursts.exit.sw.bb144_crit_edge623, %ipu_calculate_bursts.exit.sw.bb144_crit_edge624
  %205 = ptrtoint ptr %fb5 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %fb5, align 4
  %207 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %src.i, align 4
  %209 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %y1.i, align 4
  %call.i.i = call ptr @drm_fb_cma_get_gem_obj(ptr noundef %206, i32 noundef 0) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %do.body7.i.i, label %drm_plane_state_to_eba.exit.i, !prof !72

do.body7.i.i:                                     ; preds = %sw.bb144
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/imx/ipuv3-plane.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 132, 0\0A.popsection", ""() #6, !srcloc !73
  unreachable

drm_plane_state_to_eba.exit.i:                    ; preds = %sw.bb144
  %paddr.i.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call.i.i, i32 0, i32 1
  %211 = ptrtoint ptr %paddr.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %paddr.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.drm_framebuffer, ptr %206, i32 0, i32 7, i32 0
  %213 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx13.i.i = getelementptr %struct.drm_framebuffer, ptr %206, i32 0, i32 6, i32 0
  %215 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %arrayidx13.i.i, align 4
  %format.i.i = getelementptr inbounds %struct.drm_framebuffer, ptr %206, i32 0, i32 4
  %217 = ptrtoint ptr %format.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %format.i.i, align 8
  %219 = getelementptr inbounds %struct.drm_format_info, ptr %218, i32 0, i32 3
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %219, align 1
  %222 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %src.i, align 4
  %224 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %y1.i, align 4
  %call4.i = call ptr @drm_fb_cma_get_gem_obj(ptr noundef %206, i32 noundef 1) #6
  %tobool.not.i469 = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i469, label %do.body8.i, label %drm_plane_state_to_ubo.exit, !prof !72

do.body8.i:                                       ; preds = %drm_plane_state_to_eba.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/imx/ipuv3-plane.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 148, 0\0A.popsection", ""() #6, !srcloc !75
  unreachable

drm_plane_state_to_ubo.exit:                      ; preds = %drm_plane_state_to_eba.exit.i
  %shr3.i.i = ashr i32 %210, 16
  %shr.i.i = ashr i32 %208, 16
  %conv.i.i = zext i8 %221 to i32
  %226 = lshr i32 %225, 16
  %227 = lshr i32 %223, 16
  %228 = ptrtoint ptr %format.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %format.i.i, align 8
  %hsub.i = getelementptr inbounds %struct.drm_format_info, ptr %229, i32 0, i32 6
  %230 = ptrtoint ptr %hsub.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %hsub.i, align 2
  %div.lhs.trunc.i = trunc i32 %227 to i16
  %div.rhs.trunc.i = zext i8 %231 to i16
  %div35.i = sdiv i16 %div.lhs.trunc.i, %div.rhs.trunc.i
  %div.sext.i = sext i16 %div35.i to i32
  %vsub.i = getelementptr inbounds %struct.drm_format_info, ptr %229, i32 0, i32 7
  %232 = ptrtoint ptr %vsub.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %vsub.i, align 1
  %div16.lhs.trunc.i = trunc i32 %226 to i16
  %div16.rhs.trunc.i = zext i8 %233 to i16
  %div1636.i = sdiv i16 %div16.lhs.trunc.i, %div16.rhs.trunc.i
  %div16.sext.i = sext i16 %div1636.i to i32
  %paddr.i470 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call4.i, i32 0, i32 1
  %234 = ptrtoint ptr %paddr.i470 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %paddr.i470, align 8
  %arrayidx.i471 = getelementptr %struct.drm_framebuffer, ptr %206, i32 0, i32 7, i32 1
  %236 = ptrtoint ptr %arrayidx.i471 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %arrayidx.i471, align 4
  %arrayidx17.i = getelementptr %struct.drm_framebuffer, ptr %206, i32 0, i32 6, i32 1
  %238 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %arrayidx17.i, align 4
  %mul.i472 = mul i32 %239, %div16.sext.i
  %arrayidx20.i = getelementptr %struct.drm_format_info, ptr %229, i32 0, i32 3, i32 0, i32 1
  %240 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %arrayidx20.i, align 1
  %conv21.i = zext i8 %241 to i32
  %mul22.i = mul nsw i32 %conv21.i, %div.sext.i
  %mul.i.neg.i.neg = mul i32 %216, %shr3.i.i
  %mul16.i.neg.i.neg = mul nsw i32 %shr.i.i, %conv.i.i
  %reass.add603 = add i32 %mul16.i.neg.i.neg, %mul.i.neg.i.neg
  %242 = add i32 %214, %212
  %243 = add i32 %242, %reass.add603
  %add.i473 = sub i32 %235, %243
  %add18.i = add i32 %add.i473, %237
  %add23.i = add i32 %add18.i, %mul.i472
  %sub.i474 = add i32 %add23.i, %mul22.i
  %244 = ptrtoint ptr %fb5 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %fb5, align 4
  %246 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %src.i, align 4
  %248 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %y1.i, align 4
  %call.i.i478 = call ptr @drm_fb_cma_get_gem_obj(ptr noundef %245, i32 noundef 0) #6
  %tobool.not.i.i479 = icmp eq ptr %call.i.i478, null
  br i1 %tobool.not.i.i479, label %do.body7.i.i480, label %drm_plane_state_to_eba.exit.i487, !prof !72

do.body7.i.i480:                                  ; preds = %drm_plane_state_to_ubo.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/imx/ipuv3-plane.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 132, 0\0A.popsection", ""() #6, !srcloc !73
  unreachable

drm_plane_state_to_eba.exit.i487:                 ; preds = %drm_plane_state_to_ubo.exit
  %paddr.i.i481 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call.i.i478, i32 0, i32 1
  %250 = ptrtoint ptr %paddr.i.i481 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %paddr.i.i481, align 8
  %arrayidx.i.i482 = getelementptr %struct.drm_framebuffer, ptr %245, i32 0, i32 7, i32 0
  %252 = ptrtoint ptr %arrayidx.i.i482 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %arrayidx.i.i482, align 4
  %arrayidx13.i.i483 = getelementptr %struct.drm_framebuffer, ptr %245, i32 0, i32 6, i32 0
  %254 = ptrtoint ptr %arrayidx13.i.i483 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %arrayidx13.i.i483, align 4
  %format.i.i484 = getelementptr inbounds %struct.drm_framebuffer, ptr %245, i32 0, i32 4
  %256 = ptrtoint ptr %format.i.i484 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %format.i.i484, align 8
  %258 = getelementptr inbounds %struct.drm_format_info, ptr %257, i32 0, i32 3
  %259 = ptrtoint ptr %258 to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %258, align 1
  %261 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %src.i, align 4
  %263 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %y1.i, align 4
  %call4.i485 = call ptr @drm_fb_cma_get_gem_obj(ptr noundef %245, i32 noundef 2) #6
  %tobool.not.i486 = icmp eq ptr %call4.i485, null
  br i1 %tobool.not.i486, label %do.body8.i488, label %drm_plane_state_to_vbo.exit, !prof !72

do.body8.i488:                                    ; preds = %drm_plane_state_to_eba.exit.i487
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/imx/ipuv3-plane.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 167, 0\0A.popsection", ""() #6, !srcloc !76
  unreachable

drm_plane_state_to_vbo.exit:                      ; preds = %drm_plane_state_to_eba.exit.i487
  %shr3.i.i489 = ashr i32 %249, 16
  %shr.i.i490 = ashr i32 %247, 16
  %conv.i.i491 = zext i8 %260 to i32
  %265 = lshr i32 %264, 16
  %266 = lshr i32 %262, 16
  %267 = ptrtoint ptr %format.i.i484 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %format.i.i484, align 8
  %hsub.i492 = getelementptr inbounds %struct.drm_format_info, ptr %268, i32 0, i32 6
  %269 = ptrtoint ptr %hsub.i492 to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %hsub.i492, align 2
  %div.lhs.trunc.i493 = trunc i32 %266 to i16
  %div.rhs.trunc.i494 = zext i8 %270 to i16
  %div35.i495 = sdiv i16 %div.lhs.trunc.i493, %div.rhs.trunc.i494
  %div.sext.i496 = sext i16 %div35.i495 to i32
  %vsub.i497 = getelementptr inbounds %struct.drm_format_info, ptr %268, i32 0, i32 7
  %271 = ptrtoint ptr %vsub.i497 to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %vsub.i497, align 1
  %div16.lhs.trunc.i498 = trunc i32 %265 to i16
  %div16.rhs.trunc.i499 = zext i8 %272 to i16
  %div1636.i500 = sdiv i16 %div16.lhs.trunc.i498, %div16.rhs.trunc.i499
  %div16.sext.i501 = sext i16 %div1636.i500 to i32
  %paddr.i502 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call4.i485, i32 0, i32 1
  %273 = ptrtoint ptr %paddr.i502 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %paddr.i502, align 8
  %arrayidx.i503 = getelementptr %struct.drm_framebuffer, ptr %245, i32 0, i32 7, i32 2
  %275 = ptrtoint ptr %arrayidx.i503 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %arrayidx.i503, align 8
  %arrayidx17.i504 = getelementptr %struct.drm_framebuffer, ptr %245, i32 0, i32 6, i32 2
  %277 = ptrtoint ptr %arrayidx17.i504 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %arrayidx17.i504, align 8
  %mul.i505 = mul i32 %278, %div16.sext.i501
  %arrayidx20.i506 = getelementptr %struct.drm_format_info, ptr %268, i32 0, i32 3, i32 0, i32 2
  %279 = ptrtoint ptr %arrayidx20.i506 to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %arrayidx20.i506, align 2
  %conv21.i507 = zext i8 %280 to i32
  %mul22.i508 = mul nsw i32 %conv21.i507, %div.sext.i496
  %mul.i.neg.i509.neg = mul i32 %255, %shr3.i.i489
  %mul16.i.neg.i510.neg = mul nsw i32 %shr.i.i490, %conv.i.i491
  %reass.add609 = add i32 %mul16.i.neg.i510.neg, %mul.i.neg.i509.neg
  %281 = add i32 %253, %251
  %282 = add i32 %281, %reass.add609
  %add.i512 = sub i32 %274, %282
  %add18.i513 = add i32 %add.i512, %276
  %add23.i514 = add i32 %add18.i513, %mul.i505
  %sub.i515 = add i32 %add23.i514, %mul22.i508
  %283 = ptrtoint ptr %format104 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %format104, align 8
  %285 = ptrtoint ptr %284 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %284, align 4
  %287 = zext i32 %286 to i64
  call void @__sanitizer_cov_trace_switch(i64 %287, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %286, label %drm_plane_state_to_vbo.exit.if.end162_crit_edge [
    i32 842094169, label %drm_plane_state_to_vbo.exit.do.body_crit_edge
    i32 909203033, label %drm_plane_state_to_vbo.exit.do.body_crit_edge631
    i32 875714137, label %drm_plane_state_to_vbo.exit.do.body_crit_edge632
  ]

drm_plane_state_to_vbo.exit.do.body_crit_edge632: ; preds = %drm_plane_state_to_vbo.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

drm_plane_state_to_vbo.exit.do.body_crit_edge631: ; preds = %drm_plane_state_to_vbo.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

drm_plane_state_to_vbo.exit.do.body_crit_edge:    ; preds = %drm_plane_state_to_vbo.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

drm_plane_state_to_vbo.exit.if.end162_crit_edge:  ; preds = %drm_plane_state_to_vbo.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end162

do.body:                                          ; preds = %drm_plane_state_to_vbo.exit.do.body_crit_edge, %drm_plane_state_to_vbo.exit.do.body_crit_edge631, %drm_plane_state_to_vbo.exit.do.body_crit_edge632
  br label %if.end162

if.end162:                                        ; preds = %do.body, %drm_plane_state_to_vbo.exit.if.end162_crit_edge
  %vbo.0 = phi i32 [ %sub.i474, %do.body ], [ %sub.i515, %drm_plane_state_to_vbo.exit.if.end162_crit_edge ]
  %ubo.0 = phi i32 [ %sub.i515, %do.body ], [ %sub.i474, %drm_plane_state_to_vbo.exit.if.end162_crit_edge ]
  %288 = ptrtoint ptr %ipu_ch127 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %ipu_ch127, align 4
  %arrayidx165 = getelementptr %struct.drm_framebuffer, ptr %13, i32 0, i32 6, i32 1
  %290 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %arrayidx165, align 4
  call void @ipu_cpmem_set_yuv_planar_full(ptr noundef %289, i32 noundef %291, i32 noundef %ubo.0, i32 noundef %vbo.0) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipu_plane_atomic_update.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipu_plane_atomic_update, %if.then174)) #6
          to label %sw.epilog284 [label %if.then174], !srcloc !77

if.then174:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #8
  %292 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %plane, align 8
  %dev175 = getelementptr inbounds %struct.drm_device, ptr %293, i32 0, i32 2
  %294 = ptrtoint ptr %dev175 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %dev175, align 4
  %296 = ptrtoint ptr %eba to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %eba, align 4
  %298 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %src.i, align 4
  %shr178 = ashr i32 %299, 16
  %300 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %y1.i, align 4
  %shr181 = ashr i32 %301, 16
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipu_plane_atomic_update.__UNIQUE_ID_ddebug316, ptr noundef %295, ptr noundef nonnull @.str.17, i32 noundef %297, i32 noundef %ubo.0, i32 noundef %vbo.0, i32 noundef %shr178, i32 noundef %shr181) #6
  br label %sw.epilog284

sw.bb185:                                         ; preds = %ipu_calculate_bursts.exit.sw.bb185_crit_edge, %ipu_calculate_bursts.exit.sw.bb185_crit_edge625
  %302 = ptrtoint ptr %fb5 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %fb5, align 4
  %304 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %src.i, align 4
  %306 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %y1.i, align 4
  %call.i.i519 = call ptr @drm_fb_cma_get_gem_obj(ptr noundef %303, i32 noundef 0) #6
  %tobool.not.i.i520 = icmp eq ptr %call.i.i519, null
  br i1 %tobool.not.i.i520, label %do.body7.i.i521, label %drm_plane_state_to_eba.exit.i528, !prof !72

do.body7.i.i521:                                  ; preds = %sw.bb185
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/imx/ipuv3-plane.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 132, 0\0A.popsection", ""() #6, !srcloc !73
  unreachable

drm_plane_state_to_eba.exit.i528:                 ; preds = %sw.bb185
  %paddr.i.i522 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call.i.i519, i32 0, i32 1
  %308 = ptrtoint ptr %paddr.i.i522 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %paddr.i.i522, align 8
  %arrayidx.i.i523 = getelementptr %struct.drm_framebuffer, ptr %303, i32 0, i32 7, i32 0
  %310 = ptrtoint ptr %arrayidx.i.i523 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %arrayidx.i.i523, align 4
  %arrayidx13.i.i524 = getelementptr %struct.drm_framebuffer, ptr %303, i32 0, i32 6, i32 0
  %312 = ptrtoint ptr %arrayidx13.i.i524 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %arrayidx13.i.i524, align 4
  %format.i.i525 = getelementptr inbounds %struct.drm_framebuffer, ptr %303, i32 0, i32 4
  %314 = ptrtoint ptr %format.i.i525 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %format.i.i525, align 8
  %316 = getelementptr inbounds %struct.drm_format_info, ptr %315, i32 0, i32 3
  %317 = ptrtoint ptr %316 to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %316, align 1
  %319 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %src.i, align 4
  %321 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %y1.i, align 4
  %call4.i526 = call ptr @drm_fb_cma_get_gem_obj(ptr noundef %303, i32 noundef 1) #6
  %tobool.not.i527 = icmp eq ptr %call4.i526, null
  br i1 %tobool.not.i527, label %do.body8.i529, label %drm_plane_state_to_ubo.exit557, !prof !72

do.body8.i529:                                    ; preds = %drm_plane_state_to_eba.exit.i528
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/imx/ipuv3-plane.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 148, 0\0A.popsection", ""() #6, !srcloc !75
  unreachable

drm_plane_state_to_ubo.exit557:                   ; preds = %drm_plane_state_to_eba.exit.i528
  call void @__sanitizer_cov_trace_pc() #8
  %shr3.i.i530 = ashr i32 %307, 16
  %shr.i.i531 = ashr i32 %305, 16
  %conv.i.i532 = zext i8 %318 to i32
  %323 = lshr i32 %322, 16
  %324 = lshr i32 %320, 16
  %325 = ptrtoint ptr %format.i.i525 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %format.i.i525, align 8
  %hsub.i533 = getelementptr inbounds %struct.drm_format_info, ptr %326, i32 0, i32 6
  %327 = ptrtoint ptr %hsub.i533 to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %hsub.i533, align 2
  %div.lhs.trunc.i534 = trunc i32 %324 to i16
  %div.rhs.trunc.i535 = zext i8 %328 to i16
  %div35.i536 = sdiv i16 %div.lhs.trunc.i534, %div.rhs.trunc.i535
  %div.sext.i537 = sext i16 %div35.i536 to i32
  %vsub.i538 = getelementptr inbounds %struct.drm_format_info, ptr %326, i32 0, i32 7
  %329 = ptrtoint ptr %vsub.i538 to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %vsub.i538, align 1
  %div16.lhs.trunc.i539 = trunc i32 %323 to i16
  %div16.rhs.trunc.i540 = zext i8 %330 to i16
  %div1636.i541 = sdiv i16 %div16.lhs.trunc.i539, %div16.rhs.trunc.i540
  %div16.sext.i542 = sext i16 %div1636.i541 to i32
  %paddr.i543 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call4.i526, i32 0, i32 1
  %331 = ptrtoint ptr %paddr.i543 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %paddr.i543, align 8
  %arrayidx.i544 = getelementptr %struct.drm_framebuffer, ptr %303, i32 0, i32 7, i32 1
  %333 = ptrtoint ptr %arrayidx.i544 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %arrayidx.i544, align 4
  %arrayidx17.i545 = getelementptr %struct.drm_framebuffer, ptr %303, i32 0, i32 6, i32 1
  %335 = ptrtoint ptr %arrayidx17.i545 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %arrayidx17.i545, align 4
  %mul.i546 = mul i32 %336, %div16.sext.i542
  %arrayidx20.i547 = getelementptr %struct.drm_format_info, ptr %326, i32 0, i32 3, i32 0, i32 1
  %337 = ptrtoint ptr %arrayidx20.i547 to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %arrayidx20.i547, align 1
  %conv21.i548 = zext i8 %338 to i32
  %mul22.i549 = mul nsw i32 %conv21.i548, %div.sext.i537
  %mul.i.neg.i550.neg = mul i32 %313, %shr3.i.i530
  %mul16.i.neg.i551.neg = mul nsw i32 %shr.i.i531, %conv.i.i532
  %reass.add = add i32 %mul16.i.neg.i551.neg, %mul.i.neg.i550.neg
  %339 = add i32 %311, %309
  %340 = add i32 %339, %reass.add
  %add.i553 = sub i32 %332, %340
  %add18.i554 = add i32 %add.i553, %334
  %add23.i555 = add i32 %add18.i554, %mul.i546
  %sub.i556 = add i32 %add23.i555, %mul22.i549
  %341 = ptrtoint ptr %ipu_ch127 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %ipu_ch127, align 4
  %arrayidx189 = getelementptr %struct.drm_framebuffer, ptr %13, i32 0, i32 6, i32 1
  %343 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %arrayidx189, align 4
  call void @ipu_cpmem_set_yuv_planar_full(ptr noundef %342, i32 noundef %344, i32 noundef %sub.i556, i32 noundef %sub.i556) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipu_plane_atomic_update.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipu_plane_atomic_update, %if.then202)) #6
          to label %sw.epilog284 [label %if.then202], !srcloc !77

if.then202:                                       ; preds = %drm_plane_state_to_ubo.exit557
  call void @__sanitizer_cov_trace_pc() #8
  %345 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %plane, align 8
  %dev205 = getelementptr inbounds %struct.drm_device, ptr %346, i32 0, i32 2
  %347 = ptrtoint ptr %dev205 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %dev205, align 4
  %349 = ptrtoint ptr %eba to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %eba, align 4
  %351 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %src.i, align 4
  %shr208 = ashr i32 %352, 16
  %353 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %y1.i, align 4
  %shr211 = ashr i32 %354, 16
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipu_plane_atomic_update.__UNIQUE_ID_ddebug317, ptr noundef %348, ptr noundef nonnull @.str.18, i32 noundef %350, i32 noundef %sub.i556, i32 noundef %shr208, i32 noundef %shr211) #6
  br label %sw.epilog284

sw.bb215:                                         ; preds = %ipu_calculate_bursts.exit.sw.bb215_crit_edge, %ipu_calculate_bursts.exit.sw.bb215_crit_edge626, %ipu_calculate_bursts.exit.sw.bb215_crit_edge627, %ipu_calculate_bursts.exit.sw.bb215_crit_edge628, %ipu_calculate_bursts.exit.sw.bb215_crit_edge629, %ipu_calculate_bursts.exit.sw.bb215_crit_edge630
  %355 = ptrtoint ptr %fb5 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %fb5, align 4
  %357 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %src.i, align 4
  %359 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %y1.i, align 4
  %call.i561 = call ptr @drm_fb_cma_get_gem_obj(ptr noundef %356, i32 noundef 1) #6
  %tobool.not.i562 = icmp eq ptr %call.i561, null
  br i1 %tobool.not.i562, label %do.body7.i563, label %drm_plane_state_to_eba.exit576, !prof !72

do.body7.i563:                                    ; preds = %sw.bb215
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/imx/ipuv3-plane.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 132, 0\0A.popsection", ""() #6, !srcloc !73
  unreachable

drm_plane_state_to_eba.exit576:                   ; preds = %sw.bb215
  %shr3.i564 = ashr i32 %360, 16
  %shr.i565 = ashr i32 %358, 16
  %paddr.i566 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call.i561, i32 0, i32 1
  %361 = ptrtoint ptr %paddr.i566 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %paddr.i566, align 8
  %arrayidx.i567 = getelementptr %struct.drm_framebuffer, ptr %356, i32 0, i32 7, i32 1
  %363 = ptrtoint ptr %arrayidx.i567 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %arrayidx.i567, align 4
  %add.i568 = add i32 %364, %362
  %arrayidx13.i569 = getelementptr %struct.drm_framebuffer, ptr %356, i32 0, i32 6, i32 1
  %365 = ptrtoint ptr %arrayidx13.i569 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %arrayidx13.i569, align 4
  %mul.i570 = mul i32 %366, %shr3.i564
  %add14.i571 = add i32 %add.i568, %mul.i570
  %format.i572 = getelementptr inbounds %struct.drm_framebuffer, ptr %356, i32 0, i32 4
  %367 = ptrtoint ptr %format.i572 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %format.i572, align 8
  %arrayidx15.i = getelementptr %struct.drm_format_info, ptr %368, i32 0, i32 3, i32 0, i32 1
  %369 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %369)
  %370 = load i8, ptr %arrayidx15.i, align 1
  %conv.i573 = zext i8 %370 to i32
  %mul16.i574 = mul nsw i32 %shr.i565, %conv.i573
  %add17.i575 = add i32 %add14.i571, %mul16.i574
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipu_plane_atomic_update.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipu_plane_atomic_update, %if.then229)) #6
          to label %do.end241 [label %if.then229], !srcloc !77

if.then229:                                       ; preds = %drm_plane_state_to_eba.exit576
  call void @__sanitizer_cov_trace_pc() #8
  %371 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %plane, align 8
  %dev232 = getelementptr inbounds %struct.drm_device, ptr %372, i32 0, i32 2
  %373 = ptrtoint ptr %dev232 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %dev232, align 4
  %375 = ptrtoint ptr %eba to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %eba, align 4
  %377 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %src.i, align 4
  %shr235 = ashr i32 %378, 16
  %379 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %y1.i, align 4
  %shr238 = ashr i32 %380, 16
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipu_plane_atomic_update.__UNIQUE_ID_ddebug318, ptr noundef %374, ptr noundef nonnull @.str.19, i32 noundef %376, i32 noundef %add17.i575, i32 noundef %shr235, i32 noundef %shr238) #6
  br label %do.end241

do.end241:                                        ; preds = %if.then229, %drm_plane_state_to_eba.exit576
  %381 = ptrtoint ptr %ipu_ch127 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %ipu_ch127, align 4
  call void @ipu_cpmem_set_burstsize(ptr noundef %382, i32 noundef 16) #6
  %alpha_ch243 = getelementptr inbounds %struct.ipu_plane, ptr %plane, i32 0, i32 3
  %383 = ptrtoint ptr %alpha_ch243 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %alpha_ch243, align 8
  call void @ipu_cpmem_zero(ptr noundef %384) #6
  %385 = ptrtoint ptr %alpha_ch243 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %alpha_ch243, align 8
  %387 = ptrtoint ptr %x2.i.i456 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %x2.i.i456, align 4
  %389 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %src.i, align 4
  %sub.i.i579 = sub i32 %388, %390
  %shr.i580 = ashr i32 %sub.i.i579, 16
  %add.i581 = add nsw i32 %shr.i580, 7
  %and.i582 = and i32 %add.i581, -8
  %391 = ptrtoint ptr %y2.i461 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %y2.i461, align 4
  %393 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %y1.i, align 4
  %sub.i585 = sub i32 %392, %394
  %shr248 = ashr i32 %sub.i585, 16
  call void @ipu_cpmem_set_resolution(ptr noundef %386, i32 noundef %and.i582, i32 noundef %shr248) #6
  %395 = ptrtoint ptr %alpha_ch243 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %alpha_ch243, align 8
  %call250 = call i32 @ipu_cpmem_set_format_passthrough(ptr noundef %396, i32 noundef 8) #6
  %397 = ptrtoint ptr %alpha_ch243 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %alpha_ch243, align 8
  call void @ipu_cpmem_set_high_priority(ptr noundef %398) #6
  %399 = ptrtoint ptr %alpha_ch243 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %alpha_ch243, align 8
  call void @ipu_idmac_set_double_buffer(ptr noundef %400, i1 noundef zeroext true) #6
  %401 = ptrtoint ptr %alpha_ch243 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %alpha_ch243, align 8
  %arrayidx255 = getelementptr %struct.drm_framebuffer, ptr %13, i32 0, i32 6, i32 1
  %403 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %arrayidx255, align 4
  call void @ipu_cpmem_set_stride(ptr noundef %402, i32 noundef %404) #6
  %405 = ptrtoint ptr %alpha_ch243 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %alpha_ch243, align 8
  call void @ipu_cpmem_set_burstsize(ptr noundef %406, i32 noundef 16) #6
  %407 = ptrtoint ptr %alpha_ch243 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %alpha_ch243, align 8
  call void @ipu_cpmem_set_buffer(ptr noundef %408, i32 noundef 0, i32 noundef %add17.i575) #6
  %409 = ptrtoint ptr %alpha_ch243 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %alpha_ch243, align 8
  call void @ipu_cpmem_set_buffer(ptr noundef %410, i32 noundef 1, i32 noundef %add17.i575) #6
  br label %sw.epilog284

do.body259:                                       ; preds = %ipu_calculate_bursts.exit
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipu_plane_atomic_update.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipu_plane_atomic_update, %if.then271)) #6
          to label %sw.epilog284 [label %if.then271], !srcloc !77

if.then271:                                       ; preds = %do.body259
  call void @__sanitizer_cov_trace_pc() #8
  %411 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %plane, align 8
  %dev274 = getelementptr inbounds %struct.drm_device, ptr %412, i32 0, i32 2
  %413 = ptrtoint ptr %dev274 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %dev274, align 4
  %415 = ptrtoint ptr %eba to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %eba, align 4
  %417 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %src.i, align 4
  %shr277 = ashr i32 %418, 16
  %419 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load i32, ptr %y1.i, align 4
  %shr280 = ashr i32 %420, 16
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipu_plane_atomic_update.__UNIQUE_ID_ddebug319, ptr noundef %414, ptr noundef nonnull @.str.20, i32 noundef %416, i32 noundef %shr277, i32 noundef %shr280) #6
  br label %sw.epilog284

sw.epilog284:                                     ; preds = %if.then271, %do.body259, %do.end241, %if.then202, %drm_plane_state_to_ubo.exit557, %if.then174, %if.end162
  %num_bursts.0 = phi i8 [ %bursts.0.lcssa.i, %if.then271 ], [ 0, %do.end241 ], [ %bursts.0.lcssa.i, %if.then202 ], [ %bursts.0.lcssa.i, %if.then174 ], [ %bursts.0.lcssa.i, %if.end162 ], [ %bursts.0.lcssa.i, %drm_plane_state_to_ubo.exit557 ], [ %bursts.0.lcssa.i, %do.body259 ]
  %421 = ptrtoint ptr %ipu_ch127 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %ipu_ch127, align 4
  %423 = ptrtoint ptr %eba to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %eba, align 4
  call void @ipu_cpmem_set_buffer(ptr noundef %422, i32 noundef 0, i32 noundef %424) #6
  %425 = ptrtoint ptr %ipu_ch127 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %ipu_ch127, align 4
  %427 = ptrtoint ptr %eba to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %eba, align 4
  call void @ipu_cpmem_set_buffer(ptr noundef %426, i32 noundef 1, i32 noundef %428) #6
  %429 = ptrtoint ptr %ipu_ch127 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %ipu_ch127, align 4
  %conv288 = zext i8 %num_bursts.0 to i32
  %call289 = call i32 @ipu_idmac_lock_enable(ptr noundef %430, i32 noundef %conv288) #6
  %dp.i = getelementptr inbounds %struct.ipu_plane, ptr %plane, i32 0, i32 5
  %431 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %dp.i, align 8
  %tobool.not.i586 = icmp eq ptr %432, null
  br i1 %tobool.not.i586, label %sw.epilog284.if.end.i_crit_edge, label %if.then.i

sw.epilog284.if.end.i_crit_edge:                  ; preds = %sw.epilog284
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %sw.epilog284
  call void @__sanitizer_cov_trace_pc() #8
  %ipu.i = getelementptr inbounds %struct.ipu_plane, ptr %plane, i32 0, i32 1
  %433 = ptrtoint ptr %ipu.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %ipu.i, align 8
  %call.i587 = call i32 @ipu_dp_enable(ptr noundef %434) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.epilog284.if.end.i_crit_edge
  %435 = ptrtoint ptr %dmfc to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %dmfc, align 4
  %call1.i = call i32 @ipu_dmfc_enable_channel(ptr noundef %436) #6
  %437 = ptrtoint ptr %ipu_ch127 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %ipu_ch127, align 4
  %call2.i = call i32 @ipu_idmac_enable_channel(ptr noundef %438) #6
  %state.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %439 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %state.i.i, align 4
  %fb.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %440, i32 0, i32 2
  %441 = ptrtoint ptr %fb.i.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %fb.i.i, align 4
  %format.i.i588 = getelementptr inbounds %struct.drm_framebuffer, ptr %442, i32 0, i32 4
  %443 = ptrtoint ptr %format.i.i588 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %format.i.i588, align 8
  %445 = ptrtoint ptr %444 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %444, align 4
  %447 = zext i32 %446 to i64
  call void @__sanitizer_cov_trace_switch(i64 %447, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %446, label %if.end.i.if.end6.i_crit_edge [
    i32 943797586, label %if.end.i.if.then4.i_crit_edge
    i32 943797570, label %if.end.i.if.then4.i_crit_edge633
    i32 943798354, label %if.end.i.if.then4.i_crit_edge634
    i32 943798338, label %if.end.i.if.then4.i_crit_edge635
    i32 943806546, label %if.end.i.if.then4.i_crit_edge636
    i32 943806530, label %if.end.i.if.then4.i_crit_edge637
  ]

if.end.i.if.then4.i_crit_edge637:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i

if.end.i.if.then4.i_crit_edge636:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i

if.end.i.if.then4.i_crit_edge635:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i

if.end.i.if.then4.i_crit_edge634:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i

if.end.i.if.then4.i_crit_edge633:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i

if.end.i.if.then4.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i.if.then4.i_crit_edge, %if.end.i.if.then4.i_crit_edge633, %if.end.i.if.then4.i_crit_edge634, %if.end.i.if.then4.i_crit_edge635, %if.end.i.if.then4.i_crit_edge636, %if.end.i.if.then4.i_crit_edge637
  %alpha_ch.i = getelementptr inbounds %struct.ipu_plane, ptr %plane, i32 0, i32 3
  %448 = ptrtoint ptr %alpha_ch.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %alpha_ch.i, align 8
  %call5.i = call i32 @ipu_idmac_enable_channel(ptr noundef %449) #6
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i.if.end6.i_crit_edge
  %450 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %dp.i, align 8
  %tobool8.not.i = icmp eq ptr %451, null
  br i1 %tobool8.not.i, label %if.end6.i.cleanup_crit_edge, label %if.then9.i

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %call11.i = call i32 @ipu_dp_enable_channel(ptr noundef nonnull %451) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then9.i, %if.end6.i.cleanup_crit_edge, %if.then92, %if.end81.cleanup_crit_edge, %if.then77.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eba) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipu_plane_atomic_disable(ptr nocapture noundef %plane, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dp = getelementptr inbounds %struct.ipu_plane, ptr %plane, i32 0, i32 5
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ipu_dp_disable_channel(ptr noundef nonnull %1, i1 noundef zeroext true) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %disabling = getelementptr inbounds %struct.ipu_plane, ptr %plane, i32 0, i32 8
  %2 = ptrtoint ptr %disabling to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %disabling, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @drm_plane_state_to_eba(ptr nocapture noundef readonly %state, i32 noundef %plane) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %fb1 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %fb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb1, align 4
  %src = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20
  %2 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src, align 4
  %y1 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 1
  %4 = ptrtoint ptr %y1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %y1, align 4
  %call = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %1, i32 noundef %plane) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body7, label %do.end12, !prof !72

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/imx/ipuv3-plane.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 132, 0\0A.popsection", ""() #6, !srcloc !73
  unreachable

do.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shr3 = ashr i32 %5, 16
  %shr = ashr i32 %3, 16
  %paddr = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %paddr, align 8
  %arrayidx = getelementptr %struct.drm_framebuffer, ptr %1, i32 0, i32 7, i32 %plane
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %7
  %arrayidx13 = getelementptr %struct.drm_framebuffer, ptr %1, i32 0, i32 6, i32 %plane
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx13, align 4
  %mul = mul i32 %11, %shr3
  %add14 = add i32 %add, %mul
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %format, align 8
  %14 = getelementptr inbounds %struct.drm_format_info, ptr %13, i32 0, i32 3
  %arrayidx15 = getelementptr [4 x i8], ptr %14, i32 0, i32 %plane
  %15 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx15, align 1
  %conv = zext i8 %16 to i32
  %mul16 = mul nsw i32 %shr, %conv
  %add17 = add i32 %add14, %mul16
  ret i32 %add17
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @drm_plane_state_to_vbo(ptr nocapture noundef readonly %state) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %fb1 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %fb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb1, align 4
  %src.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20
  %2 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src.i, align 4
  %y1.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 1
  %4 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %y1.i, align 4
  %call.i = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %1, i32 noundef 0) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.body7.i, label %drm_plane_state_to_eba.exit, !prof !72

do.body7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/imx/ipuv3-plane.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 132, 0\0A.popsection", ""() #6, !srcloc !73
  unreachable

drm_plane_state_to_eba.exit:                      ; preds = %entry
  %paddr.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %paddr.i, align 8
  %arrayidx.i = getelementptr %struct.drm_framebuffer, ptr %1, i32 0, i32 7, i32 0
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %arrayidx13.i = getelementptr %struct.drm_framebuffer, ptr %1, i32 0, i32 6, i32 0
  %10 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx13.i, align 4
  %format.i = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %format.i, align 8
  %14 = getelementptr inbounds %struct.drm_format_info, ptr %13, i32 0, i32 3
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  %17 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %src.i, align 4
  %19 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %y1.i, align 4
  %call4 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %1, i32 noundef 2) #6
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %do.body8, label %do.end13, !prof !72

do.body8:                                         ; preds = %drm_plane_state_to_eba.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/imx/ipuv3-plane.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 167, 0\0A.popsection", ""() #6, !srcloc !76
  unreachable

do.end13:                                         ; preds = %drm_plane_state_to_eba.exit
  call void @__sanitizer_cov_trace_pc() #8
  %shr3.i = ashr i32 %5, 16
  %shr.i = ashr i32 %3, 16
  %conv.i = zext i8 %16 to i32
  %21 = lshr i32 %20, 16
  %22 = lshr i32 %18, 16
  %23 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %format.i, align 8
  %hsub = getelementptr inbounds %struct.drm_format_info, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %hsub to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %hsub, align 2
  %div.lhs.trunc = trunc i32 %22 to i16
  %div.rhs.trunc = zext i8 %26 to i16
  %div35 = sdiv i16 %div.lhs.trunc, %div.rhs.trunc
  %div.sext = sext i16 %div35 to i32
  %vsub = getelementptr inbounds %struct.drm_format_info, ptr %24, i32 0, i32 7
  %27 = ptrtoint ptr %vsub to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %vsub, align 1
  %div16.lhs.trunc = trunc i32 %21 to i16
  %div16.rhs.trunc = zext i8 %28 to i16
  %div1636 = sdiv i16 %div16.lhs.trunc, %div16.rhs.trunc
  %div16.sext = sext i16 %div1636 to i32
  %paddr = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call4, i32 0, i32 1
  %29 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %paddr, align 8
  %arrayidx = getelementptr %struct.drm_framebuffer, ptr %1, i32 0, i32 7, i32 2
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 8
  %arrayidx17 = getelementptr %struct.drm_framebuffer, ptr %1, i32 0, i32 6, i32 2
  %33 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx17, align 8
  %mul = mul i32 %34, %div16.sext
  %arrayidx20 = getelementptr %struct.drm_format_info, ptr %24, i32 0, i32 3, i32 0, i32 2
  %35 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx20, align 2
  %conv21 = zext i8 %36 to i32
  %mul22 = mul nsw i32 %conv21, %div.sext
  %mul.i.neg = mul i32 %11, %shr3.i
  %mul16.i.neg = mul nsw i32 %shr.i, %conv.i
  %reass.add = add i32 %mul16.i.neg, %mul.i.neg
  %37 = add i32 %9, %7
  %38 = add i32 %37, %reass.add
  %add = sub i32 %30, %38
  %add18 = add i32 %add, %32
  %add23 = add i32 %add18, %mul
  %sub = add i32 %add23, %mul22
  ret i32 %sub
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @drm_plane_state_to_ubo(ptr nocapture noundef readonly %state) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %fb1 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %fb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb1, align 4
  %src.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20
  %2 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src.i, align 4
  %y1.i = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 1
  %4 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %y1.i, align 4
  %call.i = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %1, i32 noundef 0) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.body7.i, label %drm_plane_state_to_eba.exit, !prof !72

do.body7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/imx/ipuv3-plane.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 132, 0\0A.popsection", ""() #6, !srcloc !73
  unreachable

drm_plane_state_to_eba.exit:                      ; preds = %entry
  %paddr.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %paddr.i, align 8
  %arrayidx.i = getelementptr %struct.drm_framebuffer, ptr %1, i32 0, i32 7, i32 0
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %arrayidx13.i = getelementptr %struct.drm_framebuffer, ptr %1, i32 0, i32 6, i32 0
  %10 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx13.i, align 4
  %format.i = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %format.i, align 8
  %14 = getelementptr inbounds %struct.drm_format_info, ptr %13, i32 0, i32 3
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  %17 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %src.i, align 4
  %19 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %y1.i, align 4
  %call4 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %1, i32 noundef 1) #6
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %do.body8, label %do.end13, !prof !72

do.body8:                                         ; preds = %drm_plane_state_to_eba.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/imx/ipuv3-plane.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 148, 0\0A.popsection", ""() #6, !srcloc !75
  unreachable

do.end13:                                         ; preds = %drm_plane_state_to_eba.exit
  call void @__sanitizer_cov_trace_pc() #8
  %shr3.i = ashr i32 %5, 16
  %shr.i = ashr i32 %3, 16
  %conv.i = zext i8 %16 to i32
  %21 = lshr i32 %20, 16
  %22 = lshr i32 %18, 16
  %23 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %format.i, align 8
  %hsub = getelementptr inbounds %struct.drm_format_info, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %hsub to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %hsub, align 2
  %div.lhs.trunc = trunc i32 %22 to i16
  %div.rhs.trunc = zext i8 %26 to i16
  %div35 = sdiv i16 %div.lhs.trunc, %div.rhs.trunc
  %div.sext = sext i16 %div35 to i32
  %vsub = getelementptr inbounds %struct.drm_format_info, ptr %24, i32 0, i32 7
  %27 = ptrtoint ptr %vsub to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %vsub, align 1
  %div16.lhs.trunc = trunc i32 %21 to i16
  %div16.rhs.trunc = zext i8 %28 to i16
  %div1636 = sdiv i16 %div16.lhs.trunc, %div16.rhs.trunc
  %div16.sext = sext i16 %div1636 to i32
  %paddr = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call4, i32 0, i32 1
  %29 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %paddr, align 8
  %arrayidx = getelementptr %struct.drm_framebuffer, ptr %1, i32 0, i32 7, i32 1
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 4
  %arrayidx17 = getelementptr %struct.drm_framebuffer, ptr %1, i32 0, i32 6, i32 1
  %33 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx17, align 4
  %mul = mul i32 %34, %div16.sext
  %arrayidx20 = getelementptr %struct.drm_format_info, ptr %24, i32 0, i32 3, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %36 to i32
  %mul22 = mul nsw i32 %conv21, %div.sext
  %mul.i.neg = mul i32 %11, %shr3.i
  %mul16.i.neg = mul nsw i32 %shr.i, %conv.i
  %reass.add = add i32 %mul16.i.neg, %mul.i.neg
  %37 = add i32 %9, %7
  %38 = add i32 %37, %reass.add
  %add = sub i32 %30, %38
  %add18 = add i32 %add, %32
  %add23 = add i32 %add18, %mul
  %sub = add i32 %add23, %mul22
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_dp_set_window_pos(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_dp_set_global_alpha(ptr noundef, i1 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_prg_channel_configure(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_drm_fourcc_to_colorspace(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_dp_setup_channel(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_idmac_get_current_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_set_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_idmac_select_buffer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_dmfc_config_wait4eot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_format_info(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_zero(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_set_resolution(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_cpmem_set_fmt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_set_burstsize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_set_high_priority(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_idmac_enable_watermark(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_idmac_set_double_buffer(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_set_stride(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_set_axi_id(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_set_yuv_planar_full(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_cpmem_set_format_passthrough(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_idmac_lock_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_dp_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_dmfc_enable_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_idmac_enable_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_dp_enable_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipu_idmac_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__drmm_add_action_or_reset(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipu_plane_put_resources(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dp = getelementptr inbounds %struct.ipu_plane, ptr %ptr, i32 0, i32 5
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp, align 8
  %tobool.not.i = icmp eq ptr %1, null
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ipu_dp_put(ptr noundef nonnull %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dmfc = getelementptr inbounds %struct.ipu_plane, ptr %ptr, i32 0, i32 4
  %2 = ptrtoint ptr %dmfc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dmfc, align 4
  %tobool.not.i21 = icmp eq ptr %3, null
  %cmp.i22 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i23 = or i1 %tobool.not.i21, %cmp.i22
  br i1 %spec.select.i23, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ipu_dmfc_put(ptr noundef nonnull %3) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %ipu_ch = getelementptr inbounds %struct.ipu_plane, ptr %ptr, i32 0, i32 2
  %4 = ptrtoint ptr %ipu_ch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ipu_ch, align 4
  %tobool.not.i24 = icmp eq ptr %5, null
  %cmp.i25 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %spec.select.i26 = or i1 %tobool.not.i24, %cmp.i25
  br i1 %spec.select.i26, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ipu_idmac_put(ptr noundef nonnull %5) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %alpha_ch = getelementptr inbounds %struct.ipu_plane, ptr %ptr, i32 0, i32 3
  %6 = ptrtoint ptr %alpha_ch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %alpha_ch, align 8
  %tobool.not.i27 = icmp eq ptr %7, null
  %cmp.i28 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %spec.select.i29 = or i1 %tobool.not.i27, %cmp.i28
  br i1 %spec.select.i29, label %if.end9.if.end13_crit_edge, label %if.then11

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ipu_idmac_put(ptr noundef nonnull %7) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9.if.end13_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipu_dmfc_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipu_dp_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_dp_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_dmfc_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_idmac_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !30, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !48, !49, !51, !52, !54, !56, !58, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/imx/ipuv3-plane.c", i32 268, i32 2}
!2 = !{ptr @__func__.ipu_plane_disable, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/imx/ipuv3-plane.c", i32 272, i32 3}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/imx/ipuv3-plane.c", i32 895, i32 2}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/imx/ipuv3-plane.c", i32 914, i32 3}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/imx/ipuv3-plane.c", i32 945, i32 3}
!13 = !{ptr @ipu_format_modifiers, !14, !"ipu_format_modifiers", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/imx/ipuv3-plane.c", i32 105, i32 23}
!15 = !{ptr @ipu_plane_all_formats, !16, !"ipu_plane_all_formats", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/imx/ipuv3-plane.c", i32 43, i32 23}
!17 = !{ptr @ipu_plane_rgb_formats, !18, !"ipu_plane_rgb_formats", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/imx/ipuv3-plane.c", i32 80, i32 23}
!19 = !{ptr @pre_format_modifiers, !20, !"pre_format_modifiers", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/imx/ipuv3-plane.c", i32 110, i32 23}
!21 = !{ptr @ipu_plane_funcs, !22, !"ipu_plane_funcs", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/imx/ipuv3-plane.c", i32 362, i32 37}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/imx/ipuv3-plane.c", i32 326, i32 6}
!25 = !{ptr @ipu_plane_helper_funcs, !26, !"ipu_plane_helper_funcs", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/imx/ipuv3-plane.c", i32 774, i32 44}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/imx/ipuv3-plane.c", i32 419, i32 3}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @ipu_plane_atomic_check._entry, !28, !"_entry", i1 false, i1 false}
!33 = !{ptr @ipu_plane_atomic_check._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/imx/ipuv3-plane.c", i32 452, i32 3}
!36 = !{ptr @ipu_plane_atomic_check._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @ipu_plane_atomic_check._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/imx/ipuv3-plane.c", i32 721, i32 3}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @ipu_plane_atomic_update.__UNIQUE_ID_ddebug316, !39, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/imx/ipuv3-plane.c", i32 732, i32 3}
!45 = !{ptr @ipu_plane_atomic_update.__UNIQUE_ID_ddebug317, !44, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/imx/ipuv3-plane.c", i32 745, i32 3}
!48 = !{ptr @ipu_plane_atomic_update.__UNIQUE_ID_ddebug318, !47, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/imx/ipuv3-plane.c", i32 764, i32 3}
!51 = !{ptr @ipu_plane_atomic_update.__UNIQUE_ID_ddebug319, !50, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/imx/ipuv3-plane.c", i32 199, i32 3}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/imx/ipuv3-plane.c", i32 203, i32 8}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/imx/ipuv3-plane.c", i32 212, i32 4}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/imx/ipuv3-plane.c", i32 221, i32 3}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/imx/ipuv3-plane.c", i32 229, i32 4}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{i8 0, i8 2}
!72 = !{!"branch_weights", i32 1, i32 2000}
!73 = !{i64 2157000829, i64 2157001327, i64 2157000866, i64 2157000922, i64 2157000956, i64 2157000980, i64 2157001021, i64 2157001042, i64 2157001070, i64 2157001104}
!74 = !{!"auto-init"}
!75 = !{i64 2157002612, i64 2157003110, i64 2157002649, i64 2157002705, i64 2157002739, i64 2157002763, i64 2157002804, i64 2157002825, i64 2157002853, i64 2157002887}
!76 = !{i64 2157004395, i64 2157004893, i64 2157004432, i64 2157004488, i64 2157004522, i64 2157004546, i64 2157004587, i64 2157004608, i64 2157004636, i64 2157004670}
!77 = !{i64 2149099219, i64 2149099224, i64 2149099237, i64 2149099281, i64 2149099315, i64 2149099336}
