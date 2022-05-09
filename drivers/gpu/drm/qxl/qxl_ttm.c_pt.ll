; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/qxl/qxl_ttm.c_pt.bc'
source_filename = "../drivers/gpu/drm/qxl/qxl_ttm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ttm_device_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_info_list = type { ptr, ptr, i32, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.qxl_device = type { %struct.drm_device, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.qxl_mman, %struct.qxl_gem, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.qxl_memslot, %struct.qxl_memslot, %struct.spinlock, %struct.idr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.spinlock, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, [32 x %struct.qxl_debugfs], i32, %struct.mutex, %struct.idr, %struct.spinlock, i32, %struct.mutex, ptr, ptr, %struct.mutex, [3 x ptr], [3 x i32], %struct.work_struct, ptr, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.76, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.86, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.76 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.anon.86 = type { i32, ptr }
%struct.qxl_mman = type { %struct.ttm_device }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.87] }
%struct.anon.87 = type { [12 x %struct.ttm_pool_type] }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.77, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.78, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.79, ptr, %struct.address_space, %struct.list_head, %union.anon.80, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.78 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.79 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.80 = type { ptr }
%struct.qxl_rom = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8, i8, i8, i8, i8, [58 x i8], i32, %struct.anon.92 }
%struct.anon.92 = type { i16, i16, [64 x %struct.qxl_urect] }
%struct.qxl_urect = type { i32, i32, i32, i32 }
%struct.drm_printer = type { ptr, ptr, ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_info_node = type { ptr, ptr, %struct.list_head, ptr }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.qxl_bo = type <{ %struct.ttm_buffer_object, %struct.list_head, [3 x %struct.ttm_place], %struct.ttm_placement, %struct.dma_buf_map, ptr, i32, i32, i8, [3 x i8], ptr, i8, %struct.qxl_surface, [3 x i8], i32, ptr }>
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.dma_buf_map = type { %union.anon.84, i8 }
%union.anon.84 = type { ptr }
%struct.qxl_surface = type { i32, i32, i32, i32, i64 }
%struct.ttm_operation_ctx = type { i8, i8, i8, i8, i8, ptr, i64 }

@qxl_bo_driver = internal global { %struct.ttm_device_funcs, [36 x i8] } { %struct.ttm_device_funcs { ptr @qxl_ttm_tt_create, ptr null, ptr null, ptr @qxl_ttm_backend_destroy, ptr @ttm_bo_eviction_valuable, ptr @qxl_evict_flags, ptr @qxl_bo_move, ptr @qxl_bo_delete_mem_notify, ptr null, ptr @qxl_ttm_io_mem_reserve, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed initializing buffer object driver(%d).\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed initializing VRAM heap.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed initializing Surfaces heap.\0A\00", [60 x i8] zeroinitializer }, align 32
@qxl_ttm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016[drm] qxl: %uM of VRAM memory size\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qxl_ttm_init\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/qxl/qxl_ttm.c\00", [34 x i8] zeroinitializer }, align 32
@qxl_ttm_init._entry_ptr = internal global ptr @qxl_ttm_init._entry, section ".printk_index", align 4
@qxl_ttm_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016[drm] qxl: %luM of IO pages memory ready (VRAM domain)\0A\00", [38 x i8] zeroinitializer }, align 32
@qxl_ttm_init._entry_ptr.8 = internal global ptr @qxl_ttm_init._entry.6, section ".printk_index", align 4
@qxl_ttm_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016[drm] qxl: %uM of Surface memory size\0A\00", [55 x i8] zeroinitializer }, align 32
@qxl_ttm_init._entry_ptr.11 = internal global ptr @qxl_ttm_init._entry.9, section ".printk_index", align 4
@qxl_ttm_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.5, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016[drm] qxl: ttm finalized\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qxl_ttm_fini\00", [19 x i8] zeroinitializer }, align 32
@qxl_ttm_fini._entry_ptr = internal global ptr @qxl_ttm_fini._entry, section ".printk_index", align 4
@qxl_ttm_debugfs_init.qxl_mem_types_list = internal global { [2 x %struct.drm_info_list], [32 x i8] } zeroinitializer, align 32
@qxl_ttm_debugfs_init.qxl_mem_types_names = internal global { [2 x [32 x i8]], [32 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qxl_mem_mm\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qxl_surf_mm\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@qxl_evict_flags.placements = internal constant { %struct.ttm_place, [16 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"include/drm/ttm/ttm_bo_driver.h\00", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@___asan_gen_.17 = private unnamed_addr constant [14 x i8] c"qxl_bo_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 164, i32 32 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 192, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 199, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 205, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 208, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 210, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 212, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 222, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [19 x i8] c"qxl_mem_types_list\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 242, i32 30 }
@___asan_gen_.65 = private unnamed_addr constant [20 x i8] c"qxl_mem_types_names\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 243, i32 14 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 248, i32 36 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 250, i32 36 }
@___asan_gen_.74 = private unnamed_addr constant [11 x i8] c"placements\00", align 1
@___asan_gen_.75 = private constant [33 x i8] c"../drivers/gpu/drm/qxl/qxl_ttm.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 54, i32 32 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [35 x i8] c"../include/drm/ttm/ttm_bo_driver.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 192, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @qxl_ttm_fini._entry, ptr @qxl_ttm_fini._entry_ptr, ptr @qxl_ttm_init._entry, ptr @qxl_ttm_init._entry.6, ptr @qxl_ttm_init._entry.9, ptr @qxl_ttm_init._entry_ptr, ptr @qxl_ttm_init._entry_ptr.11, ptr @qxl_ttm_init._entry_ptr.8, ptr @qxl_bo_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @qxl_ttm_debugfs_init.qxl_mem_types_list, ptr @qxl_ttm_debugfs_init.qxl_mem_types_names, ptr @.str.14, ptr @.str.15, ptr @qxl_evict_flags.placements, ptr @.str.16], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_bo_driver to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_ttm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_ttm_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_ttm_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_ttm_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_ttm_debugfs_init.qxl_mem_types_list to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_ttm_debugfs_init.qxl_mem_types_names to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_evict_flags.placements to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @qxl_ttm_io_mem_reserve(ptr nocapture noundef readonly %bdev, ptr nocapture noundef %mem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %mem, i32 0, i32 2
  %0 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mem_type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %sw.default [
    i32 0, label %entry.cleanup_crit_edge
    i32 2, label %sw.bb1
    i32 3, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %is_iomem = getelementptr inbounds %struct.ttm_resource, ptr %mem, i32 0, i32 4, i32 2
  %3 = ptrtoint ptr %is_iomem to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %is_iomem, align 4
  %4 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mem, align 4
  %shl = shl i32 %5, 12
  %vram_base = getelementptr i8, ptr %bdev, i32 -52
  %6 = ptrtoint ptr %vram_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vram_base, align 4
  %add = add i32 %shl, %7
  %offset = getelementptr inbounds %struct.ttm_resource, ptr %mem, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %offset, align 4
  %caching = getelementptr inbounds %struct.ttm_resource, ptr %mem, i32 0, i32 4, i32 3
  %9 = ptrtoint ptr %caching to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %caching, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %is_iomem6 = getelementptr inbounds %struct.ttm_resource, ptr %mem, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %is_iomem6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %is_iomem6, align 4
  %11 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mem, align 4
  %shl8 = shl i32 %12, 12
  %surfaceram_base = getelementptr i8, ptr %bdev, i32 -44
  %13 = ptrtoint ptr %surfaceram_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %surfaceram_base, align 4
  %add9 = add i32 %shl8, %14
  %offset11 = getelementptr inbounds %struct.ttm_resource, ptr %mem, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %offset11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add9, ptr %offset11, align 4
  %caching13 = getelementptr inbounds %struct.ttm_resource, ptr %mem, i32 0, i32 4, i32 3
  %16 = ptrtoint ptr %caching13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %caching13, align 4
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb4, %sw.bb1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ %1, %entry.cleanup_crit_edge ], [ 0, %sw.bb4 ], [ 0, %sw.bb1 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qxl_ttm_init(ptr noundef %qdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mman = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 14
  %anon_inode = getelementptr inbounds %struct.drm_device, ptr %qdev, i32 0, i32 12
  %0 = ptrtoint ptr %anon_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %anon_inode, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_mapping, align 8
  %vma_offset_manager = getelementptr inbounds %struct.drm_device, ptr %qdev, i32 0, i32 33
  %4 = ptrtoint ptr %vma_offset_manager to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vma_offset_manager, align 4
  %call = tail call i32 @ttm_device_init(ptr noundef %mman, ptr noundef nonnull @qxl_bo_driver, ptr noundef null, ptr noundef %3, ptr noundef %5, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %call) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %rom = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 7
  %6 = ptrtoint ptr %rom to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rom, align 4
  %ram_header_offset = getelementptr inbounds %struct.qxl_rom, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %ram_header_offset to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %ram_header_offset, align 1
  %div43 = lshr i32 %9, 12
  %call.i.i = tail call i32 @ttm_range_man_init_nocheck(ptr noundef %mman, i32 noundef 2, i1 noundef zeroext false, i32 noundef %div43) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %surfaceram_size = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 4
  %10 = ptrtoint ptr %surfaceram_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %surfaceram_size, align 8
  %div644 = lshr i32 %11, 12
  %call.i.i49 = tail call i32 @ttm_range_man_init_nocheck(ptr noundef %mman, i32 noundef 3, i1 noundef zeroext false, i32 noundef %div644) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i49)
  %tobool9.not = icmp eq i32 %call.i.i49, 0
  br i1 %tobool9.not, label %do.end, label %if.then10

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #6
  br label %cleanup

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %vram_size = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 2
  %12 = ptrtoint ptr %vram_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vram_size, align 8
  %div1245 = lshr i32 %13, 20
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %div1245) #9
  %div1846 = lshr i32 %9, 20
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %div1846) #9
  %14 = ptrtoint ptr %surfaceram_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %surfaceram_size, align 8
  %div2547 = lshr i32 %15, 20
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %div2547) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then10, %if.then4, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call.i.i, %if.then4 ], [ %call.i.i49, %if.then10 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_device_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qxl_ttm_fini(ptr noundef %qdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mman = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 14
  %call.i = tail call i32 @ttm_range_man_fini_nocheck(ptr noundef %mman, i32 noundef 2) #6
  %call.i9 = tail call i32 @ttm_range_man_fini_nocheck(ptr noundef %mman, i32 noundef 3) #6
  tail call void @ttm_device_fini(ptr noundef %mman) #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_device_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qxl_ttm_debugfs_init(ptr noundef %qdev) local_unnamed_addr #2 align 64 {
for.inc.1:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i39 = getelementptr %struct.qxl_device, ptr %qdev, i32 0, i32 14, i32 0, i32 3, i32 3
  %arrayidx.i = getelementptr %struct.qxl_device, ptr %qdev, i32 0, i32 14, i32 0, i32 3, i32 2
  %0 = call ptr @memcpy(ptr @qxl_ttm_debugfs_init.qxl_mem_types_names, ptr @.str.14, i32 11)
  store ptr @qxl_ttm_debugfs_init.qxl_mem_types_names, ptr @qxl_ttm_debugfs_init.qxl_mem_types_list, align 4
  store ptr @qxl_mm_dump_table, ptr getelementptr inbounds ([2 x %struct.drm_info_list], ptr @qxl_ttm_debugfs_init.qxl_mem_types_list, i32 0, i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds ([2 x %struct.drm_info_list], ptr @qxl_ttm_debugfs_init.qxl_mem_types_list, i32 0, i32 0, i32 2), align 4
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 4
  store ptr %2, ptr getelementptr inbounds ([2 x %struct.drm_info_list], ptr @qxl_ttm_debugfs_init.qxl_mem_types_list, i32 0, i32 0, i32 3), align 4
  %3 = call ptr @memcpy(ptr getelementptr inbounds ([2 x [32 x i8]], ptr @qxl_ttm_debugfs_init.qxl_mem_types_names, i32 0, i32 1), ptr @.str.15, i32 12)
  store ptr getelementptr inbounds ([2 x [32 x i8]], ptr @qxl_ttm_debugfs_init.qxl_mem_types_names, i32 0, i32 1), ptr getelementptr inbounds ([2 x %struct.drm_info_list], ptr @qxl_ttm_debugfs_init.qxl_mem_types_list, i32 0, i32 1), align 4
  store ptr @qxl_mm_dump_table, ptr getelementptr inbounds ([2 x %struct.drm_info_list], ptr @qxl_ttm_debugfs_init.qxl_mem_types_list, i32 0, i32 1, i32 1), align 4
  store i32 0, ptr getelementptr inbounds ([2 x %struct.drm_info_list], ptr @qxl_ttm_debugfs_init.qxl_mem_types_list, i32 0, i32 1, i32 2), align 4
  %4 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i39, align 4
  store ptr %5, ptr getelementptr inbounds ([2 x %struct.drm_info_list], ptr @qxl_ttm_debugfs_init.qxl_mem_types_list, i32 0, i32 1, i32 3), align 4
  tail call void @qxl_debugfs_add_files(ptr noundef %qdev, ptr noundef nonnull @qxl_ttm_debugfs_init.qxl_mem_types_list, i32 noundef 2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qxl_mm_dump_table(ptr noundef %m, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  %p = alloca %struct.drm_printer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %info_ent = getelementptr inbounds %struct.drm_info_node, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %info_ent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info_ent, align 4
  %data1 = getelementptr inbounds %struct.drm_info_list, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %p) #6
  %6 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 1
  %7 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 2
  %8 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 3
  %9 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @__drm_printfn_seq_file, ptr %p, align 4, !alias.scope !48
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @__drm_puts_seq_file, ptr %6, align 4, !alias.scope !48
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %m, ptr %7, align 4, !alias.scope !48
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %8, align 4, !alias.scope !48
  call void @ttm_resource_manager_debug(ptr noundef %5, ptr noundef nonnull %p) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %p) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_debugfs_add_files(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qxl_ttm_tt_create(ptr noundef %bo, i32 noundef %page_flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ttm_tt_init(ptr noundef nonnull %call7.i.i, ptr noundef %bo, i32 noundef %page_flags, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then2 ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qxl_ttm_backend_destroy(ptr nocapture noundef readnone %bdev, ptr noundef %ttm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ttm_tt_fini(ptr noundef %ttm) #6
  tail call void @kfree(ptr noundef %ttm) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ttm_bo_eviction_valuable(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qxl_evict_flags(ptr noundef %bo, ptr nocapture noundef writeonly %placement) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @qxl_ttm_bo_is_qxl_bo(ptr noundef %bo) #6
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %placement1 = getelementptr inbounds %struct.ttm_placement, ptr %placement, i32 0, i32 1
  %0 = ptrtoint ptr %placement1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @qxl_evict_flags.placements, ptr %placement1, align 4
  %busy_placement = getelementptr inbounds %struct.ttm_placement, ptr %placement, i32 0, i32 3
  %1 = ptrtoint ptr %busy_placement to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @qxl_evict_flags.placements, ptr %busy_placement, align 4
  %2 = ptrtoint ptr %placement to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %placement, align 4
  %num_busy_placement = getelementptr inbounds %struct.ttm_placement, ptr %placement, i32 0, i32 2
  %3 = ptrtoint ptr %num_busy_placement to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %num_busy_placement, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @qxl_ttm_placement_from_domain(ptr noundef %bo, i32 noundef 0) #6
  %placement2 = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 3
  %4 = call ptr @memcpy(ptr %placement, ptr %placement2, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qxl_bo_move(ptr noundef %bo, i1 noundef zeroext %evict, ptr noundef %ctx, ptr noundef %new_mem, ptr nocapture noundef readnone %hop) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 6
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resource, align 4
  %call.i = tail call zeroext i1 @qxl_ttm_bo_is_qxl_bo(ptr noundef %bo) #6
  br i1 %call.i, label %lor.lhs.false.i, label %entry.qxl_bo_move_notify.exit_crit_edge

entry.qxl_bo_move_notify.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %qxl_bo_move_notify.exit

lor.lhs.false.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %lor.lhs.false.i.qxl_bo_move_notify.exit_crit_edge, label %if.end.i

lor.lhs.false.i.qxl_bo_move_notify.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qxl_bo_move_notify.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %dev.i = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 2
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 8
  %mem_type.i = getelementptr inbounds %struct.ttm_resource, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %mem_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mem_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp.i = icmp eq i32 %7, 3
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.qxl_bo_move_notify.exit_crit_edge

if.end.i.qxl_bo_move_notify.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qxl_bo_move_notify.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %surface_id.i = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 14
  %8 = ptrtoint ptr %surface_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %surface_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not.i = icmp eq i32 %9, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.qxl_bo_move_notify.exit_crit_edge, label %if.then6.i

land.lhs.true.i.qxl_bo_move_notify.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qxl_bo_move_notify.exit

if.then6.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %tobool7.i = icmp ne ptr %new_mem, null
  tail call void @qxl_surface_evict(ptr noundef %5, ptr noundef %bo, i1 noundef zeroext %tobool7.i) #6
  br label %qxl_bo_move_notify.exit

qxl_bo_move_notify.exit:                          ; preds = %if.then6.i, %land.lhs.true.i.qxl_bo_move_notify.exit_crit_edge, %if.end.i.qxl_bo_move_notify.exit_crit_edge, %lor.lhs.false.i.qxl_bo_move_notify.exit_crit_edge, %entry.qxl_bo_move_notify.exit_crit_edge
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ctx, align 8, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.i = icmp ne i8 %11, 0
  %no_wait_gpu.i = getelementptr inbounds %struct.ttm_operation_ctx, ptr %ctx, i32 0, i32 1
  %12 = ptrtoint ptr %no_wait_gpu.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %no_wait_gpu.i, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool1.i = icmp ne i8 %13, 0
  %call.i15 = tail call i32 @ttm_bo_wait(ptr noundef %bo, i1 noundef zeroext %tobool.i, i1 noundef zeroext %tobool1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %tobool.not = icmp eq i32 %call.i15, 0
  br i1 %tobool.not, label %if.end, label %qxl_bo_move_notify.exit.cleanup_crit_edge

qxl_bo_move_notify.exit.cleanup_crit_edge:        ; preds = %qxl_bo_move_notify.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %qxl_bo_move_notify.exit
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %ttm = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 7
  %16 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ttm, align 8
  %cmp1 = icmp eq ptr %17, null
  br i1 %cmp1, label %if.then2, label %land.lhs.true.if.end3_crit_edge

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then2:                                         ; preds = %land.lhs.true
  tail call void @ttm_resource_free(ptr noundef %bo, ptr noundef %resource) #6
  %18 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %resource, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %if.then2.ttm_bo_move_null.exit_crit_edge, label %do.end.i.i, !prof !52

if.then2.ttm_bo_move_null.exit_crit_edge:         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %ttm_bo_move_null.exit

do.end.i.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 192, i32 noundef 9, ptr noundef null) #6
  br label %ttm_bo_move_null.exit

ttm_bo_move_null.exit:                            ; preds = %do.end.i.i, %if.then2.ttm_bo_move_null.exit_crit_edge
  %20 = ptrtoint ptr %resource to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %new_mem, ptr %resource, align 4
  br label %cleanup

if.end3:                                          ; preds = %land.lhs.true.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %call4 = tail call i32 @ttm_bo_move_memcpy(ptr noundef %bo, ptr noundef %ctx, ptr noundef %new_mem) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %ttm_bo_move_null.exit, %qxl_bo_move_notify.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ttm_bo_move_null.exit ], [ %call4, %if.end3 ], [ %call.i15, %qxl_bo_move_notify.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qxl_bo_delete_mem_notify(ptr noundef %bo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @qxl_ttm_bo_is_qxl_bo(ptr noundef %bo) #6
  br i1 %call.i, label %lor.lhs.false.i, label %entry.qxl_bo_move_notify.exit_crit_edge

entry.qxl_bo_move_notify.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %qxl_bo_move_notify.exit

lor.lhs.false.i:                                  ; preds = %entry
  %resource.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 6
  %0 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resource.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %lor.lhs.false.i.qxl_bo_move_notify.exit_crit_edge, label %if.end.i

lor.lhs.false.i.qxl_bo_move_notify.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qxl_bo_move_notify.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %dev.i = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 8
  %mem_type.i = getelementptr inbounds %struct.ttm_resource, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %mem_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mem_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.i = icmp eq i32 %5, 3
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.qxl_bo_move_notify.exit_crit_edge

if.end.i.qxl_bo_move_notify.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qxl_bo_move_notify.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %surface_id.i = getelementptr inbounds %struct.qxl_bo, ptr %bo, i32 0, i32 14
  %6 = ptrtoint ptr %surface_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %surface_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not.i = icmp eq i32 %7, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.qxl_bo_move_notify.exit_crit_edge, label %if.then6.i

land.lhs.true.i.qxl_bo_move_notify.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qxl_bo_move_notify.exit

if.then6.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @qxl_surface_evict(ptr noundef %3, ptr noundef %bo, i1 noundef zeroext false) #6
  br label %qxl_bo_move_notify.exit

qxl_bo_move_notify.exit:                          ; preds = %if.then6.i, %land.lhs.true.i.qxl_bo_move_notify.exit_crit_edge, %if.end.i.qxl_bo_move_notify.exit_crit_edge, %lor.lhs.false.i.qxl_bo_move_notify.exit_crit_edge, %entry.qxl_bo_move_notify.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_tt_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_tt_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qxl_ttm_bo_is_qxl_bo(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_ttm_placement_from_domain(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_move_memcpy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_surface_evict(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_wait(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_resource_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_range_man_init_nocheck(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_range_man_fini_nocheck(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_resource_manager_debug(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_printfn_seq_file(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_puts_seq_file(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27, !29, !31, !33, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/qxl/qxl_ttm.c", i32 192, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/qxl/qxl_ttm.c", i32 199, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/qxl/qxl_ttm.c", i32 205, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/qxl/qxl_ttm.c", i32 208, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @qxl_ttm_init._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @qxl_ttm_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/qxl/qxl_ttm.c", i32 210, i32 2}
!14 = !{ptr @qxl_ttm_init._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @qxl_ttm_init._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/qxl/qxl_ttm.c", i32 212, i32 2}
!18 = !{ptr @qxl_ttm_init._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @qxl_ttm_init._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/qxl/qxl_ttm.c", i32 222, i32 2}
!22 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @qxl_ttm_fini._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @qxl_ttm_fini._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @qxl_ttm_debugfs_init.qxl_mem_types_list, !26, !"qxl_mem_types_list", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/qxl/qxl_ttm.c", i32 242, i32 30}
!27 = !{ptr @qxl_ttm_debugfs_init.qxl_mem_types_names, !28, !"qxl_mem_types_names", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/qxl/qxl_ttm.c", i32 243, i32 14}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/qxl/qxl_ttm.c", i32 248, i32 36}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/qxl/qxl_ttm.c", i32 250, i32 36}
!33 = !{ptr @qxl_bo_driver, !34, !"qxl_bo_driver", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/qxl/qxl_ttm.c", i32 164, i32 32}
!35 = !{ptr @qxl_evict_flags.placements, !36, !"placements", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/qxl/qxl_ttm.c", i32 54, i32 32}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 192, i32 2}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!49}
!49 = distinct !{!49, !50, !"drm_seq_file_printer: %agg.result"}
!50 = distinct !{!50, !"drm_seq_file_printer"}
!51 = !{i8 0, i8 2}
!52 = !{!"branch_weights", i32 2000, i32 1}
