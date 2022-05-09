; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/qxl/qxl_cmd.c_pt.bc'
source_filename = "../drivers/gpu/drm/qxl/qxl_cmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.radix_tree_preload = type { %struct.local_lock_t, i32, ptr }
%struct.local_lock_t = type { %struct.lockdep_map, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.qxl_ring = type { ptr, i32, i32, i32, ptr, %struct.spinlock }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.qxl_ring_header = type { i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ring = type { %struct.qxl_ring_header, [0 x i8] }
%struct.qxl_command = type { i64, i32, i32 }
%struct.qxl_release = type { %struct.dma_fence, i32, i32, ptr, i32, i32, %struct.ww_acquire_ctx, %struct.list_head }
%struct.dma_fence = type { ptr, ptr, %union.anon.84, i64, i64, i32, %struct.kref, i32 }
%union.anon.84 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.qxl_device = type { %struct.drm_device, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.qxl_mman, %struct.qxl_gem, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.qxl_memslot, %struct.qxl_memslot, %struct.spinlock, %struct.idr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.spinlock, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, [32 x %struct.qxl_debugfs], i32, %struct.mutex, %struct.idr, %struct.spinlock, i32, %struct.mutex, ptr, ptr, %struct.mutex, [3 x ptr], [3 x i32], %struct.work_struct, ptr, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.qxl_bo = type <{ %struct.ttm_buffer_object, %struct.list_head, [3 x %struct.ttm_place], %struct.ttm_placement, %struct.dma_buf_map, ptr, i32, i32, i8, [3 x i8], ptr, i8, %struct.qxl_surface, [3 x i8], i32, ptr }>
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.dma_buf_map = type { %union.anon.85, i8 }
%union.anon.85 = type { ptr }
%struct.qxl_surface = type { i32, i32, i32, i32, i64 }
%struct.qxl_rect = type { i32, i32, i32, i32 }
%struct.qxl_ram_header = type <{ i32, i32, i32, [4096 x i8], %struct.qxl_ring_header, [32 x %struct.qxl_command], %struct.qxl_ring_header, [32 x %struct.qxl_command], %struct.qxl_ring_header, [8 x i64], %struct.qxl_rect, i32, %struct.qxl_mem_slot, %struct.qxl_surface_create, i64, i64, [64 x i8] }>
%struct.qxl_mem_slot = type { i64, i64 }
%struct.qxl_surface_create = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.qxl_rom = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8, i8, i8, i8, i8, [58 x i8], i32, %struct.anon.89 }
%struct.anon.89 = type { i16, i16, [64 x %struct.qxl_urect] }
%struct.qxl_urect = type { i32, i32, i32, i32 }
%struct.qxl_surface_cmd = type <{ %union.qxl_release_info, i32, i8, i32, %union.anon.93 }>
%union.qxl_release_info = type { i64 }
%union.anon.93 = type { %struct.qxl_surface }

@qxl_ring_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ring->lock\00", [20 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/qxl/qxl_cmd.c\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"popped %lld\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"popped %lld, next %lld\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unexpected release type\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to allocate VRAM BO\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"got io update area with no hw surface\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qdev %p, ram_header %p\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mem = %llx, from %p\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qxl_memslot_add %d\0A\00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@kgdb_active = external dso_local global %struct.atomic_t, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@radix_tree_preloads = external dso_local global %struct.radix_tree_preload, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"include/linux/local_lock_internal.h\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l->owner != current\00", [44 x i8] zeroinitializer }, align 32
@qxl_bo_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.16, i32 39, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%p reserve failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qxl_bo_reserve\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/gpu/drm/qxl/qxl_object.h\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qxl_bo_reserve._entry_ptr = internal global ptr @qxl_bo_reserve._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@___asan_gen_.20 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 82, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 130, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 228, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 238, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 247, i32 5 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 258, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 274, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 341, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 392, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 400, i32 2 }
@___asan_gen_.54 = private constant [33 x i8] c"../drivers/gpu/drm/qxl/qxl_cmd.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 413, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [39 x i8] c"../include/linux/local_lock_internal.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 36, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [36 x i8] c"../drivers/gpu/drm/qxl/qxl_object.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 39, i32 4 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @qxl_bo_reserve._entry, ptr @qxl_bo_reserve._entry_ptr, ptr @qxl_ring_create.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_ring_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_bo_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qxl_ring_free(ptr noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %ring) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qxl_ring_init_hdr(ptr nocapture noundef readonly %ring) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %n_elements = getelementptr inbounds %struct.qxl_ring, ptr %ring, i32 0, i32 2
  %0 = ptrtoint ptr %n_elements to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_elements, align 4
  %2 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring, align 4
  %notify_on_prod = getelementptr inbounds %struct.qxl_ring_header, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %notify_on_prod to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %1, ptr %notify_on_prod, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qxl_ring_create(ptr noundef %header, i32 noundef %element_size, i32 noundef %n_elements, i32 noundef %prod_notify, i1 noundef zeroext %set_prod_notify, ptr noundef %push_event) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 64) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %header, ptr %call7.i, align 8
  %element_size2 = getelementptr inbounds %struct.qxl_ring, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %element_size2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %element_size, ptr %element_size2, align 4
  %n_elements3 = getelementptr inbounds %struct.qxl_ring, ptr %call7.i, i32 0, i32 2
  %3 = ptrtoint ptr %n_elements3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %n_elements, ptr %n_elements3, align 8
  %prod_notify4 = getelementptr inbounds %struct.qxl_ring, ptr %call7.i, i32 0, i32 3
  %4 = ptrtoint ptr %prod_notify4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %prod_notify, ptr %prod_notify4, align 4
  %push_event5 = getelementptr inbounds %struct.qxl_ring, ptr %call7.i, i32 0, i32 4
  %5 = ptrtoint ptr %push_event5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %push_event, ptr %push_event5, align 8
  br i1 %set_prod_notify, label %if.then7, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %notify_on_prod.i = getelementptr inbounds %struct.qxl_ring_header, ptr %header, i32 0, i32 2
  %6 = ptrtoint ptr %notify_on_prod.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %n_elements, ptr %notify_on_prod.i, align 1
  br label %do.body

do.body:                                          ; preds = %if.then7, %if.end.do.body_crit_edge
  %lock = getelementptr inbounds %struct.qxl_ring, ptr %call7.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @qxl_ring_create.__key, i16 noundef signext 3) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret ptr %call7.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qxl_check_idle(ptr noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 4
  %lock = getelementptr inbounds %struct.qxl_ring, ptr %ring, i32 0, i32 5
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %prod = getelementptr inbounds %struct.qxl_ring_header, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prod to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %prod, align 1
  %cons = getelementptr inbounds %struct.qxl_ring_header, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %cons to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %cons, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp7 = icmp eq i32 %3, %5
  %conv8 = zext i1 %cmp7 to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #10
  ret i32 %conv8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qxl_ring_push(ptr noundef %ring, ptr nocapture noundef readonly %new_elt, i1 noundef zeroext %interruptible) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry55 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 4
  %lock = getelementptr inbounds %struct.qxl_ring, ptr %ring, i32 0, i32 5
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %prod = getelementptr inbounds %struct.qxl_ring_header, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prod to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %prod, align 1
  %cons = getelementptr inbounds %struct.qxl_ring_header, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %cons to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %cons, align 1
  %sub = sub i32 %3, %5
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %1, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %7)
  %cmp7 = icmp eq i32 %sub, %7
  br i1 %cmp7, label %if.then, label %entry.if.end90_crit_edge

entry.if.end90_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then:                                          ; preds = %entry
  %add = add i32 %5, 1
  %notify_on_cons = getelementptr inbounds %struct.qxl_ring_header, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %notify_on_cons to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %add, ptr %notify_on_cons, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !47
  tail call void @arm_heavy_mb() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !37) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not.i = icmp eq i32 %12, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then.while.cond.preheader_crit_edge

if.then.while.cond.preheader_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader

lor.lhs.false.i:                                  ; preds = %if.then
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !48
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.lor.lhs.false15.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.lor.lhs.false15.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false15.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %14 = tail call i32 @llvm.read_register.i32(metadata !37) #10
  %and.i35.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i35.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @kgdb_active, i32 noundef 4) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kgdb_active to i32))
  %18 = load volatile i32, ptr @kgdb_active, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %18)
  %cmp13.i = icmp eq i32 %17, %18
  br i1 %cmp13.i, label %land.lhs.true.i.while.cond.preheader_crit_edge, label %land.lhs.true.i.lor.lhs.false15.i_crit_edge

land.lhs.true.i.lor.lhs.false15.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false15.i

land.lhs.true.i.while.cond.preheader_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader

lor.lhs.false15.i:                                ; preds = %land.lhs.true.i.lor.lhs.false15.i_crit_edge, %lor.lhs.false.i.lor.lhs.false15.i_crit_edge
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !48
  %and.i36.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36.i)
  %tobool34.not.i = icmp eq i32 %and.i36.i, 0
  br i1 %tobool34.not.i, label %if.else, label %lor.lhs.false15.i.while.cond.preheader_crit_edge

lor.lhs.false15.i.while.cond.preheader_crit_edge: ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %lor.lhs.false15.i.while.cond.preheader_crit_edge, %land.lhs.true.i.while.cond.preheader_crit_edge, %if.then.while.cond.preheader_crit_edge
  %20 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ring, align 4
  %call4.i217 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %prod.i218 = getelementptr inbounds %struct.qxl_ring_header, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prod.i218 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %prod.i218, align 1
  %cons.i219 = getelementptr inbounds %struct.qxl_ring_header, ptr %21, i32 0, i32 3
  %24 = ptrtoint ptr %cons.i219 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %cons.i219, align 1
  %sub.i220 = sub i32 %23, %25
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %21, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i220, i32 %27)
  %cmp7.i221 = icmp ult i32 %sub.i220, %27
  br i1 %cmp7.i221, label %while.cond.preheader.qxl_check_header.exit_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.qxl_check_header.exit_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %qxl_check_header.exit

qxl_check_header.exit:                            ; preds = %while.body.qxl_check_header.exit_crit_edge, %while.cond.preheader.qxl_check_header.exit_crit_edge
  %call4.i.lcssa = phi i32 [ %call4.i217, %while.cond.preheader.qxl_check_header.exit_crit_edge ], [ %call4.i, %while.body.qxl_check_header.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4.i.lcssa) #10
  br label %do.body77

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %28 = phi i32 [ %37, %while.body.while.body_crit_edge ], [ %25, %while.cond.preheader.while.body_crit_edge ]
  %call4.i222 = phi i32 [ %call4.i, %while.body.while.body_crit_edge ], [ %call4.i217, %while.cond.preheader.while.body_crit_edge ]
  %29 = phi ptr [ %33, %while.body.while.body_crit_edge ], [ %21, %while.cond.preheader.while.body_crit_edge ]
  %add.i = add i32 %28, 1
  %notify_on_cons.i = getelementptr inbounds %struct.qxl_ring_header, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %notify_on_cons.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %add.i, ptr %notify_on_cons.i, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4.i222) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748) #10
  %32 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ring, align 4
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %prod.i = getelementptr inbounds %struct.qxl_ring_header, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prod.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %prod.i, align 1
  %cons.i = getelementptr inbounds %struct.qxl_ring_header, ptr %33, i32 0, i32 3
  %36 = ptrtoint ptr %cons.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %cons.i, align 1
  %sub.i = sub i32 %35, %37
  %38 = ptrtoint ptr %33 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %33, align 1
  %cmp7.i = icmp ult i32 %sub.i, %39
  br i1 %cmp7.i, label %while.body.qxl_check_header.exit_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.qxl_check_header.exit_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %qxl_check_header.exit

if.else:                                          ; preds = %lor.lhs.false15.i
  br i1 %interruptible, label %if.then18, label %do.body45

if.then18:                                        ; preds = %if.else
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 131) #10
  %40 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ring, align 4
  %call4.i147 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %prod.i148 = getelementptr inbounds %struct.qxl_ring_header, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prod.i148 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %prod.i148, align 1
  %cons.i149 = getelementptr inbounds %struct.qxl_ring_header, ptr %41, i32 0, i32 3
  %44 = ptrtoint ptr %cons.i149 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %cons.i149, align 1
  %sub.i150 = sub i32 %43, %45
  %46 = ptrtoint ptr %41 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %41, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i150, i32 %47)
  %cmp7.i151 = icmp ult i32 %sub.i150, %47
  br i1 %cmp7.i151, label %if.end38.thread, label %if.then27

if.end38.thread:                                  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4.i147) #10
  br label %do.body77

if.then27:                                        ; preds = %if.then18
  %add.i152 = add i32 %45, 1
  %notify_on_cons.i153 = getelementptr inbounds %struct.qxl_ring_header, ptr %41, i32 0, i32 4
  %48 = ptrtoint ptr %notify_on_cons.i153 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %add.i152, ptr %notify_on_cons.i153, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4.i147) #10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %49 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %push_event = getelementptr inbounds %struct.qxl_ring, ptr %ring, i32 0, i32 4
  %50 = ptrtoint ptr %push_event to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %push_event, align 4
  %call29231 = call i32 @prepare_to_wait_event(ptr noundef %51, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %52 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ring, align 4
  %call4.i158232 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %prod.i159233 = getelementptr inbounds %struct.qxl_ring_header, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %prod.i159233 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %prod.i159233, align 1
  %cons.i160234 = getelementptr inbounds %struct.qxl_ring_header, ptr %53, i32 0, i32 3
  %56 = ptrtoint ptr %cons.i160234 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %cons.i160234, align 1
  %sub.i161235 = sub i32 %55, %57
  %58 = ptrtoint ptr %53 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %53, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i161235, i32 %59)
  %cmp7.i162236 = icmp ult i32 %sub.i161235, %59
  br i1 %cmp7.i162236, label %if.then27.if.end38.thread205_crit_edge, label %if.then27.if.end_crit_edge

if.then27.if.end_crit_edge:                       ; preds = %if.then27
  br label %if.end

if.then27.if.end38.thread205_crit_edge:           ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.thread205

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.then27.if.end_crit_edge
  %60 = phi i32 [ %70, %cleanup.if.end_crit_edge ], [ %57, %if.then27.if.end_crit_edge ]
  %call4.i158238 = phi i32 [ %call4.i158, %cleanup.if.end_crit_edge ], [ %call4.i158232, %if.then27.if.end_crit_edge ]
  %61 = phi ptr [ %66, %cleanup.if.end_crit_edge ], [ %53, %if.then27.if.end_crit_edge ]
  %call29237 = phi i32 [ %call29, %cleanup.if.end_crit_edge ], [ %call29231, %if.then27.if.end_crit_edge ]
  %add.i163 = add i32 %60, 1
  %notify_on_cons.i164 = getelementptr inbounds %struct.qxl_ring_header, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %notify_on_cons.i164 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %add.i163, ptr %notify_on_cons.i164, align 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4.i158238) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29237)
  %tobool33.not = icmp eq i32 %call29237, 0
  br i1 %tobool33.not, label %cleanup, label %if.end38

cleanup:                                          ; preds = %if.end
  call void @schedule() #10
  %63 = ptrtoint ptr %push_event to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %push_event, align 4
  %call29 = call i32 @prepare_to_wait_event(ptr noundef %64, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %65 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ring, align 4
  %call4.i158 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %prod.i159 = getelementptr inbounds %struct.qxl_ring_header, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %prod.i159 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %prod.i159, align 1
  %cons.i160 = getelementptr inbounds %struct.qxl_ring_header, ptr %66, i32 0, i32 3
  %69 = ptrtoint ptr %cons.i160 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %cons.i160, align 1
  %sub.i161 = sub i32 %68, %70
  %71 = ptrtoint ptr %66 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %66, align 1
  %cmp7.i162 = icmp ult i32 %sub.i161, %72
  br i1 %cmp7.i162, label %cleanup.if.end38.thread205_crit_edge, label %cleanup.if.end_crit_edge

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cleanup.if.end38.thread205_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.thread205

if.end38.thread205:                               ; preds = %cleanup.if.end38.thread205_crit_edge, %if.then27.if.end38.thread205_crit_edge
  %call4.i158.lcssa = phi i32 [ %call4.i158232, %if.then27.if.end38.thread205_crit_edge ], [ %call4.i158, %cleanup.if.end38.thread205_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4.i158.lcssa) #10
  %73 = ptrtoint ptr %push_event to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %push_event, align 4
  call void @finish_wait(ptr noundef %74, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %do.body77

if.end38:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %cleanup111

do.body45:                                        ; preds = %if.else
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 136) #10
  %75 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ring, align 4
  %call4.i169 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %prod.i170 = getelementptr inbounds %struct.qxl_ring_header, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %prod.i170 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %prod.i170, align 1
  %cons.i171 = getelementptr inbounds %struct.qxl_ring_header, ptr %76, i32 0, i32 3
  %79 = ptrtoint ptr %cons.i171 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %cons.i171, align 1
  %sub.i172 = sub i32 %78, %80
  %81 = ptrtoint ptr %76 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %76, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i172, i32 %82)
  %cmp7.i173 = icmp ult i32 %sub.i172, %82
  br i1 %cmp7.i173, label %qxl_check_header.exit178, label %if.end54

qxl_check_header.exit178:                         ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4.i169) #10
  br label %do.body77

if.end54:                                         ; preds = %do.body45
  %add.i174 = add i32 %80, 1
  %notify_on_cons.i175 = getelementptr inbounds %struct.qxl_ring_header, ptr %76, i32 0, i32 4
  %83 = ptrtoint ptr %notify_on_cons.i175 to i32
  call void @__asan_storeN_noabort(i32 %83, i32 4)
  store i32 %add.i174, ptr %notify_on_cons.i175, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4.i169) #10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry55) #10
  %84 = call ptr @memset(ptr %__wq_entry55, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry55, i32 noundef 0) #10
  %push_event59 = getelementptr inbounds %struct.qxl_ring, ptr %ring, i32 0, i32 4
  %85 = ptrtoint ptr %push_event59 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %push_event59, align 4
  %call60223 = call i32 @prepare_to_wait_event(ptr noundef %86, ptr noundef nonnull %__wq_entry55, i32 noundef 2) #10
  %87 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ring, align 4
  %call4.i180224 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %prod.i181225 = getelementptr inbounds %struct.qxl_ring_header, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %prod.i181225 to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %prod.i181225, align 1
  %cons.i182226 = getelementptr inbounds %struct.qxl_ring_header, ptr %88, i32 0, i32 3
  %91 = ptrtoint ptr %cons.i182226 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %92 = load i32, ptr %cons.i182226, align 1
  %sub.i183227 = sub i32 %90, %92
  %93 = ptrtoint ptr %88 to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %88, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i183227, i32 %94)
  %cmp7.i184228 = icmp ult i32 %sub.i183227, %94
  br i1 %cmp7.i184228, label %if.end54.for.end68_crit_edge, label %if.end54.cleanup65_crit_edge

if.end54.cleanup65_crit_edge:                     ; preds = %if.end54
  br label %cleanup65

if.end54.for.end68_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end68

cleanup65:                                        ; preds = %cleanup65.cleanup65_crit_edge, %if.end54.cleanup65_crit_edge
  %95 = phi i32 [ %105, %cleanup65.cleanup65_crit_edge ], [ %92, %if.end54.cleanup65_crit_edge ]
  %call4.i180229 = phi i32 [ %call4.i180, %cleanup65.cleanup65_crit_edge ], [ %call4.i180224, %if.end54.cleanup65_crit_edge ]
  %96 = phi ptr [ %101, %cleanup65.cleanup65_crit_edge ], [ %88, %if.end54.cleanup65_crit_edge ]
  %add.i185 = add i32 %95, 1
  %notify_on_cons.i186 = getelementptr inbounds %struct.qxl_ring_header, ptr %96, i32 0, i32 4
  %97 = ptrtoint ptr %notify_on_cons.i186 to i32
  call void @__asan_storeN_noabort(i32 %97, i32 4)
  store i32 %add.i185, ptr %notify_on_cons.i186, align 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4.i180229) #10
  call void @schedule() #10
  %98 = ptrtoint ptr %push_event59 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %push_event59, align 4
  %call60 = call i32 @prepare_to_wait_event(ptr noundef %99, ptr noundef nonnull %__wq_entry55, i32 noundef 2) #10
  %100 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ring, align 4
  %call4.i180 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %prod.i181 = getelementptr inbounds %struct.qxl_ring_header, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %prod.i181 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %prod.i181, align 1
  %cons.i182 = getelementptr inbounds %struct.qxl_ring_header, ptr %101, i32 0, i32 3
  %104 = ptrtoint ptr %cons.i182 to i32
  call void @__asan_loadN_noabort(i32 %104, i32 4)
  %105 = load i32, ptr %cons.i182, align 1
  %sub.i183 = sub i32 %103, %105
  %106 = ptrtoint ptr %101 to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %101, align 1
  %cmp7.i184 = icmp ult i32 %sub.i183, %107
  br i1 %cmp7.i184, label %cleanup65.for.end68_crit_edge, label %cleanup65.cleanup65_crit_edge

cleanup65.cleanup65_crit_edge:                    ; preds = %cleanup65
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup65

cleanup65.for.end68_crit_edge:                    ; preds = %cleanup65
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end68

for.end68:                                        ; preds = %cleanup65.for.end68_crit_edge, %if.end54.for.end68_crit_edge
  %call4.i180.lcssa = phi i32 [ %call4.i180224, %if.end54.for.end68_crit_edge ], [ %call4.i180, %cleanup65.for.end68_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4.i180.lcssa) #10
  %108 = ptrtoint ptr %push_event59 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %push_event59, align 4
  call void @finish_wait(ptr noundef %109, ptr noundef nonnull %__wq_entry55) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry55) #10
  br label %do.body77

do.body77:                                        ; preds = %for.end68, %qxl_check_header.exit178, %if.end38.thread205, %if.end38.thread, %qxl_check_header.exit
  %call85 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  br label %if.end90

if.end90:                                         ; preds = %do.body77, %entry.if.end90_crit_edge
  %flags.0 = phi i32 [ %call85, %do.body77 ], [ %call4, %entry.if.end90_crit_edge ]
  %110 = ptrtoint ptr %prod to i32
  call void @__asan_loadN_noabort(i32 %110, i32 4)
  %111 = load i32, ptr %prod, align 1
  %n_elements = getelementptr inbounds %struct.qxl_ring, ptr %ring, i32 0, i32 2
  %112 = ptrtoint ptr %n_elements to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %n_elements, align 4
  %sub92 = add i32 %113, -1
  %and = and i32 %sub92, %111
  %114 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ring, align 4
  %elements = getelementptr inbounds %struct.ring, ptr %115, i32 0, i32 1
  %element_size = getelementptr inbounds %struct.qxl_ring, ptr %ring, i32 0, i32 1
  %116 = ptrtoint ptr %element_size to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %element_size, align 4
  %mul = mul i32 %and, %117
  %add.ptr = getelementptr i8, ptr %elements, i32 %mul
  %118 = call ptr @memcpy(ptr %add.ptr, ptr %new_elt, i32 %117)
  %119 = load i32, ptr %prod, align 1
  %inc = add i32 %119, 1
  store i32 %inc, ptr %prod, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !49
  call void @arm_heavy_mb() #10
  %120 = ptrtoint ptr %prod to i32
  call void @__asan_loadN_noabort(i32 %120, i32 4)
  %121 = load i32, ptr %prod, align 1
  %notify_on_prod = getelementptr inbounds %struct.qxl_ring_header, ptr %1, i32 0, i32 2
  %122 = ptrtoint ptr %notify_on_prod to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %123 = load i32, ptr %notify_on_prod, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %123)
  %cmp100 = icmp eq i32 %121, %123
  br i1 %cmp100, label %do.body103, label %if.end90.if.end109_crit_edge

if.end90.if.end109_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109

do.body103:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !50
  call void @arm_heavy_mb() #10
  %prod_notify = getelementptr inbounds %struct.qxl_ring, ptr %ring, i32 0, i32 3
  %124 = ptrtoint ptr %prod_notify to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %prod_notify, align 4
  %and106 = and i32 %125, 1048575
  %add107 = or i32 %and106, -18874368
  %126 = inttoptr i32 %add107 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %126, i8 0) #10, !srcloc !51
  br label %if.end109

if.end109:                                        ; preds = %do.body103, %if.end90.if.end109_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0) #10
  br label %cleanup111

cleanup111:                                       ; preds = %if.end109, %if.end38
  %retval.0 = phi i32 [ 0, %if.end109 ], [ %call29237, %if.end38 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qxl_push_command_ring_release(ptr nocapture noundef readonly %qdev, ptr nocapture noundef readonly %release, i32 noundef %type, i1 noundef zeroext %interruptible) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.qxl_command, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #10
  %0 = getelementptr inbounds %struct.qxl_command, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %cmd, i32 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %1, align 8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %type, ptr %0, align 8
  %release_bo = getelementptr inbounds %struct.qxl_release, ptr %release, i32 0, i32 3
  %4 = ptrtoint ptr %release_bo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %release_bo, align 8
  %release_offset = getelementptr inbounds %struct.qxl_release, ptr %release, i32 0, i32 4
  %6 = ptrtoint ptr %release_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %release_offset, align 4
  %resource.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resource.i, align 4
  %mem_type.i = getelementptr inbounds %struct.ttm_resource, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %mem_type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mem_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.i = icmp eq i32 %11, 2
  %main_slot.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 24
  %surfaces_slot.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 25
  %cond.i = select i1 %cmp.i, ptr %main_slot.i, ptr %surfaces_slot.i
  %high_bits.i = getelementptr inbounds %struct.qxl_memslot, ptr %cond.i, i32 0, i32 5
  %12 = ptrtoint ptr %high_bits.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %high_bits.i, align 8
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %9, align 4
  %shl.i = shl i32 %15, 12
  %add.i = add i32 %shl.i, %7
  %conv.i = zext i32 %add.i to i64
  %or.i = or i64 %13, %conv.i
  %16 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %or.i, ptr %cmd, align 8
  %command_ring = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 18
  %17 = ptrtoint ptr %command_ring to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %command_ring, align 4
  %call2 = call i32 @qxl_ring_push(ptr noundef %18, ptr noundef nonnull %cmd, i1 noundef zeroext %interruptible)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #10
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qxl_push_cursor_ring_release(ptr nocapture noundef readonly %qdev, ptr nocapture noundef readonly %release, i32 noundef %type, i1 noundef zeroext %interruptible) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.qxl_command, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #10
  %0 = getelementptr inbounds %struct.qxl_command, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %cmd, i32 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %1, align 8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %type, ptr %0, align 8
  %release_bo = getelementptr inbounds %struct.qxl_release, ptr %release, i32 0, i32 3
  %4 = ptrtoint ptr %release_bo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %release_bo, align 8
  %release_offset = getelementptr inbounds %struct.qxl_release, ptr %release, i32 0, i32 4
  %6 = ptrtoint ptr %release_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %release_offset, align 4
  %resource.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resource.i, align 4
  %mem_type.i = getelementptr inbounds %struct.ttm_resource, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %mem_type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mem_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.i = icmp eq i32 %11, 2
  %main_slot.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 24
  %surfaces_slot.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 25
  %cond.i = select i1 %cmp.i, ptr %main_slot.i, ptr %surfaces_slot.i
  %high_bits.i = getelementptr inbounds %struct.qxl_memslot, ptr %cond.i, i32 0, i32 5
  %12 = ptrtoint ptr %high_bits.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %high_bits.i, align 8
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %9, align 4
  %shl.i = shl i32 %15, 12
  %add.i = add i32 %shl.i, %7
  %conv.i = zext i32 %add.i to i64
  %or.i = or i64 %13, %conv.i
  %16 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %or.i, ptr %cmd, align 8
  %cursor_ring = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 19
  %17 = ptrtoint ptr %cursor_ring to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cursor_ring, align 8
  %call2 = call i32 @qxl_ring_push(ptr noundef %18, ptr noundef nonnull %cmd, i1 noundef zeroext %interruptible)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #10
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @qxl_queue_garbage_collect(ptr noundef %qdev, i1 noundef zeroext %flush) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %release_ring = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 17
  %0 = ptrtoint ptr %release_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %release_ring, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %lock.i = getelementptr inbounds %struct.qxl_ring, ptr %1, i32 0, i32 5
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %prod.i = getelementptr inbounds %struct.qxl_ring_header, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prod.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %prod.i, align 1
  %cons.i = getelementptr inbounds %struct.qxl_ring_header, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %cons.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %cons.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp7.i = icmp ne i32 %5, %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #10
  br i1 %cmp7.i, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then:                                          ; preds = %entry
  %gc_work = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %gc_work) #10
  br i1 %flush, label %if.then3, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call zeroext i1 @flush_work(ptr noundef %gc_work) #10
  br label %return

return:                                           ; preds = %if.then3, %if.then.return_crit_edge, %entry.return_crit_edge
  ret i1 %cmp7.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qxl_garbage_collect(ptr noundef %qdev) local_unnamed_addr #0 align 64 {
entry:
  %id = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %id)
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %id, align 8
  %release_ring = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 17
  %1 = ptrtoint ptr %release_ring to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %release_ring, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %lock.i29 = getelementptr inbounds %struct.qxl_ring, ptr %2, i32 0, i32 5
  %call4.i30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i29) #10
  %cons.i31 = getelementptr inbounds %struct.qxl_ring_header, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cons.i31 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load volatile i32, ptr %cons.i31, align 1
  %prod.i32 = getelementptr inbounds %struct.qxl_ring_header, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %prod.i32 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load volatile i32, ptr %prod.i32, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp7.i33 = icmp eq i32 %6, %8
  %9 = ptrtoint ptr %cons.i31 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load volatile i32, ptr %cons.i31, align 1
  br i1 %cmp7.i33, label %entry.while.end5_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end5_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end5

while.body:                                       ; preds = %while.end.while.body_crit_edge, %entry.while.body_crit_edge
  %11 = phi i32 [ %37, %while.end.while.body_crit_edge ], [ %10, %entry.while.body_crit_edge ]
  %cons.i37 = phi ptr [ %cons.i, %while.end.while.body_crit_edge ], [ %cons.i31, %entry.while.body_crit_edge ]
  %call4.i36 = phi i32 [ %call4.i, %while.end.while.body_crit_edge ], [ %call4.i30, %entry.while.body_crit_edge ]
  %lock.i35 = phi ptr [ %lock.i, %while.end.while.body_crit_edge ], [ %lock.i29, %entry.while.body_crit_edge ]
  %12 = phi ptr [ %30, %while.end.while.body_crit_edge ], [ %2, %entry.while.body_crit_edge ]
  %i.034 = phi i32 [ %i.1.lcssa, %while.end.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %n_elements.i = getelementptr inbounds %struct.qxl_ring, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %n_elements.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_elements.i, align 4
  %sub.i = add i32 %14, -1
  %and.i = and i32 %sub.i, %11
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  %elements.i = getelementptr inbounds %struct.ring, ptr %16, i32 0, i32 1
  %element_size.i = getelementptr inbounds %struct.qxl_ring, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %element_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %element_size.i, align 4
  %mul.i = mul i32 %and.i, %18
  %add.ptr.i = getelementptr i8, ptr %elements.i, i32 %mul.i
  %19 = call ptr @memcpy(ptr %id, ptr %add.ptr.i, i32 %18)
  %20 = ptrtoint ptr %cons.i37 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load volatile i32, ptr %cons.i37, align 1
  %inc.i = add i32 %21, 1
  store volatile i32 %inc.i, ptr %cons.i37, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i35, i32 noundef %call4.i36) #10
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %22)
  %id.0.id.0. = load i64, ptr %id, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2, i64 noundef %id.0.id.0.) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %id.0.id.0.)
  %tobool.not23 = icmp eq i64 %id.0.id.0., 0
  br i1 %tobool.not23, label %while.body.while.end_crit_edge, label %while.body.while.body2_crit_edge

while.body.while.body2_crit_edge:                 ; preds = %while.body
  br label %while.body2

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body2:                                      ; preds = %sw.epilog.while.body2_crit_edge, %while.body.while.body2_crit_edge
  %i.125 = phi i32 [ %inc, %sw.epilog.while.body2_crit_edge ], [ %i.034, %while.body.while.body2_crit_edge ]
  %23 = phi i64 [ %25, %sw.epilog.while.body2_crit_edge ], [ %id.0.id.0., %while.body.while.body2_crit_edge ]
  %call3 = tail call ptr @qxl_release_from_id_locked(ptr noundef %qdev, i64 noundef %23) #10
  %cmp = icmp eq ptr %call3, null
  br i1 %cmp, label %while.body2.while.end_crit_edge, label %if.end

while.body2.while.end_crit_edge:                  ; preds = %while.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end:                                           ; preds = %while.body2
  %call4 = tail call ptr @qxl_release_map(ptr noundef %qdev, ptr noundef nonnull %call3) #10
  %24 = ptrtoint ptr %call4 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %call4, align 1
  tail call void @qxl_release_unmap(ptr noundef %qdev, ptr noundef nonnull %call3, ptr noundef %call4) #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, i64 noundef %23, i64 noundef %25) #10
  %type = getelementptr inbounds %struct.qxl_release, ptr %call3, i32 0, i32 2
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %switch = icmp ult i32 %27, 3
  br i1 %switch, label %if.end.sw.epilog_crit_edge, label %sw.default

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.sw.epilog_crit_edge
  tail call void @qxl_release_free(ptr noundef %qdev, ptr noundef nonnull %call3) #10
  %inc = add i32 %i.125, 1
  %tobool.not = icmp eq i64 %25, 0
  br i1 %tobool.not, label %sw.epilog.while.end_crit_edge, label %sw.epilog.while.body2_crit_edge

sw.epilog.while.body2_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body2

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %while.body2.while.end_crit_edge, %while.body.while.end_crit_edge
  %.lcssa22 = phi i64 [ 0, %while.body.while.end_crit_edge ], [ %23, %while.body2.while.end_crit_edge ], [ 0, %sw.epilog.while.end_crit_edge ]
  %i.1.lcssa = phi i32 [ %i.034, %while.body.while.end_crit_edge ], [ %i.125, %while.body2.while.end_crit_edge ], [ %inc, %sw.epilog.while.end_crit_edge ]
  %28 = ptrtoint ptr %id to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %.lcssa22, ptr %id, align 8
  %29 = ptrtoint ptr %release_ring to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %release_ring, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %lock.i = getelementptr inbounds %struct.qxl_ring, ptr %30, i32 0, i32 5
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %cons.i = getelementptr inbounds %struct.qxl_ring_header, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %cons.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load volatile i32, ptr %cons.i, align 1
  %prod.i = getelementptr inbounds %struct.qxl_ring_header, ptr %32, i32 0, i32 1
  %35 = ptrtoint ptr %prod.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load volatile i32, ptr %prod.i, align 1
  %cmp7.i = icmp eq i32 %34, %36
  %37 = load volatile i32, ptr %cons.i, align 1
  br i1 %cmp7.i, label %while.end.while.end5_crit_edge, label %while.end.while.body_crit_edge

while.end.while.body_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end.while.end5_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end5

while.end5:                                       ; preds = %while.end.while.end5_crit_edge, %entry.while.end5_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.while.end5_crit_edge ], [ %i.1.lcssa, %while.end.while.end5_crit_edge ]
  %.lcssa21 = phi ptr [ %4, %entry.while.end5_crit_edge ], [ %32, %while.end.while.end5_crit_edge ]
  %lock.i.lcssa = phi ptr [ %lock.i29, %entry.while.end5_crit_edge ], [ %lock.i, %while.end.while.end5_crit_edge ]
  %call4.i.lcssa = phi i32 [ %call4.i30, %entry.while.end5_crit_edge ], [ %call4.i, %while.end.while.end5_crit_edge ]
  %.lcssa = phi i32 [ %10, %entry.while.end5_crit_edge ], [ %37, %while.end.while.end5_crit_edge ]
  %add.i = add i32 %.lcssa, 1
  %notify_on_prod.i = getelementptr inbounds %struct.qxl_ring_header, ptr %.lcssa21, i32 0, i32 2
  %38 = ptrtoint ptr %notify_on_prod.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store volatile i32 %add.i, ptr %notify_on_prod.i, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.lcssa, i32 noundef %call4.i.lcssa) #10
  %release_event = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 30
  tail call void @__wake_up(ptr noundef %release_event, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef %i.0.lcssa) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %id)
  ret i32 %i.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qxl_release_from_id_locked(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qxl_release_map(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_release_unmap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_release_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qxl_alloc_bo_reserved(ptr noundef %qdev, ptr noundef %release, i32 noundef %size, ptr nocapture noundef writeonly %_bo) local_unnamed_addr #0 align 64 {
entry:
  %bo = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bo) #10
  %0 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bo, align 4, !annotation !52
  %call = call i32 @qxl_bo_create(ptr noundef %qdev, i32 noundef %size, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef nonnull %bo) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bo, align 4
  %call1 = call i32 @qxl_release_list_add(ptr noundef %release, ptr noundef %2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %out_unref

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bo, align 4
  %5 = ptrtoint ptr %_bo to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %_bo, align 4
  br label %cleanup

out_unref:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @qxl_bo_unref(ptr noundef nonnull %bo) #10
  br label %cleanup

cleanup:                                          ; preds = %out_unref, %if.end4, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %out_unref ], [ 0, %if.end4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bo) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_bo_create(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_release_list_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_bo_unref(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qxl_io_update_area(ptr noundef %qdev, ptr nocapture noundef readonly %surf, ptr nocapture noundef readonly %area) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_surf_alloc = getelementptr inbounds %struct.qxl_bo, ptr %surf, i32 0, i32 11
  %0 = ptrtoint ptr %hw_surf_alloc to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %hw_surf_alloc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %is_primary = getelementptr inbounds %struct.qxl_bo, ptr %surf, i32 0, i32 8
  %1 = ptrtoint ptr %is_primary to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load1 = load i8, ptr %is_primary, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load1)
  %tobool4.not = icmp sgt i8 %bf.load1, -1
  br i1 %tobool4.not, label %if.else, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %surface_id6 = getelementptr inbounds %struct.qxl_bo, ptr %surf, i32 0, i32 14
  %2 = ptrtoint ptr %surface_id6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %surface_id6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end.if.end7_crit_edge
  %surface_id.0 = phi i32 [ %3, %if.else ], [ 0, %if.end.if.end7_crit_edge ]
  %width = getelementptr inbounds %struct.qxl_bo, ptr %surf, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %width to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %width, align 1
  %height = getelementptr inbounds %struct.qxl_bo, ptr %surf, i32 0, i32 12, i32 2
  %6 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %height, align 1
  %left = getelementptr inbounds %struct.qxl_rect, ptr %area, i32 0, i32 1
  %8 = ptrtoint ptr %left to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %left, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %lor.lhs.false

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end7
  %10 = ptrtoint ptr %area to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %area, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp10 = icmp slt i32 %11, 0
  br i1 %cmp10, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false11

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %right = getelementptr inbounds %struct.qxl_rect, ptr %area, i32 0, i32 3
  %12 = ptrtoint ptr %right to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %right, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %5)
  %cmp12 = icmp ugt i32 %13, %5
  br i1 %cmp12, label %lor.lhs.false11.cleanup_crit_edge, label %lor.lhs.false13

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false13:                                  ; preds = %lor.lhs.false11
  %bottom = getelementptr inbounds %struct.qxl_rect, ptr %area, i32 0, i32 2
  %14 = ptrtoint ptr %bottom to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %bottom, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %7)
  %cmp14 = icmp ugt i32 %15, %7
  br i1 %cmp14, label %lor.lhs.false13.cleanup_crit_edge, label %if.end16

lor.lhs.false13.cleanup_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #12
  %update_area_mutex = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 45
  tail call void @mutex_lock_nested(ptr noundef %update_area_mutex, i32 noundef 0) #10
  %ram_header = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 20
  %16 = ptrtoint ptr %ram_header to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ram_header, align 4
  %update_area = getelementptr inbounds %struct.qxl_ram_header, ptr %17, i32 0, i32 10
  %18 = call ptr @memcpy(ptr %update_area, ptr %area, i32 16)
  %19 = load ptr, ptr %ram_header, align 4
  %update_surface = getelementptr inbounds %struct.qxl_ram_header, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %update_surface to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %surface_id.0, ptr %update_surface, align 1
  %call = tail call fastcc i32 @wait_for_io_cmd_user(ptr noundef %qdev, i8 noundef zeroext 0, i32 noundef 16, i1 noundef zeroext true)
  tail call void @mutex_unlock(ptr noundef %update_area_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %lor.lhs.false13.cleanup_crit_edge, %lor.lhs.false11.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end16 ], [ -22, %lor.lhs.false13.cleanup_crit_edge ], [ -22, %lor.lhs.false11.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_for_io_cmd_user(ptr noundef %qdev, i8 noundef zeroext %val, i32 noundef %port, i1 noundef zeroext %intr) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry72 = alloca %struct.wait_queue_entry, align 4
  %__wq_entry150 = alloca %struct.wait_queue_entry, align 4
  %__wq_entry216 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 12
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_base, align 8
  %add = add i32 %1, %port
  %async_io_mutex = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 32
  tail call void @mutex_lock_nested(ptr noundef %async_io_mutex, i32 noundef 0) #10
  %irq_received_io_cmd = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 37
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %irq_received_io_cmd, i32 noundef 4) #10
  %2 = ptrtoint ptr %irq_received_io_cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %irq_received_io_cmd, align 4
  %last_sent_io_cmd = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 33
  %4 = ptrtoint ptr %last_sent_io_cmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_sent_io_cmd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp = icmp ugt i32 %5, %3
  br i1 %cmp, label %if.then, label %entry.do.body115_crit_edge

entry.do.body115_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body115

if.then:                                          ; preds = %entry
  br i1 %intr, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 299) #10
  %call.i.i336 = tail call zeroext i1 @__kasan_check_read(ptr noundef %irq_received_io_cmd, i32 noundef 4) #10
  %6 = ptrtoint ptr %irq_received_io_cmd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %irq_received_io_cmd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp7 = icmp sgt i32 %7, %3
  br i1 %cmp7, label %if.then1.if.end111_crit_edge, label %if.then15

if.then1.if.end111_crit_edge:                     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

if.then15:                                        ; preds = %if.then1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %8 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %io_cmd_event = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 41
  %call17380 = call i32 @prepare_to_wait_event(ptr noundef %io_cmd_event, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %call.i.i337381 = call zeroext i1 @__kasan_check_read(ptr noundef %irq_received_io_cmd, i32 noundef 4) #10
  %9 = ptrtoint ptr %irq_received_io_cmd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %irq_received_io_cmd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %3)
  %cmp21382 = icmp sgt i32 %10, %3
  br i1 %cmp21382, label %if.then15.for.end_crit_edge, label %if.then15.if.end37_crit_edge

if.then15.if.end37_crit_edge:                     ; preds = %if.then15
  br label %if.end37

if.then15.for.end_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end37:                                         ; preds = %cleanup.if.end37_crit_edge, %if.then15.if.end37_crit_edge
  %__ret16.1384 = phi i32 [ %__ret16.1, %cleanup.if.end37_crit_edge ], [ 500, %if.then15.if.end37_crit_edge ]
  %call17383 = phi i32 [ %call17, %cleanup.if.end37_crit_edge ], [ %call17380, %if.then15.if.end37_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17383)
  %tobool38.not = icmp eq i32 %call17383, 0
  br i1 %tobool38.not, label %cleanup, label %if.end37.__out_crit_edge

if.end37.__out_crit_edge:                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %__out

cleanup:                                          ; preds = %if.end37
  %call41 = call i32 @schedule_timeout(i32 noundef %__ret16.1384) #10
  %call17 = call i32 @prepare_to_wait_event(ptr noundef %io_cmd_event, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %call.i.i337 = call zeroext i1 @__kasan_check_read(ptr noundef %irq_received_io_cmd, i32 noundef 4) #10
  %11 = ptrtoint ptr %irq_received_io_cmd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %irq_received_io_cmd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %3)
  %cmp21 = icmp sgt i32 %12, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool25.not = icmp eq i32 %call41, 0
  %13 = select i1 %cmp21, i1 %tobool25.not, i1 false
  %__ret16.1 = select i1 %13, i32 1, i32 %call41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret16.1)
  %tobool31.not = icmp eq i32 %__ret16.1, 0
  %14 = select i1 %cmp21, i1 true, i1 %tobool31.not
  br i1 %14, label %cleanup.for.end_crit_edge, label %cleanup.if.end37_crit_edge

cleanup.if.end37_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then15.for.end_crit_edge
  %__ret16.1.lcssa = phi i32 [ 500, %if.then15.for.end_crit_edge ], [ %__ret16.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %io_cmd_event, ptr noundef nonnull %__wq_entry) #10
  br label %__out

__out:                                            ; preds = %for.end, %if.end37.__out_crit_edge
  %__ret16.2347 = phi i32 [ %__ret16.1.lcssa, %for.end ], [ %call17383, %if.end37.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end108

if.else:                                          ; preds = %if.then
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 302) #10
  %call.i.i338 = tail call zeroext i1 @__kasan_check_read(ptr noundef %irq_received_io_cmd, i32 noundef 4) #10
  %15 = ptrtoint ptr %irq_received_io_cmd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %irq_received_io_cmd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %3)
  %cmp56 = icmp sgt i32 %16, %3
  br i1 %cmp56, label %if.else.if.end111_crit_edge, label %if.then71

if.else.if.end111_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

if.then71:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry72) #10
  %17 = call ptr @memset(ptr %__wq_entry72, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry72, i32 noundef 0) #10
  %io_cmd_event76 = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 41
  %call77375 = call i32 @prepare_to_wait_event(ptr noundef %io_cmd_event76, ptr noundef nonnull %__wq_entry72, i32 noundef 2) #10
  %call.i.i339376 = call zeroext i1 @__kasan_check_read(ptr noundef %irq_received_io_cmd, i32 noundef 4) #10
  %18 = ptrtoint ptr %irq_received_io_cmd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %irq_received_io_cmd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %3)
  %cmp81377 = icmp sgt i32 %19, %3
  br i1 %cmp81377, label %if.then71.for.end102_crit_edge, label %if.then71.cleanup99_crit_edge

if.then71.cleanup99_crit_edge:                    ; preds = %if.then71
  br label %cleanup99

if.then71.for.end102_crit_edge:                   ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end102

cleanup99:                                        ; preds = %cleanup99.cleanup99_crit_edge, %if.then71.cleanup99_crit_edge
  %__ret73.1378 = phi i32 [ %__ret73.1, %cleanup99.cleanup99_crit_edge ], [ 500, %if.then71.cleanup99_crit_edge ]
  %call98 = call i32 @schedule_timeout(i32 noundef %__ret73.1378) #10
  %call77 = call i32 @prepare_to_wait_event(ptr noundef %io_cmd_event76, ptr noundef nonnull %__wq_entry72, i32 noundef 2) #10
  %call.i.i339 = call zeroext i1 @__kasan_check_read(ptr noundef %irq_received_io_cmd, i32 noundef 4) #10
  %20 = ptrtoint ptr %irq_received_io_cmd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %irq_received_io_cmd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %3)
  %cmp81 = icmp sgt i32 %21, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool85.not = icmp eq i32 %call98, 0
  %22 = select i1 %cmp81, i1 %tobool85.not, i1 false
  %__ret73.1 = select i1 %22, i32 1, i32 %call98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret73.1)
  %tobool91.not = icmp eq i32 %__ret73.1, 0
  %23 = select i1 %cmp81, i1 true, i1 %tobool91.not
  br i1 %23, label %cleanup99.for.end102_crit_edge, label %cleanup99.cleanup99_crit_edge

cleanup99.cleanup99_crit_edge:                    ; preds = %cleanup99
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup99

cleanup99.for.end102_crit_edge:                   ; preds = %cleanup99
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end102

for.end102:                                       ; preds = %cleanup99.for.end102_crit_edge, %if.then71.for.end102_crit_edge
  %__ret73.1.lcssa = phi i32 [ 500, %if.then71.for.end102_crit_edge ], [ %__ret73.1, %cleanup99.for.end102_crit_edge ]
  call void @finish_wait(ptr noundef %io_cmd_event76, ptr noundef nonnull %__wq_entry72) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry72) #10
  br label %if.end108

if.end108:                                        ; preds = %for.end102, %__out
  %ret.0 = phi i32 [ %__ret16.2347, %__out ], [ %__ret73.1.lcssa, %for.end102 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.0)
  %cmp109 = icmp slt i32 %ret.0, 1
  br i1 %cmp109, label %if.end108.out_crit_edge, label %if.end108.if.end111_crit_edge

if.end108.if.end111_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

if.end108.out_crit_edge:                          ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end111:                                        ; preds = %if.end108.if.end111_crit_edge, %if.else.if.end111_crit_edge, %if.then1.if.end111_crit_edge
  %call.i.i340 = call zeroext i1 @__kasan_check_read(ptr noundef %irq_received_io_cmd, i32 noundef 4) #10
  %24 = ptrtoint ptr %irq_received_io_cmd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %irq_received_io_cmd, align 4
  br label %do.body115

do.body115:                                       ; preds = %if.end111, %entry.do.body115_crit_edge
  %irq_num.0 = phi i32 [ %25, %if.end111 ], [ %3, %entry.do.body115_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !53
  call void @arm_heavy_mb() #10
  %and = and i32 %add, 1048575
  %add118 = or i32 %and, -18874368
  %26 = inttoptr i32 %add118 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 %val) #10, !srcloc !51
  %add120 = add i32 %irq_num.0, 1
  %27 = ptrtoint ptr %last_sent_io_cmd to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add120, ptr %last_sent_io_cmd, align 4
  br i1 %intr, label %if.then123, label %if.else189

if.then123:                                       ; preds = %do.body115
  call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 312) #10
  %call.i.i341 = call zeroext i1 @__kasan_check_read(ptr noundef %irq_received_io_cmd, i32 noundef 4) #10
  %28 = ptrtoint ptr %irq_received_io_cmd to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %irq_received_io_cmd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %irq_num.0)
  %cmp134 = icmp sgt i32 %29, %irq_num.0
  br i1 %cmp134, label %if.then123.out_crit_edge, label %if.then149

if.then123.out_crit_edge:                         ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then149:                                       ; preds = %if.then123
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry150) #10
  %30 = call ptr @memset(ptr %__wq_entry150, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry150, i32 noundef 0) #10
  %io_cmd_event154 = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 41
  %call155393 = call i32 @prepare_to_wait_event(ptr noundef %io_cmd_event154, ptr noundef nonnull %__wq_entry150, i32 noundef 1) #10
  %call.i.i342394 = call zeroext i1 @__kasan_check_read(ptr noundef %irq_received_io_cmd, i32 noundef 4) #10
  %31 = ptrtoint ptr %irq_received_io_cmd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %irq_received_io_cmd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %irq_num.0)
  %cmp159395 = icmp sgt i32 %32, %irq_num.0
  br i1 %cmp159395, label %if.then149.for.end183_crit_edge, label %if.then149.if.end175_crit_edge

if.then149.if.end175_crit_edge:                   ; preds = %if.then149
  br label %if.end175

if.then149.for.end183_crit_edge:                  ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end183

if.end175:                                        ; preds = %cleanup180.if.end175_crit_edge, %if.then149.if.end175_crit_edge
  %__ret151.1397 = phi i32 [ %__ret151.1, %cleanup180.if.end175_crit_edge ], [ 500, %if.then149.if.end175_crit_edge ]
  %call155396 = phi i32 [ %call155, %cleanup180.if.end175_crit_edge ], [ %call155393, %if.then149.if.end175_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155396)
  %tobool176.not = icmp eq i32 %call155396, 0
  br i1 %tobool176.not, label %cleanup180, label %if.end175.__out185_crit_edge

if.end175.__out185_crit_edge:                     ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #12
  br label %__out185

cleanup180:                                       ; preds = %if.end175
  %call179 = call i32 @schedule_timeout(i32 noundef %__ret151.1397) #10
  %call155 = call i32 @prepare_to_wait_event(ptr noundef %io_cmd_event154, ptr noundef nonnull %__wq_entry150, i32 noundef 1) #10
  %call.i.i342 = call zeroext i1 @__kasan_check_read(ptr noundef %irq_received_io_cmd, i32 noundef 4) #10
  %33 = ptrtoint ptr %irq_received_io_cmd to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %irq_received_io_cmd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %irq_num.0)
  %cmp159 = icmp sgt i32 %34, %irq_num.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %tobool163.not = icmp eq i32 %call179, 0
  %35 = select i1 %cmp159, i1 %tobool163.not, i1 false
  %__ret151.1 = select i1 %35, i32 1, i32 %call179
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret151.1)
  %tobool169.not = icmp eq i32 %__ret151.1, 0
  %36 = select i1 %cmp159, i1 true, i1 %tobool169.not
  br i1 %36, label %cleanup180.for.end183_crit_edge, label %cleanup180.if.end175_crit_edge

cleanup180.if.end175_crit_edge:                   ; preds = %cleanup180
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end175

cleanup180.for.end183_crit_edge:                  ; preds = %cleanup180
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end183

for.end183:                                       ; preds = %cleanup180.for.end183_crit_edge, %if.then149.for.end183_crit_edge
  %__ret151.1.lcssa = phi i32 [ 500, %if.then149.for.end183_crit_edge ], [ %__ret151.1, %cleanup180.for.end183_crit_edge ]
  call void @finish_wait(ptr noundef %io_cmd_event154, ptr noundef nonnull %__wq_entry150) #10
  br label %__out185

__out185:                                         ; preds = %for.end183, %if.end175.__out185_crit_edge
  %__ret151.2360 = phi i32 [ %__ret151.1.lcssa, %for.end183 ], [ %call155396, %if.end175.__out185_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry150) #10
  br label %out

if.else189:                                       ; preds = %do.body115
  call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 315) #10
  %call.i.i343 = call zeroext i1 @__kasan_check_read(ptr noundef %irq_received_io_cmd, i32 noundef 4) #10
  %37 = ptrtoint ptr %irq_received_io_cmd to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %irq_received_io_cmd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %irq_num.0)
  %cmp200 = icmp sgt i32 %38, %irq_num.0
  br i1 %cmp200, label %if.else189.out_crit_edge, label %if.then215

if.else189.out_crit_edge:                         ; preds = %if.else189
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then215:                                       ; preds = %if.else189
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry216) #10
  %39 = call ptr @memset(ptr %__wq_entry216, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry216, i32 noundef 0) #10
  %io_cmd_event220 = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 41
  %call221387 = call i32 @prepare_to_wait_event(ptr noundef %io_cmd_event220, ptr noundef nonnull %__wq_entry216, i32 noundef 2) #10
  %call.i.i344388 = call zeroext i1 @__kasan_check_read(ptr noundef %irq_received_io_cmd, i32 noundef 4) #10
  %40 = ptrtoint ptr %irq_received_io_cmd to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %irq_received_io_cmd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %irq_num.0)
  %cmp225389 = icmp sgt i32 %41, %irq_num.0
  br i1 %cmp225389, label %if.then215.for.end246_crit_edge, label %if.then215.cleanup243_crit_edge

if.then215.cleanup243_crit_edge:                  ; preds = %if.then215
  br label %cleanup243

if.then215.for.end246_crit_edge:                  ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end246

cleanup243:                                       ; preds = %cleanup243.cleanup243_crit_edge, %if.then215.cleanup243_crit_edge
  %__ret217.1390 = phi i32 [ %__ret217.1, %cleanup243.cleanup243_crit_edge ], [ 500, %if.then215.cleanup243_crit_edge ]
  %call242 = call i32 @schedule_timeout(i32 noundef %__ret217.1390) #10
  %call221 = call i32 @prepare_to_wait_event(ptr noundef %io_cmd_event220, ptr noundef nonnull %__wq_entry216, i32 noundef 2) #10
  %call.i.i344 = call zeroext i1 @__kasan_check_read(ptr noundef %irq_received_io_cmd, i32 noundef 4) #10
  %42 = ptrtoint ptr %irq_received_io_cmd to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %irq_received_io_cmd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %irq_num.0)
  %cmp225 = icmp sgt i32 %43, %irq_num.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call242)
  %tobool229.not = icmp eq i32 %call242, 0
  %44 = select i1 %cmp225, i1 %tobool229.not, i1 false
  %__ret217.1 = select i1 %44, i32 1, i32 %call242
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret217.1)
  %tobool235.not = icmp eq i32 %__ret217.1, 0
  %45 = select i1 %cmp225, i1 true, i1 %tobool235.not
  br i1 %45, label %cleanup243.for.end246_crit_edge, label %cleanup243.cleanup243_crit_edge

cleanup243.cleanup243_crit_edge:                  ; preds = %cleanup243
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup243

cleanup243.for.end246_crit_edge:                  ; preds = %cleanup243
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end246

for.end246:                                       ; preds = %cleanup243.for.end246_crit_edge, %if.then215.for.end246_crit_edge
  %__ret217.1.lcssa = phi i32 [ 500, %if.then215.for.end246_crit_edge ], [ %__ret217.1, %cleanup243.for.end246_crit_edge ]
  call void @finish_wait(ptr noundef %io_cmd_event220, ptr noundef nonnull %__wq_entry216) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry216) #10
  br label %out

out:                                              ; preds = %for.end246, %if.else189.out_crit_edge, %__out185, %if.then123.out_crit_edge, %if.end108.out_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end108.out_crit_edge ], [ 500, %if.then123.out_crit_edge ], [ %__ret151.2360, %__out185 ], [ 500, %if.else189.out_crit_edge ], [ %__ret217.1.lcssa, %for.end246 ]
  %46 = call i32 @llvm.smin.i32(i32 %ret.1, i32 0)
  call void @mutex_unlock(ptr noundef %async_io_mutex) #10
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qxl_io_notify_oom(ptr nocapture noundef readonly %qdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !54
  tail call void @arm_heavy_mb() #10
  %io_base = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 12
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_base, align 8
  %add = add i32 %1, 4
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #10, !srcloc !51
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qxl_io_flush_release(ptr nocapture noundef readonly %qdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  %io_base = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 12
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_base, align 8
  %add = add i32 %1, 23
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #10, !srcloc !51
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qxl_io_flush_surfaces(ptr noundef %qdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %restart.i

restart.i:                                        ; preds = %restart.i.restart.i_crit_edge, %entry
  %call.i = tail call fastcc i32 @wait_for_io_cmd_user(ptr noundef %qdev, i8 noundef zeroext 0, i32 noundef 22, i1 noundef zeroext false) #10
  %cmp.i = icmp eq i32 %call.i, -512
  br i1 %cmp.i, label %restart.i.restart.i_crit_edge, label %wait_for_io_cmd.exit

restart.i.restart.i_crit_edge:                    ; preds = %restart.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %restart.i

wait_for_io_cmd.exit:                             ; preds = %restart.i
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qxl_io_destroy_primary(ptr noundef %qdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %restart.i

restart.i:                                        ; preds = %restart.i.restart.i_crit_edge, %entry
  %call.i = tail call fastcc i32 @wait_for_io_cmd_user(ptr noundef %qdev, i8 noundef zeroext 0, i32 noundef 19, i1 noundef zeroext false) #10
  %cmp.i = icmp eq i32 %call.i, -512
  br i1 %cmp.i, label %restart.i.restart.i_crit_edge, label %wait_for_io_cmd.exit

restart.i.restart.i_crit_edge:                    ; preds = %restart.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %restart.i

wait_for_io_cmd.exit:                             ; preds = %restart.i
  %primary_bo = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 21
  %0 = ptrtoint ptr %primary_bo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %primary_bo, align 8
  %is_primary = getelementptr inbounds %struct.qxl_bo, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %is_primary to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %is_primary, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %is_primary, align 4
  %3 = load ptr, ptr %primary_bo, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %wait_for_io_cmd.exit.drm_gem_object_put.exit_crit_edge, label %if.then.i

wait_for_io_cmd.exit.drm_gem_object_put.exit_crit_edge: ; preds = %wait_for_io_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_gem_object_put.exit

if.then.i:                                        ; preds = %wait_for_io_cmd.exit
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %3, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @llvm.prefetch.p0(ptr nonnull %3, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #10, !srcloc !57
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !58

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %3, i32 noundef 3) #10
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !59
  tail call void @drm_gem_object_free(ptr noundef nonnull %3) #10
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, %wait_for_io_cmd.exit.drm_gem_object_put.exit_crit_edge
  %5 = ptrtoint ptr %primary_bo to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %primary_bo, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qxl_io_create_primary(ptr noundef %qdev, ptr noundef %bo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %primary_bo = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 21
  %0 = ptrtoint ptr %primary_bo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %primary_bo, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end22, label %do.end, !prof !58

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 389, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end22:                                         ; preds = %entry
  %ram_header = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 20
  %2 = ptrtoint ptr %ram_header to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ram_header, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef %qdev, ptr noundef %3) #10
  %4 = ptrtoint ptr %ram_header to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ram_header, align 4
  %create_surface = getelementptr inbounds %struct.qxl_ram_header, ptr %5, i32 0, i32 13
  %surf = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 12
  %6 = ptrtoint ptr %surf to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %surf, align 1
  %format24 = getelementptr inbounds %struct.qxl_ram_header, ptr %5, i32 0, i32 13, i32 3
  %8 = ptrtoint ptr %format24 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %format24, align 1
  %width = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 12, i32 1
  %9 = ptrtoint ptr %width to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %width, align 1
  %11 = ptrtoint ptr %create_surface to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %create_surface, align 1
  %height = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 12, i32 2
  %12 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %height, align 1
  %height28 = getelementptr inbounds %struct.qxl_ram_header, ptr %5, i32 0, i32 13, i32 1
  %14 = ptrtoint ptr %height28 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %height28, align 1
  %stride = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 12, i32 3
  %15 = ptrtoint ptr %stride to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %stride, align 1
  %stride30 = getelementptr inbounds %struct.qxl_ram_header, ptr %5, i32 0, i32 13, i32 2
  %17 = ptrtoint ptr %stride30 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %stride30, align 1
  %resource.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 6
  %18 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %resource.i, align 4
  %mem_type.i = getelementptr inbounds %struct.ttm_resource, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %mem_type.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mem_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp.i = icmp eq i32 %21, 2
  %main_slot.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 24
  %surfaces_slot.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 25
  %cond.i = select i1 %cmp.i, ptr %main_slot.i, ptr %surfaces_slot.i
  %high_bits.i = getelementptr inbounds %struct.qxl_memslot, ptr %cond.i, i32 0, i32 5
  %22 = ptrtoint ptr %high_bits.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %high_bits.i, align 8
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %19, align 4
  %shl.i = shl i32 %25, 12
  %conv.i = zext i32 %shl.i to i64
  %or.i = or i64 %23, %conv.i
  %mem = getelementptr inbounds %struct.qxl_ram_header, ptr %5, i32 0, i32 13, i32 8
  %26 = ptrtoint ptr %mem to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %or.i, ptr %mem, align 1
  %kptr = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 5
  %27 = ptrtoint ptr %kptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %kptr, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9, i64 noundef %or.i, ptr noundef %28) #10
  %flags = getelementptr inbounds %struct.qxl_ram_header, ptr %5, i32 0, i32 13, i32 6
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 1, ptr %flags, align 1
  %type = getelementptr inbounds %struct.qxl_ram_header, ptr %5, i32 0, i32 13, i32 7
  %30 = ptrtoint ptr %type to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 0, ptr %type, align 1
  br label %restart.i

restart.i:                                        ; preds = %restart.i.restart.i_crit_edge, %if.end22
  %call.i = tail call fastcc i32 @wait_for_io_cmd_user(ptr noundef %qdev, i8 noundef zeroext 0, i32 noundef 18, i1 noundef zeroext false) #10
  %cmp.i57 = icmp eq i32 %call.i, -512
  br i1 %cmp.i57, label %restart.i.restart.i_crit_edge, label %wait_for_io_cmd.exit

restart.i.restart.i_crit_edge:                    ; preds = %restart.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %restart.i

wait_for_io_cmd.exit:                             ; preds = %restart.i
  %31 = ptrtoint ptr %primary_bo to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %bo, ptr %primary_bo, align 8
  %is_primary = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 8
  %32 = ptrtoint ptr %is_primary to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load = load i8, ptr %is_primary, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %is_primary, align 4
  %33 = load ptr, ptr %primary_bo, align 8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %33, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %33, i32 1, i32 3, i32 1) #10
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #10, !srcloc !60
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %wait_for_io_cmd.exit.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !61

wait_for_io_cmd.exit.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %wait_for_io_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %wait_for_io_cmd.exit
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %35 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %.not.i.i.i.i.i = icmp sgt i32 %35, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !58

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %wait_for_io_cmd.exit.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %wait_for_io_cmd.exit.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %33, i32 noundef %.sink.i.i.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qxl_io_memslot_add(ptr noundef %qdev, i8 noundef zeroext %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %id to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef %conv) #10
  br label %restart.i

restart.i:                                        ; preds = %restart.i.restart.i_crit_edge, %entry
  %call.i = tail call fastcc i32 @wait_for_io_cmd_user(ptr noundef %qdev, i8 noundef zeroext %id, i32 noundef 17, i1 noundef zeroext false) #10
  %cmp.i = icmp eq i32 %call.i, -512
  br i1 %cmp.i, label %restart.i.restart.i_crit_edge, label %wait_for_io_cmd.exit

restart.i.restart.i_crit_edge:                    ; preds = %restart.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %restart.i

wait_for_io_cmd.exit:                             ; preds = %restart.i
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qxl_io_reset(ptr nocapture noundef readonly %qdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !62
  tail call void @arm_heavy_mb() #10
  %io_base = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 12
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_base, align 8
  %add = add i32 %1, 5
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #10, !srcloc !51
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qxl_io_monitors_config(ptr noundef %qdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %restart.i

restart.i:                                        ; preds = %restart.i.restart.i_crit_edge, %entry
  %call.i = tail call fastcc i32 @wait_for_io_cmd_user(ptr noundef %qdev, i8 noundef zeroext 0, i32 noundef 24, i1 noundef zeroext false) #10
  %cmp.i = icmp eq i32 %call.i, -512
  br i1 %cmp.i, label %restart.i.restart.i_crit_edge, label %wait_for_io_cmd.exit

restart.i.restart.i_crit_edge:                    ; preds = %restart.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %restart.i

wait_for_io_cmd.exit:                             ; preds = %restart.i
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qxl_surface_id_alloc(ptr noundef %qdev, ptr nocapture noundef writeonly %surf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %surf_id_idr_lock = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 47
  %surf_id_idr = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 46
  %rom = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 7
  %surf_evict_mutex.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 49
  %last_alloced_surf_id.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 48
  %release_ring.i.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 17
  %gc_work.i.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 55
  br label %again

again:                                            ; preds = %again.backedge, %entry
  tail call void @idr_preload(i32 noundef 2592) #10
  tail call void @_raw_spin_lock(ptr noundef %surf_id_idr_lock) #10
  %call = tail call i32 @idr_alloc(ptr noundef %surf_id_idr, ptr noundef null, i32 noundef 1, i32 noundef 0, i32 noundef 2048) #10
  tail call void @_raw_spin_unlock(ptr noundef %surf_id_idr_lock) #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !37) #10
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %5, ptrtoint (ptr @radix_tree_preloads to i32)
  %6 = inttoptr i32 %add.i to ptr
  tail call fastcc void @local_lock_release(ptr noundef %6) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !63
  %7 = tail call i32 @llvm.read_register.i32(metadata !37) #10
  %and.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %again.cleanup_crit_edge, label %if.end

again.cleanup_crit_edge:                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %again
  %11 = ptrtoint ptr %rom to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rom, align 4
  %n_surfaces = getelementptr inbounds %struct.qxl_rom, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %n_surfaces to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %n_surfaces, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %14)
  %cmp2.not = icmp ult i32 %call, %14
  br i1 %cmp2.not, label %if.end9, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @_raw_spin_lock(ptr noundef %surf_id_idr_lock) #10
  %call6 = tail call ptr @idr_remove(ptr noundef %surf_id_idr, i32 noundef %call) #10
  tail call void @_raw_spin_unlock(ptr noundef %surf_id_idr_lock) #10
  tail call void @mutex_lock_nested(ptr noundef %surf_evict_mutex.i, i32 noundef 0) #10
  br label %again.i

again.i:                                          ; preds = %for.end.i.again.i_crit_edge, %if.then3
  %stall.0.off0.i = phi i1 [ false, %if.then3 ], [ true, %for.end.i.again.i_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %surf_id_idr_lock) #10
  %15 = ptrtoint ptr %last_alloced_surf_id.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %last_alloced_surf_id.i, align 4
  %add.i29 = add i32 %16, 1
  tail call void @_raw_spin_unlock(ptr noundef %surf_id_idr_lock) #10
  %17 = ptrtoint ptr %rom to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rom, align 4
  %n_surfaces16.i = getelementptr inbounds %struct.qxl_rom, ptr %18, i32 0, i32 13
  %19 = ptrtoint ptr %n_surfaces16.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %n_surfaces16.i, align 1
  %add217.i = add i32 %20, %add.i29
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i29, i32 %add217.i)
  %cmp18.i = icmp ult i32 %add.i29, %add217.i
  br i1 %cmp18.i, label %again.i.for.body.i_crit_edge, label %again.i.for.end.i_crit_edge

again.i.for.end.i_crit_edge:                      ; preds = %again.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

again.i.for.body.i_crit_edge:                     ; preds = %again.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %again.i.for.body.i_crit_edge
  %21 = phi i32 [ %49, %for.inc.i.for.body.i_crit_edge ], [ %20, %again.i.for.body.i_crit_edge ]
  %num_reaped.120.i = phi i32 [ %num_reaped.315.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %again.i.for.body.i_crit_edge ]
  %i.019.i = phi i32 [ %inc16.i, %for.inc.i.for.body.i_crit_edge ], [ %add.i29, %again.i.for.body.i_crit_edge ]
  %rem.i = urem i32 %i.019.i, %21
  tail call void @_raw_spin_lock(ptr noundef %surf_id_idr_lock) #10
  %call.i = tail call ptr @idr_find(ptr noundef %surf_id_idr, i32 noundef %rem.i) #10
  tail call void @_raw_spin_unlock(ptr noundef %surf_id_idr_lock) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %resv32.i.i.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %call.i, i32 0, i32 9
  %22 = ptrtoint ptr %resv32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %resv32.i.i.i.i, align 8
  %call.i.i.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %23, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, -4
  %retval.1.i.i.i.i = select i1 %cmp.i.i.i.i, i32 -512, i32 %call.i.i.i.i.i
  %24 = zext i32 %retval.1.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.1.i.i.i.i, label %qxl_reap_surf.exit.i [
    i32 0, label %if.end.i.i
    i32 -512, label %if.end.i.cleanup.i_crit_edge
  ], !prof !64

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end.i.i:                                       ; preds = %if.end.i
  br i1 %stall.0.off0.i, label %if.then7.i.i, label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i.i = tail call i32 @ttm_bo_wait(ptr noundef nonnull %call.i, i1 noundef zeroext true, i1 noundef zeroext true) #10
  br label %if.end9.i.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %surf_evict_mutex.i) #10
  %call530.i.i = tail call i32 @ttm_bo_wait(ptr noundef nonnull %call.i, i1 noundef zeroext true, i1 noundef zeroext false) #10
  tail call void @mutex_lock_nested(ptr noundef %surf_evict_mutex.i, i32 noundef 0) #10
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then7.i.i, %if.end3.i.i
  %call531.i.i = phi i32 [ %call530.i.i, %if.then7.i.i ], [ %call5.i.i, %if.end3.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call531.i.i)
  %tobool10.not.i.i = icmp eq i32 %call531.i.i, 0
  br i1 %tobool10.not.i.i, label %qxl_reap_surf.exit.thread6.i, label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %bdev.i.i.i.i.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %call.i, i32 0, i32 1
  %25 = ptrtoint ptr %bdev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bdev.i.i.i.i.i, align 8
  %lru_lock.i.i.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %26, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i.i.i) #10
  %resource.i.i.i.i.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %call.i, i32 0, i32 6
  %27 = ptrtoint ptr %resource.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %resource.i.i.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef nonnull %call.i, ptr noundef %28, ptr noundef null) #10
  %29 = ptrtoint ptr %bdev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bdev.i.i.i.i.i, align 8
  %lru_lock2.i.i.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %30, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i.i.i) #10
  %31 = ptrtoint ptr %resv32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %resv32.i.i.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %32) #10
  tail call void @ww_mutex_unlock(ptr noundef %32) #10
  br label %cleanup.i

qxl_reap_surf.exit.thread6.i:                     ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @qxl_surface_evict_locked(ptr noundef %qdev, ptr noundef nonnull %call.i, i1 noundef zeroext true) #10
  %bdev.i.i.i24.i.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %call.i, i32 0, i32 1
  %33 = ptrtoint ptr %bdev.i.i.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bdev.i.i.i24.i.i, align 8
  %lru_lock.i.i.i25.i.i = getelementptr inbounds %struct.ttm_device, ptr %34, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i25.i.i) #10
  %resource.i.i.i26.i.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %call.i, i32 0, i32 6
  %35 = ptrtoint ptr %resource.i.i.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %resource.i.i.i26.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef nonnull %call.i, ptr noundef %36, ptr noundef null) #10
  %37 = ptrtoint ptr %bdev.i.i.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bdev.i.i.i24.i.i, align 8
  %lru_lock2.i.i.i27.i.i = getelementptr inbounds %struct.ttm_device, ptr %38, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i27.i.i) #10
  %39 = ptrtoint ptr %resv32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %resv32.i.i.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %40) #10
  tail call void @ww_mutex_unlock(ptr noundef %40) #10
  %inc9.i = add i32 %num_reaped.120.i, 1
  br label %cleanup.i

qxl_reap_surf.exit.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %call.i, i32 0, i32 2
  %41 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i.i.i, align 8
  %dev5.i.i.i = getelementptr inbounds %struct.drm_device, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %dev5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev5.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.14, ptr noundef nonnull %call.i) #14
  br label %cleanup.i

cleanup.i:                                        ; preds = %qxl_reap_surf.exit.i, %qxl_reap_surf.exit.thread6.i, %if.then11.i.i, %if.end.i.cleanup.i_crit_edge
  %45 = phi i32 [ %inc9.i, %qxl_reap_surf.exit.thread6.i ], [ %num_reaped.120.i, %qxl_reap_surf.exit.i ], [ %num_reaped.120.i, %if.then11.i.i ], [ %num_reaped.120.i, %if.end.i.cleanup.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp12.i = icmp sgt i32 %45, 1
  br i1 %cmp12.i, label %for.end.thread.i, label %cleanup.i.for.inc.i_crit_edge

cleanup.i.for.inc.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.end.thread.i:                                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %surf_evict_mutex.i) #10
  br label %if.then25.i

for.inc.i:                                        ; preds = %cleanup.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %num_reaped.315.i = phi i32 [ %45, %cleanup.i.for.inc.i_crit_edge ], [ %num_reaped.120.i, %for.body.i.for.inc.i_crit_edge ]
  %inc16.i = add nuw i32 %i.019.i, 1
  %46 = ptrtoint ptr %rom to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rom, align 4
  %n_surfaces.i = getelementptr inbounds %struct.qxl_rom, ptr %47, i32 0, i32 13
  %48 = ptrtoint ptr %n_surfaces.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %n_surfaces.i, align 1
  %add2.i = add i32 %49, %add.i29
  %cmp.i = icmp ult i32 %inc16.i, %add2.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %again.i.for.end.i_crit_edge
  %num_reaped.4.i = phi i32 [ 0, %again.i.for.end.i_crit_edge ], [ %num_reaped.315.i, %for.inc.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_reaped.4.i)
  %cmp17.i = icmp eq i32 %num_reaped.4.i, 0
  %cmp17.not.i = xor i1 %cmp17.i, true
  %brmerge.i = or i1 %stall.0.off0.i, %cmp17.not.i
  br i1 %brmerge.i, label %if.end22.i, label %for.end.i.again.i_crit_edge

for.end.i.again.i_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %again.i

if.end22.i:                                       ; preds = %for.end.i
  tail call void @mutex_unlock(ptr noundef %surf_evict_mutex.i) #10
  br i1 %cmp17.i, label %if.end22.i.again.backedge_crit_edge, label %if.end22.i.if.then25.i_crit_edge

if.end22.i.if.then25.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then25.i

if.end22.i.again.backedge_crit_edge:              ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %again.backedge

again.backedge:                                   ; preds = %if.then.i.i, %if.then25.i.again.backedge_crit_edge, %if.end22.i.again.backedge_crit_edge
  br label %again

if.then25.i:                                      ; preds = %if.end22.i.if.then25.i_crit_edge, %for.end.thread.i
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #10
  %50 = ptrtoint ptr %release_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %release_ring.i.i, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %lock.i.i.i = getelementptr inbounds %struct.qxl_ring, ptr %51, i32 0, i32 5
  %call4.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i.i) #10
  %prod.i.i.i = getelementptr inbounds %struct.qxl_ring_header, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %prod.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %prod.i.i.i, align 1
  %cons.i.i.i = getelementptr inbounds %struct.qxl_ring_header, ptr %53, i32 0, i32 3
  %56 = ptrtoint ptr %cons.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %cons.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp7.i.i.not.i = icmp eq i32 %55, %57
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i.i, i32 noundef %call4.i.i.i) #10
  br i1 %cmp7.i.i.not.i, label %if.then25.i.again.backedge_crit_edge, label %if.then.i.i

if.then25.i.again.backedge_crit_edge:             ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %again.backedge

if.then.i.i:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %58 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %58, ptr noundef %gc_work.i.i) #10
  %call5.i2.i = tail call zeroext i1 @flush_work(ptr noundef %gc_work.i.i) #10
  br label %again.backedge

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %surface_id = getelementptr inbounds %struct.qxl_bo, ptr %surf, i32 0, i32 14
  %59 = ptrtoint ptr %surface_id to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call, ptr %surface_id, align 8
  tail call void @_raw_spin_lock(ptr noundef %surf_id_idr_lock) #10
  %60 = ptrtoint ptr %last_alloced_surf_id.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call, ptr %last_alloced_surf_id.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %surf_id_idr_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %again.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ %call, %again.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_preload(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qxl_surface_id_dealloc(ptr noundef %qdev, i32 noundef %surface_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %surf_id_idr_lock = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 47
  tail call void @_raw_spin_lock(ptr noundef %surf_id_idr_lock) #10
  %surf_id_idr = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 46
  %call = tail call ptr @idr_remove(ptr noundef %surf_id_idr, i32 noundef %surface_id) #10
  tail call void @_raw_spin_unlock(ptr noundef %surf_id_idr_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qxl_hw_surface_alloc(ptr noundef %qdev, ptr noundef %surf) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca %struct.qxl_command, align 8
  %release = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %release) #10
  %0 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %release, align 4, !annotation !52
  %hw_surf_alloc = getelementptr inbounds %struct.qxl_bo, ptr %surf, i32 0, i32 11
  %1 = ptrtoint ptr %hw_surf_alloc to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %hw_surf_alloc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @qxl_alloc_surface_release_reserved(ptr noundef %qdev, i32 noundef 0, ptr noundef null, ptr noundef nonnull %release) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %release, align 4
  %call4 = call i32 @qxl_release_reserve_list(ptr noundef %3, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  %4 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %release, align 4
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  call void @qxl_release_free(ptr noundef %qdev, ptr noundef %5) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = call ptr @qxl_release_map(ptr noundef %qdev, ptr noundef %5) #10
  %type = getelementptr inbounds %struct.qxl_surface_cmd, ptr %call8, i32 0, i32 2
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %type, align 1
  %flags = getelementptr inbounds %struct.qxl_surface_cmd, ptr %call8, i32 0, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 1, ptr %flags, align 1
  %surf9 = getelementptr inbounds %struct.qxl_bo, ptr %surf, i32 0, i32 12
  %8 = ptrtoint ptr %surf9 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %surf9, align 1
  %u = getelementptr inbounds %struct.qxl_surface_cmd, ptr %call8, i32 0, i32 4
  %10 = ptrtoint ptr %u to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %u, align 1
  %width = getelementptr inbounds %struct.qxl_bo, ptr %surf, i32 0, i32 12, i32 1
  %11 = ptrtoint ptr %width to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %width, align 1
  %width13 = getelementptr inbounds %struct.qxl_surface_cmd, ptr %call8, i32 0, i32 4, i32 0, i32 1
  %13 = ptrtoint ptr %width13 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %width13, align 1
  %height = getelementptr inbounds %struct.qxl_bo, ptr %surf, i32 0, i32 12, i32 2
  %14 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %height, align 1
  %height16 = getelementptr inbounds %struct.qxl_surface_cmd, ptr %call8, i32 0, i32 4, i32 0, i32 2
  %16 = ptrtoint ptr %height16 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %height16, align 1
  %stride = getelementptr inbounds %struct.qxl_bo, ptr %surf, i32 0, i32 12, i32 3
  %17 = ptrtoint ptr %stride to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %stride, align 1
  %stride19 = getelementptr inbounds %struct.qxl_surface_cmd, ptr %call8, i32 0, i32 4, i32 0, i32 3
  %19 = ptrtoint ptr %stride19 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %stride19, align 1
  %resource.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %surf, i32 0, i32 6
  %20 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %resource.i, align 4
  %mem_type.i = getelementptr inbounds %struct.ttm_resource, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %mem_type.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mem_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp.i = icmp eq i32 %23, 2
  %main_slot.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 24
  %surfaces_slot.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 25
  %cond.i = select i1 %cmp.i, ptr %main_slot.i, ptr %surfaces_slot.i
  %high_bits.i = getelementptr inbounds %struct.qxl_memslot, ptr %cond.i, i32 0, i32 5
  %24 = ptrtoint ptr %high_bits.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %high_bits.i, align 8
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %21, align 4
  %shl.i = shl i32 %27, 12
  %conv.i = zext i32 %shl.i to i64
  %or.i = or i64 %25, %conv.i
  %data = getelementptr inbounds %struct.qxl_surface_cmd, ptr %call8, i32 0, i32 4, i32 0, i32 4
  %28 = ptrtoint ptr %data to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 %or.i, ptr %data, align 1
  %surface_id = getelementptr inbounds %struct.qxl_bo, ptr %surf, i32 0, i32 14
  %29 = ptrtoint ptr %surface_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %surface_id, align 8
  %surface_id22 = getelementptr inbounds %struct.qxl_surface_cmd, ptr %call8, i32 0, i32 1
  %31 = ptrtoint ptr %surface_id22 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %surface_id22, align 1
  %32 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %release, align 4
  call void @qxl_release_unmap(ptr noundef %qdev, ptr noundef %33, ptr noundef %call8) #10
  %34 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %release, align 4
  %surf_create = getelementptr inbounds %struct.qxl_bo, ptr %surf, i32 0, i32 15
  %36 = ptrtoint ptr %surf_create to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %surf_create, align 4
  call void @qxl_release_fence_buffer_objects(ptr noundef %35) #10
  %37 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %release, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd.i) #10
  %39 = getelementptr inbounds %struct.qxl_command, ptr %cmd.i, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 25769803775, ptr %39, align 8
  %release_bo.i = getelementptr inbounds %struct.qxl_release, ptr %38, i32 0, i32 3
  %41 = ptrtoint ptr %release_bo.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %release_bo.i, align 8
  %release_offset.i = getelementptr inbounds %struct.qxl_release, ptr %38, i32 0, i32 4
  %43 = ptrtoint ptr %release_offset.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %release_offset.i, align 4
  %resource.i.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %42, i32 0, i32 6
  %45 = ptrtoint ptr %resource.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %resource.i.i, align 4
  %mem_type.i.i = getelementptr inbounds %struct.ttm_resource, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %mem_type.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mem_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %48)
  %cmp.i.i = icmp eq i32 %48, 2
  %cond.i.i = select i1 %cmp.i.i, ptr %main_slot.i, ptr %surfaces_slot.i
  %high_bits.i.i = getelementptr inbounds %struct.qxl_memslot, ptr %cond.i.i, i32 0, i32 5
  %49 = ptrtoint ptr %high_bits.i.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %high_bits.i.i, align 8
  %51 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %46, align 4
  %shl.i.i = shl i32 %52, 12
  %add.i.i = add i32 %shl.i.i, %44
  %conv.i.i = zext i32 %add.i.i to i64
  %or.i.i = or i64 %50, %conv.i.i
  %53 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %or.i.i, ptr %cmd.i, align 8
  %command_ring.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 18
  %54 = ptrtoint ptr %command_ring.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %command_ring.i, align 4
  %call2.i = call i32 @qxl_ring_push(ptr noundef %55, ptr noundef nonnull %cmd.i, i1 noundef zeroext false) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd.i) #10
  %56 = ptrtoint ptr %hw_surf_alloc to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load25 = load i8, ptr %hw_surf_alloc, align 4
  %bf.set = or i8 %bf.load25, -128
  store i8 %bf.set, ptr %hw_surf_alloc, align 4
  %surf_id_idr_lock = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 47
  call void @_raw_spin_lock(ptr noundef %surf_id_idr_lock) #10
  %surf_id_idr = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 46
  %57 = ptrtoint ptr %surface_id to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %surface_id, align 8
  %call27 = call ptr @idr_replace(ptr noundef %surf_id_idr, ptr noundef %surf, i32 noundef %58) #10
  call void @_raw_spin_unlock(ptr noundef %surf_id_idr_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then6 ], [ 0, %if.end7 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %release) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_alloc_surface_release_reserved(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_release_reserve_list(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_release_fence_buffer_objects(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_replace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qxl_hw_surface_dealloc(ptr noundef %qdev, ptr nocapture noundef %surf) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca %struct.qxl_command, align 8
  %release = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %release) #10
  %0 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %release, align 4, !annotation !52
  %hw_surf_alloc = getelementptr inbounds %struct.qxl_bo, ptr %surf, i32 0, i32 11
  %1 = ptrtoint ptr %hw_surf_alloc to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %hw_surf_alloc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %surf_create = getelementptr inbounds %struct.qxl_bo, ptr %surf, i32 0, i32 15
  %2 = ptrtoint ptr %surf_create to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %surf_create, align 4
  %call = call i32 @qxl_alloc_surface_release_reserved(ptr noundef %qdev, i32 noundef 1, ptr noundef %3, ptr noundef nonnull %release) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %surf_create to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %surf_create, align 4
  %surf_id_idr_lock = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 47
  call void @_raw_spin_lock(ptr noundef %surf_id_idr_lock) #10
  %surf_id_idr = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 46
  %surface_id = getelementptr inbounds %struct.qxl_bo, ptr %surf, i32 0, i32 14
  %5 = ptrtoint ptr %surface_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %surface_id, align 8
  %call5 = call ptr @idr_replace(ptr noundef %surf_id_idr, ptr noundef null, i32 noundef %6) #10
  call void @_raw_spin_unlock(ptr noundef %surf_id_idr_lock) #10
  %7 = ptrtoint ptr %hw_surf_alloc to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load8 = load i8, ptr %hw_surf_alloc, align 4
  %bf.clear = and i8 %bf.load8, 127
  store i8 %bf.clear, ptr %hw_surf_alloc, align 4
  %8 = ptrtoint ptr %surface_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %surface_id, align 8
  store i32 0, ptr %surface_id, align 8
  %10 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %release, align 4
  %surface_release_id = getelementptr inbounds %struct.qxl_release, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %surface_release_id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %surface_release_id, align 8
  %call11 = call ptr @qxl_release_map(ptr noundef %qdev, ptr noundef %11) #10
  %type = getelementptr inbounds %struct.qxl_surface_cmd, ptr %call11, i32 0, i32 2
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %type, align 1
  %surface_id12 = getelementptr inbounds %struct.qxl_surface_cmd, ptr %call11, i32 0, i32 1
  %14 = ptrtoint ptr %surface_id12 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %9, ptr %surface_id12, align 1
  %15 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %release, align 4
  call void @qxl_release_unmap(ptr noundef %qdev, ptr noundef %16, ptr noundef %call11) #10
  %17 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %release, align 4
  call void @qxl_release_fence_buffer_objects(ptr noundef %18) #10
  %19 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %release, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd.i) #10
  %21 = getelementptr inbounds %struct.qxl_command, ptr %cmd.i, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 25769803775, ptr %21, align 8
  %release_bo.i = getelementptr inbounds %struct.qxl_release, ptr %20, i32 0, i32 3
  %23 = ptrtoint ptr %release_bo.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %release_bo.i, align 8
  %release_offset.i = getelementptr inbounds %struct.qxl_release, ptr %20, i32 0, i32 4
  %25 = ptrtoint ptr %release_offset.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %release_offset.i, align 4
  %resource.i.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %24, i32 0, i32 6
  %27 = ptrtoint ptr %resource.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %resource.i.i, align 4
  %mem_type.i.i = getelementptr inbounds %struct.ttm_resource, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %mem_type.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mem_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp.i.i = icmp eq i32 %30, 2
  %main_slot.i.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 24
  %surfaces_slot.i.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 25
  %cond.i.i = select i1 %cmp.i.i, ptr %main_slot.i.i, ptr %surfaces_slot.i.i
  %high_bits.i.i = getelementptr inbounds %struct.qxl_memslot, ptr %cond.i.i, i32 0, i32 5
  %31 = ptrtoint ptr %high_bits.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %high_bits.i.i, align 8
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %28, align 4
  %shl.i.i = shl i32 %34, 12
  %add.i.i = add i32 %shl.i.i, %26
  %conv.i.i = zext i32 %add.i.i to i64
  %or.i.i = or i64 %32, %conv.i.i
  %35 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %or.i.i, ptr %cmd.i, align 8
  %command_ring.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 18
  %36 = ptrtoint ptr %command_ring.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %command_ring.i, align 4
  %call2.i = call i32 @qxl_ring_push(ptr noundef %37, ptr noundef nonnull %cmd.i, i1 noundef zeroext false) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %release) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qxl_surface_evict(ptr noundef %qdev, ptr nocapture noundef %surf, i1 noundef zeroext %do_update_area) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %surf_evict_mutex = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 49
  tail call void @mutex_lock_nested(ptr noundef %surf_evict_mutex, i32 noundef 0) #10
  tail call fastcc void @qxl_surface_evict_locked(ptr noundef %qdev, ptr noundef %surf, i1 noundef zeroext %do_update_area)
  tail call void @mutex_unlock(ptr noundef %surf_evict_mutex) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qxl_surface_evict_locked(ptr noundef %qdev, ptr nocapture noundef %surf, i1 noundef zeroext %do_update_area) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %do_update_area, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %width.i = getelementptr inbounds %struct.qxl_bo, ptr %surf, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %width.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %width.i, align 1
  %height.i = getelementptr inbounds %struct.qxl_bo, ptr %surf, i32 0, i32 12, i32 2
  %2 = ptrtoint ptr %height.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %height.i, align 1
  %update_area_mutex.i.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 45
  %hw_surf_alloc.i.i = getelementptr inbounds %struct.qxl_bo, ptr %surf, i32 0, i32 11
  %is_primary.i.i = getelementptr inbounds %struct.qxl_bo, ptr %surf, i32 0, i32 8
  %surface_id6.i.i = getelementptr inbounds %struct.qxl_bo, ptr %surf, i32 0, i32 14
  %ram_header.i.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 20
  br label %retry.i

retry.i:                                          ; preds = %qxl_io_update_area.exit.i.retry.i_crit_edge, %if.then
  %4 = ptrtoint ptr %hw_surf_alloc.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i.i = load i8, ptr %hw_surf_alloc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.then.i.i, label %retry.i.if.end.i.i_crit_edge

retry.i.if.end.i.i_crit_edge:                     ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %retry.i.if.end.i.i_crit_edge
  %5 = ptrtoint ptr %is_primary.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load1.i.i = load i8, ptr %is_primary.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load1.i.i)
  %tobool4.not.i.i = icmp sgt i8 %bf.load1.i.i, -1
  br i1 %tobool4.not.i.i, label %if.else.i.i, label %if.end.i.i.lor.lhs.false11.i.i_crit_edge

if.end.i.i.lor.lhs.false11.i.i_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false11.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %surface_id6.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %surface_id6.i.i, align 8
  br label %lor.lhs.false11.i.i

lor.lhs.false11.i.i:                              ; preds = %if.else.i.i, %if.end.i.i.lor.lhs.false11.i.i_crit_edge
  %surface_id.0.i.i = phi i32 [ %7, %if.else.i.i ], [ 0, %if.end.i.i.lor.lhs.false11.i.i_crit_edge ]
  %8 = ptrtoint ptr %width.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %width.i, align 1
  %10 = ptrtoint ptr %height.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %height.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %9)
  %cmp12.i.i = icmp ugt i32 %1, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %11)
  %cmp14.i.i = icmp ugt i32 %3, %11
  %or.cond.i = select i1 %cmp12.i.i, i1 true, i1 %cmp14.i.i
  br i1 %or.cond.i, label %lor.lhs.false11.i.i.if.end_crit_edge, label %qxl_io_update_area.exit.i

lor.lhs.false11.i.i.if.end_crit_edge:             ; preds = %lor.lhs.false11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

qxl_io_update_area.exit.i:                        ; preds = %lor.lhs.false11.i.i
  tail call void @mutex_lock_nested(ptr noundef %update_area_mutex.i.i, i32 noundef 0) #10
  %12 = ptrtoint ptr %ram_header.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ram_header.i.i, align 4
  %update_area.i.i = getelementptr inbounds %struct.qxl_ram_header, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %update_area.i.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 0, ptr %update_area.i.i, align 1
  %rect.sroa.6.0.update_area.i.sroa_idx.i = getelementptr inbounds %struct.qxl_ram_header, ptr %13, i32 0, i32 10, i32 1
  %15 = ptrtoint ptr %rect.sroa.6.0.update_area.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 0, ptr %rect.sroa.6.0.update_area.i.sroa_idx.i, align 1
  %rect.sroa.9.0.update_area.i.sroa_idx.i = getelementptr inbounds %struct.qxl_ram_header, ptr %13, i32 0, i32 10, i32 2
  %16 = ptrtoint ptr %rect.sroa.9.0.update_area.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %3, ptr %rect.sroa.9.0.update_area.i.sroa_idx.i, align 1
  %rect.sroa.12.0.update_area.i.sroa_idx.i = getelementptr inbounds %struct.qxl_ram_header, ptr %13, i32 0, i32 10, i32 3
  %17 = ptrtoint ptr %rect.sroa.12.0.update_area.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %1, ptr %rect.sroa.12.0.update_area.i.sroa_idx.i, align 1
  %18 = load ptr, ptr %ram_header.i.i, align 4
  %update_surface.i.i = getelementptr inbounds %struct.qxl_ram_header, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %update_surface.i.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %surface_id.0.i.i, ptr %update_surface.i.i, align 1
  %call.i.i = tail call fastcc i32 @wait_for_io_cmd_user(ptr noundef %qdev, i8 noundef zeroext 0, i32 noundef 16, i1 noundef zeroext true) #10
  tail call void @mutex_unlock(ptr noundef %update_area_mutex.i.i) #10
  %cmp.i = icmp eq i32 %call.i.i, -512
  br i1 %cmp.i, label %qxl_io_update_area.exit.i.retry.i_crit_edge, label %qxl_io_update_area.exit.i.if.end_crit_edge

qxl_io_update_area.exit.i.if.end_crit_edge:       ; preds = %qxl_io_update_area.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

qxl_io_update_area.exit.i.retry.i_crit_edge:      ; preds = %qxl_io_update_area.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %retry.i

if.end:                                           ; preds = %qxl_io_update_area.exit.i.if.end_crit_edge, %lor.lhs.false11.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = tail call i32 @qxl_hw_surface_dealloc(ptr noundef %qdev, ptr noundef %surf)
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_release(ptr noundef %l) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !37) #10
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %2, %6
  br i1 %cmp.not, label %land.lhs.true.if.end35_crit_edge, label %do.end, !prof !58

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

do.end:                                           ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_locks_off() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end35_crit_edge, label %land.lhs.true5

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %7 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end35_crit_edge

land.lhs.true5.if.end35_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #10
  br label %if.end35

if.end35:                                         ; preds = %do.end19, %land.lhs.true5.if.end35_crit_edge, %do.end.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  %owner37 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner37, align 4
  br label %__here

__here:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef %l, i32 noundef ptrtoint (ptr blockaddress(@local_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_wait(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_move_to_lru_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !26, !27, !29, !30, !31, !32, !33, !34, !35}
!llvm.named.register.sp = !{!37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @qxl_ring_create.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/qxl/qxl_cmd.c", i32 82, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/qxl/qxl_cmd.c", i32 130, i32 11}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/qxl/qxl_cmd.c", i32 228, i32 3}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/qxl/qxl_cmd.c", i32 238, i32 4}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/qxl/qxl_cmd.c", i32 247, i32 5}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/qxl/qxl_cmd.c", i32 258, i32 2}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/qxl/qxl_cmd.c", i32 274, i32 3}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/qxl/qxl_cmd.c", i32 341, i32 3}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/qxl/qxl_cmd.c", i32 392, i32 2}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/qxl/qxl_cmd.c", i32 400, i32 2}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/qxl/qxl_cmd.c", i32 413, i32 2}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/linux/local_lock_internal.h", i32 36, i32 2}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/qxl/qxl_object.h", i32 39, i32 4}
!29 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @qxl_bo_reserve._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @qxl_bo_reserve._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = distinct !{null, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
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
!47 = !{i64 2156703666}
!48 = !{i64 598851}
!49 = !{i64 2156707379}
!50 = !{i64 2156707595}
!51 = !{i64 4222858}
!52 = !{!"auto-init"}
!53 = !{i64 2156713050}
!54 = !{i64 2156717768}
!55 = !{i64 2156718145}
!56 = !{i64 2148293169}
!57 = !{i64 2148207633, i64 2148207665, i64 2148207694, i64 2148207728, i64 2148207759, i64 2148207782}
!58 = !{!"branch_weights", i32 2000, i32 1}
!59 = !{i64 2149571887}
!60 = !{i64 2148205168, i64 2148205200, i64 2148205229, i64 2148205263, i64 2148205294, i64 2148205317}
!61 = !{!"branch_weights", i32 1, i32 2000}
!62 = !{i64 2156719306}
!63 = !{i64 2152449329}
!64 = !{!"branch_weights", i32 1, i32 4000, i32 1}
