; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/qxl/qxl_release.c_pt.bc'
source_filename = "../drivers/gpu/drm/qxl/qxl_release.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.radix_tree_preload = type { %struct.local_lock_t, i32, ptr }
%struct.local_lock_t = type { %struct.lockdep_map, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.qxl_release = type { %struct.dma_fence, i32, i32, ptr, i32, i32, %struct.ww_acquire_ctx, %struct.list_head }
%struct.dma_fence = type { ptr, ptr, %union.anon.84, i64, i64, i32, %struct.kref, i32 }
%union.anon.84 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.qxl_device = type { %struct.drm_device, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.qxl_mman, %struct.qxl_gem, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.qxl_memslot, %struct.qxl_memslot, %struct.spinlock, %struct.idr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.spinlock, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, [32 x %struct.qxl_debugfs], i32, %struct.mutex, %struct.idr, %struct.spinlock, i32, %struct.mutex, ptr, ptr, %struct.mutex, [3 x ptr], [3 x i32], %struct.work_struct, ptr, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
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
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.88 = type { i32, ptr }
%struct.qxl_mman = type { %struct.ttm_device }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.90] }
%struct.anon.90 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.qxl_gem = type { %struct.mutex, %struct.list_head }
%struct.qxl_memslot = type { i32, ptr, i8, i64, i64, i64 }
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
%struct.ttm_validate_buffer = type { %struct.list_head, ptr, i32 }
%struct.ttm_operation_ctx = type { i8, i8, i8, i8, i8, ptr, i64 }
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
%struct.qxl_bo = type <{ %struct.ttm_buffer_object, %struct.list_head, [3 x %struct.ttm_place], %struct.ttm_placement, %struct.dma_buf_map, ptr, i32, i32, i8, [3 x i8], ptr, i8, %struct.qxl_surface, [3 x i8], i32, ptr }>
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.dma_buf_map = type { %union.anon.85, i8 }
%union.anon.85 = type { ptr }
%struct.qxl_surface = type { i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"release %d, type %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/qxl/qxl_release.c\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"got illegal type: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@releases_per_bo = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 16, i32 32, i32 16], [20 x i8] zeroinitializer }, align 32
@release_size_per_bo = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 256, i32 128, i32 256], [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to find id in release_idr\0A\00", [62 x i8] zeroinitializer }, align 32
@qxl_fence_ops = internal constant { %struct.dma_fence_ops, [60 x i8] } { %struct.dma_fence_ops { i8 0, ptr @qxl_get_driver_name, ptr @qxl_get_timeline_name, ptr null, ptr null, ptr @qxl_fence_wait, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__const.qxl_release_validate_bo.ctx = private unnamed_addr constant { i8, i8, i8, i8, i8, [3 x i8], ptr, [4 x i8], i64 } { i8 1, i8 0, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, ptr null, [4 x i8] zeroinitializer, i64 0 }, align 8
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Out of memory\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"allocated release %d\0A\00", [42 x i8] zeroinitializer }, align 32
@radix_tree_preloads = external dso_local global %struct.radix_tree_preload, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"include/linux/local_lock_internal.h\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l->owner != current\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"qxl\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"release\00", [24 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__tracepoint_dma_fence_emit = external dso_local global %struct.tracepoint, align 4
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"include/trace/events/dma_fence.h\00", [63 x i8] zeroinitializer }, align 32
@trace_dma_fence_emit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/ww_mutex.h\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ctx->acquired\00", [18 x i8] zeroinitializer }, align 32
@switch.table.qxl_alloc_release_reserved = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 1], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 140, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 150, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 304, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [16 x i8] c"releases_per_bo\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 45, i32 18 }
@___asan_gen_.28 = private unnamed_addr constant [20 x i8] c"release_size_per_bo\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 44, i32 18 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 373, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant [14 x i8] c"qxl_fence_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 77, i32 35 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 93, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 114, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [39 x i8] c"../include/linux/local_lock_internal.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 36, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 49, i32 9 }
@___asan_gen_.56 = private constant [37 x i8] c"../drivers/gpu/drm/qxl/qxl_release.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 54, i32 9 }
@___asan_gen_.62 = private unnamed_addr constant [36 x i8] c"../include/trace/events/dma_fence.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 37, i32 1 }
@___asan_gen_.65 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 108, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [28 x i8] c"../include/linux/ww_mutex.h\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 191, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [40 x i8] c"switch.table.qxl_alloc_release_reserved\00", align 1
@llvm.compiler.used = appending global [20 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @releases_per_bo, ptr @release_size_per_bo, ptr @.str.3, ptr @qxl_fence_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @switch.table.qxl_alloc_release_reserved], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @releases_per_bo to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @release_size_per_bo to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_fence_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qxl_alloc_release_reserved to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qxl_release_free(ptr noundef %qdev, ptr noundef %release) local_unnamed_addr #0 align 64 {
entry:
  %bo.i49 = alloca ptr, align 4
  %bo.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.qxl_release, ptr %release, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  %type = getelementptr inbounds %struct.qxl_release, ptr %release, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef %1, i32 noundef %3) #9
  %surface_release_id = getelementptr inbounds %struct.qxl_release, ptr %release, i32 0, i32 5
  %4 = ptrtoint ptr %surface_release_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %surface_release_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @qxl_surface_id_dealloc(ptr noundef %qdev, i32 noundef %5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %release_idr_lock = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 31
  tail call void @_raw_spin_lock(ptr noundef %release_idr_lock) #9
  %release_idr = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 27
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 8
  %call = tail call ptr @idr_remove(ptr noundef %release_idr, i32 noundef %7) #9
  tail call void @_raw_spin_unlock(ptr noundef %release_idr_lock) #9
  %ops = getelementptr inbounds %struct.dma_fence, ptr %release, i32 0, i32 1
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %tobool4.not = icmp eq ptr %9, null
  %bos.i50 = getelementptr inbounds %struct.qxl_release, ptr %release, i32 0, i32 7
  %10 = ptrtoint ptr %bos.i50 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %bos.i50, align 4
  %cmp.i.not12.i51 = icmp eq ptr %11, %bos.i50
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  br i1 %cmp.i.not12.i51, label %do.end, label %if.then5.if.end22_crit_edge, !prof !47

if.then5.if.end22_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 150, i32 noundef 9, ptr noundef null) #9
  br label %if.end22

if.end22:                                         ; preds = %do.end, %if.then5.if.end22_crit_edge
  %12 = ptrtoint ptr %bos.i50 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %bos.i50, align 4
  %cmp.i.not12.i = icmp eq ptr %13, %bos.i50
  br i1 %cmp.i.not12.i, label %if.end22.qxl_release_free_list.exit_crit_edge, label %if.end22.while.body.i_crit_edge

if.end22.while.body.i_crit_edge:                  ; preds = %if.end22
  br label %while.body.i

if.end22.qxl_release_free_list.exit_crit_edge:    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %qxl_release_free_list.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %if.end22.while.body.i_crit_edge
  %14 = phi ptr [ %27, %list_del.exit.i.while.body.i_crit_edge ], [ %13, %if.end22.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bo.i) #9
  %bo4.i = getelementptr inbounds %struct.ttm_validate_buffer, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %bo4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bo4.i, align 4
  %17 = ptrtoint ptr %bo.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %bo.i, align 4
  call void @qxl_bo_unref(ptr noundef nonnull %bo.i) #9
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %14) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.i, align 4
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %14, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %24 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef %14) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bo.i) #9
  %26 = ptrtoint ptr %bos.i50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %bos.i50, align 4
  %cmp.i.not.i = icmp eq ptr %27, %bos.i50
  br i1 %cmp.i.not.i, label %list_del.exit.i.qxl_release_free_list.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

list_del.exit.i.qxl_release_free_list.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qxl_release_free_list.exit

qxl_release_free_list.exit:                       ; preds = %list_del.exit.i.qxl_release_free_list.exit_crit_edge, %if.end22.qxl_release_free_list.exit_crit_edge
  %release_bo.i = getelementptr inbounds %struct.qxl_release, ptr %release, i32 0, i32 3
  %28 = ptrtoint ptr %release_bo.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %release_bo.i, align 8
  %call30 = call i32 @dma_fence_signal(ptr noundef %release) #9
  %tobool.not.i = icmp eq ptr %release, null
  br i1 %tobool.not.i, label %qxl_release_free_list.exit.if.end32_crit_edge, label %if.then.i

qxl_release_free_list.exit.if.end32_crit_edge:    ; preds = %qxl_release_free_list.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then.i:                                        ; preds = %qxl_release_free_list.exit
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %release, i32 0, i32 6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !48
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %29 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !49
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end32_crit_edge, label %if.then10.i.i.i.i.i, !prof !50

if.end5.i.i.i.i.i.if.end32_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #9
  br label %if.end32

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !51
  call void @dma_fence_release(ptr noundef %refcount.i) #9
  br label %if.end32

if.else:                                          ; preds = %if.end
  br i1 %cmp.i.not12.i51, label %if.else.qxl_release_free_list.exit62_crit_edge, label %if.else.while.body.i54_crit_edge

if.else.while.body.i54_crit_edge:                 ; preds = %if.else
  br label %while.body.i54

if.else.qxl_release_free_list.exit62_crit_edge:   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %qxl_release_free_list.exit62

while.body.i54:                                   ; preds = %list_del.exit.i60.while.body.i54_crit_edge, %if.else.while.body.i54_crit_edge
  %30 = phi ptr [ %43, %list_del.exit.i60.while.body.i54_crit_edge ], [ %11, %if.else.while.body.i54_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bo.i49) #9
  %bo4.i52 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %bo4.i52 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bo4.i52, align 4
  %33 = ptrtoint ptr %bo.i49 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %bo.i49, align 4
  call void @qxl_bo_unref(ptr noundef nonnull %bo.i49) #9
  %call.i.i.i53 = call zeroext i1 @__list_del_entry_valid(ptr noundef %30) #9
  br i1 %call.i.i.i53, label %if.end.i.i.i57, label %while.body.i54.list_del.exit.i60_crit_edge

while.body.i54.list_del.exit.i60_crit_edge:       ; preds = %while.body.i54
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i60

if.end.i.i.i57:                                   ; preds = %while.body.i54
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i55 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i.i55, align 4
  %36 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %30, align 4
  %prev1.i.i.i.i56 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i.i56 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i.i56, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %list_del.exit.i60

list_del.exit.i60:                                ; preds = %if.end.i.i.i57, %while.body.i54.list_del.exit.i60_crit_edge
  %40 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 256 to ptr), ptr %30, align 4
  %prev.i.i58 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i58 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i58, align 4
  call void @kfree(ptr noundef %30) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bo.i49) #9
  %42 = ptrtoint ptr %bos.i50 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %bos.i50, align 4
  %cmp.i.not.i59 = icmp eq ptr %43, %bos.i50
  br i1 %cmp.i.not.i59, label %list_del.exit.i60.qxl_release_free_list.exit62_crit_edge, label %list_del.exit.i60.while.body.i54_crit_edge

list_del.exit.i60.while.body.i54_crit_edge:       ; preds = %list_del.exit.i60
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i54

list_del.exit.i60.qxl_release_free_list.exit62_crit_edge: ; preds = %list_del.exit.i60
  call void @__sanitizer_cov_trace_pc() #11
  br label %qxl_release_free_list.exit62

qxl_release_free_list.exit62:                     ; preds = %list_del.exit.i60.qxl_release_free_list.exit62_crit_edge, %if.else.qxl_release_free_list.exit62_crit_edge
  %release_bo.i61 = getelementptr inbounds %struct.qxl_release, ptr %release, i32 0, i32 3
  %44 = ptrtoint ptr %release_bo.i61 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %release_bo.i61, align 8
  call void @kfree(ptr noundef %release) #9
  br label %if.end32

if.end32:                                         ; preds = %qxl_release_free_list.exit62, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end32_crit_edge, %qxl_release_free_list.exit.if.end32_crit_edge
  %release_count = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 29
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %release_count, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %release_count, i32 1, i32 3, i32 1) #9
  %45 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %release_count, ptr %release_count, i32 1, ptr elementtype(i32) %release_count) #9, !srcloc !52
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_surface_id_dealloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qxl_release_list_add(ptr noundef %release, ptr noundef %bo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bos = getelementptr inbounds %struct.qxl_release, ptr %release, i32 0, i32 7
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %entry1.0.in = phi ptr [ %bos, %entry ], [ %entry1.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %entry1.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %entry1.0 = load ptr, ptr %entry1.0.in, align 4
  %cmp.not = icmp eq ptr %entry1.0, %bos
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %bo4 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %entry1.0, i32 0, i32 1
  %1 = ptrtoint ptr %bo4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bo4, align 4
  %cmp5 = icmp eq ptr %2, %bo
  br i1 %cmp5, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 16) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.end13

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %for.end
  %call14 = tail call ptr @qxl_bo_ref(ptr noundef %bo) #9
  %bo17 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %call7.i, i32 0, i32 1
  %4 = ptrtoint ptr %bo17 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %bo, ptr %bo17, align 8
  %num_shared = getelementptr inbounds %struct.ttm_validate_buffer, ptr %call7.i, i32 0, i32 2
  %5 = ptrtoint ptr %num_shared to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %num_shared, align 4
  %prev.i = getelementptr inbounds %struct.qxl_release, ptr %release, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %7, ptr noundef %bos) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i, ptr %prev.i, align 4
  %9 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %bos, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %call7.i, ptr %7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end13.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %for.end.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ 0, %if.end.i.i ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qxl_bo_ref(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qxl_release_reserve_list(ptr noundef %release, i1 noundef zeroext %no_intr) local_unnamed_addr #0 align 64 {
entry:
  %ctx.i = alloca %struct.ttm_operation_ctx, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bos = getelementptr inbounds %struct.qxl_release, ptr %release, i32 0, i32 7
  %0 = ptrtoint ptr %bos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %bos, align 4
  %cmp.i.not.i = icmp eq ptr %1, %bos
  br i1 %cmp.i.not.i, label %entry.if.end_crit_edge, label %list_is_singular.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

list_is_singular.exit:                            ; preds = %entry
  %prev.i = getelementptr inbounds %struct.qxl_release, ptr %release, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %cmp.i.not = icmp eq ptr %1, %3
  br i1 %cmp.i.not, label %list_is_singular.exit.cleanup28_crit_edge, label %list_is_singular.exit.if.end_crit_edge

list_is_singular.exit.if.end_crit_edge:           ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

list_is_singular.exit.cleanup28_crit_edge:        ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup28

if.end:                                           ; preds = %list_is_singular.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %ticket = getelementptr inbounds %struct.qxl_release, ptr %release, i32 0, i32 6
  %lnot = xor i1 %no_intr, true
  %call4 = tail call i32 @ttm_eu_reserve_buffers(ptr noundef %ticket, ptr noundef %bos, i1 noundef zeroext %lnot, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.for.cond_crit_edge, label %if.end.cleanup28_crit_edge

if.end.cleanup28_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup28

if.end.for.cond_crit_edge:                        ; preds = %if.end
  br label %for.cond

for.cond:                                         ; preds = %qxl_release_validate_bo.exit.for.cond_crit_edge, %if.end.for.cond_crit_edge
  %entry1.0.in = phi ptr [ %entry1.0, %qxl_release_validate_bo.exit.for.cond_crit_edge ], [ %bos, %if.end.for.cond_crit_edge ]
  %4 = ptrtoint ptr %entry1.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %entry1.0 = load ptr, ptr %entry1.0.in, align 4
  %cmp.not = icmp eq ptr %entry1.0, %bos
  br i1 %cmp.not, label %for.cond.cleanup28_crit_edge, label %for.body

for.cond.cleanup28_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup28

for.body:                                         ; preds = %for.cond
  %bo13 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %entry1.0, i32 0, i32 1
  %5 = ptrtoint ptr %bo13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bo13, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ctx.i) #9
  %7 = call ptr @memcpy(ptr %ctx.i, ptr @__const.qxl_release_validate_bo.ctx, i32 24)
  %pin_count.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %6, i32 0, i32 13
  %8 = ptrtoint ptr %pin_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pin_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.body.if.end4.i_crit_edge

for.body.if.end4.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.then.i:                                        ; preds = %for.body
  %type.i = getelementptr inbounds %struct.qxl_bo, ptr %6, i32 0, i32 7
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type.i, align 8
  call void @qxl_ttm_placement_from_domain(ptr noundef %6, i32 noundef %11) #9
  %placement.i = getelementptr inbounds %struct.qxl_bo, ptr %6, i32 0, i32 3
  %call.i = call i32 @ttm_bo_validate(ptr noundef %6, ptr noundef %placement.i, ptr noundef nonnull %ctx.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end4.i_crit_edge, label %if.then.i.if.then18_crit_edge

if.then.i.if.then18_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %for.body.if.end4.i_crit_edge
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %6, i32 0, i32 9
  %12 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %resv.i, align 8
  %call6.i = call i32 @dma_resv_reserve_shared(ptr noundef %13, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %qxl_release_validate_bo.exit, label %if.end4.i.if.then18_crit_edge

if.end4.i.if.then18_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

qxl_release_validate_bo.exit:                     ; preds = %if.end4.i
  %dev.i = getelementptr inbounds %struct.drm_gem_object, ptr %6, i32 0, i32 2
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 8
  %call12.i = call i32 @qxl_bo_check_id(ptr noundef %15, ptr noundef %6) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctx.i) #9
  %tobool17.not = icmp eq i32 %call12.i, 0
  br i1 %tobool17.not, label %qxl_release_validate_bo.exit.for.cond_crit_edge, label %qxl_release_validate_bo.exit.cleanup28.sink.split_crit_edge

qxl_release_validate_bo.exit.cleanup28.sink.split_crit_edge: ; preds = %qxl_release_validate_bo.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup28.sink.split

qxl_release_validate_bo.exit.for.cond_crit_edge:  ; preds = %qxl_release_validate_bo.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then18:                                        ; preds = %if.end4.i.if.then18_crit_edge, %if.then.i.if.then18_crit_edge
  %retval.0.i.ph = phi i32 [ %call6.i, %if.end4.i.if.then18_crit_edge ], [ %call.i, %if.then.i.if.then18_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctx.i) #9
  br label %cleanup28.sink.split

cleanup28.sink.split:                             ; preds = %if.then18, %qxl_release_validate_bo.exit.cleanup28.sink.split_crit_edge
  %retval.2.ph = phi i32 [ %retval.0.i.ph, %if.then18 ], [ %call12.i, %qxl_release_validate_bo.exit.cleanup28.sink.split_crit_edge ]
  call void @ttm_eu_backoff_reservation(ptr noundef %ticket, ptr noundef %bos) #9
  br label %cleanup28

cleanup28:                                        ; preds = %cleanup28.sink.split, %for.cond.cleanup28_crit_edge, %if.end.cleanup28_crit_edge, %list_is_singular.exit.cleanup28_crit_edge
  %retval.2 = phi i32 [ 0, %list_is_singular.exit.cleanup28_crit_edge ], [ %call4, %if.end.cleanup28_crit_edge ], [ %retval.2.ph, %cleanup28.sink.split ], [ 0, %for.cond.cleanup28_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_eu_reserve_buffers(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_eu_backoff_reservation(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qxl_release_backoff_reserve_list(ptr noundef %release) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bos = getelementptr inbounds %struct.qxl_release, ptr %release, i32 0, i32 7
  %0 = ptrtoint ptr %bos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %bos, align 4
  %cmp.i.not.i = icmp eq ptr %1, %bos
  br i1 %cmp.i.not.i, label %entry.if.end_crit_edge, label %list_is_singular.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

list_is_singular.exit:                            ; preds = %entry
  %prev.i = getelementptr inbounds %struct.qxl_release, ptr %release, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %cmp.i.not = icmp eq ptr %1, %3
  br i1 %cmp.i.not, label %list_is_singular.exit.return_crit_edge, label %list_is_singular.exit.if.end_crit_edge

list_is_singular.exit.if.end_crit_edge:           ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

list_is_singular.exit.return_crit_edge:           ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %list_is_singular.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %ticket = getelementptr inbounds %struct.qxl_release, ptr %release, i32 0, i32 6
  tail call void @ttm_eu_backoff_reservation(ptr noundef %ticket, ptr noundef %bos) #9
  br label %return

return:                                           ; preds = %if.end, %list_is_singular.exit.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qxl_alloc_surface_release_reserved(ptr noundef %qdev, i32 noundef %surface_cmd_type, ptr noundef readonly %create_rel, ptr nocapture noundef %release) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %surface_cmd_type)
  %cmp = icmp ne i32 %surface_cmd_type, 1
  %tobool.not = icmp eq ptr %create_rel, null
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @qxl_release_alloc(ptr noundef %qdev, i32 noundef 1, ptr noundef %release)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.return_crit_edge, label %if.end

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %if.then
  %release_bo = getelementptr inbounds %struct.qxl_release, ptr %create_rel, i32 0, i32 3
  %0 = ptrtoint ptr %release_bo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %release_bo, align 8
  %2 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %release, align 4
  %release_bo3 = getelementptr inbounds %struct.qxl_release, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %release_bo3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %release_bo3, align 8
  %release_offset = getelementptr inbounds %struct.qxl_release, ptr %create_rel, i32 0, i32 4
  %5 = ptrtoint ptr %release_offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %release_offset, align 4
  %add = add i32 %6, 64
  %7 = load ptr, ptr %release, align 4
  %release_offset4 = getelementptr inbounds %struct.qxl_release, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %release_offset4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %release_offset4, align 4
  %9 = load ptr, ptr %release, align 4
  %bos.i = getelementptr inbounds %struct.qxl_release, ptr %9, i32 0, i32 7
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %entry1.0.in.i = phi ptr [ %bos.i, %if.end ], [ %entry1.0.i, %for.body.i.for.cond.i_crit_edge ]
  %10 = ptrtoint ptr %entry1.0.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %entry1.0.i = load ptr, ptr %entry1.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %entry1.0.i, %bos.i
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %bo4.i = getelementptr inbounds %struct.ttm_validate_buffer, ptr %entry1.0.i, i32 0, i32 1
  %11 = ptrtoint ptr %bo4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bo4.i, align 4
  %cmp5.i = icmp eq ptr %12, %1
  br i1 %cmp5.i, label %for.body.i.qxl_release_list_add.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.body.i.qxl_release_list_add.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qxl_release_list_add.exit

for.end.i:                                        ; preds = %for.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 16) #12
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %for.end.i.qxl_release_list_add.exit_crit_edge, label %if.end13.i

for.end.i.qxl_release_list_add.exit_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qxl_release_list_add.exit

if.end13.i:                                       ; preds = %for.end.i
  %call14.i = tail call ptr @qxl_bo_ref(ptr noundef %1) #9
  %bo17.i = getelementptr inbounds %struct.ttm_validate_buffer, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %bo17.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %1, ptr %bo17.i, align 8
  %num_shared.i = getelementptr inbounds %struct.ttm_validate_buffer, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %num_shared.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %num_shared.i, align 4
  %prev.i.i = getelementptr inbounds %struct.qxl_release, ptr %9, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %17, ptr noundef %bos.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end13.i.qxl_release_list_add.exit_crit_edge

if.end13.i.qxl_release_list_add.exit_crit_edge:   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qxl_release_list_add.exit

if.end.i.i.i:                                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %bos.i, ptr %call7.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %call7.i.i, ptr %17, align 4
  br label %qxl_release_list_add.exit

qxl_release_list_add.exit:                        ; preds = %if.end.i.i.i, %if.end13.i.qxl_release_list_add.exit_crit_edge, %for.end.i.qxl_release_list_add.exit_crit_edge, %for.body.i.qxl_release_list_add.exit_crit_edge
  %22 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %release, align 4
  %release_bo.i = getelementptr inbounds %struct.qxl_release, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %release_bo.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %release_bo.i, align 8
  %release_offset.i = getelementptr inbounds %struct.qxl_release, ptr %23, i32 0, i32 4
  %26 = ptrtoint ptr %release_offset.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %release_offset.i, align 4
  %and.i = and i32 %27, -4096
  %call.i = tail call ptr @qxl_bo_kmap_atomic_page(ptr noundef %qdev, ptr noundef %25, i32 noundef %and.i) #9
  %tobool.not.i26 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i26, label %qxl_release_list_add.exit.qxl_release_map.exit_crit_edge, label %if.end.i

qxl_release_list_add.exit.qxl_release_map.exit_crit_edge: ; preds = %qxl_release_list_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %qxl_release_map.exit

if.end.i:                                         ; preds = %qxl_release_list_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %release_offset.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %release_offset.i, align 4
  %and2.i = and i32 %29, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and2.i
  br label %qxl_release_map.exit

qxl_release_map.exit:                             ; preds = %if.end.i, %qxl_release_list_add.exit.qxl_release_map.exit_crit_edge
  %retval.0.i27 = phi ptr [ %add.ptr.i, %if.end.i ], [ null, %qxl_release_list_add.exit.qxl_release_map.exit_crit_edge ]
  %conv = sext i32 %call to i64
  %30 = ptrtoint ptr %retval.0.i27 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %conv, ptr %retval.0.i27, align 1
  %31 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %release, align 4
  %release_bo.i28 = getelementptr inbounds %struct.qxl_release, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %release_bo.i28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %release_bo.i28, align 8
  %release_offset.i29 = getelementptr inbounds %struct.qxl_release, ptr %32, i32 0, i32 4
  %35 = ptrtoint ptr %release_offset.i29 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %release_offset.i29, align 4
  %and.i30 = and i32 %36, 4095
  %idx.neg.i = sub nsw i32 0, %and.i30
  %add.ptr.i31 = getelementptr i8, ptr %retval.0.i27, i32 %idx.neg.i
  tail call void @qxl_bo_kunmap_atomic_page(ptr noundef %qdev, ptr noundef %34, ptr noundef %add.ptr.i31) #9
  br label %return

if.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 @qxl_alloc_release_reserved(ptr noundef %qdev, i32 undef, i32 noundef 1, ptr noundef %release, ptr noundef null)
  br label %return

return:                                           ; preds = %if.end9, %qxl_release_map.exit, %if.then.return_crit_edge
  %retval.1 = phi i32 [ %call10, %if.end9 ], [ 0, %qxl_release_map.exit ], [ %call, %if.then.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qxl_release_alloc(ptr noundef %qdev, i32 noundef %type, ptr nocapture noundef writeonly %ret) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 144) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.dma_fence, ptr %call7.i, i32 0, i32 1
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %ops, align 4
  %type1 = getelementptr inbounds %struct.qxl_release, ptr %call7.i, i32 0, i32 2
  %2 = ptrtoint ptr %type1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %type, ptr %type1, align 4
  %release_offset = getelementptr inbounds %struct.qxl_release, ptr %call7.i, i32 0, i32 4
  %3 = ptrtoint ptr %release_offset to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %release_offset, align 4
  %surface_release_id = getelementptr inbounds %struct.qxl_release, ptr %call7.i, i32 0, i32 5
  %4 = ptrtoint ptr %surface_release_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %surface_release_id, align 8
  %bos = getelementptr inbounds %struct.qxl_release, ptr %call7.i, i32 0, i32 7
  %5 = ptrtoint ptr %bos to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %bos, ptr %bos, align 4
  %prev.i = getelementptr inbounds %struct.qxl_release, ptr %call7.i, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %bos, ptr %prev.i, align 8
  tail call void @idr_preload(i32 noundef 3264) #9
  %release_idr_lock = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 31
  tail call void @_raw_spin_lock(ptr noundef %release_idr_lock) #9
  %release_idr = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 27
  %call2 = tail call i32 @idr_alloc(ptr noundef %release_idr, ptr noundef nonnull %call7.i, i32 noundef 1, i32 noundef 0, i32 noundef 2048) #9
  %release_seqno = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 28
  %7 = ptrtoint ptr %release_seqno to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %release_seqno, align 8
  %inc = add i32 %8, 1
  store i32 %inc, ptr %release_seqno, align 8
  %conv = zext i32 %inc to i64
  %seqno = getelementptr inbounds %struct.dma_fence, ptr %call7.i, i32 0, i32 4
  %9 = ptrtoint ptr %seqno to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv, ptr %seqno, align 8
  tail call void @_raw_spin_unlock(ptr noundef %release_idr_lock) #9
  %10 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %15, ptrtoint (ptr @radix_tree_preloads to i32)
  %16 = inttoptr i32 %add.i to ptr
  tail call fastcc void @local_lock_release(ptr noundef %16) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !53
  %17 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  %21 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %ret, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i, ptr %ret, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef %call2) #9
  %id = getelementptr inbounds %struct.qxl_release, ptr %call7.i, i32 0, i32 1
  %23 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call2, ptr %id, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then
  %retval.0 = phi i32 [ %call2, %if.then6 ], [ %call2, %if.end7 ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qxl_release_map(ptr noundef %qdev, ptr nocapture noundef readonly %release) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %release_bo = getelementptr inbounds %struct.qxl_release, ptr %release, i32 0, i32 3
  %0 = ptrtoint ptr %release_bo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %release_bo, align 8
  %release_offset = getelementptr inbounds %struct.qxl_release, ptr %release, i32 0, i32 4
  %2 = ptrtoint ptr %release_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %release_offset, align 4
  %and = and i32 %3, -4096
  %call = tail call ptr @qxl_bo_kmap_atomic_page(ptr noundef %qdev, ptr noundef %1, i32 noundef %and) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %release_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %release_offset, align 4
  %and2 = and i32 %5, 4095
  %add.ptr = getelementptr i8, ptr %call, i32 %and2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qxl_release_unmap(ptr noundef %qdev, ptr nocapture noundef readonly %release, ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %release_bo = getelementptr inbounds %struct.qxl_release, ptr %release, i32 0, i32 3
  %0 = ptrtoint ptr %release_bo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %release_bo, align 8
  %release_offset = getelementptr inbounds %struct.qxl_release, ptr %release, i32 0, i32 4
  %2 = ptrtoint ptr %release_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %release_offset, align 4
  %and = and i32 %3, 4095
  %idx.neg = sub nsw i32 0, %and
  %add.ptr = getelementptr i8, ptr %info, i32 %idx.neg
  tail call void @qxl_bo_kunmap_atomic_page(ptr noundef %qdev, ptr noundef %1, ptr noundef %add.ptr) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qxl_alloc_release_reserved(ptr noundef %qdev, i32 %size, i32 noundef %type, ptr nocapture noundef %release, ptr noundef writeonly %rbo) local_unnamed_addr #0 align 64 {
entry:
  %bo = alloca ptr, align 4
  %free_bo = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bo) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %free_bo) #9
  %0 = ptrtoint ptr %free_bo to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %free_bo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %1 = icmp ult i32 %type, 3
  br i1 %1, label %switch.lookup, label %if.else6

if.else6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, i32 noundef %type) #9
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.qxl_alloc_release_reserved, i32 0, i32 %type
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call = tail call fastcc i32 @qxl_release_alloc(ptr noundef %qdev, i32 noundef %type, ptr noundef %release)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp9 = icmp slt i32 %call, 0
  br i1 %cmp9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %switch.lookup
  %tobool.not = icmp eq ptr %rbo, null
  br i1 %tobool.not, label %if.then10.cleanup_crit_edge, label %if.then11

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %rbo to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %rbo, align 4
  br label %cleanup

if.end13:                                         ; preds = %switch.lookup
  %release_count = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 29
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %release_count, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %release_count, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %release_count, ptr %release_count, i32 1, ptr elementtype(i32) %release_count) #9, !srcloc !54
  %release_mutex = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 52
  tail call void @mutex_lock_nested(ptr noundef %release_mutex, i32 noundef 0) #9
  %arrayidx = getelementptr %struct.qxl_device, ptr %qdev, i32 0, i32 54, i32 %type
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add = add i32 %6, 1
  %arrayidx14 = getelementptr [3 x i32], ptr @releases_per_bo, i32 0, i32 %type
  %7 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %8)
  %cmp15.not = icmp slt i32 %add, %8
  br i1 %cmp15.not, label %if.end13.if.end22_crit_edge, label %if.then16

if.end13.if.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx17 = getelementptr %struct.qxl_device, ptr %qdev, i32 0, i32 53, i32 %type
  %9 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx17, align 4
  %11 = ptrtoint ptr %free_bo to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %free_bo, align 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx, align 4
  store ptr null, ptr %arrayidx17, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then16, %if.end13.if.end22_crit_edge
  %arrayidx24 = getelementptr %struct.qxl_device, ptr %qdev, i32 0, i32 53, i32 %type
  %13 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx24, align 4
  %tobool25.not = icmp eq ptr %14, null
  br i1 %tobool25.not, label %if.then26, label %if.end22.if.end38_crit_edge

if.end22.if.end38_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then26:                                        ; preds = %if.end22
  %call.i = tail call i32 @qxl_bo_create(ptr noundef %qdev, i32 noundef 4096, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 1, i32 noundef %switch.load, ptr noundef null, ptr noundef %arrayidx24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool30.not = icmp eq i32 %call.i, 0
  br i1 %tobool30.not, label %if.then26.if.end38_crit_edge, label %if.then31

if.then26.if.end38_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then31:                                        ; preds = %if.then26
  tail call void @mutex_unlock(ptr noundef %release_mutex) #9
  %15 = ptrtoint ptr %free_bo to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %free_bo, align 4
  %tobool33.not = icmp eq ptr %16, null
  br i1 %tobool33.not, label %if.then31.if.end36_crit_edge, label %if.then34

if.then31.if.end36_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then34:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  %call35 = tail call i32 @qxl_bo_unpin(ptr noundef nonnull %16) #9
  call void @qxl_bo_unref(ptr noundef nonnull %free_bo) #9
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.then31.if.end36_crit_edge
  %17 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %release, align 4
  call void @qxl_release_free(ptr noundef %qdev, ptr noundef %18)
  br label %cleanup

if.end38:                                         ; preds = %if.then26.if.end38_crit_edge, %if.end22.if.end38_crit_edge
  %19 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx24, align 4
  %call41 = tail call ptr @qxl_bo_ref(ptr noundef %20) #9
  %21 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call41, ptr %bo, align 4
  %22 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %release, align 4
  %release_bo = getelementptr inbounds %struct.qxl_release, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %release_bo to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call41, ptr %release_bo, align 8
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %arrayidx44 = getelementptr [3 x i32], ptr @release_size_per_bo, i32 0, i32 %type
  %27 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx44, align 4
  %mul = mul i32 %28, %26
  %29 = load ptr, ptr %release, align 4
  %release_offset = getelementptr inbounds %struct.qxl_release, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %release_offset to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul, ptr %release_offset, align 4
  %31 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %31, 1
  store i32 %inc, ptr %arrayidx, align 4
  %tobool47.not = icmp eq ptr %rbo, null
  br i1 %tobool47.not, label %if.end38.if.end49_crit_edge, label %if.then48

if.end38.if.end49_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then48:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %rbo to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call41, ptr %rbo, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end38.if.end49_crit_edge
  tail call void @mutex_unlock(ptr noundef %release_mutex) #9
  %33 = ptrtoint ptr %free_bo to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %free_bo, align 4
  %tobool51.not = icmp eq ptr %34, null
  br i1 %tobool51.not, label %if.end49.if.end54_crit_edge, label %if.then52

if.end49.if.end54_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %call53 = tail call i32 @qxl_bo_unpin(ptr noundef nonnull %34) #9
  call void @qxl_bo_unref(ptr noundef nonnull %free_bo) #9
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end49.if.end54_crit_edge
  %35 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %release, align 4
  %37 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bo, align 4
  %bos.i = getelementptr inbounds %struct.qxl_release, ptr %36, i32 0, i32 7
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end54
  %entry1.0.in.i = phi ptr [ %bos.i, %if.end54 ], [ %entry1.0.i, %for.body.i.for.cond.i_crit_edge ]
  %39 = ptrtoint ptr %entry1.0.in.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %entry1.0.i = load ptr, ptr %entry1.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %entry1.0.i, %bos.i
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %bo4.i = getelementptr inbounds %struct.ttm_validate_buffer, ptr %entry1.0.i, i32 0, i32 1
  %40 = ptrtoint ptr %bo4.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bo4.i, align 4
  %cmp5.i = icmp eq ptr %41, %38
  br i1 %cmp5.i, label %for.body.i.if.end58_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.body.i.if.end58_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

for.end.i:                                        ; preds = %for.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %42 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 3264, i32 noundef 16) #12
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.then57, label %if.end13.i

if.end13.i:                                       ; preds = %for.end.i
  %call14.i = call ptr @qxl_bo_ref(ptr noundef %38) #9
  %bo17.i = getelementptr inbounds %struct.ttm_validate_buffer, ptr %call7.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %bo17.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %38, ptr %bo17.i, align 8
  %num_shared.i = getelementptr inbounds %struct.ttm_validate_buffer, ptr %call7.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %num_shared.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %num_shared.i, align 4
  %prev.i.i = getelementptr inbounds %struct.qxl_release, ptr %36, i32 0, i32 7, i32 1
  %45 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %46, ptr noundef %bos.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end13.i.if.end58_crit_edge

if.end13.i.if.end58_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.end.i.i.i:                                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call7.i.i, ptr %prev.i.i, align 4
  %48 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %bos.i, ptr %call7.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %call7.i.i, ptr %46, align 4
  br label %if.end58

if.then57:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @qxl_bo_unref(ptr noundef nonnull %bo) #9
  %51 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %release, align 4
  call void @qxl_release_free(ptr noundef %qdev, ptr noundef %52)
  br label %cleanup

if.end58:                                         ; preds = %if.end.i.i.i, %if.end13.i.if.end58_crit_edge, %for.body.i.if.end58_crit_edge
  call void @qxl_bo_unref(ptr noundef nonnull %bo) #9
  %53 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %release, align 4
  %release_bo.i = getelementptr inbounds %struct.qxl_release, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %release_bo.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %release_bo.i, align 8
  %release_offset.i = getelementptr inbounds %struct.qxl_release, ptr %54, i32 0, i32 4
  %57 = ptrtoint ptr %release_offset.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %release_offset.i, align 4
  %and.i = and i32 %58, -4096
  %call.i116 = call ptr @qxl_bo_kmap_atomic_page(ptr noundef %qdev, ptr noundef %56, i32 noundef %and.i) #9
  %tobool.not.i117 = icmp eq ptr %call.i116, null
  br i1 %tobool.not.i117, label %if.end58.qxl_release_map.exit_crit_edge, label %if.end.i

if.end58.qxl_release_map.exit_crit_edge:          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %qxl_release_map.exit

if.end.i:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %release_offset.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %release_offset.i, align 4
  %and2.i = and i32 %60, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i116, i32 %and2.i
  br label %qxl_release_map.exit

qxl_release_map.exit:                             ; preds = %if.end.i, %if.end58.qxl_release_map.exit_crit_edge
  %retval.0.i118 = phi ptr [ %add.ptr.i, %if.end.i ], [ null, %if.end58.qxl_release_map.exit_crit_edge ]
  %conv = sext i32 %call to i64
  %61 = ptrtoint ptr %retval.0.i118 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 8)
  store i64 %conv, ptr %retval.0.i118, align 1
  %62 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %release, align 4
  %release_bo.i119 = getelementptr inbounds %struct.qxl_release, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %release_bo.i119 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %release_bo.i119, align 8
  %release_offset.i120 = getelementptr inbounds %struct.qxl_release, ptr %63, i32 0, i32 4
  %66 = ptrtoint ptr %release_offset.i120 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %release_offset.i120, align 4
  %and.i121 = and i32 %67, 4095
  %idx.neg.i = sub nsw i32 0, %and.i121
  %add.ptr.i122 = getelementptr i8, ptr %retval.0.i118, i32 %idx.neg.i
  call void @qxl_bo_kunmap_atomic_page(ptr noundef %qdev, ptr noundef %65, ptr noundef %add.ptr.i122) #9
  br label %cleanup

cleanup:                                          ; preds = %qxl_release_map.exit, %if.then57, %if.end36, %if.then11, %if.then10.cleanup_crit_edge, %if.else6
  %retval.0 = phi i32 [ -12, %if.then57 ], [ 0, %qxl_release_map.exit ], [ %call.i, %if.end36 ], [ -22, %if.else6 ], [ %call, %if.then11 ], [ %call, %if.then10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %free_bo) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bo) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_bo_unpin(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_bo_unref(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qxl_release_from_id_locked(ptr noundef %qdev, i64 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %release_idr_lock = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 31
  tail call void @_raw_spin_lock(ptr noundef %release_idr_lock) #9
  %release_idr = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 27
  %conv = trunc i64 %id to i32
  %call = tail call ptr @idr_find(ptr noundef %release_idr, i32 noundef %conv) #9
  tail call void @_raw_spin_unlock(ptr noundef %release_idr_lock) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qxl_bo_kmap_atomic_page(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_bo_kunmap_atomic_page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qxl_release_fence_buffer_objects(ptr noundef %release) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bos = getelementptr inbounds %struct.qxl_release, ptr %release, i32 0, i32 7
  %0 = ptrtoint ptr %bos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %bos, align 4
  %cmp.i.not.i = icmp eq ptr %1, %bos
  br i1 %cmp.i.not.i, label %entry.lor.lhs.false_crit_edge, label %list_is_singular.exit

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

list_is_singular.exit:                            ; preds = %entry
  %prev.i = getelementptr inbounds %struct.qxl_release, ptr %release, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %cmp.i.not = icmp eq ptr %1, %3
  br i1 %cmp.i.not, label %list_is_singular.exit.cleanup_crit_edge, label %list_is_singular.exit.lor.lhs.false_crit_edge

list_is_singular.exit.lor.lhs.false_crit_edge:    ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

list_is_singular.exit.cleanup_crit_edge:          ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %list_is_singular.exit.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %4 = ptrtoint ptr %bos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %bos, align 4
  %cmp.i48.not = icmp eq ptr %5, %bos
  br i1 %cmp.i48.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %bo6 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bo6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bo6, align 4
  %bdev7 = getelementptr inbounds %struct.ttm_buffer_object, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %bdev7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bdev7, align 8
  %release_lock = getelementptr i8, ptr %9, i32 3136
  %id = getelementptr inbounds %struct.qxl_release, ptr %release, i32 0, i32 1
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 8
  %or = or i32 %11, -268435456
  %conv = zext i32 %or to i64
  %seqno = getelementptr inbounds %struct.dma_fence, ptr %release, i32 0, i32 4
  %12 = ptrtoint ptr %seqno to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %seqno, align 8
  tail call void @dma_fence_init(ptr noundef %release, ptr noundef nonnull @qxl_fence_ops, ptr noundef %release_lock, i64 noundef %conv, i64 noundef %13) #9
  tail call fastcc void @trace_dma_fence_emit(ptr noundef %release)
  %14 = ptrtoint ptr %bos to i32
  call void @__asan_load4_noabort(i32 %14)
  %entry1.050 = load ptr, ptr %bos, align 4
  %cmp.not51 = icmp eq ptr %entry1.050, %bos
  br i1 %cmp.not51, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %entry1.052 = phi ptr [ %entry1.0, %for.body.for.body_crit_edge ], [ %entry1.050, %if.end.for.body_crit_edge ]
  %bo20 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %entry1.052, i32 0, i32 1
  %15 = ptrtoint ptr %bo20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bo20, align 4
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %resv, align 8
  tail call void @dma_resv_add_shared_fence(ptr noundef %18, ptr noundef %release) #9
  %bdev.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bdev.i, align 8
  %lru_lock.i = getelementptr inbounds %struct.ttm_device, ptr %20, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i) #9
  %resource.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %16, i32 0, i32 6
  %21 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %resource.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %16, ptr noundef %22, ptr noundef null) #9
  %23 = ptrtoint ptr %bdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bdev.i, align 8
  %lru_lock2.i = getelementptr inbounds %struct.ttm_device, ptr %24, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i) #9
  %25 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %resv, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %26) #9
  tail call void @ww_mutex_unlock(ptr noundef %26) #9
  %27 = ptrtoint ptr %entry1.052 to i32
  call void @__asan_load4_noabort(i32 %27)
  %entry1.0 = load ptr, ptr %entry1.052, align 4
  %cmp.not = icmp eq ptr %entry1.0, %bos
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %ticket = getelementptr inbounds %struct.qxl_release, ptr %release, i32 0, i32 6
  tail call fastcc void @ww_acquire_fini(ptr noundef %ticket)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %lor.lhs.false.cleanup_crit_edge, %list_is_singular.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dma_fence_emit(ptr noundef %fence) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dma_fence_emit, i32 0, i32 1), ptr blockaddress(@trace_dma_fence_emit, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !55

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !50

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !56
  %call42 = tail call i32 @__traceiter_dma_fence_emit(ptr noundef null, ptr noundef %fence) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !57
  %13 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !50

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !58
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dma_fence_emit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dma_fence_emit, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dma_fence_emit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_dma_fence_emit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 42, ptr noundef nonnull @.str.12) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !59
  %31 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_add_shared_fence(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ww_acquire_fini(ptr noundef %ctx) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 8
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@ww_acquire_fini, %__here) to i32)) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %__here.if.end36_crit_edge

__here.if.end36_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

land.lhs.true:                                    ; preds = %__here
  %acquired = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 2
  %1 = ptrtoint ptr %acquired to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %acquired, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end36_crit_edge, label %do.end, !prof !50

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

do.end:                                           ; preds = %land.lhs.true
  %call = tail call i32 @debug_locks_off() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %do.end.if.end36_crit_edge, label %land.lhs.true5

do.end.if.end36_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %3 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not = icmp eq i32 %3, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end36_crit_edge

land.lhs.true5.if.end36_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 191, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.15) #9
  br label %if.end36

if.end36:                                         ; preds = %do.end19, %land.lhs.true5.if.end36_crit_edge, %do.end.if.end36_crit_edge, %land.lhs.true.if.end36_crit_edge, %__here.if.end36_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_ttm_placement_from_domain(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_validate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_reserve_shared(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_bo_check_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_preload(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_release(ptr noundef %l) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !37) #9
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %2, %6
  br i1 %cmp.not, label %land.lhs.true.if.end35_crit_edge, label %do.end, !prof !50

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

do.end:                                           ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_locks_off() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end35_crit_edge, label %land.lhs.true5

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %7 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end35_crit_edge

land.lhs.true5.if.end35_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #9
  br label %if.end35

if.end35:                                         ; preds = %do.end19, %land.lhs.true5.if.end35_crit_edge, %do.end.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  %owner37 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner37, align 4
  br label %__here

__here:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef %l, i32 noundef ptrtoint (ptr blockaddress(@local_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_bo_create(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @qxl_get_driver_name(ptr nocapture noundef readnone %fence) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @qxl_get_timeline_name(ptr nocapture noundef readnone %fence) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qxl_fence_wait(ptr noundef %fence, i1 noundef zeroext %intr, i32 noundef %timeout) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, %timeout
  %1 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fence, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 -5520
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 68) #9
  %flags.i = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 5
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.end43_crit_edge

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.end.i:                                         ; preds = %entry
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 1
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %signaled.i = getelementptr inbounds %struct.dma_fence_ops, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %signaled.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %signaled.i, align 4
  %tobool1.not.i = icmp eq ptr %8, null
  br i1 %tobool1.not.i, label %if.end.i.if.end_crit_edge, label %land.lhs.true.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end.i
  %call4.i = tail call zeroext i1 %8(ptr noundef %fence) #9
  br i1 %call4.i, label %if.then5.i, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i = tail call i32 @dma_fence_signal(ptr noundef %fence) #9
  br label %if.end43

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  tail call void @qxl_io_notify_oom(ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool9.not = icmp eq i32 %timeout, 0
  br i1 %tobool9.not, label %if.end.cleanup47_crit_edge, label %if.then12

if.end.cleanup47_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup47

if.then12:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %9 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %release_event = getelementptr i8, ptr %2, i32 112
  %call14108 = call i32 @prepare_to_wait_event(ptr noundef %release_event, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i69109 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i69109)
  %tobool.not.i70110 = icmp eq i32 %and1.i.i69109, 0
  br i1 %tobool.not.i70110, label %if.then12.if.end.i74_crit_edge, label %if.then12.if.end39.thread117_crit_edge

if.then12.if.end39.thread117_crit_edge:           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.thread117

if.then12.if.end.i74_crit_edge:                   ; preds = %if.then12
  br label %if.end.i74

if.end.i74:                                       ; preds = %cleanup.if.end.i74_crit_edge, %if.then12.if.end.i74_crit_edge
  %__ret13.0111 = phi i32 [ %call36, %cleanup.if.end.i74_crit_edge ], [ %timeout, %if.then12.if.end.i74_crit_edge ]
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %signaled.i72 = getelementptr inbounds %struct.dma_fence_ops, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %signaled.i72 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %signaled.i72, align 4
  %tobool1.not.i73 = icmp eq ptr %15, null
  br i1 %tobool1.not.i73, label %if.end.i74.if.end25_crit_edge, label %land.lhs.true.i76

if.end.i74.if.end25_crit_edge:                    ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

land.lhs.true.i76:                                ; preds = %if.end.i74
  %call4.i75 = call zeroext i1 %15(ptr noundef %fence) #9
  br i1 %call4.i75, label %if.then5.i78, label %land.lhs.true.i76.if.end25_crit_edge

land.lhs.true.i76.if.end25_crit_edge:             ; preds = %land.lhs.true.i76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then5.i78:                                     ; preds = %land.lhs.true.i76
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i77 = call i32 @dma_fence_signal(ptr noundef %fence) #9
  br label %if.end39.thread117

if.end25:                                         ; preds = %land.lhs.true.i76.if.end25_crit_edge, %if.end.i74.if.end25_crit_edge
  call void @qxl_io_notify_oom(ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret13.0111)
  %tobool29.not = icmp eq i32 %__ret13.0111, 0
  br i1 %tobool29.not, label %if.end39, label %cleanup

cleanup:                                          ; preds = %if.end25
  %call36 = call i32 @schedule_timeout(i32 noundef %__ret13.0111) #9
  %call14 = call i32 @prepare_to_wait_event(ptr noundef %release_event, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i69 = and i32 %17, 1
  %tobool.not.i70 = icmp eq i32 %and1.i.i69, 0
  br i1 %tobool.not.i70, label %cleanup.if.end.i74_crit_edge, label %cleanup.if.end39.thread117_crit_edge

cleanup.if.end39.thread117_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.thread117

cleanup.if.end.i74_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i74

if.end39.thread117:                               ; preds = %cleanup.if.end39.thread117_crit_edge, %if.then5.i78, %if.then12.if.end39.thread117_crit_edge
  call void @finish_wait(ptr noundef %release_event, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end43

if.end39:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  call void @finish_wait(ptr noundef %release_event, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %cleanup47

if.end43:                                         ; preds = %if.end39.thread117, %if.then5.i, %entry.if.end43_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %18
  %19 = call i32 @llvm.smax.i32(i32 %sub, i32 0)
  br label %cleanup47

cleanup47:                                        ; preds = %if.end43, %if.end39, %if.end.cleanup47_crit_edge
  %retval.0 = phi i32 [ 0, %if.end39 ], [ %19, %if.end43 ], [ 0, %if.end.cleanup47_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_io_notify_oom(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dma_fence_emit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_move_to_lru_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !33, !34, !36}
!llvm.named.register.sp = !{!37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/qxl/qxl_release.c", i32 140, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/qxl/qxl_release.c", i32 150, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/qxl/qxl_release.c", i32 304, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/qxl/qxl_release.c", i32 373, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/qxl/qxl_release.c", i32 93, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/qxl/qxl_release.c", i32 114, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/local_lock_internal.h", i32 36, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @releases_per_bo, !17, !"releases_per_bo", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/qxl/qxl_release.c", i32 45, i32 18}
!18 = !{ptr @release_size_per_bo, !19, !"release_size_per_bo", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/qxl/qxl_release.c", i32 44, i32 18}
!20 = !{ptr @qxl_fence_ops, !21, !"qxl_fence_ops", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/qxl/qxl_release.c", i32 77, i32 35}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/qxl/qxl_release.c", i32 49, i32 9}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/qxl/qxl_release.c", i32 54, i32 9}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../include/trace/events/dma_fence.h", i32 37, i32 1}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!30 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/ww_mutex.h", i32 191, i32 2}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{!"sp"}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"branch_weights", i32 1, i32 2000}
!48 = !{i64 2148288302}
!49 = !{i64 2148202766, i64 2148202798, i64 2148202827, i64 2148202861, i64 2148202892, i64 2148202915}
!50 = !{!"branch_weights", i32 2000, i32 1}
!51 = !{i64 2149567020}
!52 = !{i64 2148201236, i64 2148201262, i64 2148201291, i64 2148201325, i64 2148201356, i64 2148201379}
!53 = !{i64 2151968967}
!54 = !{i64 2148198771, i64 2148198797, i64 2148198826, i64 2148198860, i64 2148198891, i64 2148198914}
!55 = !{i64 2148766436, i64 2148766441, i64 2148766454, i64 2148766498, i64 2148766532, i64 2148766553}
!56 = !{i64 2152339007}
!57 = !{i64 2152339208}
!58 = !{i64 2149267592}
!59 = !{i64 2149268628}
