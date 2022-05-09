; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/arm/malidp_planes.c_pt.bc'
source_filename = "../drivers/gpu/drm/arm/malidp_planes.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.81, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.90, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.81 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.anon.90 = type { i32, ptr }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.88, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.88 = type { [4 x i8] }
%struct.malidp_hw_regmap = type { i16, i16, i16, i16, i8, i8, ptr, %struct.malidp_irq_map, %struct.malidp_irq_map, %struct.malidp_irq_map, ptr, i8, i8 }
%struct.malidp_irq_map = type { i32, i32, i32 }
%struct.malidp_layer = type { i16, i16, i16, i16, i16, i16, i32, i16 }
%struct.malidp_format_id = type { i32, i8, i8 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.malidp_plane = type { %struct.drm_plane, ptr, ptr }
%struct.malidp_hw_device = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i16, i32, i8, i8, [2 x i32], i32 }
%struct.malidp_plane_state = type { %struct.drm_plane_state, i32, i8, i8, i32, i32 }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.malidp_hw = type { %struct.malidp_hw_regmap, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
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
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.malidp_crtc_state = type { %struct.drm_crtc_state, [64 x i32], [12 x i32], %struct.malidp_se_config, i8 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.malidp_se_config = type { i8, i8, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.iommu_domain = type { i32, ptr, i32, ptr, ptr, %struct.iommu_domain_geometry, ptr }
%struct.iommu_domain_geometry = type { i32, i32, i8 }
%struct.drm_gem_object_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/gpu/drm/arm/malidp_planes.c\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unknown modifier (not Arm)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unsupported modifiers\0A\00", [41 x i8] zeroinitializer }, align 32
@malidp_format_modifiers = external dso_local constant [0 x i64], align 8
@malidp_format_mod_supported.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@malidp_format_mod_supported.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unsupported modifier\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"AFBC buffers expect one plane\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Given format (0x%x) is supported is linear mode only\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"AFBC_FORMAT_MOD_YTR is %s for %s formats\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"disallowed\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mandatory\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"YUV\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RGB\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"RGB formats <= 16bpp are not supported with SPLIT\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Formats which are sub-sampled should never be split\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Formats which are not sub-sampled should not have CBR set\0A\00", [37 x i8] zeroinitializer }, align 32
@malidp_de_plane_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @malidp_de_plane_destroy, ptr @malidp_plane_reset, ptr null, ptr @malidp_duplicate_plane_state, ptr @malidp_destroy_plane_state, ptr null, ptr null, ptr null, ptr null, ptr @malidp_plane_atomic_print_state, ptr @malidp_format_mod_supported_per_plane }, [44 x i8] zeroinitializer }, align 32
@linear_only_modifiers = internal constant { [2 x i64], [16 x i8] } { [2 x i64] [i64 0, i64 72057594037927935], [16 x i8] zeroinitializer }, align 32
@malidp_de_plane_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @malidp_de_plane_check, ptr @malidp_de_plane_update, ptr @malidp_de_plane_disable, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@malidp_de_planes_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str, i32 1038, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014[drm] Failed to create video layer %d color properties\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"malidp_de_planes_init\00", [42 x i8] zeroinitializer }, align 32
@malidp_de_planes_init._entry_ptr = internal global ptr @malidp_de_planes_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\09rotmem_size=%u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\09format_id=%u\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\09n_planes=%u\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\09mmu_prefetch_mode=%s\0A\00", [41 x i8] zeroinitializer }, align 32
@prefetch_mode_names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24], [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\09mmu_prefetch_pgsize=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMU_PREFETCH_NONE\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMU_PREFETCH_PARTIAL\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MMU_PREFETCH_FULL\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid pitch %u for plane %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Buffer width/height needs to be a multiple of tile sizes\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Plane src_x/src_y needs to be a multiple of tile sizes\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"AFBC framebuffer not supported in SMART layer\00", [50 x i8] zeroinitializer }, align 32
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/gpu/drm/arm/malidp_hw.h\00", [32 x i8] zeroinitializer }, align 32
@malidp_yuv2rgb_coeffs = internal constant { [3 x [2 x [12 x i16]]], [48 x i8] } { [3 x [2 x [12 x i16]]] [[2 x [12 x i16]] [[12 x i16] [i16 1192, i16 0, i16 1634, i16 1192, i16 -401, i16 -832, i16 1192, i16 2066, i16 0, i16 64, i16 512, i16 512], [12 x i16] [i16 1024, i16 0, i16 1436, i16 1024, i16 -352, i16 -731, i16 1024, i16 1815, i16 0, i16 0, i16 512, i16 512]], [2 x [12 x i16]] [[12 x i16] [i16 1192, i16 0, i16 1836, i16 1192, i16 -218, i16 -546, i16 1192, i16 2163, i16 0, i16 64, i16 512, i16 512], [12 x i16] [i16 1024, i16 0, i16 1613, i16 1024, i16 -192, i16 -479, i16 1024, i16 1900, i16 0, i16 0, i16 512, i16 512]], [2 x [12 x i16]] [[12 x i16] [i16 1024, i16 0, i16 1476, i16 1024, i16 -165, i16 -572, i16 1024, i16 1884, i16 0, i16 0, i16 512, i16 512], [12 x i16] [i16 1024, i16 0, i16 1510, i16 1024, i16 -168, i16 -585, i16 1024, i16 1927, i16 0, i16 0, i16 512, i16 512]]], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 72057594037927935]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 875710274, i64 875710290]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 2097152]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.36 = internal global [20 x i64] [i64 18, i64 32, i64 808665410, i64 808665426, i64 808665665, i64 808669761, i64 875708738, i64 875708754, i64 875708993, i64 875709016, i64 875710274, i64 875710290, i64 875713089, i64 875713112, i64 875714626, i64 875714642, i64 892420434, i64 892420673, i64 909199170, i64 909199186]
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 156, i32 6 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 169, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 175, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 198, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 205, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 210, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 220, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 229, i32 5 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 237, i32 5 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 245, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant [22 x i8] c"malidp_de_plane_funcs\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 259, i32 37 }
@___asan_gen_.82 = private unnamed_addr constant [22 x i8] c"linear_only_modifiers\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 930, i32 23 }
@___asan_gen_.85 = private unnamed_addr constant [29 x i8] c"malidp_de_plane_helper_funcs\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 924, i32 44 }
@___asan_gen_.88 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1038, i32 5 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 140, i32 16 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 141, i32 16 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 142, i32 16 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 143, i32 16 }
@___asan_gen_.109 = private unnamed_addr constant [20 x i8] c"prefetch_mode_names\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 129, i32 27 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 145, i32 16 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 130, i32 32 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 131, i32 35 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 132, i32 32 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 534, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 543, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 547, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 588, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [35 x i8] c"../drivers/gpu/drm/arm/malidp_hw.h\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 261, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [22 x i8] c"malidp_yuv2rgb_coeffs\00", align 1
@___asan_gen_.140 = private constant [39 x i8] c"../drivers/gpu/drm/arm/malidp_planes.c\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 645, i32 1 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @malidp_de_planes_init._entry, ptr @malidp_de_planes_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @malidp_de_plane_funcs, ptr @linear_only_modifiers, ptr @malidp_de_plane_helper_funcs, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @prefetch_mode_names, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @malidp_yuv2rgb_coeffs], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @malidp_de_plane_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linear_only_modifiers to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @malidp_de_plane_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @malidp_de_planes_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prefetch_mode_names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @malidp_yuv2rgb_coeffs to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @malidp_format_mod_supported(ptr nocapture noundef readonly %drm, i32 noundef %format, i64 noundef %modifier) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @__sanitizer_cov_trace_switch(i64 %modifier, ptr @__sancov_gen_cov_switch_values)
  switch i64 %modifier, label %if.end27 [
    i64 72057594037927935, label %do.end
    i64 0, label %if.then24
  ], !prof !78

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 156, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.then24:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call zeroext i1 @malidp_hw_format_is_afbc_only(i32 noundef %format) #7
  %lnot25 = xor i1 %call, true
  br label %cleanup

if.end27:                                         ; preds = %entry
  %shr.mask = and i64 %modifier, -72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 576460752303423488, i64 %shr.mask)
  %cmp28 = icmp eq i64 %shr.mask, 576460752303423488
  br i1 %cmp28, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.end30:                                         ; preds = %if.end27
  %and31 = and i64 %modifier, -576460752303424512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and31)
  %tobool32.not = icmp eq i64 %and31, 0
  br i1 %tobool32.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.2) #7
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  %and35 = and i64 %modifier, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and35)
  %tobool36.not = icmp eq i64 %and35, 0
  %6 = and i64 %modifier, 96
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %6)
  %.not = icmp eq i64 %6, 32
  br i1 %.not, label %land.rhs46, label %if.end94

land.rhs46:                                       ; preds = %if.end34
  %.b275 = load i1, ptr @malidp_format_mod_supported.__already_done, align 1
  br i1 %.b275, label %land.rhs46.cleanup_crit_edge, label %if.then57, !prof !79

land.rhs46.cleanup_crit_edge:                     ; preds = %land.rhs46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then57:                                        ; preds = %land.rhs46
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @malidp_format_mod_supported.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 182, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end94:                                         ; preds = %if.end34
  %and96 = and i64 %modifier, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and96)
  %tobool97.not = icmp eq i64 %and96, 0
  %7 = and i64 %modifier, 144
  call void @__sanitizer_cov_trace_const_cmp8(i64 144, i64 %7)
  %.not279 = icmp eq i64 %7, 144
  br i1 %.not279, label %land.rhs108, label %if.end94.while.cond_crit_edge

if.end94.while.cond_crit_edge:                    ; preds = %if.end94
  br label %while.cond

land.rhs108:                                      ; preds = %if.end94
  %.b273274 = load i1, ptr @malidp_format_mod_supported.__already_done.3, align 1
  br i1 %.b273274, label %land.rhs108.cleanup_crit_edge, label %if.then119, !prof !79

land.rhs108.cleanup_crit_edge:                    ; preds = %land.rhs108
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then119:                                       ; preds = %land.rhs108
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @malidp_format_mod_supported.__already_done.3, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 186, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end94.while.cond_crit_edge
  %modifiers.0 = phi ptr [ %incdec.ptr, %while.cond.while.cond_crit_edge ], [ @malidp_format_modifiers, %if.end94.while.cond_crit_edge ]
  %8 = ptrtoint ptr %modifiers.0 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %modifiers.0, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 72057594037927935, i64 %9)
  %cmp157.not = icmp eq i64 %9, 72057594037927935
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %modifier)
  %cmp158 = icmp eq i64 %9, %modifier
  %or.cond = or i1 %cmp157.not, %cmp158
  %incdec.ptr = getelementptr i64, ptr %modifiers.0, i32 1
  br i1 %or.cond, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br i1 %cmp157.not, label %if.then162, label %if.end163

if.then162:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.4) #7
  br label %cleanup

if.end163:                                        ; preds = %while.end
  %call164 = tail call ptr @drm_format_info(i32 noundef %format) #7
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %call164, i32 0, i32 2
  %10 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp165.not = icmp eq i8 %11, 1
  br i1 %cmp165.not, label %if.end168, label %if.then167

if.then167:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.5) #7
  br label %cleanup

if.end168:                                        ; preds = %if.end163
  %call169 = tail call zeroext i1 @malidp_hw_format_is_linear_only(i32 noundef %format) #7
  br i1 %call169, label %if.then173, label %if.end174

if.then173:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %format) #7
  br label %cleanup

if.end174:                                        ; preds = %if.end168
  %is_yuv = getelementptr inbounds %struct.drm_format_info, ptr %call164, i32 0, i32 9
  %12 = ptrtoint ptr %is_yuv to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_yuv, align 1, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool175.not = icmp eq i8 %13, 0
  %14 = xor i8 %13, 1
  %15 = zext i8 %14 to i32
  %16 = trunc i64 %modifier to i32
  %17 = lshr i32 %16, 4
  %18 = and i32 %17, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %15)
  %cmp184.not = icmp eq i32 %18, %15
  br i1 %cmp184.not, label %if.end194, label %if.then186

if.then186:                                       ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #9
  %cond = select i1 %tobool175.not, ptr @.str.9, ptr @.str.8
  %cond193 = select i1 %tobool175.not, ptr @.str.11, ptr @.str.10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef nonnull %cond, ptr noundef nonnull %cond193) #7
  br label %cleanup

if.end194:                                        ; preds = %if.end174
  br i1 %tobool36.not, label %if.end194.if.end222_crit_edge, label %if.then197

if.end194.if.end222_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end222

if.then197:                                       ; preds = %if.end194
  br i1 %tobool175.not, label %if.then200, label %if.then197.if.end206_crit_edge

if.then197.if.end206_crit_edge:                   ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end206

if.then200:                                       ; preds = %if.then197
  %19 = getelementptr inbounds %struct.drm_format_info, ptr %call164, i32 0, i32 3
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %21)
  %cmp202 = icmp ult i8 %21, 3
  br i1 %cmp202, label %if.then204, label %if.then200.if.end206_crit_edge

if.then200.if.end206_crit_edge:                   ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end206

if.then204:                                       ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.12) #7
  br label %cleanup

if.end206:                                        ; preds = %if.then200.if.end206_crit_edge, %if.then197.if.end206_crit_edge
  %hsub = getelementptr inbounds %struct.drm_format_info, ptr %call164, i32 0, i32 6
  %22 = ptrtoint ptr %hsub to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %hsub, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp208.not = icmp eq i8 %23, 1
  br i1 %cmp208.not, label %lor.lhs.false, label %if.end206.if.then213_crit_edge

if.end206.if.then213_crit_edge:                   ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then213

lor.lhs.false:                                    ; preds = %if.end206
  %vsub = getelementptr inbounds %struct.drm_format_info, ptr %call164, i32 0, i32 7
  %24 = ptrtoint ptr %vsub to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %vsub, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %25)
  %cmp211.not = icmp eq i8 %25, 1
  br i1 %cmp211.not, label %lor.lhs.false.if.end222_crit_edge, label %lor.lhs.false.if.then213_crit_edge

lor.lhs.false.if.then213_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then213

lor.lhs.false.if.end222_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end222

if.then213:                                       ; preds = %lor.lhs.false.if.then213_crit_edge, %if.end206.if.then213_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 808539481, i32 %format)
  %cmp214 = icmp eq i32 %format, 808539481
  br i1 %cmp214, label %land.lhs.true, label %if.then213.if.then219_crit_edge

if.then213.if.then219_crit_edge:                  ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then219

land.lhs.true:                                    ; preds = %if.then213
  %features = getelementptr inbounds %struct.malidp_hw_regmap, ptr %5, i32 0, i32 4
  %26 = ptrtoint ptr %features to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %features, align 4
  %28 = and i8 %27, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool218.not = icmp eq i8 %28, 0
  br i1 %tobool218.not, label %land.lhs.true.if.then219_crit_edge, label %land.lhs.true.if.end222_crit_edge

land.lhs.true.if.end222_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end222

land.lhs.true.if.then219_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then219

if.then219:                                       ; preds = %land.lhs.true.if.then219_crit_edge, %if.then213.if.then219_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.13) #7
  br label %cleanup

if.end222:                                        ; preds = %land.lhs.true.if.end222_crit_edge, %lor.lhs.false.if.end222_crit_edge, %if.end194.if.end222_crit_edge
  br i1 %tobool97.not, label %if.end222.cleanup_crit_edge, label %if.then225

if.end222.cleanup_crit_edge:                      ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then225:                                       ; preds = %if.end222
  %hsub226 = getelementptr inbounds %struct.drm_format_info, ptr %call164, i32 0, i32 6
  %29 = ptrtoint ptr %hsub226 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %hsub226, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %cmp228 = icmp eq i8 %30, 1
  br i1 %cmp228, label %if.then225.if.then235_crit_edge, label %lor.lhs.false230

if.then225.if.then235_crit_edge:                  ; preds = %if.then225
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then235

lor.lhs.false230:                                 ; preds = %if.then225
  %vsub231 = getelementptr inbounds %struct.drm_format_info, ptr %call164, i32 0, i32 7
  %31 = ptrtoint ptr %vsub231 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %vsub231, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp233 = icmp eq i8 %32, 1
  br i1 %cmp233, label %lor.lhs.false230.if.then235_crit_edge, label %lor.lhs.false230.cleanup_crit_edge

lor.lhs.false230.cleanup_crit_edge:               ; preds = %lor.lhs.false230
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false230.if.then235_crit_edge:            ; preds = %lor.lhs.false230
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then235

if.then235:                                       ; preds = %lor.lhs.false230.if.then235_crit_edge, %if.then225.if.then235_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.14) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then235, %lor.lhs.false230.cleanup_crit_edge, %if.end222.cleanup_crit_edge, %if.then219, %if.then204, %if.then186, %if.then173, %if.then167, %if.then162, %if.then119, %land.rhs108.cleanup_crit_edge, %if.then57, %land.rhs46.cleanup_crit_edge, %if.then33, %if.then29, %if.then24, %do.end
  %retval.0 = phi i1 [ false, %do.end ], [ %lnot25, %if.then24 ], [ false, %if.then33 ], [ false, %if.then162 ], [ false, %if.then167 ], [ false, %if.then173 ], [ false, %if.then186 ], [ false, %if.then235 ], [ false, %if.then219 ], [ false, %if.then204 ], [ false, %if.then29 ], [ false, %if.then57 ], [ false, %if.then119 ], [ true, %lor.lhs.false230.cleanup_crit_edge ], [ true, %if.end222.cleanup_crit_edge ], [ false, %land.rhs46.cleanup_crit_edge ], [ false, %land.rhs108.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @malidp_hw_format_is_afbc_only(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_format_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @malidp_hw_format_is_linear_only(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @malidp_de_planes_init(ptr noundef %drm) local_unnamed_addr #0 align 64 {
entry:
  %supported_modifiers = alloca [15 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 30, i32 19
  %6 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_crtc, align 4
  %shl = shl nuw i32 1, %7
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %supported_modifiers) #7
  %8 = call ptr @memset(ptr %supported_modifiers, i32 255, i32 120)
  %features = getelementptr inbounds %struct.malidp_hw_regmap, ptr %5, i32 0, i32 4
  %9 = ptrtoint ptr %features to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %features, align 4
  %11 = and i8 %10, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %while.cond.preheader, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

while.cond.preheader:                             ; preds = %entry
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @malidp_format_modifiers to i32))
  %12 = load i64, ptr @malidp_format_modifiers, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 72057594037927935, i64 %12)
  %cmp.not160 = icmp eq i64 %12, 72057594037927935
  br i1 %cmp.not160, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %13 = phi i64 [ %16, %if.end.while.body_crit_edge ], [ %12, %while.cond.preheader.while.body_crit_edge ]
  %modifiers.0162 = phi ptr [ %incdec.ptr, %if.end.while.body_crit_edge ], [ @malidp_format_modifiers, %while.cond.preheader.while.body_crit_edge ]
  %j.0161 = phi i32 [ %j.1, %if.end.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %and3 = and i64 %13, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3)
  %tobool4.not = icmp eq i64 %and3, 0
  br i1 %tobool4.not, label %if.then5, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then5:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add i32 %j.0161, 1
  %arrayidx = getelementptr [15 x i64], ptr %supported_modifiers, i32 0, i32 %j.0161
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %arrayidx, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %while.body.if.end_crit_edge
  %j.1 = phi i32 [ %j.0161, %while.body.if.end_crit_edge ], [ %inc, %if.then5 ]
  %incdec.ptr = getelementptr i64, ptr %modifiers.0162, i32 1
  %15 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %incdec.ptr, align 8
  %cmp.not = icmp eq i64 %16, 72057594037927935
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %j.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %j.1, %if.end.while.end_crit_edge ]
  %arrayidx7 = getelementptr [15 x i64], ptr %supported_modifiers, i32 0, i32 %j.0.lcssa
  %17 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 72057594037927935, ptr %arrayidx7, align 8
  br label %if.end8

if.end8:                                          ; preds = %while.end, %entry.if.end8_crit_edge
  %modifiers.1 = phi ptr [ @malidp_format_modifiers, %entry.if.end8_crit_edge ], [ %supported_modifiers, %while.end ]
  %n_pixel_formats = getelementptr inbounds %struct.malidp_hw_regmap, ptr %5, i32 0, i32 11
  %18 = ptrtoint ptr %n_pixel_formats to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %n_pixel_formats, align 4
  %conv9 = zext i8 %19 to i32
  %20 = shl nuw nsw i32 %conv9, 2
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #10
  %tobool10.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool10.not, label %if.end8.cleanup89_crit_edge, label %for.cond.preheader

if.end8.cleanup89_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup89

for.cond.preheader:                               ; preds = %if.end8
  %n_layers = getelementptr inbounds %struct.malidp_hw_regmap, ptr %5, i32 0, i32 5
  %21 = ptrtoint ptr %n_layers to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %n_layers, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp14170.not = icmp eq i8 %22, 0
  br i1 %cmp14170.not, label %for.cond.preheader.for.end88_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end88_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end88

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %layers = getelementptr inbounds %struct.malidp_hw_regmap, ptr %5, i32 0, i32 6
  %pixel_formats = getelementptr inbounds %struct.malidp_hw_regmap, ptr %5, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc86.for.body_crit_edge, %for.body.lr.ph
  %i.0171 = phi i32 [ 0, %for.body.lr.ph ], [ %inc87, %for.inc86.for.body_crit_edge ]
  %23 = ptrtoint ptr %layers to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %layers, align 4
  %arrayidx16 = getelementptr %struct.malidp_layer, ptr %24, i32 %i.0171
  %25 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx16, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 536) #11
  %tobool20.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool20.not, label %for.body.cleanup89_crit_edge, label %for.cond23.preheader

for.body.cleanup89_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup89

for.cond23.preheader:                             ; preds = %for.body
  %28 = ptrtoint ptr %n_pixel_formats to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %n_pixel_formats, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp26164.not = icmp eq i8 %29, 0
  %.pre = and i16 %26, 255
  %.pre172 = zext i16 %.pre to i32
  br i1 %cmp26164.not, label %for.cond23.preheader.for.end_crit_edge, label %for.cond23.preheader.for.body28_crit_edge

for.cond23.preheader.for.body28_crit_edge:        ; preds = %for.cond23.preheader
  br label %for.body28

for.cond23.preheader.for.end_crit_edge:           ; preds = %for.cond23.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body28:                                       ; preds = %for.inc.for.body28_crit_edge, %for.cond23.preheader.for.body28_crit_edge
  %n.0167 = phi i32 [ %n.1, %for.inc.for.body28_crit_edge ], [ 0, %for.cond23.preheader.for.body28_crit_edge ]
  %j.2165 = phi i32 [ %inc42, %for.inc.for.body28_crit_edge ], [ 0, %for.cond23.preheader.for.body28_crit_edge ]
  %30 = ptrtoint ptr %pixel_formats to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pixel_formats, align 4
  %layer = getelementptr %struct.malidp_format_id, ptr %31, i32 %j.2165, i32 1
  %32 = ptrtoint ptr %layer to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %layer, align 4
  %conv30 = zext i8 %33 to i32
  %and32 = and i32 %conv30, %.pre172
  call void @__sanitizer_cov_trace_cmp4(i32 %and32, i32 %.pre172)
  %cmp34 = icmp eq i32 %and32, %.pre172
  br i1 %cmp34, label %if.then36, label %for.body28.for.inc_crit_edge

for.body28.for.inc_crit_edge:                     ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then36:                                        ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx29 = getelementptr %struct.malidp_format_id, ptr %31, i32 %j.2165
  %34 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx29, align 4
  %inc39 = add i32 %n.0167, 1
  %arrayidx40 = getelementptr i32, ptr %call8.i.i, i32 %n.0167
  %36 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx40, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then36, %for.body28.for.inc_crit_edge
  %n.1 = phi i32 [ %inc39, %if.then36 ], [ %n.0167, %for.body28.for.inc_crit_edge ]
  %inc42 = add nuw nsw i32 %j.2165, 1
  %37 = ptrtoint ptr %n_pixel_formats to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %n_pixel_formats, align 4
  %conv25 = zext i8 %38 to i32
  %cmp26 = icmp ult i32 %inc42, %conv25
  br i1 %cmp26, label %for.inc.for.body28_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body28_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body28

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond23.preheader.for.end_crit_edge
  %n.0.lcssa = phi i32 [ 0, %for.cond23.preheader.for.end_crit_edge ], [ %n.1, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0171)
  %cmp43 = icmp eq i32 %i.0171, 0
  %cond = zext i1 %cmp43 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %.pre)
  %cmp46 = icmp eq i16 %.pre, 16
  %spec.select = select i1 %cmp46, ptr @linear_only_modifiers, ptr %modifiers.1
  %call49 = call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %drm, ptr noundef nonnull %call7.i.i, i32 noundef %shl, ptr noundef nonnull @malidp_de_plane_funcs, ptr noundef nonnull %call8.i.i, i32 noundef %n.0.lcssa, ptr noundef nonnull %spec.select, i32 noundef %cond, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %for.end.cleanup89_crit_edge, label %if.end53

for.end.cleanup89_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup89

if.end53:                                         ; preds = %for.end
  %helper_private.i = getelementptr inbounds %struct.drm_plane, ptr %call7.i.i, i32 0, i32 18
  %39 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @malidp_de_plane_helper_funcs, ptr %helper_private.i, align 8
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 8
  %hwdev = getelementptr inbounds %struct.malidp_plane, ptr %call7.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %hwdev to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %hwdev, align 8
  %43 = ptrtoint ptr %layers to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %layers, align 4
  %arrayidx57 = getelementptr %struct.malidp_layer, ptr %44, i32 %i.0171
  %layer58 = getelementptr inbounds %struct.malidp_plane, ptr %call7.i.i, i32 0, i32 2
  %45 = ptrtoint ptr %layer58 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %arrayidx57, ptr %layer58, align 4
  %call60 = call i32 @drm_plane_create_alpha_property(ptr noundef nonnull %call7.i.i) #7
  %call62 = call i32 @drm_plane_create_blend_mode_property(ptr noundef nonnull %call7.i.i, i32 noundef 7) #7
  br i1 %cmp46, label %if.end53.for.inc86_crit_edge, label %if.end67

if.end53.for.inc86_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc86

if.end67:                                         ; preds = %if.end53
  %call69 = call i32 @drm_plane_create_rotation_property(ptr noundef nonnull %call7.i.i, i32 noundef 1, i32 noundef 63) #7
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 8
  %48 = ptrtoint ptr %layer58 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %layer58, align 4
  %base72 = getelementptr inbounds %struct.malidp_layer, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %base72 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %base72, align 2
  %conv73 = zext i16 %51 to i32
  %add = add nuw nsw i32 %conv73, 8
  %pm_suspended.i = getelementptr inbounds %struct.malidp_hw_device, ptr %47, i32 0, i32 9
  %52 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %pm_suspended.i, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i = icmp eq i8 %53, 0
  br i1 %tobool.not.i, label %if.end67.malidp_hw_write.exit_crit_edge, label %do.end.i, !prof !79

if.end67.malidp_hw_write.exit_crit_edge:          ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_hw_write.exit

do.end.i:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 268, i32 noundef 9, ptr noundef null) #7
  br label %malidp_hw_write.exit

malidp_hw_write.exit:                             ; preds = %do.end.i, %if.end67.malidp_hw_write.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  call void @arm_heavy_mb() #7
  %regs.i = getelementptr inbounds %struct.malidp_hw_device, ptr %47, i32 0, i32 1
  %54 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %55, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 5614335) #7, !srcloc !82
  %and75 = and i32 %.pre172, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %malidp_hw_write.exit.for.inc86_crit_edge, label %if.then77

malidp_hw_write.exit.for.inc86_crit_edge:         ; preds = %malidp_hw_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc86

if.then77:                                        ; preds = %malidp_hw_write.exit
  %call79 = call i32 @drm_plane_create_color_properties(ptr noundef nonnull %call7.i.i, i32 noundef 7, i32 noundef 3, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.then77.for.body.i_crit_edge, label %do.end

if.then77.for.body.i_crit_edge:                   ; preds = %if.then77
  br label %for.body.i

for.body.i:                                       ; preds = %malidp_hw_write.exit.i.for.body.i_crit_edge, %if.then77.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %malidp_hw_write.exit.i.for.body.i_crit_edge ], [ 0, %if.then77.for.body.i_crit_edge ]
  %56 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hwdev, align 8
  %arrayidx2.i = getelementptr [3 x [2 x [12 x i16]]], ptr @malidp_yuv2rgb_coeffs, i32 0, i32 0, i32 0, i32 %i.012.i
  %58 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx2.i, align 2
  %conv.i = sext i16 %59 to i32
  %60 = ptrtoint ptr %layer58 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %layer58, align 4
  %base.i = getelementptr inbounds %struct.malidp_layer, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %base.i, align 2
  %conv3.i = zext i16 %63 to i32
  %yuv2rgb_offset.i = getelementptr inbounds %struct.malidp_layer, ptr %61, i32 0, i32 4
  %64 = ptrtoint ptr %yuv2rgb_offset.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %yuv2rgb_offset.i, align 4
  %conv5.i = sext i16 %65 to i32
  %mul.i = shl nuw nsw i32 %i.012.i, 2
  %add.i = add nuw i32 %mul.i, %conv3.i
  %add6.i = add i32 %add.i, %conv5.i
  %pm_suspended.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %57, i32 0, i32 9
  %66 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %pm_suspended.i.i, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i.i = icmp eq i8 %67, 0
  br i1 %tobool.not.i.i, label %for.body.i.malidp_hw_write.exit.i_crit_edge, label %do.end.i.i, !prof !79

for.body.i.malidp_hw_write.exit.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_hw_write.exit.i

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 268, i32 noundef 9, ptr noundef null) #7
  br label %malidp_hw_write.exit.i

malidp_hw_write.exit.i:                           ; preds = %do.end.i.i, %for.body.i.malidp_hw_write.exit.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  call void @arm_heavy_mb() #7
  %68 = call i32 @llvm.bswap.i32(i32 %conv.i) #7
  %regs.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %57, i32 0, i32 1
  %69 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %70, i32 %add6.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %68) #7, !srcloc !82
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 12
  br i1 %exitcond.not.i, label %malidp_hw_write.exit.i.for.inc86_crit_edge, label %malidp_hw_write.exit.i.for.body.i_crit_edge

malidp_hw_write.exit.i.for.body.i_crit_edge:      ; preds = %malidp_hw_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

malidp_hw_write.exit.i.for.inc86_crit_edge:       ; preds = %malidp_hw_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc86

do.end:                                           ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  %call83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %.pre172) #12
  br label %for.inc86

for.inc86:                                        ; preds = %do.end, %malidp_hw_write.exit.i.for.inc86_crit_edge, %malidp_hw_write.exit.for.inc86_crit_edge, %if.end53.for.inc86_crit_edge
  %inc87 = add nuw nsw i32 %i.0171, 1
  %71 = ptrtoint ptr %n_layers to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %n_layers, align 1
  %conv13 = zext i8 %72 to i32
  %cmp14 = icmp ult i32 %inc87, %conv13
  br i1 %cmp14, label %for.inc86.for.body_crit_edge, label %for.inc86.for.end88_crit_edge

for.inc86.for.end88_crit_edge:                    ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end88

for.inc86.for.body_crit_edge:                     ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end88:                                        ; preds = %for.inc86.for.end88_crit_edge, %for.cond.preheader.for.end88_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i) #7
  br label %cleanup90

cleanup89:                                        ; preds = %for.end.cleanup89_crit_edge, %for.body.cleanup89_crit_edge, %if.end8.cleanup89_crit_edge
  %retval.0.i.i156 = phi ptr [ null, %if.end8.cleanup89_crit_edge ], [ %call8.i.i, %for.end.cleanup89_crit_edge ], [ %call8.i.i, %for.body.cleanup89_crit_edge ]
  %ret.2 = phi i32 [ -12, %if.end8.cleanup89_crit_edge ], [ -12, %for.body.cleanup89_crit_edge ], [ %call49, %for.end.cleanup89_crit_edge ]
  call void @kfree(ptr noundef %retval.0.i.i156) #7
  br label %cleanup90

cleanup90:                                        ; preds = %cleanup89, %for.end88
  %retval.0 = phi i32 [ %ret.2, %cleanup89 ], [ 0, %for.end88 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %supported_modifiers) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_alpha_property(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_blend_mode_property(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_rotation_property(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_color_properties(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @malidp_de_plane_destroy(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_plane_cleanup(ptr noundef %plane) #7
  tail call void @kfree(ptr noundef %plane) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @malidp_plane_reset(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__drm_atomic_helper_plane_destroy_state(ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %1) #7
  %2 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %state1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 140) #11
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__drm_atomic_helper_plane_reset(ptr noundef %plane, ptr noundef nonnull %call7.i.i) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @malidp_duplicate_plane_state(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 140) #11
  %tobool2.not = icmp eq ptr %call7.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state1, align 4
  tail call void @__drm_atomic_helper_plane_duplicate_state(ptr noundef %plane, ptr noundef nonnull %call7.i) #7
  %rotmem_size = getelementptr inbounds %struct.malidp_plane_state, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %rotmem_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rotmem_size, align 4
  %rotmem_size6 = getelementptr inbounds %struct.malidp_plane_state, ptr %call7.i, i32 0, i32 1
  %7 = ptrtoint ptr %rotmem_size6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %rotmem_size6, align 4
  %format = getelementptr inbounds %struct.malidp_plane_state, ptr %4, i32 0, i32 2
  %8 = ptrtoint ptr %format to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %format, align 4
  %format7 = getelementptr inbounds %struct.malidp_plane_state, ptr %call7.i, i32 0, i32 2
  %10 = ptrtoint ptr %format7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %format7, align 8
  %n_planes = getelementptr inbounds %struct.malidp_plane_state, ptr %4, i32 0, i32 3
  %11 = ptrtoint ptr %n_planes to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %n_planes, align 1
  %n_planes8 = getelementptr inbounds %struct.malidp_plane_state, ptr %call7.i, i32 0, i32 3
  %13 = ptrtoint ptr %n_planes8 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %n_planes8, align 1
  %mmu_prefetch_mode = getelementptr inbounds %struct.malidp_plane_state, ptr %4, i32 0, i32 4
  %14 = ptrtoint ptr %mmu_prefetch_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mmu_prefetch_mode, align 4
  %mmu_prefetch_mode9 = getelementptr inbounds %struct.malidp_plane_state, ptr %call7.i, i32 0, i32 4
  %16 = ptrtoint ptr %mmu_prefetch_mode9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %mmu_prefetch_mode9, align 4
  %mmu_prefetch_pgsize = getelementptr inbounds %struct.malidp_plane_state, ptr %4, i32 0, i32 5
  %17 = ptrtoint ptr %mmu_prefetch_pgsize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mmu_prefetch_pgsize, align 4
  %mmu_prefetch_pgsize10 = getelementptr inbounds %struct.malidp_plane_state, ptr %call7.i, i32 0, i32 5
  %19 = ptrtoint ptr %mmu_prefetch_pgsize10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %mmu_prefetch_pgsize10, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i, %if.end4 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @malidp_destroy_plane_state(ptr nocapture noundef readnone %plane, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__drm_atomic_helper_plane_destroy_state(ptr noundef %state) #7
  tail call void @kfree(ptr noundef %state) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @malidp_plane_atomic_print_state(ptr noundef %p, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rotmem_size = getelementptr inbounds %struct.malidp_plane_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %rotmem_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rotmem_size, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.17, i32 noundef %1) #7
  %format = getelementptr inbounds %struct.malidp_plane_state, ptr %state, i32 0, i32 2
  %2 = ptrtoint ptr %format to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %format, align 4
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.18, i32 noundef %conv) #7
  %n_planes = getelementptr inbounds %struct.malidp_plane_state, ptr %state, i32 0, i32 3
  %4 = ptrtoint ptr %n_planes to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %n_planes, align 1
  %conv1 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.19, i32 noundef %conv1) #7
  %mmu_prefetch_mode = getelementptr inbounds %struct.malidp_plane_state, ptr %state, i32 0, i32 4
  %6 = ptrtoint ptr %mmu_prefetch_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mmu_prefetch_mode, align 4
  %arrayidx = getelementptr [3 x ptr], ptr @prefetch_mode_names, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.20, ptr noundef %9) #7
  %mmu_prefetch_pgsize = getelementptr inbounds %struct.malidp_plane_state, ptr %state, i32 0, i32 5
  %10 = ptrtoint ptr %mmu_prefetch_pgsize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mmu_prefetch_pgsize, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.21, i32 noundef %11) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @malidp_format_mod_supported_per_plane(ptr nocapture noundef readonly %plane, i32 noundef %format, i64 noundef %modifier) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plane, align 8
  %call = tail call zeroext i1 @malidp_format_mod_supported(ptr noundef %1, i32 noundef %format, i64 noundef %modifier)
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_destroy_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @malidp_de_plane_check(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
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
  %rotation = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rotation, align 4
  %and = and i32 %7, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %pixel_blend_mode = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 13
  %8 = ptrtoint ptr %pixel_blend_mode to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %pixel_blend_mode, align 2
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtc, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %entry.cleanup217_crit_edge, label %lor.lhs.false

entry.cleanup217_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup217

lor.lhs.false:                                    ; preds = %entry
  %fb5 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %fb5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fb5, align 4
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %do.end, label %if.end30, !prof !83

do.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 517, i32 noundef 9, ptr noundef null) #7
  br label %cleanup217

if.end30:                                         ; preds = %lor.lhs.false
  %hwdev = getelementptr inbounds %struct.malidp_plane, ptr %plane, i32 0, i32 1
  %14 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hwdev, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %layer = getelementptr inbounds %struct.malidp_plane, ptr %plane, i32 0, i32 2
  %18 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %layer, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %19, align 4
  %conv = trunc i16 %21 to i8
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 4
  %22 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %format, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %modifier = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 8
  %26 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %modifier, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %tobool33 = icmp ne i64 %27, 0
  %call38 = tail call zeroext i8 @malidp_hw_get_format_id(ptr noundef %17, i8 noundef zeroext %conv, i32 noundef %25, i1 noundef zeroext %tobool33) #7
  %format39 = getelementptr inbounds %struct.malidp_plane_state, ptr %5, i32 0, i32 2
  %28 = ptrtoint ptr %format39 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %call38, ptr %format39, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call38)
  %cmp = icmp eq i8 %call38, -1
  br i1 %cmp, label %if.end30.cleanup217_crit_edge, label %if.end44

if.end30.cleanup217_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup217

if.end44:                                         ; preds = %if.end30
  %29 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %format, align 8
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %num_planes, align 1
  %n_planes = getelementptr inbounds %struct.malidp_plane_state, ptr %5, i32 0, i32 3
  %33 = ptrtoint ptr %n_planes to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %n_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp48306.not = icmp eq i8 %32, 0
  br i1 %cmp48306.not, label %if.end44.for.end_crit_edge, label %for.body.lr.ph

if.end44.for.end_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end44
  %cond.i = select i1 %tobool.not, i8 0, i8 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0307 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %34 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hwdev, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %bus_align_bytes.i = getelementptr inbounds %struct.malidp_hw_regmap, ptr %37, i32 0, i32 12
  %38 = ptrtoint ptr %bus_align_bytes.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bus_align_bytes.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %39)
  %cmp.i = icmp eq i8 %39, 8
  %shl.i = shl i8 %39, %cond.i
  %retval.0.i = select i1 %cmp.i, i8 8, i8 %shl.i
  %arrayidx = getelementptr %struct.drm_framebuffer, ptr %13, i32 0, i32 6, i32 %i.0307
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx, align 4
  %42 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %format, align 8
  %call54 = tail call i32 @drm_format_info_block_height(ptr noundef %43, i32 noundef %i.0307) #7
  %mul = mul i32 %call54, %41
  %conv55 = zext i8 %retval.0.i to i32
  %sub = add nsw i32 %conv55, -1
  %and56 = and i32 %mul, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %44 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %modifier, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %45)
  %tobool59.not = icmp eq i64 %45, 0
  br i1 %tobool59.not, label %if.then60, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then60:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.25, i32 noundef %47, i32 noundef %i.0307) #7
  br label %cleanup217

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0307, 1
  %48 = ptrtoint ptr %n_planes to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %n_planes, align 1
  %conv47 = zext i8 %49 to i32
  %cmp48 = icmp ult i32 %inc, %conv47
  br i1 %cmp48, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end44.for.end_crit_edge
  %50 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %format, align 8
  %call65 = tail call i32 @drm_format_info_block_width(ptr noundef %51, i32 noundef 0) #7
  %52 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %format, align 8
  %call67 = tail call i32 @drm_format_info_block_height(ptr noundef %53, i32 noundef 0) #7
  %width = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 9
  %54 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %width, align 8
  %rem = urem i32 %55, %call65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool68.not = icmp eq i32 %rem, 0
  br i1 %tobool68.not, label %lor.lhs.false69, label %for.end.if.then72_crit_edge

for.end.if.then72_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then72

lor.lhs.false69:                                  ; preds = %for.end
  %height = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 10
  %56 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %height, align 4
  %rem70 = urem i32 %57, %call67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem70)
  %tobool71.not = icmp eq i32 %rem70, 0
  br i1 %tobool71.not, label %if.end73, label %lor.lhs.false69.if.then72_crit_edge

lor.lhs.false69.if.then72_crit_edge:              ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then72

if.then72:                                        ; preds = %lor.lhs.false69.if.then72_crit_edge, %for.end.if.then72_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.26) #7
  br label %cleanup217

if.end73:                                         ; preds = %lor.lhs.false69
  %src_x = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 8
  %58 = ptrtoint ptr %src_x to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %src_x, align 4
  %shr = lshr i32 %59, 16
  %rem74 = urem i32 %shr, %call65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem74)
  %tobool75.not = icmp eq i32 %rem74, 0
  br i1 %tobool75.not, label %lor.lhs.false76, label %if.end73.if.then80_crit_edge

if.end73.if.then80_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then80

lor.lhs.false76:                                  ; preds = %if.end73
  %src_y = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 9
  %60 = ptrtoint ptr %src_y to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %src_y, align 4
  %shr77 = lshr i32 %61, 16
  %rem78 = urem i32 %shr77, %call67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem78)
  %tobool79.not = icmp eq i32 %rem78, 0
  br i1 %tobool79.not, label %if.end81, label %lor.lhs.false76.if.then80_crit_edge

lor.lhs.false76.if.then80_crit_edge:              ; preds = %lor.lhs.false76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then80

if.then80:                                        ; preds = %lor.lhs.false76.if.then80_crit_edge, %if.end73.if.then80_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.27) #7
  br label %cleanup217

if.end81:                                         ; preds = %lor.lhs.false76
  %crtc_w = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 6
  %62 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %crtc_w, align 4
  %64 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hwdev, align 8
  %max_line_size = getelementptr inbounds %struct.malidp_hw_device, ptr %65, i32 0, i32 7
  %66 = ptrtoint ptr %max_line_size to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %max_line_size, align 2
  %conv83 = zext i16 %67 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %conv83)
  %cmp84 = icmp ugt i32 %63, %conv83
  br i1 %cmp84, label %if.end81.cleanup217_crit_edge, label %lor.lhs.false86

if.end81.cleanup217_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup217

lor.lhs.false86:                                  ; preds = %if.end81
  %crtc_h = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 7
  %68 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %crtc_h, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %conv83)
  %cmp90 = icmp ugt i32 %69, %conv83
  br i1 %cmp90, label %lor.lhs.false86.cleanup217_crit_edge, label %lor.lhs.false92

lor.lhs.false86.cleanup217_crit_edge:             ; preds = %lor.lhs.false86
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup217

lor.lhs.false92:                                  ; preds = %lor.lhs.false86
  %min_line_size = getelementptr inbounds %struct.malidp_hw_device, ptr %65, i32 0, i32 6
  %70 = ptrtoint ptr %min_line_size to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %min_line_size, align 4
  %conv95 = zext i8 %71 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %conv95)
  %cmp96 = icmp ult i32 %63, %conv95
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %conv95)
  %cmp103 = icmp ult i32 %69, %conv95
  %or.cond = select i1 %cmp96, i1 true, i1 %cmp103
  br i1 %or.cond, label %lor.lhs.false92.cleanup217_crit_edge, label %if.end106

lor.lhs.false92.cleanup217_crit_edge:             ; preds = %lor.lhs.false92
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup217

if.end106:                                        ; preds = %lor.lhs.false92
  %72 = ptrtoint ptr %n_planes to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %n_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %73)
  %cmp109 = icmp eq i8 %73, 3
  br i1 %cmp109, label %land.lhs.true111, label %if.end106.if.end127_crit_edge

if.end106.if.end127_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end127

land.lhs.true111:                                 ; preds = %if.end106
  %74 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %65, align 4
  %features = getelementptr inbounds %struct.malidp_hw, ptr %75, i32 0, i32 12
  %76 = ptrtoint ptr %features to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %features, align 4
  %78 = and i8 %77, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool116.not = icmp eq i8 %78, 0
  br i1 %tobool116.not, label %land.lhs.true117, label %land.lhs.true111.if.end127_crit_edge

land.lhs.true111.if.end127_crit_edge:             ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end127

land.lhs.true117:                                 ; preds = %land.lhs.true111
  %79 = ptrtoint ptr %fb5 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %fb5, align 4
  %arrayidx120 = getelementptr %struct.drm_framebuffer, ptr %80, i32 0, i32 6, i32 1
  %81 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx120, align 4
  %arrayidx123 = getelementptr %struct.drm_framebuffer, ptr %80, i32 0, i32 6, i32 2
  %83 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx123, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %84)
  %cmp124.not = icmp eq i32 %82, %84
  br i1 %cmp124.not, label %land.lhs.true117.if.end127_crit_edge, label %land.lhs.true117.cleanup217_crit_edge

land.lhs.true117.cleanup217_crit_edge:            ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup217

land.lhs.true117.if.end127_crit_edge:             ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end127

if.end127:                                        ; preds = %land.lhs.true117.if.end127_crit_edge, %land.lhs.true111.if.end127_crit_edge, %if.end106.if.end127_crit_edge
  %call128 = tail call fastcc i32 @malidp_se_check_scaling(ptr noundef %plane, ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.end131, label %if.end127.cleanup217_crit_edge

if.end127.cleanup217_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup217

if.end131:                                        ; preds = %if.end127
  %85 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %rotation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %86)
  %cmp133.not = icmp eq i32 %86, 1
  br i1 %cmp133.not, label %if.end131.if.end164_crit_edge, label %if.then135

if.end131.if.end164_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end164

if.then135:                                       ; preds = %if.end131
  %87 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %layer, align 4
  %rot = getelementptr inbounds %struct.malidp_layer, ptr %88, i32 0, i32 6
  %89 = ptrtoint ptr %rot to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rot, align 4
  %91 = zext i32 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %90, label %if.then135.if.end149_crit_edge [
    i32 0, label %if.then135.cleanup217_crit_edge
    i32 2, label %land.lhs.true145
  ]

if.then135.cleanup217_crit_edge:                  ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup217

if.then135.if.end149_crit_edge:                   ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end149

land.lhs.true145:                                 ; preds = %if.then135
  %92 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %modifier, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %93)
  %tobool147.not = icmp eq i64 %93, 0
  br i1 %tobool147.not, label %land.lhs.true145.cleanup217_crit_edge, label %land.lhs.true145.if.end149_crit_edge

land.lhs.true145.if.end149_crit_edge:             ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end149

land.lhs.true145.cleanup217_crit_edge:            ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup217

if.end149:                                        ; preds = %land.lhs.true145.if.end149_crit_edge, %if.then135.if.end149_crit_edge
  %94 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %format, align 8
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %95, align 4
  %98 = zext i32 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %97, label %if.end149.if.end164_crit_edge [
    i32 875710290, label %if.end149.land.lhs.true159_crit_edge
    i32 875710274, label %if.end149.land.lhs.true159_crit_edge319
  ]

if.end149.land.lhs.true159_crit_edge319:          ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true159

if.end149.land.lhs.true159_crit_edge:             ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true159

if.end149.if.end164_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end164

land.lhs.true159:                                 ; preds = %if.end149.land.lhs.true159_crit_edge, %if.end149.land.lhs.true159_crit_edge319
  %99 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %modifier, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %100)
  %tobool161.not = icmp eq i64 %100, 0
  br i1 %tobool161.not, label %land.lhs.true159.cleanup217_crit_edge, label %land.lhs.true159.if.end164_crit_edge

land.lhs.true159.if.end164_crit_edge:             ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end164

land.lhs.true159.cleanup217_crit_edge:            ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup217

if.end164:                                        ; preds = %land.lhs.true159.if.end164_crit_edge, %if.end149.if.end164_crit_edge, %if.end131.if.end164_crit_edge
  %101 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %layer, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %102, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %104)
  %cmp168 = icmp eq i16 %104, 16
  br i1 %cmp168, label %land.lhs.true170, label %if.end164.if.end174_crit_edge

if.end164.if.end174_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end174

land.lhs.true170:                                 ; preds = %if.end164
  %105 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %modifier, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %106)
  %tobool172.not = icmp eq i64 %106, 0
  br i1 %tobool172.not, label %land.lhs.true170.if.end174_crit_edge, label %if.then173

land.lhs.true170.if.end174_crit_edge:             ; preds = %land.lhs.true170
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end174

if.then173:                                       ; preds = %land.lhs.true170
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.28) #7
  br label %cleanup217

if.end174:                                        ; preds = %land.lhs.true170.if.end174_crit_edge, %if.end164.if.end174_crit_edge
  %rotmem_size = getelementptr inbounds %struct.malidp_plane_state, ptr %5, i32 0, i32 1
  %107 = ptrtoint ptr %rotmem_size to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %rotmem_size, align 4
  %and176 = and i32 %86, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176)
  %tobool177.not = icmp eq i32 %and176, 0
  br i1 %tobool177.not, label %if.end174.if.end203_crit_edge, label %if.then178

if.end174.if.end203_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end203

if.then178:                                       ; preds = %if.end174
  %108 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hwdev, align 8
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 4
  %rotmem_required = getelementptr inbounds %struct.malidp_hw, ptr %111, i32 0, i32 7
  %112 = ptrtoint ptr %rotmem_required to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %rotmem_required, align 4
  %114 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %crtc_w, align 4
  %conv183 = trunc i32 %115 to i16
  %116 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %crtc_h, align 4
  %conv185 = trunc i32 %117 to i16
  %118 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %format, align 8
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %119, align 4
  %122 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %modifier, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %123)
  %tobool189 = icmp ne i64 %123, 0
  %call194 = tail call i32 %113(ptr noundef %109, i16 noundef zeroext %conv183, i16 noundef zeroext %conv185, i32 noundef %121, i1 noundef zeroext %tobool189) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %cmp195 = icmp slt i32 %call194, 0
  br i1 %cmp195, label %if.then178.cleanup217_crit_edge, label %cleanup200

if.then178.cleanup217_crit_edge:                  ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup217

cleanup200:                                       ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #9
  %124 = ptrtoint ptr %rotmem_size to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %call194, ptr %rotmem_size, align 4
  br label %if.end203

if.end203:                                        ; preds = %cleanup200, %if.end174.if.end203_crit_edge
  %alpha = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 12
  %125 = ptrtoint ptr %alpha to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %alpha, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %126)
  %cmp205.not = icmp eq i16 %126, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %9)
  %cmp209.not = icmp eq i16 %9, 2
  %or.cond302 = select i1 %cmp205.not, i1 true, i1 %cmp209.not
  br i1 %or.cond302, label %if.end203.if.end216_crit_edge, label %land.lhs.true211

if.end203.if.end216_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end216

land.lhs.true211:                                 ; preds = %if.end203
  %127 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %format, align 8
  %has_alpha = getelementptr inbounds %struct.drm_format_info, ptr %128, i32 0, i32 8
  %129 = ptrtoint ptr %has_alpha to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %has_alpha, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool213.not = icmp eq i8 %130, 0
  br i1 %tobool213.not, label %land.lhs.true211.if.end216_crit_edge, label %land.lhs.true211.cleanup217_crit_edge

land.lhs.true211.cleanup217_crit_edge:            ; preds = %land.lhs.true211
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup217

land.lhs.true211.if.end216_crit_edge:             ; preds = %land.lhs.true211
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end216

if.end216:                                        ; preds = %land.lhs.true211.if.end216_crit_edge, %if.end203.if.end216_crit_edge
  tail call fastcc void @malidp_de_prefetch_settings(ptr noundef %plane, ptr noundef %5)
  br label %cleanup217

cleanup217:                                       ; preds = %if.end216, %land.lhs.true211.cleanup217_crit_edge, %if.then178.cleanup217_crit_edge, %if.then173, %land.lhs.true159.cleanup217_crit_edge, %land.lhs.true145.cleanup217_crit_edge, %if.then135.cleanup217_crit_edge, %if.end127.cleanup217_crit_edge, %land.lhs.true117.cleanup217_crit_edge, %lor.lhs.false92.cleanup217_crit_edge, %lor.lhs.false86.cleanup217_crit_edge, %if.end81.cleanup217_crit_edge, %if.then80, %if.then72, %if.then60, %if.end30.cleanup217_crit_edge, %do.end, %entry.cleanup217_crit_edge
  %retval.3 = phi i32 [ -22, %if.then72 ], [ -22, %if.then80 ], [ -22, %if.then173 ], [ 0, %if.end216 ], [ 0, %do.end ], [ 0, %entry.cleanup217_crit_edge ], [ -22, %if.end30.cleanup217_crit_edge ], [ -22, %if.then60 ], [ -22, %lor.lhs.false92.cleanup217_crit_edge ], [ -22, %lor.lhs.false86.cleanup217_crit_edge ], [ -22, %if.end81.cleanup217_crit_edge ], [ -22, %land.lhs.true117.cleanup217_crit_edge ], [ %call128, %if.end127.cleanup217_crit_edge ], [ -22, %if.then135.cleanup217_crit_edge ], [ -22, %land.lhs.true145.cleanup217_crit_edge ], [ -22, %land.lhs.true159.cleanup217_crit_edge ], [ -22, %land.lhs.true211.cleanup217_crit_edge ], [ %call194, %if.then178.cleanup217_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @malidp_de_plane_update(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
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
  %old_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 2
  %4 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %old_state.i, align 4
  %state1 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %6 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state1, align 4
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 3
  %8 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %new_state.i, align 4
  %pixel_blend_mode = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %pixel_blend_mode to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %pixel_blend_mode, align 2
  %alpha = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 12
  %12 = ptrtoint ptr %alpha to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %alpha, align 4
  %14 = lshr i16 %13, 8
  %conv3 = zext i16 %14 to i32
  %fb5 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 2
  %15 = ptrtoint ptr %fb5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fb5, align 4
  %modifier = getelementptr inbounds %struct.drm_framebuffer, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %modifier, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool.not = icmp eq i64 %18, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %width = getelementptr inbounds %struct.drm_framebuffer, ptr %16, i32 0, i32 9
  %19 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.drm_framebuffer, ptr %16, i32 0, i32 10
  %21 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %height, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %src_w9 = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 11
  %23 = ptrtoint ptr %src_w9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %src_w9, align 4
  %shr10 = lshr i32 %24, 16
  %src_h11 = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 10
  %25 = ptrtoint ptr %src_h11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %src_h11, align 4
  %shr12 = lshr i32 %26, 16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %src_w.0 = phi i32 [ %20, %if.then ], [ %shr10, %if.else ]
  %src_h.0 = phi i32 [ %22, %if.then ], [ %shr12, %if.else ]
  %crtc_w = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 6
  %27 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %crtc_w, align 4
  %crtc_h = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 7
  %29 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %crtc_h, align 4
  %hwdev = getelementptr inbounds %struct.malidp_plane, ptr %plane, i32 0, i32 1
  %31 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hwdev, align 8
  %layer = getelementptr inbounds %struct.malidp_plane, ptr %plane, i32 0, i32 2
  %33 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %layer, align 4
  %base = getelementptr inbounds %struct.malidp_layer, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %base, align 2
  %conv13 = zext i16 %36 to i32
  %pm_suspended.i = getelementptr inbounds %struct.malidp_hw_device, ptr %32, i32 0, i32 9
  %37 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %pm_suspended.i, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i, label %if.end.malidp_hw_read.exit_crit_edge, label %do.end.i, !prof !79

if.end.malidp_hw_read.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_hw_read.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 261, i32 noundef 9, ptr noundef null) #7
  br label %malidp_hw_read.exit

malidp_hw_read.exit:                              ; preds = %do.end.i, %if.end.malidp_hw_read.exit_crit_edge
  %regs.i = getelementptr inbounds %struct.malidp_hw_device, ptr %32, i32 0, i32 1
  %39 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %40, i32 %conv13
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %42 = and i32 %41, -1056964609
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %format = getelementptr inbounds %struct.malidp_plane_state, ptr %7, i32 0, i32 2
  %44 = ptrtoint ptr %format to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %format, align 4
  %conv15 = zext i8 %45 to i32
  %or = or i32 %43, %conv15
  %46 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hwdev, align 8
  %48 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %layer, align 4
  %base18 = getelementptr inbounds %struct.malidp_layer, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %base18 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %base18, align 2
  %conv19 = zext i16 %51 to i32
  %pm_suspended.i263 = getelementptr inbounds %struct.malidp_hw_device, ptr %47, i32 0, i32 9
  %52 = ptrtoint ptr %pm_suspended.i263 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %pm_suspended.i263, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i264 = icmp eq i8 %53, 0
  br i1 %tobool.not.i264, label %malidp_hw_read.exit.malidp_hw_write.exit_crit_edge, label %do.end.i265, !prof !79

malidp_hw_read.exit.malidp_hw_write.exit_crit_edge: ; preds = %malidp_hw_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_hw_write.exit

do.end.i265:                                      ; preds = %malidp_hw_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 268, i32 noundef 9, ptr noundef null) #7
  br label %malidp_hw_write.exit

malidp_hw_write.exit:                             ; preds = %do.end.i265, %malidp_hw_read.exit.malidp_hw_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %54 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %regs.i266 = getelementptr inbounds %struct.malidp_hw_device, ptr %47, i32 0, i32 1
  %55 = ptrtoint ptr %regs.i266 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs.i266, align 4
  %add.ptr.i267 = getelementptr i8, ptr %56, i32 %conv19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i267, i32 %54) #7, !srcloc !82
  %n_planes = getelementptr inbounds %struct.malidp_plane_state, ptr %7, i32 0, i32 3
  %57 = ptrtoint ptr %n_planes to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %n_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp378.not = icmp eq i8 %58, 0
  br i1 %cmp378.not, label %malidp_hw_write.exit.for.end_crit_edge, label %malidp_hw_write.exit.for.body_crit_edge

malidp_hw_write.exit.for.body_crit_edge:          ; preds = %malidp_hw_write.exit
  br label %for.body

malidp_hw_write.exit.for.end_crit_edge:           ; preds = %malidp_hw_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %malidp_set_plane_base_addr.exit.for.body_crit_edge, %malidp_hw_write.exit.for.body_crit_edge
  %i.0379 = phi i32 [ %inc, %malidp_set_plane_base_addr.exit.for.body_crit_edge ], [ 0, %malidp_hw_write.exit.for.body_crit_edge ]
  %59 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %modifier, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %60)
  %tobool.not.i268 = icmp eq i64 %60, 0
  %61 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %layer, align 4
  %ptr2.i = getelementptr inbounds %struct.malidp_layer, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %ptr2.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %ptr2.i, align 4
  %plane_index.tr.i = trunc i32 %i.0379 to i16
  %65 = shl i16 %plane_index.tr.i, 4
  %conv3.i = add i16 %64, %65
  br i1 %tobool.not.i268, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %state1, align 4
  %call.i = tail call i32 @drm_fb_cma_get_gem_addr(ptr noundef %16, ptr noundef %67, i32 noundef %i.0379) #7
  br label %if.end32.i

if.else.i:                                        ; preds = %for.body
  %call5.i = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %16, i32 noundef %i.0379) #7
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %cleanup.thread.i, label %cleanup.i, !prof !83

cleanup.thread.i:                                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 742, i32 noundef 9, ptr noundef null) #7
  br label %malidp_set_plane_base_addr.exit

cleanup.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %paddr31.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call5.i, i32 0, i32 1
  %68 = ptrtoint ptr %paddr31.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %paddr31.i, align 8
  br label %if.end32.i

if.end32.i:                                       ; preds = %cleanup.i, %if.then.i
  %paddr.1.i = phi i32 [ %69, %cleanup.i ], [ %call.i, %if.then.i ]
  %70 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hwdev, align 8
  %conv33.i = zext i16 %conv3.i to i32
  %pm_suspended.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %71, i32 0, i32 9
  %72 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %pm_suspended.i.i, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i.i = icmp eq i8 %73, 0
  br i1 %tobool.not.i.i, label %if.end32.i.malidp_hw_write.exit.i_crit_edge, label %do.end.i.i, !prof !79

if.end32.i.malidp_hw_write.exit.i_crit_edge:      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_hw_write.exit.i

do.end.i.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 268, i32 noundef 9, ptr noundef null) #7
  br label %malidp_hw_write.exit.i

malidp_hw_write.exit.i:                           ; preds = %do.end.i.i, %if.end32.i.malidp_hw_write.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %74 = tail call i32 @llvm.bswap.i32(i32 %paddr.1.i) #7
  %regs.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %71, i32 0, i32 1
  %75 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %76, i32 %conv33.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %74) #7, !srcloc !82
  %77 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hwdev, align 8
  %add37.i = add nuw nsw i32 %conv33.i, 4
  %pm_suspended.i56.i = getelementptr inbounds %struct.malidp_hw_device, ptr %78, i32 0, i32 9
  %79 = ptrtoint ptr %pm_suspended.i56.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %pm_suspended.i56.i, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i57.i = icmp eq i8 %80, 0
  br i1 %tobool.not.i57.i, label %malidp_hw_write.exit.i.malidp_hw_write.exit61.i_crit_edge, label %do.end.i58.i, !prof !79

malidp_hw_write.exit.i.malidp_hw_write.exit61.i_crit_edge: ; preds = %malidp_hw_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_hw_write.exit61.i

do.end.i58.i:                                     ; preds = %malidp_hw_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 268, i32 noundef 9, ptr noundef null) #7
  br label %malidp_hw_write.exit61.i

malidp_hw_write.exit61.i:                         ; preds = %do.end.i58.i, %malidp_hw_write.exit.i.malidp_hw_write.exit61.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %regs.i59.i = getelementptr inbounds %struct.malidp_hw_device, ptr %78, i32 0, i32 1
  %81 = ptrtoint ptr %regs.i59.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs.i59.i, align 4
  %add.ptr.i60.i = getelementptr i8, ptr %82, i32 %add37.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60.i, i32 0) #7, !srcloc !82
  br label %malidp_set_plane_base_addr.exit

malidp_set_plane_base_addr.exit:                  ; preds = %malidp_hw_write.exit61.i, %cleanup.thread.i
  %inc = add nuw nsw i32 %i.0379, 1
  %83 = ptrtoint ptr %n_planes to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %n_planes, align 1
  %conv20 = zext i8 %84 to i32
  %cmp = icmp ult i32 %inc, %conv20
  br i1 %cmp, label %malidp_set_plane_base_addr.exit.for.body_crit_edge, label %malidp_set_plane_base_addr.exit.for.end_crit_edge

malidp_set_plane_base_addr.exit.for.end_crit_edge: ; preds = %malidp_set_plane_base_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

malidp_set_plane_base_addr.exit.for.body_crit_edge: ; preds = %malidp_set_plane_base_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %malidp_set_plane_base_addr.exit.for.end_crit_edge, %malidp_hw_write.exit.for.end_crit_edge
  %.lcssa376 = phi i8 [ 0, %malidp_hw_write.exit.for.end_crit_edge ], [ %84, %malidp_set_plane_base_addr.exit.for.end_crit_edge ]
  %conv20.le = zext i8 %.lcssa376 to i32
  %85 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %layer, align 4
  %mmu_ctrl_offset.i = getelementptr inbounds %struct.malidp_layer, ptr %86, i32 0, i32 5
  %87 = ptrtoint ptr %mmu_ctrl_offset.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %mmu_ctrl_offset.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %tobool.not.i270 = icmp eq i16 %88, 0
  br i1 %tobool.not.i270, label %for.end.malidp_de_set_mmu_control.exit_crit_edge, label %if.end.i

for.end.malidp_de_set_mmu_control.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_de_set_mmu_control.exit

if.end.i:                                         ; preds = %for.end
  %mmu_prefetch_mode.i = getelementptr inbounds %struct.malidp_plane_state, ptr %7, i32 0, i32 4
  %89 = ptrtoint ptr %mmu_prefetch_mode.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %mmu_prefetch_mode.i, align 4
  %mmu_prefetch_pgsize.i = getelementptr inbounds %struct.malidp_plane_state, ptr %7, i32 0, i32 5
  %91 = ptrtoint ptr %mmu_prefetch_pgsize.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %mmu_prefetch_pgsize.i, align 4
  %93 = zext i32 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %90, label %if.end.i.if.end.i.i_crit_edge [
    i32 0, label %if.end.i.malidp_calc_mmu_control_value.exit.i_crit_edge
    i32 1, label %if.then2.i.i
  ]

if.end.i.malidp_calc_mmu_control_value.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_calc_mmu_control_value.exit.i

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then2.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then2.i.i, %if.end.i.if.end.i.i_crit_edge
  %mmu_ctrl.0.i.i = phi i32 [ 32785, %if.then2.i.i ], [ 1, %if.end.i.if.end.i.i_crit_edge ]
  %94 = zext i32 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %92, label %if.end.i.i.malidp_calc_mmu_control_value.exit.i_crit_edge [
    i32 65536, label %if.end.i.i.if.then9.i.i_crit_edge
    i32 2097152, label %if.end.i.i.if.then9.i.i_crit_edge383
  ]

if.end.i.i.if.then9.i.i_crit_edge383:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9.i.i

if.end.i.i.if.then9.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9.i.i

if.end.i.i.malidp_calc_mmu_control_value.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_calc_mmu_control_value.exit.i

if.then9.i.i:                                     ; preds = %if.end.i.i.if.then9.i.i_crit_edge, %if.end.i.i.if.then9.i.i_crit_edge383
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lcssa376)
  %cmp111.not.i.i = icmp eq i8 %.lcssa376, 0
  br i1 %cmp111.not.i.i, label %if.then9.i.i.malidp_calc_mmu_control_value.exit.i_crit_edge, label %if.then9.i.i.for.body.i.i_crit_edge

if.then9.i.i.for.body.i.i_crit_edge:              ; preds = %if.then9.i.i
  br label %for.body.i.i

if.then9.i.i.malidp_calc_mmu_control_value.exit.i_crit_edge: ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_calc_mmu_control_value.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then9.i.i.for.body.i.i_crit_edge
  %i.03.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then9.i.i.for.body.i.i_crit_edge ]
  %mmu_ctrl.12.i.i = phi i32 [ %or14.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %mmu_ctrl.0.i.i, %if.then9.i.i.for.body.i.i_crit_edge ]
  %shl13.i.i = shl i32 256, %i.03.i.i
  %or14.i.i = or i32 %shl13.i.i, %mmu_ctrl.12.i.i
  %inc.i.i = add nuw nsw i32 %i.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv20.le
  br i1 %exitcond.not.i.i, label %for.body.i.i.malidp_calc_mmu_control_value.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i.malidp_calc_mmu_control_value.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_calc_mmu_control_value.exit.i

malidp_calc_mmu_control_value.exit.i:             ; preds = %for.body.i.i.malidp_calc_mmu_control_value.exit.i_crit_edge, %if.then9.i.i.malidp_calc_mmu_control_value.exit.i_crit_edge, %if.end.i.i.malidp_calc_mmu_control_value.exit.i_crit_edge, %if.end.i.malidp_calc_mmu_control_value.exit.i_crit_edge
  %mmu_ctrl.2.i.i = phi i32 [ %90, %if.end.i.malidp_calc_mmu_control_value.exit.i_crit_edge ], [ %mmu_ctrl.0.i.i, %if.end.i.i.malidp_calc_mmu_control_value.exit.i_crit_edge ], [ %mmu_ctrl.0.i.i, %if.then9.i.i.malidp_calc_mmu_control_value.exit.i_crit_edge ], [ %or14.i.i, %for.body.i.i.malidp_calc_mmu_control_value.exit.i_crit_edge ]
  %95 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hwdev, align 8
  %base.i = getelementptr inbounds %struct.malidp_layer, ptr %86, i32 0, i32 1
  %97 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %base.i, align 2
  %conv.i = zext i16 %98 to i32
  %conv4.i = zext i16 %88 to i32
  %add.i = add nuw nsw i32 %conv.i, %conv4.i
  %pm_suspended.i.i272 = getelementptr inbounds %struct.malidp_hw_device, ptr %96, i32 0, i32 9
  %99 = ptrtoint ptr %pm_suspended.i.i272 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %pm_suspended.i.i272, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool.not.i.i273 = icmp eq i8 %100, 0
  br i1 %tobool.not.i.i273, label %malidp_calc_mmu_control_value.exit.i.malidp_hw_write.exit.i277_crit_edge, label %do.end.i.i274, !prof !79

malidp_calc_mmu_control_value.exit.i.malidp_hw_write.exit.i277_crit_edge: ; preds = %malidp_calc_mmu_control_value.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_hw_write.exit.i277

do.end.i.i274:                                    ; preds = %malidp_calc_mmu_control_value.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 268, i32 noundef 9, ptr noundef null) #7
  br label %malidp_hw_write.exit.i277

malidp_hw_write.exit.i277:                        ; preds = %do.end.i.i274, %malidp_calc_mmu_control_value.exit.i.malidp_hw_write.exit.i277_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %101 = tail call i32 @llvm.bswap.i32(i32 %mmu_ctrl.2.i.i) #7
  %regs.i.i275 = getelementptr inbounds %struct.malidp_hw_device, ptr %96, i32 0, i32 1
  %102 = ptrtoint ptr %regs.i.i275 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regs.i.i275, align 4
  %add.ptr.i.i276 = getelementptr i8, ptr %103, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i276, i32 %101) #7, !srcloc !82
  br label %malidp_de_set_mmu_control.exit

malidp_de_set_mmu_control.exit:                   ; preds = %malidp_hw_write.exit.i277, %for.end.malidp_de_set_mmu_control.exit_crit_edge
  %fb24 = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 2
  %104 = ptrtoint ptr %fb24 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %fb24, align 4
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %105, i32 0, i32 6
  %106 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %layer, align 4
  %stride_offset.i = getelementptr inbounds %struct.malidp_layer, ptr %107, i32 0, i32 3
  %108 = ptrtoint ptr %stride_offset.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %stride_offset.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %109)
  %tobool.not.i280 = icmp eq i16 %109, 0
  br i1 %tobool.not.i280, label %malidp_de_set_mmu_control.exit.malidp_de_set_plane_pitches.exit_crit_edge, label %if.end.i281

malidp_de_set_mmu_control.exit.malidp_de_set_plane_pitches.exit_crit_edge: ; preds = %malidp_de_set_mmu_control.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_de_set_plane_pitches.exit

if.end.i281:                                      ; preds = %malidp_de_set_mmu_control.exit
  %110 = ptrtoint ptr %n_planes to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %n_planes, align 1
  %conv23 = zext i8 %111 to i32
  %112 = zext i8 %111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.34)
  switch i8 %111, label %if.end.i281.for.body.lr.ph.i_crit_edge [
    i8 3, label %if.end3.thread.i
    i8 0, label %if.end.i281.malidp_de_set_plane_pitches.exit_crit_edge
  ]

if.end.i281.malidp_de_set_plane_pitches.exit_crit_edge: ; preds = %if.end.i281
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_de_set_plane_pitches.exit

if.end.i281.for.body.lr.ph.i_crit_edge:           ; preds = %if.end.i281
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph.i

if.end3.thread.i:                                 ; preds = %if.end.i281
  call void @__sanitizer_cov_trace_pc() #9
  %113 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %hwdev, align 8
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 4
  %features.i = getelementptr inbounds %struct.malidp_hw, ptr %116, i32 0, i32 12
  %117 = ptrtoint ptr %features.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %features.i, align 4
  %119 = and i8 %118, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool2.not.i = icmp eq i8 %119, 0
  %cond.i = select i1 %tobool2.not.i, i32 2, i32 3
  br label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.end3.thread.i, %if.end.i281.for.body.lr.ph.i_crit_edge
  %num_strides.030.i = phi i32 [ %cond.i, %if.end3.thread.i ], [ %conv23, %if.end.i281.for.body.lr.ph.i_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %malidp_hw_write.exit.i291.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.027.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %malidp_hw_write.exit.i291.for.body.i_crit_edge ]
  %120 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %state1, align 4
  %fb.i = getelementptr inbounds %struct.drm_plane_state, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %fb.i, align 4
  %format.i = getelementptr inbounds %struct.drm_framebuffer, ptr %123, i32 0, i32 4
  %124 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %format.i, align 8
  %call.i284 = tail call i32 @drm_format_info_block_height(ptr noundef %125, i32 noundef %i.027.i) #7
  %126 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %hwdev, align 8
  %arrayidx.i = getelementptr i32, ptr %pitches, i32 %i.027.i
  %128 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx.i, align 4
  %mul.i = mul i32 %129, %call.i284
  %130 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %layer, align 4
  %base8.i = getelementptr inbounds %struct.malidp_layer, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %base8.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %base8.i, align 2
  %conv9.i = zext i16 %133 to i32
  %stride_offset11.i = getelementptr inbounds %struct.malidp_layer, ptr %131, i32 0, i32 3
  %134 = ptrtoint ptr %stride_offset11.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %stride_offset11.i, align 2
  %conv12.i = zext i16 %135 to i32
  %mul13.i = shl i32 %i.027.i, 2
  %add.i285 = add i32 %mul13.i, %conv9.i
  %add14.i = add i32 %add.i285, %conv12.i
  %pm_suspended.i.i286 = getelementptr inbounds %struct.malidp_hw_device, ptr %127, i32 0, i32 9
  %136 = ptrtoint ptr %pm_suspended.i.i286 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %pm_suspended.i.i286, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool.not.i.i287 = icmp eq i8 %137, 0
  br i1 %tobool.not.i.i287, label %for.body.i.malidp_hw_write.exit.i291_crit_edge, label %do.end.i.i288, !prof !79

for.body.i.malidp_hw_write.exit.i291_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_hw_write.exit.i291

do.end.i.i288:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 268, i32 noundef 9, ptr noundef null) #7
  br label %malidp_hw_write.exit.i291

malidp_hw_write.exit.i291:                        ; preds = %do.end.i.i288, %for.body.i.malidp_hw_write.exit.i291_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %138 = tail call i32 @llvm.bswap.i32(i32 %mul.i) #7
  %regs.i.i289 = getelementptr inbounds %struct.malidp_hw_device, ptr %127, i32 0, i32 1
  %139 = ptrtoint ptr %regs.i.i289 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %regs.i.i289, align 4
  %add.ptr.i.i290 = getelementptr i8, ptr %140, i32 %add14.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i290, i32 %138) #7, !srcloc !82
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %num_strides.030.i
  br i1 %exitcond.not.i, label %malidp_hw_write.exit.i291.malidp_de_set_plane_pitches.exit_crit_edge, label %malidp_hw_write.exit.i291.for.body.i_crit_edge

malidp_hw_write.exit.i291.for.body.i_crit_edge:   ; preds = %malidp_hw_write.exit.i291
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

malidp_hw_write.exit.i291.malidp_de_set_plane_pitches.exit_crit_edge: ; preds = %malidp_hw_write.exit.i291
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_de_set_plane_pitches.exit

malidp_de_set_plane_pitches.exit:                 ; preds = %malidp_hw_write.exit.i291.malidp_de_set_plane_pitches.exit_crit_edge, %if.end.i281.malidp_de_set_plane_pitches.exit_crit_edge, %malidp_de_set_mmu_control.exit.malidp_de_set_plane_pitches.exit_crit_edge
  %141 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %state1, align 4
  %color_encoding = getelementptr inbounds %struct.drm_plane_state, ptr %142, i32 0, i32 17
  %143 = ptrtoint ptr %color_encoding to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %color_encoding, align 4
  %color_encoding26 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 17
  %145 = ptrtoint ptr %color_encoding26 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %color_encoding26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %144, i32 %146)
  %cmp27.not = icmp eq i32 %144, %146
  br i1 %cmp27.not, label %lor.lhs.false, label %malidp_de_set_plane_pitches.exit.if.then33_crit_edge

malidp_de_set_plane_pitches.exit.if.then33_crit_edge: ; preds = %malidp_de_set_plane_pitches.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then33

lor.lhs.false:                                    ; preds = %malidp_de_set_plane_pitches.exit
  %color_range = getelementptr inbounds %struct.drm_plane_state, ptr %142, i32 0, i32 18
  %147 = ptrtoint ptr %color_range to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %color_range, align 4
  %color_range30 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 18
  %149 = ptrtoint ptr %color_range30 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %color_range30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %148, i32 %150)
  %cmp31.not = icmp eq i32 %148, %150
  br i1 %cmp31.not, label %lor.lhs.false.if.end38_crit_edge, label %lor.lhs.false.if.then33_crit_edge

lor.lhs.false.if.then33_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then33

lor.lhs.false.if.end38_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then33:                                        ; preds = %lor.lhs.false.if.then33_crit_edge, %malidp_de_set_plane_pitches.exit.if.then33_crit_edge
  %color_range37 = getelementptr inbounds %struct.drm_plane_state, ptr %142, i32 0, i32 18
  %151 = ptrtoint ptr %color_range37 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %color_range37, align 4
  br label %for.body.i302

for.body.i302:                                    ; preds = %malidp_hw_write.exit.i308.for.body.i302_crit_edge, %if.then33
  %i.012.i = phi i32 [ 0, %if.then33 ], [ %inc.i306, %malidp_hw_write.exit.i308.for.body.i302_crit_edge ]
  %153 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %hwdev, align 8
  %arrayidx2.i = getelementptr [3 x [2 x [12 x i16]]], ptr @malidp_yuv2rgb_coeffs, i32 0, i32 %144, i32 %152, i32 %i.012.i
  %155 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %arrayidx2.i, align 2
  %conv.i295 = sext i16 %156 to i32
  %157 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %layer, align 4
  %base.i296 = getelementptr inbounds %struct.malidp_layer, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %base.i296 to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %base.i296, align 2
  %conv3.i297 = zext i16 %160 to i32
  %yuv2rgb_offset.i = getelementptr inbounds %struct.malidp_layer, ptr %158, i32 0, i32 4
  %161 = ptrtoint ptr %yuv2rgb_offset.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %yuv2rgb_offset.i, align 4
  %conv5.i = sext i16 %162 to i32
  %mul.i298 = shl nuw nsw i32 %i.012.i, 2
  %add.i299 = add nuw i32 %mul.i298, %conv3.i297
  %add6.i = add i32 %add.i299, %conv5.i
  %pm_suspended.i.i300 = getelementptr inbounds %struct.malidp_hw_device, ptr %154, i32 0, i32 9
  %163 = ptrtoint ptr %pm_suspended.i.i300 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %pm_suspended.i.i300, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool.not.i.i301 = icmp eq i8 %164, 0
  br i1 %tobool.not.i.i301, label %for.body.i302.malidp_hw_write.exit.i308_crit_edge, label %do.end.i.i303, !prof !79

for.body.i302.malidp_hw_write.exit.i308_crit_edge: ; preds = %for.body.i302
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_hw_write.exit.i308

do.end.i.i303:                                    ; preds = %for.body.i302
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 268, i32 noundef 9, ptr noundef null) #7
  br label %malidp_hw_write.exit.i308

malidp_hw_write.exit.i308:                        ; preds = %do.end.i.i303, %for.body.i302.malidp_hw_write.exit.i308_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %165 = tail call i32 @llvm.bswap.i32(i32 %conv.i295) #7
  %regs.i.i304 = getelementptr inbounds %struct.malidp_hw_device, ptr %154, i32 0, i32 1
  %166 = ptrtoint ptr %regs.i.i304 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %regs.i.i304, align 4
  %add.ptr.i.i305 = getelementptr i8, ptr %167, i32 %add6.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i305, i32 %165) #7, !srcloc !82
  %inc.i306 = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i307 = icmp eq i32 %inc.i306, 12
  br i1 %exitcond.not.i307, label %malidp_hw_write.exit.i308.if.end38_crit_edge, label %malidp_hw_write.exit.i308.for.body.i302_crit_edge

malidp_hw_write.exit.i308.for.body.i302_crit_edge: ; preds = %malidp_hw_write.exit.i308
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i302

malidp_hw_write.exit.i308.if.end38_crit_edge:     ; preds = %malidp_hw_write.exit.i308
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.end38:                                         ; preds = %malidp_hw_write.exit.i308.if.end38_crit_edge, %lor.lhs.false.if.end38_crit_edge
  %168 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %hwdev, align 8
  %and40 = and i32 %src_w.0, 8191
  %and41 = shl i32 %src_h.0, 16
  %shl42 = and i32 %and41, 536805376
  %or43 = or i32 %shl42, %and40
  %170 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %layer, align 4
  %base45 = getelementptr inbounds %struct.malidp_layer, ptr %171, i32 0, i32 1
  %172 = ptrtoint ptr %base45 to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %base45, align 2
  %conv46 = zext i16 %173 to i32
  %add = add nuw nsw i32 %conv46, 12
  %pm_suspended.i309 = getelementptr inbounds %struct.malidp_hw_device, ptr %169, i32 0, i32 9
  %174 = ptrtoint ptr %pm_suspended.i309 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %pm_suspended.i309, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool.not.i310 = icmp eq i8 %175, 0
  br i1 %tobool.not.i310, label %if.end38.malidp_hw_write.exit315_crit_edge, label %do.end.i311, !prof !79

if.end38.malidp_hw_write.exit315_crit_edge:       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_hw_write.exit315

do.end.i311:                                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 268, i32 noundef 9, ptr noundef null) #7
  br label %malidp_hw_write.exit315

malidp_hw_write.exit315:                          ; preds = %do.end.i311, %if.end38.malidp_hw_write.exit315_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %176 = tail call i32 @llvm.bswap.i32(i32 %or43) #7
  %regs.i312 = getelementptr inbounds %struct.malidp_hw_device, ptr %169, i32 0, i32 1
  %177 = ptrtoint ptr %regs.i312 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %regs.i312, align 4
  %add.ptr.i313 = getelementptr i8, ptr %178, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i313, i32 %176) #7, !srcloc !82
  %179 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %hwdev, align 8
  %and48 = and i32 %28, 8191
  %and50 = shl i32 %30, 16
  %shl51 = and i32 %and50, 536805376
  %or52 = or i32 %shl51, %and48
  %181 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %layer, align 4
  %base54 = getelementptr inbounds %struct.malidp_layer, ptr %182, i32 0, i32 1
  %183 = ptrtoint ptr %base54 to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %base54, align 2
  %conv55 = zext i16 %184 to i32
  %add56 = add nuw nsw i32 %conv55, 16
  %pm_suspended.i316 = getelementptr inbounds %struct.malidp_hw_device, ptr %180, i32 0, i32 9
  %185 = ptrtoint ptr %pm_suspended.i316 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %pm_suspended.i316, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %tobool.not.i317 = icmp eq i8 %186, 0
  br i1 %tobool.not.i317, label %malidp_hw_write.exit315.malidp_hw_write.exit322_crit_edge, label %do.end.i318, !prof !79

malidp_hw_write.exit315.malidp_hw_write.exit322_crit_edge: ; preds = %malidp_hw_write.exit315
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_hw_write.exit322

do.end.i318:                                      ; preds = %malidp_hw_write.exit315
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 268, i32 noundef 9, ptr noundef null) #7
  br label %malidp_hw_write.exit322

malidp_hw_write.exit322:                          ; preds = %do.end.i318, %malidp_hw_write.exit315.malidp_hw_write.exit322_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %187 = tail call i32 @llvm.bswap.i32(i32 %or52) #7
  %regs.i319 = getelementptr inbounds %struct.malidp_hw_device, ptr %180, i32 0, i32 1
  %188 = ptrtoint ptr %regs.i319 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %regs.i319, align 4
  %add.ptr.i320 = getelementptr i8, ptr %189, i32 %add56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i320, i32 %187) #7, !srcloc !82
  %190 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %hwdev, align 8
  %crtc_x = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 4
  %192 = ptrtoint ptr %crtc_x to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %crtc_x, align 4
  %and58 = and i32 %193, 8191
  %crtc_y = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 5
  %194 = ptrtoint ptr %crtc_y to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %crtc_y, align 4
  %and60 = shl i32 %195, 16
  %shl61 = and i32 %and60, 536805376
  %or62 = or i32 %shl61, %and58
  %196 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %layer, align 4
  %base64 = getelementptr inbounds %struct.malidp_layer, ptr %197, i32 0, i32 1
  %198 = ptrtoint ptr %base64 to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %base64, align 2
  %conv65 = zext i16 %199 to i32
  %add66 = add nuw nsw i32 %conv65, 20
  %pm_suspended.i323 = getelementptr inbounds %struct.malidp_hw_device, ptr %191, i32 0, i32 9
  %200 = ptrtoint ptr %pm_suspended.i323 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %pm_suspended.i323, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %201)
  %tobool.not.i324 = icmp eq i8 %201, 0
  br i1 %tobool.not.i324, label %malidp_hw_write.exit322.malidp_hw_write.exit329_crit_edge, label %do.end.i325, !prof !79

malidp_hw_write.exit322.malidp_hw_write.exit329_crit_edge: ; preds = %malidp_hw_write.exit322
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_hw_write.exit329

do.end.i325:                                      ; preds = %malidp_hw_write.exit322
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 268, i32 noundef 9, ptr noundef null) #7
  br label %malidp_hw_write.exit329

malidp_hw_write.exit329:                          ; preds = %do.end.i325, %malidp_hw_write.exit322.malidp_hw_write.exit329_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %202 = tail call i32 @llvm.bswap.i32(i32 %or62) #7
  %regs.i326 = getelementptr inbounds %struct.malidp_hw_device, ptr %191, i32 0, i32 1
  %203 = ptrtoint ptr %regs.i326 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %regs.i326, align 4
  %add.ptr.i327 = getelementptr i8, ptr %204, i32 %add66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i327, i32 %202) #7, !srcloc !82
  %205 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %layer, align 4
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %206, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %208)
  %cmp69 = icmp eq i16 %208, 16
  br i1 %cmp69, label %if.then71, label %malidp_hw_write.exit329.if.end87_crit_edge

malidp_hw_write.exit329.if.end87_crit_edge:       ; preds = %malidp_hw_write.exit329
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

if.then71:                                        ; preds = %malidp_hw_write.exit329
  %209 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %hwdev, align 8
  %base74 = getelementptr inbounds %struct.malidp_layer, ptr %206, i32 0, i32 1
  %211 = ptrtoint ptr %base74 to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %base74, align 2
  %conv75 = zext i16 %212 to i32
  %add76 = add nuw nsw i32 %conv75, 28
  %pm_suspended.i330 = getelementptr inbounds %struct.malidp_hw_device, ptr %210, i32 0, i32 9
  %213 = ptrtoint ptr %pm_suspended.i330 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %pm_suspended.i330, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %214)
  %tobool.not.i331 = icmp eq i8 %214, 0
  br i1 %tobool.not.i331, label %if.then71.malidp_hw_write.exit336_crit_edge, label %do.end.i332, !prof !79

if.then71.malidp_hw_write.exit336_crit_edge:      ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_hw_write.exit336

do.end.i332:                                      ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 268, i32 noundef 9, ptr noundef null) #7
  br label %malidp_hw_write.exit336

malidp_hw_write.exit336:                          ; preds = %do.end.i332, %if.then71.malidp_hw_write.exit336_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %regs.i333 = getelementptr inbounds %struct.malidp_hw_device, ptr %210, i32 0, i32 1
  %215 = ptrtoint ptr %regs.i333 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %regs.i333, align 4
  %add.ptr.i334 = getelementptr i8, ptr %216, i32 %add76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i334, i32 16777216) #7, !srcloc !82
  %217 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %hwdev, align 8
  %219 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %layer, align 4
  %base84 = getelementptr inbounds %struct.malidp_layer, ptr %220, i32 0, i32 1
  %221 = ptrtoint ptr %base84 to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %base84, align 2
  %conv85 = zext i16 %222 to i32
  %add86 = add nuw nsw i32 %conv85, 32
  %pm_suspended.i337 = getelementptr inbounds %struct.malidp_hw_device, ptr %218, i32 0, i32 9
  %223 = ptrtoint ptr %pm_suspended.i337 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %pm_suspended.i337, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %224)
  %tobool.not.i338 = icmp eq i8 %224, 0
  br i1 %tobool.not.i338, label %malidp_hw_write.exit336.malidp_hw_write.exit343_crit_edge, label %do.end.i339, !prof !79

malidp_hw_write.exit336.malidp_hw_write.exit343_crit_edge: ; preds = %malidp_hw_write.exit336
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_hw_write.exit343

do.end.i339:                                      ; preds = %malidp_hw_write.exit336
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 268, i32 noundef 9, ptr noundef null) #7
  br label %malidp_hw_write.exit343

malidp_hw_write.exit343:                          ; preds = %do.end.i339, %malidp_hw_write.exit336.malidp_hw_write.exit343_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %regs.i340 = getelementptr inbounds %struct.malidp_hw_device, ptr %218, i32 0, i32 1
  %225 = ptrtoint ptr %regs.i340 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %regs.i340, align 4
  %add.ptr.i341 = getelementptr i8, ptr %226, i32 %add86
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i341, i32 %176) #7, !srcloc !82
  br label %if.end87

if.end87:                                         ; preds = %malidp_hw_write.exit343, %malidp_hw_write.exit329.if.end87_crit_edge
  %227 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %state1, align 4
  %fb1.i = getelementptr inbounds %struct.drm_plane_state, ptr %228, i32 0, i32 2
  %229 = ptrtoint ptr %fb1.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %fb1.i, align 4
  %231 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %layer, align 4
  %afbc_decoder_offset.i = getelementptr inbounds %struct.malidp_layer, ptr %232, i32 0, i32 7
  %233 = ptrtoint ptr %afbc_decoder_offset.i to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %afbc_decoder_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %234)
  %tobool.not.i346 = icmp eq i16 %234, 0
  br i1 %tobool.not.i346, label %if.end87.malidp_de_set_plane_afbc.exit_crit_edge, label %if.end.i349

if.end87.malidp_de_set_plane_afbc.exit_crit_edge: ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_de_set_plane_afbc.exit

if.end.i349:                                      ; preds = %if.end87
  %modifier.i347 = getelementptr inbounds %struct.drm_framebuffer, ptr %230, i32 0, i32 8
  %235 = ptrtoint ptr %modifier.i347 to i32
  call void @__asan_load8_noabort(i32 %235)
  %236 = load i64, ptr %modifier.i347, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %236)
  %tobool2.not.i348 = icmp eq i64 %236, 0
  br i1 %tobool2.not.i348, label %if.then3.i, label %if.end6.i

if.then3.i:                                       ; preds = %if.end.i349
  %237 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %hwdev, align 8
  %conv.i351 = zext i16 %234 to i32
  %pm_suspended.i.i352 = getelementptr inbounds %struct.malidp_hw_device, ptr %238, i32 0, i32 9
  %239 = ptrtoint ptr %pm_suspended.i.i352 to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %pm_suspended.i.i352, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %240)
  %tobool.not.i.i353 = icmp eq i8 %240, 0
  br i1 %tobool.not.i.i353, label %if.then3.i.malidp_hw_write.exit.i357_crit_edge, label %do.end.i.i354, !prof !79

if.then3.i.malidp_hw_write.exit.i357_crit_edge:   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_hw_write.exit.i357

do.end.i.i354:                                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 268, i32 noundef 9, ptr noundef null) #7
  br label %malidp_hw_write.exit.i357

malidp_hw_write.exit.i357:                        ; preds = %do.end.i.i354, %if.then3.i.malidp_hw_write.exit.i357_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %regs.i.i355 = getelementptr inbounds %struct.malidp_hw_device, ptr %238, i32 0, i32 1
  %241 = ptrtoint ptr %regs.i.i355 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %regs.i.i355, align 4
  %add.ptr.i.i356 = getelementptr i8, ptr %242, i32 %conv.i351
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i356, i32 0) #7, !srcloc !82
  br label %malidp_de_set_plane_afbc.exit

if.end6.i:                                        ; preds = %if.end.i349
  %src_w8.i = getelementptr inbounds %struct.drm_plane_state, ptr %228, i32 0, i32 11
  %243 = ptrtoint ptr %src_w8.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %src_w8.i, align 4
  %shr.i = lshr i32 %244, 16
  %src_h10.i = getelementptr inbounds %struct.drm_plane_state, ptr %228, i32 0, i32 10
  %245 = ptrtoint ptr %src_h10.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %src_h10.i, align 4
  %shr11.i = lshr i32 %246, 16
  %src_x13.i = getelementptr inbounds %struct.drm_plane_state, ptr %228, i32 0, i32 8
  %247 = ptrtoint ptr %src_x13.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %src_x13.i, align 4
  %shr14.i = lshr i32 %248, 16
  %src_y16.i = getelementptr inbounds %struct.drm_plane_state, ptr %228, i32 0, i32 9
  %249 = ptrtoint ptr %src_y16.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %src_y16.i, align 4
  %shr17.i = lshr i32 %250, 16
  %width.i = getelementptr inbounds %struct.drm_framebuffer, ptr %230, i32 0, i32 9
  %251 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %width.i, align 8
  %253 = add nuw nsw i32 %shr14.i, %shr.i
  %sub.i = sub i32 %252, %253
  %shl.i = shl i32 %sub.i, 16
  %or.i = or i32 %shl.i, %shr14.i
  %254 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %hwdev, align 8
  %conv21.i = zext i16 %234 to i32
  %add22.i = add nuw nsw i32 %conv21.i, 4
  %pm_suspended.i76.i = getelementptr inbounds %struct.malidp_hw_device, ptr %255, i32 0, i32 9
  %256 = ptrtoint ptr %pm_suspended.i76.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %pm_suspended.i76.i, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %257)
  %tobool.not.i77.i = icmp eq i8 %257, 0
  br i1 %tobool.not.i77.i, label %if.end6.i.malidp_hw_write.exit81.i_crit_edge, label %do.end.i78.i, !prof !79

if.end6.i.malidp_hw_write.exit81.i_crit_edge:     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_hw_write.exit81.i

do.end.i78.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 268, i32 noundef 9, ptr noundef null) #7
  br label %malidp_hw_write.exit81.i

malidp_hw_write.exit81.i:                         ; preds = %do.end.i78.i, %if.end6.i.malidp_hw_write.exit81.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %258 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %regs.i79.i = getelementptr inbounds %struct.malidp_hw_device, ptr %255, i32 0, i32 1
  %259 = ptrtoint ptr %regs.i79.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %regs.i79.i, align 4
  %add.ptr.i80.i = getelementptr i8, ptr %260, i32 %add22.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80.i, i32 %258) #7, !srcloc !82
  %height.i = getelementptr inbounds %struct.drm_framebuffer, ptr %230, i32 0, i32 10
  %261 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %height.i, align 4
  %263 = add nuw nsw i32 %shr17.i, %shr11.i
  %sub24.i = sub i32 %262, %263
  %shl25.i = shl i32 %sub24.i, 16
  %or26.i = or i32 %shl25.i, %shr17.i
  %264 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %hwdev, align 8
  %266 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %layer, align 4
  %afbc_decoder_offset29.i = getelementptr inbounds %struct.malidp_layer, ptr %267, i32 0, i32 7
  %268 = ptrtoint ptr %afbc_decoder_offset29.i to i32
  call void @__asan_load2_noabort(i32 %268)
  %269 = load i16, ptr %afbc_decoder_offset29.i, align 4
  %conv30.i = zext i16 %269 to i32
  %add31.i = add nuw nsw i32 %conv30.i, 8
  %pm_suspended.i82.i = getelementptr inbounds %struct.malidp_hw_device, ptr %265, i32 0, i32 9
  %270 = ptrtoint ptr %pm_suspended.i82.i to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %pm_suspended.i82.i, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %271)
  %tobool.not.i83.i = icmp eq i8 %271, 0
  br i1 %tobool.not.i83.i, label %malidp_hw_write.exit81.i.malidp_hw_write.exit87.i_crit_edge, label %do.end.i84.i, !prof !79

malidp_hw_write.exit81.i.malidp_hw_write.exit87.i_crit_edge: ; preds = %malidp_hw_write.exit81.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_hw_write.exit87.i

do.end.i84.i:                                     ; preds = %malidp_hw_write.exit81.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 268, i32 noundef 9, ptr noundef null) #7
  br label %malidp_hw_write.exit87.i

malidp_hw_write.exit87.i:                         ; preds = %do.end.i84.i, %malidp_hw_write.exit81.i.malidp_hw_write.exit87.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %272 = tail call i32 @llvm.bswap.i32(i32 %or26.i) #7
  %regs.i85.i = getelementptr inbounds %struct.malidp_hw_device, ptr %265, i32 0, i32 1
  %273 = ptrtoint ptr %regs.i85.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %regs.i85.i, align 4
  %add.ptr.i86.i = getelementptr i8, ptr %274, i32 %add31.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86.i, i32 %272) #7, !srcloc !82
  %275 = ptrtoint ptr %modifier.i347 to i32
  call void @__asan_load8_noabort(i32 %275)
  %276 = load i64, ptr %modifier.i347, align 8
  %and.i = and i64 %276, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool33.not.i = icmp eq i64 %and.i, 0
  %spec.select.i = select i1 %tobool33.not.i, i32 1, i32 257
  %277 = trunc i64 %276 to i32
  %278 = and i32 %277, 16
  %279 = or i32 %spec.select.i, %278
  %280 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %hwdev, align 8
  %282 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %layer, align 4
  %afbc_decoder_offset45.i = getelementptr inbounds %struct.malidp_layer, ptr %283, i32 0, i32 7
  %284 = ptrtoint ptr %afbc_decoder_offset45.i to i32
  call void @__asan_load2_noabort(i32 %284)
  %285 = load i16, ptr %afbc_decoder_offset45.i, align 4
  %conv46.i = zext i16 %285 to i32
  %pm_suspended.i88.i = getelementptr inbounds %struct.malidp_hw_device, ptr %281, i32 0, i32 9
  %286 = ptrtoint ptr %pm_suspended.i88.i to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %pm_suspended.i88.i, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %287)
  %tobool.not.i89.i = icmp eq i8 %287, 0
  br i1 %tobool.not.i89.i, label %malidp_hw_write.exit87.i.malidp_hw_write.exit93.i_crit_edge, label %do.end.i90.i, !prof !79

malidp_hw_write.exit87.i.malidp_hw_write.exit93.i_crit_edge: ; preds = %malidp_hw_write.exit87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_hw_write.exit93.i

do.end.i90.i:                                     ; preds = %malidp_hw_write.exit87.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 268, i32 noundef 9, ptr noundef null) #7
  br label %malidp_hw_write.exit93.i

malidp_hw_write.exit93.i:                         ; preds = %do.end.i90.i, %malidp_hw_write.exit87.i.malidp_hw_write.exit93.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %288 = tail call i32 @llvm.bswap.i32(i32 %279) #7
  %regs.i91.i = getelementptr inbounds %struct.malidp_hw_device, ptr %281, i32 0, i32 1
  %289 = ptrtoint ptr %regs.i91.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %regs.i91.i, align 4
  %add.ptr.i92.i = getelementptr i8, ptr %290, i32 %conv46.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92.i, i32 %288) #7, !srcloc !82
  br label %malidp_de_set_plane_afbc.exit

malidp_de_set_plane_afbc.exit:                    ; preds = %malidp_hw_write.exit93.i, %malidp_hw_write.exit.i357, %if.end87.malidp_de_set_plane_afbc.exit_crit_edge
  %291 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %hwdev, align 8
  %293 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %layer, align 4
  %base90 = getelementptr inbounds %struct.malidp_layer, ptr %294, i32 0, i32 1
  %295 = ptrtoint ptr %base90 to i32
  call void @__asan_load2_noabort(i32 %295)
  %296 = load i16, ptr %base90, align 2
  %conv91 = zext i16 %296 to i32
  %add92 = add nuw nsw i32 %conv91, 4
  %pm_suspended.i359 = getelementptr inbounds %struct.malidp_hw_device, ptr %292, i32 0, i32 9
  %297 = ptrtoint ptr %pm_suspended.i359 to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %pm_suspended.i359, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %298)
  %tobool.not.i360 = icmp eq i8 %298, 0
  br i1 %tobool.not.i360, label %malidp_de_set_plane_afbc.exit.malidp_hw_read.exit365_crit_edge, label %do.end.i361, !prof !79

malidp_de_set_plane_afbc.exit.malidp_hw_read.exit365_crit_edge: ; preds = %malidp_de_set_plane_afbc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_hw_read.exit365

do.end.i361:                                      ; preds = %malidp_de_set_plane_afbc.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 261, i32 noundef 9, ptr noundef null) #7
  br label %malidp_hw_read.exit365

malidp_hw_read.exit365:                           ; preds = %do.end.i361, %malidp_de_set_plane_afbc.exit.malidp_hw_read.exit365_crit_edge
  %regs.i362 = getelementptr inbounds %struct.malidp_hw_device, ptr %292, i32 0, i32 1
  %299 = ptrtoint ptr %regs.i362 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %regs.i362, align 4
  %add.ptr.i363 = getelementptr i8, ptr %300, i32 %add92
  %301 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i363) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %302 = and i32 %301, -983041
  %303 = tail call i32 @llvm.bswap.i32(i32 %302)
  %rotation = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 14
  %304 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %rotation, align 4
  %and95 = and i32 %305, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %malidp_hw_read.exit365.if.end120_crit_edge, label %cond.end116

malidp_hw_read.exit365.if.end120_crit_edge:       ; preds = %malidp_hw_read.exit365
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

cond.end116:                                      ; preds = %malidp_hw_read.exit365
  call void @__sanitizer_cov_trace_pc() #9
  %306 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %state1, align 4
  %rotation99 = getelementptr inbounds %struct.drm_plane_state, ptr %307, i32 0, i32 14
  %308 = ptrtoint ptr %rotation99 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %rotation99, align 4
  %and100 = and i32 %309, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool.not.i.i366 = icmp eq i32 %and100, 0
  %310 = tail call i32 @llvm.ctlz.i32(i32 %and100, i1 true) #7, !range !86
  %sub.i.op.i = shl nuw nsw i32 %310, 8
  %sub.i.op.i.op = xor i32 %sub.i.op.i, 7936
  %shl118 = select i1 %tobool.not.i.i366, i32 -256, i32 %sub.i.op.i.op
  %or119 = or i32 %shl118, %303
  br label %if.end120

if.end120:                                        ; preds = %cond.end116, %malidp_hw_read.exit365.if.end120_crit_edge
  %val.0 = phi i32 [ %or119, %cond.end116 ], [ %303, %malidp_hw_read.exit365.if.end120_crit_edge ]
  %and122 = shl i32 %305, 6
  %val.0.masked = and i32 %val.0, -16740353
  %.masked = and i32 %and122, 3072
  %and133 = or i32 %.masked, %val.0.masked
  %311 = ptrtoint ptr %alpha to i32
  call void @__asan_load2_noabort(i32 %311)
  %312 = load i16, ptr %alpha, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %312)
  %cmp136.not = icmp eq i16 %312, -1
  br i1 %cmp136.not, label %if.else140, label %if.then138

if.then138:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  %or139 = or i32 %and133, 8192
  br label %if.end150

if.else140:                                       ; preds = %if.end120
  %313 = ptrtoint ptr %fb24 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %fb24, align 4
  %format142 = getelementptr inbounds %struct.drm_framebuffer, ptr %314, i32 0, i32 4
  %315 = ptrtoint ptr %format142 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %format142, align 8
  %has_alpha = getelementptr inbounds %struct.drm_format_info, ptr %316, i32 0, i32 8
  %317 = ptrtoint ptr %has_alpha to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %has_alpha, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %318)
  %tobool143.not = icmp eq i8 %318, 0
  br i1 %tobool143.not, label %if.else140.if.end150_crit_edge, label %if.then144

if.else140.if.end150_crit_edge:                   ; preds = %if.else140
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end150

if.then144:                                       ; preds = %if.else140
  %319 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %319, ptr @__sancov_gen_cov_switch_values.35)
  switch i16 %11, label %if.then144.if.end150_crit_edge [
    i16 0, label %sw.bb
    i16 1, label %sw.bb147
  ]

if.then144.if.end150_crit_edge:                   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end150

sw.bb:                                            ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #9
  %or146 = or i32 %and133, 28672
  br label %if.end150

sw.bb147:                                         ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #9
  %or148 = or i32 %and133, 12288
  br label %if.end150

if.end150:                                        ; preds = %sw.bb147, %sw.bb, %if.then144.if.end150_crit_edge, %if.else140.if.end150_crit_edge, %if.then138
  %val.3 = phi i32 [ %or139, %if.then138 ], [ %and133, %if.then144.if.end150_crit_edge ], [ %or148, %sw.bb147 ], [ %or146, %sw.bb ], [ %and133, %if.else140.if.end150_crit_edge ]
  %shl153 = shl nuw nsw i32 %conv3, 16
  %val.3.masked = and i32 %val.3, -15
  %and155 = or i32 %val.3.masked, %shl153
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 1
  %320 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %crtc, align 4
  %tobool156.not = icmp eq ptr %321, null
  br i1 %tobool156.not, label %if.end150.if.end175_crit_edge, label %if.then157

if.end150.if.end175_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end175

if.then157:                                       ; preds = %if.end150
  %state160 = getelementptr inbounds %struct.drm_crtc, ptr %321, i32 0, i32 22
  %322 = ptrtoint ptr %state160 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %state160, align 4
  %scaler_config = getelementptr inbounds %struct.malidp_crtc_state, ptr %323, i32 0, i32 3
  %324 = ptrtoint ptr %scaler_config to i32
  call void @__asan_load1_noabort(i32 %324)
  %bf.load = load i8, ptr %scaler_config, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool164.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool164.not, label %if.then157.if.end175_crit_edge, label %land.lhs.true

if.then157.if.end175_crit_edge:                   ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end175

land.lhs.true:                                    ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #9
  %plane_src_id = getelementptr inbounds %struct.malidp_crtc_state, ptr %323, i32 0, i32 3, i32 1
  %325 = ptrtoint ptr %plane_src_id to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %plane_src_id, align 1
  %327 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %layer, align 4
  %329 = ptrtoint ptr %328 to i32
  call void @__asan_load2_noabort(i32 %329)
  %330 = load i16, ptr %328, align 4
  %331 = zext i8 %326 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %330, i16 %331)
  %cmp170 = icmp eq i16 %330, %331
  %or173 = or i32 %and155, 6
  %spec.select260 = select i1 %cmp170, i32 %or173, i32 %and155
  br label %if.end175

if.end175:                                        ; preds = %land.lhs.true, %if.then157.if.end175_crit_edge, %if.end150.if.end175_crit_edge
  %val.5 = phi i32 [ %and155, %if.end150.if.end175_crit_edge ], [ %and155, %if.then157.if.end175_crit_edge ], [ %spec.select260, %land.lhs.true ]
  %332 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %hwdev, align 8
  %334 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %layer, align 4
  %base179 = getelementptr inbounds %struct.malidp_layer, ptr %335, i32 0, i32 1
  %336 = ptrtoint ptr %base179 to i32
  call void @__asan_load2_noabort(i32 %336)
  %337 = load i16, ptr %base179, align 2
  %pm_suspended.i368 = getelementptr inbounds %struct.malidp_hw_device, ptr %333, i32 0, i32 9
  %338 = ptrtoint ptr %pm_suspended.i368 to i32
  call void @__asan_load1_noabort(i32 %338)
  %339 = load i8, ptr %pm_suspended.i368, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %339)
  %tobool.not.i369 = icmp eq i8 %339, 0
  br i1 %tobool.not.i369, label %if.end175.malidp_hw_write.exit374_crit_edge, label %do.end.i370, !prof !79

if.end175.malidp_hw_write.exit374_crit_edge:      ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_hw_write.exit374

do.end.i370:                                      ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 268, i32 noundef 9, ptr noundef null) #7
  br label %malidp_hw_write.exit374

malidp_hw_write.exit374:                          ; preds = %do.end.i370, %if.end175.malidp_hw_write.exit374_crit_edge
  %conv180 = zext i16 %337 to i32
  %add181 = add nuw nsw i32 %conv180, 4
  %or176 = or i32 %val.5, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %340 = tail call i32 @llvm.bswap.i32(i32 %or176) #7
  %regs.i371 = getelementptr inbounds %struct.malidp_hw_device, ptr %333, i32 0, i32 1
  %341 = ptrtoint ptr %regs.i371 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %regs.i371, align 4
  %add.ptr.i372 = getelementptr i8, ptr %342, i32 %add181
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i372, i32 %340) #7, !srcloc !82
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @malidp_de_plane_disable(ptr nocapture noundef readonly %plane, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hwdev = getelementptr inbounds %struct.malidp_plane, ptr %plane, i32 0, i32 1
  %0 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwdev, align 8
  %layer = getelementptr inbounds %struct.malidp_plane, ptr %plane, i32 0, i32 2
  %2 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %layer, align 4
  %base = getelementptr inbounds %struct.malidp_layer, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %base, align 2
  %conv = zext i16 %5 to i32
  %add = add nuw nsw i32 %conv, 4
  %pm_suspended.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pm_suspended.i.i, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i, label %entry.malidp_hw_read.exit.i_crit_edge, label %do.end.i.i, !prof !79

entry.malidp_hw_read.exit.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_hw_read.exit.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 261, i32 noundef 9, ptr noundef null) #7
  br label %malidp_hw_read.exit.i

malidp_hw_read.exit.i:                            ; preds = %do.end.i.i, %entry.malidp_hw_read.exit.i_crit_edge
  %regs.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %add
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %11 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pm_suspended.i.i, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i2.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i2.i, label %malidp_hw_read.exit.i.malidp_hw_clearbits.exit_crit_edge, label %do.end.i3.i, !prof !79

malidp_hw_read.exit.i.malidp_hw_clearbits.exit_crit_edge: ; preds = %malidp_hw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_hw_clearbits.exit

do.end.i3.i:                                      ; preds = %malidp_hw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 268, i32 noundef 9, ptr noundef null) #7
  br label %malidp_hw_clearbits.exit

malidp_hw_clearbits.exit:                         ; preds = %do.end.i3.i, %malidp_hw_read.exit.i.malidp_hw_clearbits.exit_crit_edge
  %13 = and i32 %10, -251658241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %15, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %13) #7, !srcloc !82
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @malidp_hw_get_format_id(ptr noundef, i8 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_format_info_block_height(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_format_info_block_width(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @malidp_se_check_scaling(ptr nocapture noundef readonly %mp, ptr noundef %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 25
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 1
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 4
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtcs.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i.i, align 4
  %state1.i = getelementptr %struct.__drm_crtcs_state, ptr %5, i32 %7, i32 1
  %8 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state1.i, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %state, ptr noundef nonnull %9, i32 noundef 0, i32 noundef 2147483647, i1 noundef zeroext true, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %rotation = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 14
  %10 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rotation, align 4
  %and = and i32 %11, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %src_h8 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 10
  %src_w9 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 11
  %src_w.0.in.in = select i1 %tobool6.not, ptr %src_w9, ptr %src_h8
  %12 = ptrtoint ptr %src_w.0.in.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %src_w.0.in = load i32, ptr %src_w.0.in.in, align 4
  %src_w.0 = lshr i32 %src_w.0.in, 16
  %crtc_w = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 6
  %13 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %crtc_w, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %src_w.0)
  %cmp = icmp eq i32 %14, %src_w.0
  br i1 %cmp, label %land.lhs.true, label %if.end5.if.end21_crit_edge

if.end5.if.end21_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end5
  %src_h.0.in.in = select i1 %tobool6.not, ptr %src_h8, ptr %src_w9
  %15 = ptrtoint ptr %src_h.0.in.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %src_h.0.in = load i32, ptr %src_h.0.in.in, align 4
  %src_h.0 = lshr i32 %src_h.0.in, 16
  %crtc_h = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 7
  %16 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %crtc_h, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %src_h.0)
  %cmp16 = icmp eq i32 %17, %src_h.0
  br i1 %cmp16, label %if.then17, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %layer = getelementptr inbounds %struct.malidp_plane, ptr %mp, i32 0, i32 2
  %18 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %layer, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %19, align 4
  %conv = trunc i16 %21 to i8
  %neg = xor i8 %conv, -1
  %scaled_planes_mask = getelementptr inbounds %struct.malidp_crtc_state, ptr %9, i32 0, i32 4
  %22 = ptrtoint ptr %scaled_planes_mask to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %scaled_planes_mask, align 4
  %and19 = and i8 %23, %neg
  store i8 %and19, ptr %scaled_planes_mask, align 4
  br label %cleanup

if.end21:                                         ; preds = %land.lhs.true.if.end21_crit_edge, %if.end5.if.end21_crit_edge
  %layer22 = getelementptr inbounds %struct.malidp_plane, ptr %mp, i32 0, i32 2
  %24 = ptrtoint ptr %layer22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %layer22, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %25, align 4
  %28 = and i16 %27, 20
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool26.not = icmp eq i16 %28, 0
  br i1 %tobool26.not, label %if.end28, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %scaled_planes_mask32 = getelementptr inbounds %struct.malidp_crtc_state, ptr %9, i32 0, i32 4
  %29 = ptrtoint ptr %scaled_planes_mask32 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %scaled_planes_mask32, align 4
  %31 = trunc i16 %27 to i8
  %conv34 = or i8 %30, %31
  store i8 %conv34, ptr %scaled_planes_mask32, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end21.cleanup_crit_edge, %if.then17, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then17 ], [ 0, %if.end28 ], [ -22, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -22, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @malidp_de_prefetch_settings(ptr nocapture noundef readonly %mp, ptr nocapture noundef %ms) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %layer = getelementptr inbounds %struct.malidp_plane, ptr %mp, i32 0, i32 2
  %0 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %layer, align 4
  %mmu_ctrl_offset = getelementptr inbounds %struct.malidp_layer, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mmu_ctrl_offset to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mmu_ctrl_offset, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %call.i = tail call zeroext i1 @iommu_present(ptr noundef nonnull @platform_bus_type) #7
  br i1 %call.i, label %if.then.i, label %if.end.malidp_get_pgsize_bitmap.exit.thread_crit_edge

if.end.malidp_get_pgsize_bitmap.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_get_pgsize_bitmap.exit.thread

if.then.i:                                        ; preds = %if.end
  %4 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mp, align 8
  %dev1.i = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1.i, align 4
  %call2.i = tail call ptr @iommu_get_domain_for_dev(ptr noundef %7) #7
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.then.i.malidp_get_pgsize_bitmap.exit.thread_crit_edge, label %malidp_get_pgsize_bitmap.exit

if.then.i.malidp_get_pgsize_bitmap.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_get_pgsize_bitmap.exit.thread

malidp_get_pgsize_bitmap.exit.thread:             ; preds = %if.then.i.malidp_get_pgsize_bitmap.exit.thread_crit_edge, %if.end.malidp_get_pgsize_bitmap.exit.thread_crit_edge
  %mmu_prefetch_pgsize9 = getelementptr inbounds %struct.malidp_plane_state, ptr %ms, i32 0, i32 5
  %8 = ptrtoint ptr %mmu_prefetch_pgsize9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %mmu_prefetch_pgsize9, align 4
  br label %while.end.i

malidp_get_pgsize_bitmap.exit:                    ; preds = %if.then.i
  %pgsize_bitmap4.i = getelementptr inbounds %struct.iommu_domain, ptr %call2.i, i32 0, i32 2
  %9 = ptrtoint ptr %pgsize_bitmap4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pgsize_bitmap4.i, align 4
  %mmu_prefetch_pgsize = getelementptr inbounds %struct.malidp_plane_state, ptr %ms, i32 0, i32 5
  %11 = ptrtoint ptr %mmu_prefetch_pgsize to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %mmu_prefetch_pgsize, align 4
  %and.i = and i32 %10, 3145728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not42.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not42.i, label %malidp_get_pgsize_bitmap.exit.while.end.i_crit_edge, label %while.body.lr.ph.i

malidp_get_pgsize_bitmap.exit.while.end.i_crit_edge: ; preds = %malidp_get_pgsize_bitmap.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %malidp_get_pgsize_bitmap.exit
  %n_planes.i.i = getelementptr inbounds %struct.malidp_plane_state, ptr %ms, i32 0, i32 3
  %fb.i.i = getelementptr inbounds %struct.drm_plane_state, ptr %ms, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %pgsizes.043.i = phi i32 [ %and.i, %while.body.lr.ph.i ], [ %sub.i, %cleanup.i.while.body.i_crit_edge ]
  %12 = tail call i32 @llvm.ctlz.i32(i32 %pgsizes.043.i, i1 true) #7, !range !86
  %sub.i.i = xor i32 %12, 31
  %shl.i = shl nuw i32 1, %sub.i.i
  %13 = ptrtoint ptr %n_planes.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %n_planes.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp50.not.i.i = icmp eq i8 %14, 0
  br i1 %cmp50.not.i.i, label %while.body.i.malidp_mmu_prefetch_select_mode.exit_crit_edge, label %while.body.i.for.body.i.i_crit_edge

while.body.i.for.body.i.i_crit_edge:              ; preds = %while.body.i
  br label %for.body.i.i

while.body.i.malidp_mmu_prefetch_select_mode.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_mmu_prefetch_select_mode.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %while.body.i.for.body.i.i_crit_edge
  %i.051.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %while.body.i.for.body.i.i_crit_edge ]
  %15 = ptrtoint ptr %fb.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fb.i.i, align 4
  %call.i.i = tail call ptr @drm_gem_fb_get_obj(ptr noundef %16, i32 noundef %i.051.i.i) #7
  %sgt2.i.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %sgt2.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sgt2.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.i.if.end7.i.i_crit_edge

for.body.i.i.if.end7.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %funcs.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %call.i.i, i32 0, i32 11
  %19 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %funcs.i.i, align 4
  %get_sg_table.i.i = getelementptr inbounds %struct.drm_gem_object_funcs, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %get_sg_table.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %get_sg_table.i.i, align 4
  %call4.i.i = tail call ptr %22(ptr noundef %call.i.i) #7
  %tobool5.not.i.i = icmp eq ptr %call4.i.i, null
  br i1 %tobool5.not.i.i, label %if.end.i.i.cleanup.i_crit_edge, label %if.end.i.i.if.end7.i.i_crit_edge

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i.i

if.end.i.i.cleanup.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end7.i.i:                                      ; preds = %if.end.i.i.if.end7.i.i_crit_edge, %for.body.i.i.if.end7.i.i_crit_edge
  %sgt.044.i.i = phi ptr [ %call4.i.i, %if.end.i.i.if.end7.i.i_crit_edge ], [ %18, %for.body.i.i.if.end7.i.i_crit_edge ]
  %23 = ptrtoint ptr %sgt.044.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sgt.044.i.i, align 4
  %tobool9.not47.i.i = icmp eq ptr %24, null
  br i1 %tobool9.not47.i.i, label %if.end7.i.i.while.end.i.i_crit_edge, label %if.end7.i.i.while.body.i.i_crit_edge

if.end7.i.i.while.body.i.i_crit_edge:             ; preds = %if.end7.i.i
  br label %while.body.i.i

if.end7.i.i.while.end.i.i_crit_edge:              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i

while.body.i.i:                                   ; preds = %if.end17.i.i.while.body.i.i_crit_edge, %if.end7.i.i.while.body.i.i_crit_edge
  %sgl.048.i.i = phi ptr [ %call18.i.i, %if.end17.i.i.while.body.i.i_crit_edge ], [ %24, %if.end7.i.i.while.body.i.i_crit_edge ]
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sgl.048.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %length.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %shl.i)
  %cmp10.i.i = icmp ult i32 %26, %shl.i
  br i1 %cmp10.i.i, label %if.then12.i.i, label %if.end17.i.i

if.then12.i.i:                                    ; preds = %while.body.i.i
  %27 = ptrtoint ptr %sgt2.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sgt2.i.i, align 4
  %tobool14.not.i.i = icmp eq ptr %28, null
  br i1 %tobool14.not.i.i, label %if.then15.i.i, label %if.then12.i.i.cleanup.i_crit_edge

if.then12.i.i.cleanup.i_crit_edge:                ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.then15.i.i:                                    ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %sgt.044.i.i) #7
  br label %cleanup.i

if.end17.i.i:                                     ; preds = %while.body.i.i
  %call18.i.i = tail call ptr @sg_next(ptr noundef nonnull %sgl.048.i.i) #7
  %tobool9.not.i.i = icmp eq ptr %call18.i.i, null
  br i1 %tobool9.not.i.i, label %if.end17.i.i.while.end.i.i_crit_edge, label %if.end17.i.i.while.body.i.i_crit_edge

if.end17.i.i.while.body.i.i_crit_edge:            ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

if.end17.i.i.while.end.i.i_crit_edge:             ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %if.end17.i.i.while.end.i.i_crit_edge, %if.end7.i.i.while.end.i.i_crit_edge
  %29 = ptrtoint ptr %sgt2.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sgt2.i.i, align 4
  %tobool20.not.i.i = icmp eq ptr %30, null
  br i1 %tobool20.not.i.i, label %if.then21.i.i, label %while.end.i.i.for.inc.i.i_crit_edge

while.end.i.i.for.inc.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.then21.i.i:                                    ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %sgt.044.i.i) #7
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then21.i.i, %while.end.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.051.i.i, 1
  %31 = ptrtoint ptr %n_planes.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %n_planes.i.i, align 1
  %conv.i.i = zext i8 %32 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.malidp_mmu_prefetch_select_mode.exit_crit_edge

for.inc.i.i.malidp_mmu_prefetch_select_mode.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_mmu_prefetch_select_mode.exit

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

cleanup.i:                                        ; preds = %if.then15.i.i, %if.then12.i.i.cleanup.i_crit_edge, %if.end.i.i.cleanup.i_crit_edge
  %sub.i = sub i32 %pgsizes.043.i, %shl.i
  %tobool.not.i7 = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i7, label %cleanup.i.while.end.i_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %malidp_get_pgsize_bitmap.exit.while.end.i_crit_edge, %malidp_get_pgsize_bitmap.exit.thread
  %mmu_prefetch_pgsize13 = phi ptr [ %mmu_prefetch_pgsize9, %malidp_get_pgsize_bitmap.exit.thread ], [ %mmu_prefetch_pgsize, %malidp_get_pgsize_bitmap.exit.while.end.i_crit_edge ], [ %mmu_prefetch_pgsize, %cleanup.i.while.end.i_crit_edge ]
  %33 = ptrtoint ptr %mmu_prefetch_pgsize13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mmu_prefetch_pgsize13, align 4
  %fb.i = getelementptr inbounds %struct.drm_plane_state, ptr %ms, i32 0, i32 2
  %35 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fb.i, align 4
  %modifier.i = getelementptr inbounds %struct.drm_framebuffer, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %modifier.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %modifier.i, align 8
  %rotation.i = getelementptr inbounds %struct.drm_plane_state, ptr %ms, i32 0, i32 14
  %39 = ptrtoint ptr %rotation.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rotation.i, align 4
  %and.i.i = and i32 %40, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i25.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i25.i, label %if.end.i26.i, label %while.end.i.malidp_mmu_prefetch_select_mode.exit_crit_edge

while.end.i.malidp_mmu_prefetch_select_mode.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_mmu_prefetch_select_mode.exit

if.end.i26.i:                                     ; preds = %while.end.i
  %format.i = getelementptr inbounds %struct.drm_framebuffer, ptr %36, i32 0, i32 4
  %41 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %format.i, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %44, label %if.end.i26.i.malidp_mmu_prefetch_select_mode.exit_crit_edge [
    i32 808669761, label %if.end.i26.i.if.then8.i_crit_edge
    i32 808665426, label %if.end.i26.i.if.then8.i_crit_edge49
    i32 808665410, label %if.end.i26.i.if.then8.i_crit_edge50
    i32 875713089, label %if.end.i26.i.if.then8.i_crit_edge51
    i32 875708754, label %if.end.i26.i.if.then8.i_crit_edge52
    i32 875708738, label %if.end.i26.i.if.then8.i_crit_edge53
    i32 875713112, label %if.end.i26.i.if.then8.i_crit_edge54
    i32 875709016, label %if.end.i26.i.if.then8.i_crit_edge55
    i32 875714642, label %if.end.i26.i.if.then8.i_crit_edge56
    i32 875714626, label %if.end.i26.i.if.then8.i_crit_edge57
    i32 875710290, label %if.end.i26.i.if.then8.i_crit_edge58
    i32 892420434, label %if.end.i26.i.if.then8.i_crit_edge59
    i32 909199186, label %if.end.i26.i.if.then8.i_crit_edge60
    i32 808665665, label %if.end.i26.i.malidp_partial_prefetch_supported.exit.i_crit_edge
    i32 875708993, label %if.end.i26.i.malidp_partial_prefetch_supported.exit.i_crit_edge61
    i32 892420673, label %if.end.i26.i.malidp_partial_prefetch_supported.exit.i_crit_edge62
    i32 909199170, label %if.end.i26.i.malidp_partial_prefetch_supported.exit.i_crit_edge63
    i32 875710274, label %sw.bb10.i.i
  ]

if.end.i26.i.malidp_partial_prefetch_supported.exit.i_crit_edge63: ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_partial_prefetch_supported.exit.i

if.end.i26.i.malidp_partial_prefetch_supported.exit.i_crit_edge62: ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_partial_prefetch_supported.exit.i

if.end.i26.i.malidp_partial_prefetch_supported.exit.i_crit_edge61: ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_partial_prefetch_supported.exit.i

if.end.i26.i.malidp_partial_prefetch_supported.exit.i_crit_edge: ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_partial_prefetch_supported.exit.i

if.end.i26.i.if.then8.i_crit_edge60:              ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

if.end.i26.i.if.then8.i_crit_edge59:              ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

if.end.i26.i.if.then8.i_crit_edge58:              ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

if.end.i26.i.if.then8.i_crit_edge57:              ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

if.end.i26.i.if.then8.i_crit_edge56:              ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

if.end.i26.i.if.then8.i_crit_edge55:              ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

if.end.i26.i.if.then8.i_crit_edge54:              ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

if.end.i26.i.if.then8.i_crit_edge53:              ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

if.end.i26.i.if.then8.i_crit_edge52:              ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

if.end.i26.i.if.then8.i_crit_edge51:              ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

if.end.i26.i.if.then8.i_crit_edge50:              ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

if.end.i26.i.if.then8.i_crit_edge49:              ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

if.end.i26.i.if.then8.i_crit_edge:                ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

if.end.i26.i.malidp_mmu_prefetch_select_mode.exit_crit_edge: ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_mmu_prefetch_select_mode.exit

sw.bb10.i.i:                                      ; preds = %if.end.i26.i
  %and1.i.i = and i64 %38, 576460752303423488
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool2.not.i.i = icmp eq i64 %and1.i.i, 0
  br i1 %tobool2.not.i.i, label %sw.bb10.i.i.if.then8.i_crit_edge, label %sw.bb10.i.i.malidp_mmu_prefetch_select_mode.exit_crit_edge

sw.bb10.i.i.malidp_mmu_prefetch_select_mode.exit_crit_edge: ; preds = %sw.bb10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_mmu_prefetch_select_mode.exit

sw.bb10.i.i.if.then8.i_crit_edge:                 ; preds = %sw.bb10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

malidp_partial_prefetch_supported.exit.i:         ; preds = %if.end.i26.i.malidp_partial_prefetch_supported.exit.i_crit_edge, %if.end.i26.i.malidp_partial_prefetch_supported.exit.i_crit_edge61, %if.end.i26.i.malidp_partial_prefetch_supported.exit.i_crit_edge62, %if.end.i26.i.malidp_partial_prefetch_supported.exit.i_crit_edge63
  %46 = and i64 %38, 576460752303423552
  call void @__sanitizer_cov_trace_const_cmp8(i64 576460752303423488, i64 %46)
  %.not.i = icmp eq i64 %46, 576460752303423488
  br i1 %.not.i, label %malidp_partial_prefetch_supported.exit.i.malidp_mmu_prefetch_select_mode.exit_crit_edge, label %malidp_partial_prefetch_supported.exit.i.if.then8.i_crit_edge

malidp_partial_prefetch_supported.exit.i.if.then8.i_crit_edge: ; preds = %malidp_partial_prefetch_supported.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

malidp_partial_prefetch_supported.exit.i.malidp_mmu_prefetch_select_mode.exit_crit_edge: ; preds = %malidp_partial_prefetch_supported.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %malidp_mmu_prefetch_select_mode.exit

if.then8.i:                                       ; preds = %malidp_partial_prefetch_supported.exit.i.if.then8.i_crit_edge, %sw.bb10.i.i.if.then8.i_crit_edge, %if.end.i26.i.if.then8.i_crit_edge, %if.end.i26.i.if.then8.i_crit_edge49, %if.end.i26.i.if.then8.i_crit_edge50, %if.end.i26.i.if.then8.i_crit_edge51, %if.end.i26.i.if.then8.i_crit_edge52, %if.end.i26.i.if.then8.i_crit_edge53, %if.end.i26.i.if.then8.i_crit_edge54, %if.end.i26.i.if.then8.i_crit_edge55, %if.end.i26.i.if.then8.i_crit_edge56, %if.end.i26.i.if.then8.i_crit_edge57, %if.end.i26.i.if.then8.i_crit_edge58, %if.end.i26.i.if.then8.i_crit_edge59, %if.end.i26.i.if.then8.i_crit_edge60
  %and2.i = and i32 %34, 69632
  %47 = tail call i32 @llvm.cttz.i32(i32 %and2.i, i1 false) #7, !range !86
  %shl10.i = shl nuw i32 1, %47
  br label %malidp_mmu_prefetch_select_mode.exit

malidp_mmu_prefetch_select_mode.exit:             ; preds = %if.then8.i, %malidp_partial_prefetch_supported.exit.i.malidp_mmu_prefetch_select_mode.exit_crit_edge, %sw.bb10.i.i.malidp_mmu_prefetch_select_mode.exit_crit_edge, %if.end.i26.i.malidp_mmu_prefetch_select_mode.exit_crit_edge, %while.end.i.malidp_mmu_prefetch_select_mode.exit_crit_edge, %for.inc.i.i.malidp_mmu_prefetch_select_mode.exit_crit_edge, %while.body.i.malidp_mmu_prefetch_select_mode.exit_crit_edge
  %mmu_prefetch_pgsize12 = phi ptr [ %mmu_prefetch_pgsize13, %if.then8.i ], [ %mmu_prefetch_pgsize13, %if.end.i26.i.malidp_mmu_prefetch_select_mode.exit_crit_edge ], [ %mmu_prefetch_pgsize13, %while.end.i.malidp_mmu_prefetch_select_mode.exit_crit_edge ], [ %mmu_prefetch_pgsize13, %sw.bb10.i.i.malidp_mmu_prefetch_select_mode.exit_crit_edge ], [ %mmu_prefetch_pgsize13, %malidp_partial_prefetch_supported.exit.i.malidp_mmu_prefetch_select_mode.exit_crit_edge ], [ %mmu_prefetch_pgsize, %for.inc.i.i.malidp_mmu_prefetch_select_mode.exit_crit_edge ], [ %mmu_prefetch_pgsize, %while.body.i.malidp_mmu_prefetch_select_mode.exit_crit_edge ]
  %shl57.sink.i = phi i32 [ %shl10.i, %if.then8.i ], [ 0, %if.end.i26.i.malidp_mmu_prefetch_select_mode.exit_crit_edge ], [ 0, %while.end.i.malidp_mmu_prefetch_select_mode.exit_crit_edge ], [ 0, %sw.bb10.i.i.malidp_mmu_prefetch_select_mode.exit_crit_edge ], [ 0, %malidp_partial_prefetch_supported.exit.i.malidp_mmu_prefetch_select_mode.exit_crit_edge ], [ %shl.i, %for.inc.i.i.malidp_mmu_prefetch_select_mode.exit_crit_edge ], [ %shl.i, %while.body.i.malidp_mmu_prefetch_select_mode.exit_crit_edge ]
  %retval.2.i = phi i32 [ 1, %if.then8.i ], [ 0, %if.end.i26.i.malidp_mmu_prefetch_select_mode.exit_crit_edge ], [ 0, %while.end.i.malidp_mmu_prefetch_select_mode.exit_crit_edge ], [ 0, %sw.bb10.i.i.malidp_mmu_prefetch_select_mode.exit_crit_edge ], [ 0, %malidp_partial_prefetch_supported.exit.i.malidp_mmu_prefetch_select_mode.exit_crit_edge ], [ 2, %for.inc.i.i.malidp_mmu_prefetch_select_mode.exit_crit_edge ], [ 2, %while.body.i.malidp_mmu_prefetch_select_mode.exit_crit_edge ]
  %48 = ptrtoint ptr %mmu_prefetch_pgsize12 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %shl57.sink.i, ptr %mmu_prefetch_pgsize12, align 4
  %mmu_prefetch_mode = getelementptr inbounds %struct.malidp_plane_state, ptr %ms, i32 0, i32 4
  %49 = ptrtoint ptr %mmu_prefetch_mode to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %retval.2.i, ptr %mmu_prefetch_mode, align 4
  br label %return

return:                                           ; preds = %malidp_mmu_prefetch_select_mode.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iommu_present(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_get_domain_for_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_get_obj(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_cma_get_gem_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !26, !28, !30, !31, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/arm/malidp_planes.c", i32 156, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/arm/malidp_planes.c", i32 169, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/arm/malidp_planes.c", i32 175, i32 3}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/arm/malidp_planes.c", i32 182, i32 6}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/arm/malidp_planes.c", i32 186, i32 6}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/arm/malidp_planes.c", i32 198, i32 3}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/arm/malidp_planes.c", i32 205, i32 3}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/arm/malidp_planes.c", i32 210, i32 3}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/arm/malidp_planes.c", i32 220, i32 3}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/arm/malidp_planes.c", i32 229, i32 5}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/arm/malidp_planes.c", i32 237, i32 5}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/arm/malidp_planes.c", i32 245, i32 4}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/arm/malidp_planes.c", i32 1038, i32 5}
!30 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @malidp_de_planes_init._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @malidp_de_planes_init._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @malidp_de_plane_funcs, !34, !"malidp_de_plane_funcs", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/arm/malidp_planes.c", i32 259, i32 37}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/arm/malidp_planes.c", i32 140, i32 16}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/arm/malidp_planes.c", i32 141, i32 16}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/arm/malidp_planes.c", i32 142, i32 16}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/arm/malidp_planes.c", i32 143, i32 16}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/arm/malidp_planes.c", i32 145, i32 16}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/arm/malidp_planes.c", i32 130, i32 32}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/arm/malidp_planes.c", i32 131, i32 35}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/arm/malidp_planes.c", i32 132, i32 32}
!51 = !{ptr @prefetch_mode_names, !52, !"prefetch_mode_names", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/arm/malidp_planes.c", i32 129, i32 27}
!53 = !{ptr @linear_only_modifiers, !54, !"linear_only_modifiers", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/arm/malidp_planes.c", i32 930, i32 23}
!55 = !{ptr @malidp_de_plane_helper_funcs, !56, !"malidp_de_plane_helper_funcs", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/arm/malidp_planes.c", i32 924, i32 44}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/arm/malidp_planes.c", i32 534, i32 4}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/arm/malidp_planes.c", i32 543, i32 3}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/arm/malidp_planes.c", i32 547, i32 3}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/arm/malidp_planes.c", i32 588, i32 3}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/arm/malidp_hw.h", i32 261, i32 2}
!67 = !{ptr @malidp_yuv2rgb_coeffs, !68, !"malidp_yuv2rgb_coeffs", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/arm/malidp_planes.c", i32 645, i32 1}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!79 = !{!"branch_weights", i32 2000, i32 1}
!80 = !{i8 0, i8 2}
!81 = !{i64 2156910882}
!82 = !{i64 5846835}
!83 = !{!"branch_weights", i32 1, i32 2000}
!84 = !{i64 5847253}
!85 = !{i64 2156909983}
!86 = !{i32 0, i32 33}
