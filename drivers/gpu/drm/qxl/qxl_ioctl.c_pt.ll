; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/qxl/qxl_ioctl.c_pt.bc'
source_filename = "../drivers/gpu/drm/qxl/qxl_ioctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_ioctl_desc = type { i32, i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_qxl_alloc = type { i32, i32 }
%struct.drm_qxl_map = type { i64, i32, i32 }
%struct.drm_qxl_reloc = type { i64, i64, i32, i32, i32, i32 }
%struct.drm_qxl_command = type { i64, i64, i32, i32, i32, i32 }
%struct.drm_qxl_execbuffer = type { i32, i32, i64 }
%struct.qxl_device = type { %struct.drm_device, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.qxl_mman, %struct.qxl_gem, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.qxl_memslot, %struct.qxl_memslot, %struct.spinlock, %struct.idr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.spinlock, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, [32 x %struct.qxl_debugfs], i32, %struct.mutex, %struct.idr, %struct.spinlock, i32, %struct.mutex, ptr, ptr, %struct.mutex, [3 x ptr], [3 x i32], %struct.work_struct, ptr, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.anon.89 = type { i32, ptr }
%struct.qxl_mman = type { %struct.ttm_device }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.93] }
%struct.anon.93 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.qxl_gem = type { %struct.mutex, %struct.list_head }
%struct.qxl_memslot = type { i32, ptr, i8, i64, i64, i64 }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.qxl_debugfs = type { ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.qxl_release = type { %struct.dma_fence, i32, i32, ptr, i32, i32, %struct.ww_acquire_ctx, %struct.list_head }
%struct.dma_fence = type { ptr, ptr, %union.anon.84, i64, i64, i32, %struct.kref, i32 }
%union.anon.84 = type { i64 }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.qxl_rom = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8, i8, i8, i8, i8, [58 x i8], i32, %struct.anon.92 }
%struct.anon.92 = type { i16, i16, [64 x %struct.qxl_urect] }
%struct.qxl_urect = type { i32, i32, i32, i32 }
%struct.qxl_drawable = type <{ %union.qxl_release_info, i32, i8, i8, i8, %struct.qxl_rect, %struct.qxl_rect, %struct.qxl_clip, i32, [3 x i32], [3 x %struct.qxl_rect], %union.anon.94 }>
%union.qxl_release_info = type { i64 }
%struct.qxl_rect = type { i32, i32, i32, i32 }
%struct.qxl_clip = type <{ i32, i64 }>
%union.anon.94 = type <{ %struct.qxl_opaque, [4 x i8] }>
%struct.qxl_opaque = type { i64, %struct.qxl_rect, %struct.qxl_brush, i16, i8, %struct.qxl_q_mask }
%struct.qxl_brush = type <{ i32, %union.anon.95 }>
%union.anon.95 = type { %struct.qxl_pattern }
%struct.qxl_pattern = type { i64, %struct.qxl_point }
%struct.qxl_point = type { i32, i32 }
%struct.qxl_q_mask = type <{ i8, %struct.qxl_point, i64 }>
%struct.qxl_reloc_info = type { i32, ptr, i32, ptr, i32 }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
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
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.qxl_bo = type <{ %struct.ttm_buffer_object, %struct.list_head, [3 x %struct.ttm_place], %struct.ttm_placement, %struct.dma_buf_map, ptr, i32, i32, i8, [3 x i8], ptr, i8, %struct.qxl_surface, [3 x i8], i32, ptr }>
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.dma_buf_map = type { %union.anon.85, i8 }
%union.anon.85 = type { ptr }
%struct.qxl_surface = type { i32, i32, i32, i32, i64 }
%struct.ttm_operation_ctx = type { i8, i8, i8, i8, i8, ptr, i64 }
%struct.drm_qxl_update_area = type { i32, i32, i32, i32, i32, i32 }
%struct.drm_qxl_getparam = type { i64, i64 }
%struct.drm_qxl_alloc_surf = type { i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"QXL_ALLOC\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"QXL_MAP\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"QXL_EXECBUFFER\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"QXL_UPDATE_AREA\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"QXL_GETPARAM\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QXL_CLIENTCAP\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"QXL_ALLOC_SURF\00", [17 x i8] zeroinitializer }, align 32
@qxl_ioctls = dso_local constant { [7 x %struct.drm_ioctl_desc], [48 x i8] } { [7 x %struct.drm_ioctl_desc] [%struct.drm_ioctl_desc { i32 -1073191872, i32 1, ptr @qxl_alloc_ioctl, ptr @.str }, %struct.drm_ioctl_desc { i32 -1072667583, i32 1, ptr @qxl_map_ioctl, ptr @.str.1 }, %struct.drm_ioctl_desc { i32 1074816066, i32 1, ptr @qxl_execbuffer_ioctl, ptr @.str.2 }, %struct.drm_ioctl_desc { i32 1075340355, i32 1, ptr @qxl_update_area_ioctl, ptr @.str.3 }, %struct.drm_ioctl_desc { i32 -1072667580, i32 1, ptr @qxl_getparam_ioctl, ptr @.str.4 }, %struct.drm_ioctl_desc { i32 1074291781, i32 1, ptr @qxl_clientcap_ioctl, ptr @.str.5 }, %struct.drm_ioctl_desc { i32 -1072143290, i32 1, ptr @qxl_alloc_surf_ioctl, ptr @.str.6 }], [48 x i8] zeroinitializer }, align 32
@qxl_max_ioctls = dso_local global { i32, [28 x i8] } { i32 7, [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"invalid size %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: failed to create gem ret=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.qxl_alloc_ioctl = private unnamed_addr constant [16 x i8] c"qxl_alloc_ioctl\00", align 1
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Only draw commands in execbuffers\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"got unwritten %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unknown reloc type %d\0A\00", [41 x i8] zeroinitializer }, align 32
@__const.qxl_update_area_ioctl.ctx = private unnamed_addr constant { i8, i8, i8, i8, i8, [3 x i8], ptr, [4 x i8], i64 } { i8 1, i8 0, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, ptr null, [4 x i8] zeroinitializer, i64 0 }, align 8
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"got update area for surface with no id %d\0A\00", [53 x i8] zeroinitializer }, align 32
@qxl_bo_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.18, i32 39, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%p reserve failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qxl_bo_reserve\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/gpu/drm/qxl/qxl_object.h\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qxl_bo_reserve._entry_ptr = internal global ptr @qxl_bo_reserve._entry, section ".printk_index", align 4
@__func__.qxl_alloc_surf_ioctl = private unnamed_addr constant [21 x i8] c"qxl_alloc_surf_ioctl\00", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 64, i64 1, i64 2]
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 427, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 429, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 431, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 433, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 435, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 437, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 440, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [11 x i8] c"qxl_ioctls\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 426, i32 29 }
@___asan_gen_.48 = private unnamed_addr constant [15 x i8] c"qxl_max_ioctls\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 444, i32 5 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 47, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 56, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 156, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 161, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 200, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 219, i32 4 }
@___asan_gen_.70 = private constant [35 x i8] c"../drivers/gpu/drm/qxl/qxl_ioctl.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 339, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [36 x i8] c"../drivers/gpu/drm/qxl/qxl_object.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 39, i32 4 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @qxl_bo_reserve._entry, ptr @qxl_bo_reserve._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @qxl_ioctls, ptr @qxl_max_ioctls, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_ioctls to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_max_ioctls to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_bo_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qxl_alloc_ioctl(ptr noundef %dev, ptr nocapture noundef %data, ptr noundef %file_priv) #0 align 64 {
entry:
  %qobj = alloca ptr, align 4
  %handle = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %qobj) #10
  %0 = ptrtoint ptr %qobj to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %qobj, align 4, !annotation !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %handle) #10
  %1 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %handle, align 4, !annotation !60
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, i32 noundef 0) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @qxl_gem_object_create_with_handle(ptr noundef %dev, ptr noundef %file_priv, i32 noundef 1, i32 noundef %3, ptr noundef null, ptr noundef nonnull %qobj, ptr noundef nonnull %handle) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.qxl_alloc_ioctl, i32 noundef %call) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %handle, align 4
  %handle5 = getelementptr inbounds %struct.drm_qxl_alloc, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %handle5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %handle5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -12, %if.then3 ], [ 0, %if.end4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %handle) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qobj) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qxl_map_ioctl(ptr noundef %dev, ptr noundef %data, ptr noundef %file_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %handle = getelementptr inbounds %struct.drm_qxl_map, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %handle, align 8
  %call = tail call i32 @drm_gem_ttm_dumb_map_offset(ptr noundef %file_priv, ptr noundef %dev, i32 noundef %1, ptr noundef %data) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qxl_execbuffer_ioctl(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr noundef %file_priv) #0 align 64 {
entry:
  %release.i = alloca ptr, align 4
  %cmd_bo.i = alloca ptr, align 4
  %reloc.i = alloca %struct.drm_qxl_reloc, align 8
  %user_cmd = alloca %struct.drm_qxl_command, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %user_cmd) #10
  %0 = getelementptr inbounds %struct.drm_qxl_command, ptr %user_cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.drm_qxl_command, ptr %user_cmd, i32 0, i32 2
  %2 = getelementptr inbounds %struct.drm_qxl_command, ptr %user_cmd, i32 0, i32 3
  %3 = getelementptr inbounds %struct.drm_qxl_command, ptr %user_cmd, i32 0, i32 4
  %commands_num = getelementptr inbounds %struct.drm_qxl_execbuffer, ptr %data, i32 0, i32 1
  %4 = call ptr @memset(ptr %user_cmd, i32 255, i32 32)
  %5 = ptrtoint ptr %commands_num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %commands_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp68.not = icmp eq i32 %6, 0
  br i1 %cmp68.not, label %entry.cleanup11_crit_edge, label %for.body.lr.ph

entry.cleanup11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup11

for.body.lr.ph:                                   ; preds = %entry
  %commands4 = getelementptr inbounds %struct.drm_qxl_execbuffer, ptr %data, i32 0, i32 2
  %rom.i = getelementptr inbounds %struct.qxl_device, ptr %dev, i32 0, i32 7
  %7 = getelementptr inbounds %struct.drm_qxl_reloc, ptr %reloc.i, i32 0, i32 1
  %8 = getelementptr inbounds %struct.drm_qxl_reloc, ptr %reloc.i, i32 0, i32 2
  %9 = getelementptr inbounds %struct.drm_qxl_reloc, ptr %reloc.i, i32 0, i32 3
  %10 = getelementptr inbounds %struct.drm_qxl_reloc, ptr %reloc.i, i32 0, i32 4
  %main_slot.i.i = getelementptr inbounds %struct.qxl_device, ptr %dev, i32 0, i32 24
  %surfaces_slot.i.i = getelementptr inbounds %struct.qxl_device, ptr %dev, i32 0, i32 25
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cmd_num.069 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %commands4 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %commands4, align 8
  %conv5 = trunc i64 %12 to i32
  %13 = inttoptr i32 %conv5 to ptr
  %add.ptr6 = getelementptr %struct.drm_qxl_command, ptr %13, i32 %cmd_num.069
  call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 156) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %for.body.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

for.body.if.then11.i.i_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %for.body
  %14 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr6, i32 32, i32 -1226833920) #13, !srcloc !61
  %asmresult.i.i = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !62

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %user_cmd, i32 noundef 32) #10
  %15 = call i32 @llvm.read_register.i32(metadata !50) #10
  %and.i.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !63
  %and.i.i.i.i = and i32 %17, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !65
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %user_cmd, ptr noundef %add.ptr6, i32 noundef 32) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #10, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !62

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %for.body.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 32, %for.body.if.then11.i.i_crit_edge ], [ 32, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 32, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %user_cmd, i32 %sub.i.i
  %18 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup11

if.end:                                           ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %release.i) #10
  %19 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 -1 to ptr), ptr %release.i, align 4, !annotation !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd_bo.i) #10
  %20 = ptrtoint ptr %cmd_bo.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 -1 to ptr), ptr %cmd_bo.i, align 4, !annotation !60
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cond.i = icmp eq i32 %22, 1
  br i1 %cond.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %if.end
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4088, i32 %24)
  %cmp.i = icmp ugt i32 %24, 4088
  br i1 %cmp.i, label %sw.bb.i.cleanup.thread40_crit_edge, label %if.end.i

sw.bb.i.cleanup.thread40_crit_edge:               ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread40

sw.default.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.12) #10
  br label %cleanup.thread40

if.end.i:                                         ; preds = %sw.bb.i
  %25 = ptrtoint ptr %user_cmd to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %user_cmd, align 8
  %conv4.i = trunc i64 %26 to i32
  %27 = inttoptr i32 %conv4.i to ptr
  %28 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %27, i32 %24, i32 -1226833920) #13, !srcloc !66
  %asmresult.i = extractvalue { i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %cmp8.i = icmp eq i32 %asmresult.i, 0
  br i1 %cmp8.i, label %if.end11.i, label %if.end.i.cleanup.thread40_crit_edge

if.end.i.cleanup.thread40_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread40

if.end11.i:                                       ; preds = %if.end.i
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %3, align 8
  %31 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %30, i32 20) #10
  %32 = extractvalue { i32, i1 } %31, 1
  br i1 %32, label %if.end11.i.cleanup.thread40_crit_edge, label %if.end7.i.i, !prof !67

if.end11.i.cleanup.thread40_crit_edge:            ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread40

if.end7.i.i:                                      ; preds = %if.end11.i
  %33 = extractvalue { i32, i1 } %31, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %33, i32 noundef 3264) #14
  %tobool.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.cleanup.thread40_crit_edge, label %if.end13.i

if.end7.i.i.cleanup.thread40_crit_edge:           ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread40

if.end13.i:                                       ; preds = %if.end7.i.i
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %2, align 4
  %add.i = add i32 %35, 8
  %call15.i = call i32 @qxl_alloc_release_reserved(ptr noundef %dev, i32 noundef %add.i, i32 noundef 0, ptr noundef nonnull %release.i, ptr noundef nonnull %cmd_bo.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end13.i.cleanup.thread45_crit_edge

if.end13.i.cleanup.thread45_crit_edge:            ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread45

if.end18.i:                                       ; preds = %if.end13.i
  %36 = ptrtoint ptr %cmd_bo.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cmd_bo.i, align 4
  %38 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %release.i, align 4
  %release_offset.i = getelementptr inbounds %struct.qxl_release, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %release_offset.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %release_offset.i, align 4
  %and.i = and i32 %41, -4096
  %call19.i = call ptr @qxl_bo_kmap_atomic_page(ptr noundef %dev, ptr noundef %37, i32 noundef %and.i) #10
  %add.ptr.i = getelementptr i8, ptr %call19.i, i32 8
  %42 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %release.i, align 4
  %release_offset20.i = getelementptr inbounds %struct.qxl_release, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %release_offset20.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %release_offset20.i, align 4
  %and21.i = and i32 %45, 4095
  %add.ptr22.i = getelementptr i8, ptr %add.ptr.i, i32 %and21.i
  %46 = ptrtoint ptr %user_cmd to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %user_cmd, align 8
  %conv30.i = trunc i64 %47 to i32
  %48 = inttoptr i32 %conv30.i to ptr
  %49 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %2, align 4
  %call.i.i.i212.i = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr22.i, i32 noundef %50) #10
  call void @__check_object_size(ptr noundef %add.ptr22.i, i32 noundef %50, i1 noundef zeroext false) #10
  %51 = call i32 @llvm.read_register.i32(metadata !50) #10
  %and.i.i.i.i.i.i213.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i.i.i213.i to ptr
  %cpu_domain.i.i.i.i.i214.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 4
  %53 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i214.i) #5, !srcloc !63
  %and.i.i.i.i215.i = and i32 %53, -13
  %or.i.i.i.i216.i = or i32 %and.i.i.i.i215.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i216.i) #10, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !65
  %call1.i.i.i217.i = call i32 @arm_copy_from_user(ptr noundef %add.ptr22.i, ptr noundef %48, i32 noundef %50) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %53) #10, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !65
  %54 = ptrtoint ptr %rom.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rom.i, align 4
  %mm_clock.i = getelementptr inbounds %struct.qxl_rom, ptr %55, i32 0, i32 12
  %56 = ptrtoint ptr %mm_clock.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %mm_clock.i, align 1
  %mm_time.i = getelementptr inbounds %struct.qxl_drawable, ptr %call19.i, i32 0, i32 8
  %58 = ptrtoint ptr %mm_time.i to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 %57, ptr %mm_time.i, align 1
  %59 = ptrtoint ptr %cmd_bo.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cmd_bo.i, align 4
  call void @qxl_bo_kunmap_atomic_page(ptr noundef %dev, ptr noundef %60, ptr noundef %call19.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i217.i)
  %tobool33.not.i = icmp eq i32 %call1.i.i.i217.i, 0
  br i1 %tobool33.not.i, label %for.cond.preheader.i, label %if.then34.i

for.cond.preheader.i:                             ; preds = %if.end18.i
  %61 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp37238.not.i = icmp eq i32 %62, 0
  br i1 %cmp37238.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.then34.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13, i32 noundef %call1.i.i.i217.i) #10
  br label %if.then136.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0239.i = phi i32 [ %inc105.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %reloc.i) #10
  %63 = call ptr @memset(ptr %reloc.i, i32 255, i32 32)
  %64 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %0, align 8
  %conv45.i = trunc i64 %65 to i32
  %66 = inttoptr i32 %conv45.i to ptr
  %add.ptr46.i = getelementptr %struct.drm_qxl_reloc, ptr %66, i32 %i.0239.i
  call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 156) #10
  %call.i.i.i21 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i21, label %for.body.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

for.body.i.if.then11.i.i.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i
  %67 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr46.i, i32 32, i32 -1226833920) #13, !srcloc !61
  %asmresult.i.i.i = extractvalue { i32, i32 } %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !62

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %reloc.i, i32 noundef 32) #10
  %68 = call i32 @llvm.read_register.i32(metadata !50) #10
  %and.i.i.i.i.i.i.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 4
  %70 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #5, !srcloc !63
  %and.i.i.i.i.i = and i32 %70, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #10, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !65
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %reloc.i, ptr noundef %add.ptr46.i, i32 noundef 32) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %70) #10, !srcloc !64
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end50.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !62

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %for.body.i.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 32, %for.body.i.if.then11.i.i.i_crit_edge ], [ 32, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 32, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %reloc.i, i32 %sub.i.i.i
  %71 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %cleanup.thread.i

if.end50.i:                                       ; preds = %if.end.i.i.i
  %72 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %10, align 8
  %.off.i = add i32 %73, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch208.i = icmp ult i32 %.off.i, 2
  br i1 %switch208.i, label %if.end58.i, label %if.then56.i

if.then56.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.14, i32 noundef %73) #10
  br label %cleanup.thread.i

if.end58.i:                                       ; preds = %if.end50.i
  %arrayidx.i = getelementptr %struct.qxl_reloc_info, ptr %call8.i.i, i32 %i.0239.i
  %74 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %arrayidx.i, align 4
  %75 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool61.not.i = icmp eq i32 %76, 0
  br i1 %tobool61.not.i, label %if.else.i, label %if.then62.i

if.then62.i:                                      ; preds = %if.end58.i
  %conv64.i = zext i32 %76 to i64
  %77 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %release.i, align 4
  %dst_bo.i = getelementptr %struct.qxl_reloc_info, ptr %call8.i.i, i32 %i.0239.i, i32 1
  %call66.i = call fastcc i32 @qxlhw_handle_to_bo(ptr noundef %file_priv, i64 noundef %conv64.i, ptr noundef %78, ptr noundef %dst_bo.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %tobool67.not.i = icmp eq i32 %call66.i, 0
  br i1 %tobool67.not.i, label %if.end69.i, label %if.then62.i.cleanup.thread.i_crit_edge

if.then62.i.cleanup.thread.i_crit_edge:           ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

if.end69.i:                                       ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %7, align 8
  %conv70.i = trunc i64 %80 to i32
  br label %if.end82.i

if.else.i:                                        ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %cmd_bo.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cmd_bo.i, align 4
  %dst_bo74.i = getelementptr %struct.qxl_reloc_info, ptr %call8.i.i, i32 %i.0239.i, i32 1
  %83 = ptrtoint ptr %dst_bo74.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %82, ptr %dst_bo74.i, align 4
  %84 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %7, align 8
  %86 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %release.i, align 4
  %release_offset76.i = getelementptr inbounds %struct.qxl_release, ptr %87, i32 0, i32 4
  %88 = ptrtoint ptr %release_offset76.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %release_offset76.i, align 4
  %90 = trunc i64 %85 to i32
  %conv79.i = add i32 %89, %90
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.else.i, %if.end69.i
  %conv79.sink.i = phi i32 [ %conv79.i, %if.else.i ], [ %conv70.i, %if.end69.i ]
  %dst_offset81.i = getelementptr %struct.qxl_reloc_info, ptr %call8.i.i, i32 %i.0239.i, i32 2
  %91 = ptrtoint ptr %dst_offset81.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %conv79.sink.i, ptr %dst_offset81.i, align 4
  %92 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %10, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %93)
  %cmp84.i = icmp eq i32 %93, 1
  br i1 %cmp84.i, label %if.end82.i.if.then87.i_crit_edge, label %lor.lhs.false.i

if.end82.i.if.then87.i_crit_edge:                 ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then87.i

lor.lhs.false.i:                                  ; preds = %if.end82.i
  %94 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool86.not.i = icmp eq i32 %95, 0
  br i1 %tobool86.not.i, label %if.else98.i, label %lor.lhs.false.i.if.then87.i_crit_edge

lor.lhs.false.i.if.then87.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then87.i

if.then87.i:                                      ; preds = %lor.lhs.false.i.if.then87.i_crit_edge, %if.end82.i.if.then87.i_crit_edge
  %96 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %8, align 8
  %conv89.i = zext i32 %97 to i64
  %98 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %release.i, align 4
  %src_bo.i = getelementptr %struct.qxl_reloc_info, ptr %call8.i.i, i32 %i.0239.i, i32 3
  %call91.i = call fastcc i32 @qxlhw_handle_to_bo(ptr noundef %file_priv, i64 noundef %conv89.i, ptr noundef %99, ptr noundef %src_bo.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91.i)
  %tobool92.not.i = icmp eq i32 %call91.i, 0
  br i1 %tobool92.not.i, label %if.end94.i, label %if.then87.i.cleanup.thread.i_crit_edge

if.then87.i.cleanup.thread.i_crit_edge:           ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

if.end94.i:                                       ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #12
  %100 = ptrtoint ptr %reloc.i to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %reloc.i, align 8
  %conv95.i = trunc i64 %101 to i32
  br label %for.inc.i

if.else98.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  %src_bo100.i = getelementptr %struct.qxl_reloc_info, ptr %call8.i.i, i32 %i.0239.i, i32 3
  %102 = ptrtoint ptr %src_bo100.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %src_bo100.i, align 4
  br label %for.inc.i

cleanup.thread.i:                                 ; preds = %if.then87.i.cleanup.thread.i_crit_edge, %if.then62.i.cleanup.thread.i_crit_edge, %if.then56.i, %if.then11.i.i.i
  %ret.3.ph.i = phi i32 [ -22, %if.then56.i ], [ -14, %if.then11.i.i.i ], [ %call66.i, %if.then62.i.cleanup.thread.i_crit_edge ], [ %call91.i, %if.then87.i.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %reloc.i) #10
  br label %if.then136.i

for.inc.i:                                        ; preds = %if.else98.i, %if.end94.i
  %.sink.i = phi i32 [ 0, %if.else98.i ], [ %conv95.i, %if.end94.i ]
  %src_offset102.i = getelementptr %struct.qxl_reloc_info, ptr %call8.i.i, i32 %i.0239.i, i32 4
  %103 = ptrtoint ptr %src_offset102.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %.sink.i, ptr %src_offset102.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %reloc.i) #10
  %inc105.i = add nuw i32 %i.0239.i, 1
  %104 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %3, align 8
  %cmp37.i = icmp ult i32 %inc105.i, %105
  br i1 %cmp37.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %106 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %release.i, align 4
  %call106.i = call i32 @qxl_release_reserve_list(ptr noundef %107, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106.i)
  %tobool107.not.i = icmp eq i32 %call106.i, 0
  br i1 %tobool107.not.i, label %for.cond110.preheader.i, label %for.end.i.if.then136.i_crit_edge

for.end.i.if.then136.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then136.i

for.cond110.preheader.i:                          ; preds = %for.end.i
  %108 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp112242.not.i = icmp eq i32 %109, 0
  br i1 %cmp112242.not.i, label %for.cond110.preheader.i.out_free_release.i_crit_edge, label %for.cond110.preheader.i.for.body114.i_crit_edge

for.cond110.preheader.i.for.body114.i_crit_edge:  ; preds = %for.cond110.preheader.i
  br label %for.body114.i

for.cond110.preheader.i.out_free_release.i_crit_edge: ; preds = %for.cond110.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_release.i

for.body114.i:                                    ; preds = %for.inc130.i.for.body114.i_crit_edge, %for.cond110.preheader.i.for.body114.i_crit_edge
  %i.1243.i = phi i32 [ %inc131.i, %for.inc130.i.for.body114.i_crit_edge ], [ 0, %for.cond110.preheader.i.for.body114.i_crit_edge ]
  %arrayidx115.i = getelementptr %struct.qxl_reloc_info, ptr %call8.i.i, i32 %i.1243.i
  %110 = ptrtoint ptr %arrayidx115.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx115.i, align 4
  %112 = zext i32 %111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values)
  switch i32 %111, label %for.body114.i.for.inc130.i_crit_edge [
    i32 1, label %if.then119.i
    i32 2, label %if.then126.i
  ]

for.body114.i.for.inc130.i_crit_edge:             ; preds = %for.body114.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc130.i

if.then119.i:                                     ; preds = %for.body114.i
  call void @__sanitizer_cov_trace_pc() #12
  %dst_bo.i29 = getelementptr %struct.qxl_reloc_info, ptr %call8.i.i, i32 %i.1243.i, i32 1
  %113 = ptrtoint ptr %dst_bo.i29 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dst_bo.i29, align 4
  %dst_offset.i30 = getelementptr %struct.qxl_reloc_info, ptr %call8.i.i, i32 %i.1243.i, i32 2
  %115 = ptrtoint ptr %dst_offset.i30 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %dst_offset.i30, align 4
  %and.i31 = and i32 %116, -4096
  %call.i32 = call ptr @qxl_bo_kmap_atomic_page(ptr noundef %dev, ptr noundef %114, i32 noundef %and.i31) #10
  %src_bo.i33 = getelementptr %struct.qxl_reloc_info, ptr %call8.i.i, i32 %i.1243.i, i32 3
  %117 = ptrtoint ptr %src_bo.i33 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %src_bo.i33, align 4
  %src_offset.i = getelementptr %struct.qxl_reloc_info, ptr %call8.i.i, i32 %i.1243.i, i32 4
  %119 = ptrtoint ptr %src_offset.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %src_offset.i, align 4
  %resource.i.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %118, i32 0, i32 6
  %121 = ptrtoint ptr %resource.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %resource.i.i, align 4
  %mem_type.i.i = getelementptr inbounds %struct.ttm_resource, ptr %122, i32 0, i32 2
  %123 = ptrtoint ptr %mem_type.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %mem_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %124)
  %cmp.i.i34 = icmp eq i32 %124, 2
  %cond.i.i = select i1 %cmp.i.i34, ptr %main_slot.i.i, ptr %surfaces_slot.i.i
  %high_bits.i.i = getelementptr inbounds %struct.qxl_memslot, ptr %cond.i.i, i32 0, i32 5
  %125 = ptrtoint ptr %high_bits.i.i to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %high_bits.i.i, align 8
  %127 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %122, align 4
  %shl.i.i = shl i32 %128, 12
  %add.i.i = add i32 %shl.i.i, %120
  %conv.i.i = zext i32 %add.i.i to i64
  %or.i.i = or i64 %126, %conv.i.i
  %129 = ptrtoint ptr %dst_offset.i30 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %dst_offset.i30, align 4
  %and3.i = and i32 %130, 4095
  %add.ptr.i35 = getelementptr i8, ptr %call.i32, i32 %and3.i
  %131 = ptrtoint ptr %add.ptr.i35 to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %or.i.i, ptr %add.ptr.i35, align 8
  br label %for.inc130.i.sink.split

if.then126.i:                                     ; preds = %for.body114.i
  %src_bo.i22 = getelementptr %struct.qxl_reloc_info, ptr %call8.i.i, i32 %i.1243.i, i32 3
  %132 = ptrtoint ptr %src_bo.i22 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %src_bo.i22, align 4
  %tobool.not.i23 = icmp eq ptr %133, null
  br i1 %tobool.not.i23, label %if.then126.i.apply_surf_reloc.exit_crit_edge, label %land.lhs.true.i

if.then126.i.apply_surf_reloc.exit_crit_edge:     ; preds = %if.then126.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %apply_surf_reloc.exit

land.lhs.true.i:                                  ; preds = %if.then126.i
  %is_primary.i = getelementptr inbounds %struct.qxl_bo, ptr %133, i32 0, i32 8
  %134 = ptrtoint ptr %is_primary.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %bf.load.i = load i8, ptr %is_primary.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool2.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool2.not.i, label %if.then.i24, label %land.lhs.true.i.apply_surf_reloc.exit_crit_edge

land.lhs.true.i.apply_surf_reloc.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %apply_surf_reloc.exit

if.then.i24:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %surface_id.i = getelementptr inbounds %struct.qxl_bo, ptr %133, i32 0, i32 14
  %135 = ptrtoint ptr %surface_id.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %surface_id.i, align 8
  br label %apply_surf_reloc.exit

apply_surf_reloc.exit:                            ; preds = %if.then.i24, %land.lhs.true.i.apply_surf_reloc.exit_crit_edge, %if.then126.i.apply_surf_reloc.exit_crit_edge
  %id.0.i = phi i32 [ 0, %land.lhs.true.i.apply_surf_reloc.exit_crit_edge ], [ %136, %if.then.i24 ], [ 0, %if.then126.i.apply_surf_reloc.exit_crit_edge ]
  %dst_bo.i25 = getelementptr %struct.qxl_reloc_info, ptr %call8.i.i, i32 %i.1243.i, i32 1
  %137 = ptrtoint ptr %dst_bo.i25 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dst_bo.i25, align 4
  %dst_offset.i = getelementptr %struct.qxl_reloc_info, ptr %call8.i.i, i32 %i.1243.i, i32 2
  %139 = ptrtoint ptr %dst_offset.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %dst_offset.i, align 4
  %and.i26 = and i32 %140, -4096
  %call.i = call ptr @qxl_bo_kmap_atomic_page(ptr noundef %dev, ptr noundef %138, i32 noundef %and.i26) #10
  %141 = ptrtoint ptr %dst_offset.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %dst_offset.i, align 4
  %and5.i = and i32 %142, 4095
  %add.ptr.i27 = getelementptr i8, ptr %call.i, i32 %and5.i
  %143 = ptrtoint ptr %add.ptr.i27 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %id.0.i, ptr %add.ptr.i27, align 4
  br label %for.inc130.i.sink.split

for.inc130.i.sink.split:                          ; preds = %apply_surf_reloc.exit, %if.then119.i
  %dst_bo.i25.sink = phi ptr [ %dst_bo.i25, %apply_surf_reloc.exit ], [ %dst_bo.i29, %if.then119.i ]
  %call.i.sink = phi ptr [ %call.i, %apply_surf_reloc.exit ], [ %call.i32, %if.then119.i ]
  %144 = ptrtoint ptr %dst_bo.i25.sink to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dst_bo.i25.sink, align 4
  call void @qxl_bo_kunmap_atomic_page(ptr noundef %dev, ptr noundef %145, ptr noundef %call.i.sink) #10
  br label %for.inc130.i

for.inc130.i:                                     ; preds = %for.inc130.i.sink.split, %for.body114.i.for.inc130.i_crit_edge
  %inc131.i = add nuw i32 %i.1243.i, 1
  %146 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %3, align 8
  %cmp112.i = icmp ult i32 %inc131.i, %147
  br i1 %cmp112.i, label %for.inc130.i.for.body114.i_crit_edge, label %for.inc130.i.out_free_release.i_crit_edge

for.inc130.i.out_free_release.i_crit_edge:        ; preds = %for.inc130.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_release.i

for.inc130.i.for.body114.i_crit_edge:             ; preds = %for.inc130.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body114.i

out_free_release.i:                               ; preds = %for.inc130.i.out_free_release.i_crit_edge, %for.cond110.preheader.i.out_free_release.i_crit_edge
  %148 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %release.i, align 4
  call void @qxl_release_fence_buffer_objects(ptr noundef %149) #10
  %150 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %release.i, align 4
  %152 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %1, align 8
  %call134.i = call i32 @qxl_push_command_ring_release(ptr noundef %dev, ptr noundef %151, i32 noundef %153, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134.i)
  %tobool135.not.i = icmp eq i32 %call134.i, 0
  br i1 %tobool135.not.i, label %for.inc, label %out_free_release.i.if.then136.i_crit_edge

out_free_release.i.if.then136.i_crit_edge:        ; preds = %out_free_release.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then136.i

if.then136.i:                                     ; preds = %out_free_release.i.if.then136.i_crit_edge, %for.end.i.if.then136.i_crit_edge, %cleanup.thread.i, %if.then34.i
  %ret.4236.i = phi i32 [ %ret.3.ph.i, %cleanup.thread.i ], [ -14, %if.then34.i ], [ %call106.i, %for.end.i.if.then136.i_crit_edge ], [ %call134.i, %out_free_release.i.if.then136.i_crit_edge ]
  %154 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %release.i, align 4
  call void @qxl_release_free(ptr noundef %dev, ptr noundef %155) #10
  br label %cleanup.thread45

cleanup.thread40:                                 ; preds = %if.end7.i.i.cleanup.thread40_crit_edge, %if.end11.i.cleanup.thread40_crit_edge, %if.end.i.cleanup.thread40_crit_edge, %sw.default.i, %sw.bb.i.cleanup.thread40_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %sw.default.i ], [ -22, %sw.bb.i.cleanup.thread40_crit_edge ], [ -14, %if.end.i.cleanup.thread40_crit_edge ], [ -12, %if.end7.i.i.cleanup.thread40_crit_edge ], [ -12, %if.end11.i.cleanup.thread40_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_bo.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %release.i) #10
  br label %cleanup11

cleanup.thread45:                                 ; preds = %if.then136.i, %if.end13.i.cleanup.thread45_crit_edge
  %ret.5.i.ph = phi i32 [ %ret.4236.i, %if.then136.i ], [ %call15.i, %if.end13.i.cleanup.thread45_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_bo.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %release.i) #10
  br label %cleanup11

for.inc:                                          ; preds = %out_free_release.i
  call void @kfree(ptr noundef nonnull %call8.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_bo.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %release.i) #10
  %inc = add nuw i32 %cmd_num.069, 1
  %156 = ptrtoint ptr %commands_num to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %commands_num, align 4
  %cmp = icmp ult i32 %inc, %157
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup11_crit_edge

for.inc.cleanup11_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup11

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup11:                                        ; preds = %for.inc.cleanup11_crit_edge, %cleanup.thread45, %cleanup.thread40, %if.then11.i.i, %entry.cleanup11_crit_edge
  %retval.2 = phi i32 [ %retval.0.i.ph, %cleanup.thread40 ], [ %ret.5.i.ph, %cleanup.thread45 ], [ -14, %if.then11.i.i ], [ 0, %entry.cleanup11_crit_edge ], [ 0, %for.inc.cleanup11_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %user_cmd) #10
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qxl_update_area_ioctl(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr noundef %file) #0 align 64 {
entry:
  %area = alloca %struct.qxl_rect, align 4
  %ctx = alloca %struct.ttm_operation_ctx, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %area) #10
  %0 = getelementptr inbounds %struct.qxl_rect, ptr %area, i32 0, i32 1
  %1 = getelementptr inbounds %struct.qxl_rect, ptr %area, i32 0, i32 2
  %2 = getelementptr inbounds %struct.qxl_rect, ptr %area, i32 0, i32 3
  %top1 = getelementptr inbounds %struct.drm_qxl_update_area, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %top1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %top1, align 4
  %5 = ptrtoint ptr %area to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %area, align 4
  %left2 = getelementptr inbounds %struct.drm_qxl_update_area, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %left2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %left2, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %0, align 4
  %bottom3 = getelementptr inbounds %struct.drm_qxl_update_area, ptr %data, i32 0, i32 3
  %9 = ptrtoint ptr %bottom3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bottom3, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %1, align 4
  %right4 = getelementptr inbounds %struct.drm_qxl_update_area, ptr %data, i32 0, i32 4
  %12 = ptrtoint ptr %right4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %right4, align 4
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ctx) #10
  %15 = call ptr @memcpy(ptr %ctx, ptr @__const.qxl_update_area_ioctl.ctx, i32 24)
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %13)
  %cmp.not = icmp ult i32 %7, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %10)
  %cmp9.not = icmp ult i32 %4, %10
  %or.cond = select i1 %cmp.not, i1 %cmp9.not, i1 false
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data, align 4
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file, i32 noundef %17) #10
  %cmp10 = icmp eq ptr %call, null
  br i1 %cmp10, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %resv32.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %call, i32 0, i32 9
  %18 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %19, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %20 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %retval.1.i.i, label %if.then3.i [
    i32 0, label %if.end18
    i32 -512, label %if.end12.if.then.i_crit_edge
  ], !prof !68

if.end12.if.then.i_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then3.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.drm_gem_object, ptr %call, i32 0, i32 2
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 8
  %dev5.i = getelementptr inbounds %struct.drm_device, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev5.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.16, ptr noundef nonnull %call) #15
  br label %if.then.i

if.end18:                                         ; preds = %if.end12
  %pin_count = getelementptr inbounds %struct.ttm_buffer_object, ptr %call, i32 0, i32 13
  %25 = ptrtoint ptr %pin_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pin_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool19.not = icmp eq i32 %26, 0
  br i1 %tobool19.not, label %if.then20, label %if.end18.if.end28_crit_edge

if.end18.if.end28_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then20:                                        ; preds = %if.end18
  %type = getelementptr inbounds %struct.qxl_bo, ptr %call, i32 0, i32 7
  %27 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type, align 8
  tail call void @qxl_ttm_placement_from_domain(ptr noundef nonnull %call, i32 noundef %28) #10
  %placement = getelementptr inbounds %struct.qxl_bo, ptr %call, i32 0, i32 3
  %call22 = call i32 @ttm_bo_validate(ptr noundef nonnull %call, ptr noundef %placement, ptr noundef nonnull %ctx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then20.if.end28_crit_edge, label %if.then20.if.then.i_crit_edge, !prof !62

if.then20.if.then.i_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then20.if.end28_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.end28:                                         ; preds = %if.then20.if.end28_crit_edge, %if.end18.if.end28_crit_edge
  %call29 = call i32 @qxl_bo_check_id(ptr noundef %dev, ptr noundef nonnull %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end28.out2_crit_edge

if.end28.out2_crit_edge:                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %out2

if.end32:                                         ; preds = %if.end28
  %surface_id = getelementptr inbounds %struct.qxl_bo, ptr %call, i32 0, i32 14
  %29 = ptrtoint ptr %surface_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %surface_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool33.not = icmp eq i32 %30, 0
  br i1 %tobool33.not, label %if.then34, label %if.end32.if.end36_crit_edge

if.end32.if.end36_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data, align 4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15, i32 noundef %32) #10
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end32.if.end36_crit_edge
  %call37 = call i32 @qxl_io_update_area(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef nonnull %area) #10
  br label %out2

out2:                                             ; preds = %if.end36, %if.end28.out2_crit_edge
  %ret.0 = phi i32 [ %call29, %if.end28.out2_crit_edge ], [ %call37, %if.end36 ]
  %bdev.i.i.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %call, i32 0, i32 1
  %33 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %34, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #10
  %resource.i.i.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %call, i32 0, i32 6
  %35 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %resource.i.i.i, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef nonnull %call, ptr noundef %36, ptr noundef null) #10
  %37 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %38, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #10
  %39 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %resv32.i.i, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %40) #10
  call void @ww_mutex_unlock(ptr noundef %40) #10
  br label %if.then.i

if.then.i:                                        ; preds = %out2, %if.then20.if.then.i_crit_edge, %if.then3.i, %if.end12.if.then.i_crit_edge
  %ret.1 = phi i32 [ %retval.1.i.i, %if.then3.i ], [ %ret.0, %out2 ], [ %call22, %if.then20.if.then.i_crit_edge ], [ %retval.1.i.i, %if.end12.if.then.i_crit_edge ]
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !69
  call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  %41 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #10, !srcloc !70
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !62

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !71
  call void @drm_gem_object_free(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ %ret.1, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %ret.1, %if.then10.i.i.i.i.i.i ], [ %ret.1, %if.then.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctx) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %area) #10
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qxl_getparam_ioctl(ptr nocapture noundef readonly %dev, ptr nocapture noundef %data, ptr nocapture noundef readnone %file_priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %data, align 8
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.23)
  switch i64 %1, label %entry.cleanup_crit_edge [
    i64 1, label %sw.bb
    i64 2, label %entry.cleanup.sink.split_crit_edge
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rom = getelementptr inbounds %struct.qxl_device, ptr %dev, i32 0, i32 7
  %2 = ptrtoint ptr %rom to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rom, align 4
  %n_surfaces = getelementptr inbounds %struct.qxl_rom, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %n_surfaces to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %n_surfaces, align 1
  %conv = zext i32 %5 to i64
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb, %entry.cleanup.sink.split_crit_edge
  %conv.sink = phi i64 [ %conv, %sw.bb ], [ 96, %entry.cleanup.sink.split_crit_edge ]
  %value = getelementptr inbounds %struct.drm_qxl_getparam, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv.sink, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qxl_clientcap_ioctl(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %file_priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev2, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %revision = getelementptr i8, ptr %1, i32 -92
  %4 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %5)
  %cmp = icmp ult i8 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 463, i32 %3)
  %cmp7 = icmp ugt i32 %3, 463
  %or.cond = select i1 %cmp, i1 true, i1 %cmp7
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end10

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rem = and i32 %3, 7
  %div21 = lshr i32 %3, 3
  %rom = getelementptr inbounds %struct.qxl_device, ptr %dev, i32 0, i32 7
  %6 = ptrtoint ptr %rom to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rom, align 4
  %arrayidx = getelementptr %struct.qxl_rom, ptr %7, i32 0, i32 21, i32 %div21
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %conv11 = zext i8 %9 to i32
  %shl = shl nuw nsw i32 1, %rem
  %and = and i32 %shl, %conv11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 -38, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -38, %entry.cleanup_crit_edge ], [ %., %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qxl_alloc_surf_ioctl(ptr noundef %dev, ptr nocapture noundef %data, ptr noundef %file) #0 align 64 {
entry:
  %qobj = alloca ptr, align 4
  %handle = alloca i32, align 4
  %surf = alloca %struct.qxl_surface, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %qobj) #10
  %0 = ptrtoint ptr %qobj to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %qobj, align 4, !annotation !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %handle) #10
  %1 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %handle, align 4, !annotation !60
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %surf) #10
  %2 = getelementptr inbounds %struct.qxl_surface, ptr %surf, i32 0, i32 1
  %3 = getelementptr inbounds %struct.qxl_surface, ptr %surf, i32 0, i32 2
  %4 = getelementptr inbounds %struct.qxl_surface, ptr %surf, i32 0, i32 3
  %5 = getelementptr inbounds %struct.qxl_surface, ptr %surf, i32 0, i32 4
  %stride = getelementptr inbounds %struct.drm_qxl_alloc_surf, ptr %data, i32 0, i32 3
  %6 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stride, align 4
  %8 = tail call i32 @llvm.abs.i32(i32 %7, i1 false)
  %height = getelementptr inbounds %struct.drm_qxl_alloc_surf, ptr %data, i32 0, i32 2
  %9 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height, align 4
  %mul = mul i32 %8, %10
  %add = add i32 %mul, %8
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data, align 4
  %13 = ptrtoint ptr %surf to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %surf, align 4
  %width = getelementptr inbounds %struct.drm_qxl_alloc_surf, ptr %data, i32 0, i32 1
  %14 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width, align 4
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %2, align 4
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %10, ptr %3, align 4
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %7, ptr %4, align 4
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 0, ptr %5, align 4
  %call = call i32 @qxl_gem_object_create_with_handle(ptr noundef %dev, ptr noundef %file, i32 noundef 2, i32 noundef %add, ptr noundef nonnull %surf, ptr noundef nonnull %qobj, ptr noundef nonnull %handle) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.qxl_alloc_surf_ioctl, i32 noundef %call) #10
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %handle, align 4
  %handle10 = getelementptr inbounds %struct.drm_qxl_alloc_surf, ptr %data, i32 0, i32 4
  %22 = ptrtoint ptr %handle10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %handle10, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ 0, %if.else ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %surf) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %handle) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qobj) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_gem_object_create_with_handle(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_ttm_dumb_map_offset(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_alloc_release_reserved(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qxl_bo_kmap_atomic_page(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_bo_kunmap_atomic_page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qxlhw_handle_to_bo(ptr noundef %file_priv, i64 noundef %handle, ptr noundef %release, ptr nocapture noundef writeonly %qbo_p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %handle to i32
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file_priv, i32 noundef %conv) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %call1 = tail call i32 @qxl_release_list_add(ptr noundef %release, ptr noundef nonnull %call) #10
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !69
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #10, !srcloc !70
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !62

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #10
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !71
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #10
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %drm_gem_object_put.exit.cleanup_crit_edge

drm_gem_object_put.exit.cleanup_crit_edge:        ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %qbo_p to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %qbo_p, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %drm_gem_object_put.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ %call1, %drm_gem_object_put.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_release_reserve_list(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_release_fence_buffer_objects(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_push_command_ring_release(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_release_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_release_list_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_ttm_placement_from_domain(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_validate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_bo_check_id(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_io_update_area(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_move_to_lru_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !25, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !43, !44, !45, !46, !48}
!llvm.named.register.sp = !{!50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/qxl/qxl_ioctl.c", i32 427, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/qxl/qxl_ioctl.c", i32 429, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/qxl/qxl_ioctl.c", i32 431, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/qxl/qxl_ioctl.c", i32 433, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/qxl/qxl_ioctl.c", i32 435, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/qxl/qxl_ioctl.c", i32 437, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/qxl/qxl_ioctl.c", i32 440, i32 2}
!14 = !{ptr @qxl_ioctls, !15, !"qxl_ioctls", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/qxl/qxl_ioctl.c", i32 426, i32 29}
!16 = !{ptr @qxl_max_ioctls, !17, !"qxl_max_ioctls", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/qxl/qxl_ioctl.c", i32 444, i32 5}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/qxl/qxl_ioctl.c", i32 47, i32 3}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/qxl/qxl_ioctl.c", i32 56, i32 3}
!22 = !{ptr @__func__.qxl_alloc_ioctl, !21, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!25 = distinct !{null, !24, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/qxl/qxl_ioctl.c", i32 161, i32 3}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/qxl/qxl_ioctl.c", i32 200, i32 3}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/qxl/qxl_ioctl.c", i32 219, i32 4}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/qxl/qxl_ioctl.c", i32 339, i32 3}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/qxl/qxl_object.h", i32 39, i32 4}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @qxl_bo_reserve._entry, !39, !"_entry", i1 false, i1 false}
!45 = !{ptr @qxl_bo_reserve._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!46 = distinct !{null, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
!48 = !{ptr @__func__.qxl_alloc_surf_ioctl, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/qxl/qxl_ioctl.c", i32 418, i32 3}
!50 = !{!"sp"}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{!"auto-init"}
!61 = !{i64 2153886032, i64 2153886057}
!62 = !{!"branch_weights", i32 2000, i32 1}
!63 = !{i64 6381587}
!64 = !{i64 6381784}
!65 = !{i64 2153867017}
!66 = !{i64 2157064444, i64 2157064469}
!67 = !{!"branch_weights", i32 1, i32 2000}
!68 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!69 = !{i64 2148760811}
!70 = !{i64 2148675251, i64 2148675283, i64 2148675312, i64 2148675346, i64 2148675377, i64 2148675400}
!71 = !{i64 2150063652}
