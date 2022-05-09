; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/vc4/vc4_bo.c_pt.bc'
source_filename = "../drivers/gpu/drm/vc4/vc4_bo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_gem_object_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.vc4_dev = type { %struct.drm_device, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.vc4_bo_cache, i32, ptr, %struct.mutex, %struct.anon.90, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct, ptr, %struct.list_head, ptr, i32, i32, i32, %struct.atomic_t, %struct.work_struct, i32, i8, %struct.mutex, %struct.anon.91, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.drm_private_obj, %struct.drm_private_obj, %struct.list_head, %struct.mutex, %struct.kref }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.86, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.86 = type { i32, ptr }
%struct.vc4_bo_cache = type { ptr, i32, %struct.list_head, %struct.work_struct, %struct.timer_list }
%struct.anon.90 = type { %struct.list_head, i32, i32, i32, i32, %struct.mutex }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.91 = type { %struct.timer_list, %struct.work_struct }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.vc4_bo = type { %struct.drm_gem_cma_object, i64, i64, i8, %struct.list_head, i32, %struct.list_head, ptr, i32, %struct.refcount_struct, i32, %struct.mutex }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
%struct.vc4_label = type { ptr, i32, i32 }
%struct.drm_printer = type { ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.79, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.80, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.81, ptr, %struct.address_space, %struct.list_head, %union.anon.82, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.79 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.80 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.81 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.82 = type { ptr }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.vc4_file = type { %struct.anon.92, i8 }
%struct.anon.92 = type { %struct.idr, %struct.mutex }
%struct.drm_vc4_create_bo = type { i32, i32, i32, i32 }
%struct.drm_vc4_mmap_bo = type { i32, i32, i64 }
%struct.drm_vc4_create_shader_bo = type { i32, i32, i64, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.drm_vc4_set_tiling = type { i32, i32, i64 }
%struct.drm_vc4_get_tiling = type { i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.drm_vc4_label_bo = type { i32, i32, i64 }
%struct.vc4_validated_shader_info = type { i32, i32, i32, ptr, i32, ptr, i8 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }

@vc4_create_object.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&bo->madv_lock\00", [17 x i8] zeroinitializer }, align 32
@vc4_gem_object_funcs = internal constant { %struct.drm_gem_object_funcs, [48 x i8] } { %struct.drm_gem_object_funcs { ptr @vc4_free_object, ptr null, ptr null, ptr null, ptr @vc4_prime_export, ptr null, ptr null, ptr @drm_gem_cma_object_get_sg_table, ptr @drm_gem_cma_object_vmap, ptr null, ptr @vc4_gem_object_mmap, ptr @vc4_vm_ops }, [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to allocate from CMA:\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to look up GEM BO %d\0A\00", [35 x i8] zeroinitializer }, align 32
@vc4_create_shader_bo_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 823, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016[drm] Unknown flags set: 0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vc4_create_shader_bo_ioctl\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/gpu/drm/vc4/vc4_bo.c\00", [35 x i8] zeroinitializer }, align 32
@vc4_create_shader_bo_ioctl._entry_ptr = internal global ptr @vc4_create_shader_bo_ioctl._entry, section ".printk_index", align 4
@vc4_create_shader_bo_ioctl._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 828, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016[drm] Pad set: 0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@vc4_create_shader_bo_ioctl._entry_ptr.8 = internal global ptr @vc4_create_shader_bo_ioctl._entry.6, section ".printk_index", align 4
@vc4_bo_cache_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&vc4->bo_lock\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bo_stats\00", [23 x i8] zeroinitializer }, align 32
@vc4_bo_cache_init.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&vc4->bo_cache.time_work)\00", [52 x i8] zeroinitializer }, align 32
@vc4_bo_cache_init.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(&vc4->bo_cache.time_timer)\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vc4_bo_cache_destroy\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%30s: %6dkb BOs (%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%30s: %6zdkb BOs (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"userspace BO cache\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"total purged BO\00", [16 x i8] zeroinitializer }, align 32
@vc4_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr @drm_gem_vm_open, ptr @drm_gem_vm_close, ptr null, ptr null, ptr null, ptr @vc4_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Attempting to export shader BO\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to increment BO usecnt\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"mmaping of shader BOs for writing not allowed.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mmaping of %s BO not allowed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"purgeable\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"purged\00", [25 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kernel\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"V3D\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"V3D shader\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dumb\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"binner\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RCL\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BCL\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"kernel BO cache\00", [16 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.37 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Destroying BO cache with %d %s BOs still allocated\0A\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 504403158265495553]
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 398, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [21 x i8] c"vc4_gem_object_funcs\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 732, i32 42 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 457, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 795, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 823, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 828, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 973, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 975, i32 28 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 979, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 980, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 982, i32 9 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 50, i32 17 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 58, i32 17 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 58, i32 44 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 62, i32 44 }
@___asan_gen_.107 = private unnamed_addr constant [11 x i8] c"vc4_vm_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 726, i32 42 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 669, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 680, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 712, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 717, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 230, i32 6 }
@___asan_gen_.132 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 214, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 156, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 27, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 28, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 29, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 30, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 31, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 32, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 33, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 34, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.162 = private constant [32 x i8] c"../drivers/gpu/drm/vc4/vc4_bo.c\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 997, i32 4 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @vc4_create_shader_bo_ioctl._entry, ptr @vc4_create_shader_bo_ioctl._entry.6, ptr @vc4_create_shader_bo_ioctl._entry_ptr, ptr @vc4_create_shader_bo_ioctl._entry_ptr.8, ptr @vc4_create_object.__key, ptr @.str, ptr @vc4_gem_object_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @vc4_bo_cache_init.__key, ptr @.str.9, ptr @.str.10, ptr @vc4_bo_cache_init.__key.11, ptr @.str.12, ptr @vc4_bo_cache_init.__key.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @vc4_vm_ops, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_create_object.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_gem_object_funcs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_create_shader_bo_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_create_shader_bo_ioctl._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_bo_cache_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_bo_cache_init.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_bo_cache_init.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vc4_bo_add_to_purgeable_pool(ptr noundef %bo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %purgeable = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 12
  %lock = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 12, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %size_head = getelementptr inbounds %struct.vc4_bo, ptr %bo, i32 0, i32 6
  %prev.i = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 12, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %size_head, ptr noundef %3, ptr noundef %purgeable) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %size_head, ptr %prev.i, align 4
  %5 = ptrtoint ptr %size_head to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %purgeable, ptr %size_head, align 4
  %prev3.i.i = getelementptr inbounds %struct.vc4_bo, ptr %bo, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %size_head, ptr %3, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %num = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num, align 8
  %inc = add i32 %9, 1
  store i32 %inc, ptr %num, align 8
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 5
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 8
  %size7 = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 12, i32 2
  %12 = ptrtoint ptr %size7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size7, align 4
  %add = add i32 %13, %11
  store i32 %add, ptr %size7, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vc4_bo_remove_from_purgeable_pool(ptr noundef %bo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %lock = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 12, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %size_head.i = getelementptr inbounds %struct.vc4_bo, ptr %bo, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %size_head.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.vc4_bo_remove_from_purgeable_pool_locked.exit_crit_edge

entry.vc4_bo_remove_from_purgeable_pool_locked.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %vc4_bo_remove_from_purgeable_pool_locked.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.vc4_bo, ptr %bo, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %size_head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %size_head.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %vc4_bo_remove_from_purgeable_pool_locked.exit

vc4_bo_remove_from_purgeable_pool_locked.exit:    ; preds = %if.end.i.i.i, %entry.vc4_bo_remove_from_purgeable_pool_locked.exit_crit_edge
  %10 = ptrtoint ptr %size_head.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %size_head.i, ptr %size_head.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.vc4_bo, ptr %bo, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %size_head.i, ptr %prev.i3.i.i, align 4
  %num.i = getelementptr inbounds %struct.vc4_dev, ptr %3, i32 0, i32 12, i32 1
  %12 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num.i, align 8
  %dec.i = add i32 %13, -1
  store i32 %dec.i, ptr %num.i, align 8
  %size.i = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 5
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i, align 8
  %size5.i = getelementptr inbounds %struct.vc4_dev, ptr %3, i32 0, i32 12, i32 2
  %16 = ptrtoint ptr %size5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size5.i, align 4
  %sub.i = sub i32 %17, %15
  store i32 %sub.i, ptr %size5.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vc4_create_object(ptr noundef %dev, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 520) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %madv = getelementptr inbounds %struct.vc4_bo, ptr %call7.i.i, i32 0, i32 10
  %1 = ptrtoint ptr %madv to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %madv, align 4
  %usecnt = getelementptr inbounds %struct.vc4_bo, ptr %call7.i.i, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #12
  %2 = ptrtoint ptr %usecnt to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %usecnt, align 8
  %madv_lock = getelementptr inbounds %struct.vc4_bo, ptr %call7.i.i, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %madv_lock, ptr noundef nonnull @.str, ptr noundef nonnull @vc4_create_object.__key) #12
  %bo_lock = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %bo_lock, i32 noundef 0) #12
  %label = getelementptr inbounds %struct.vc4_bo, ptr %call7.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %label to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %label, align 4
  %bo_labels = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 10
  %4 = ptrtoint ptr %bo_labels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bo_labels, align 8
  %num_allocated = getelementptr inbounds %struct.vc4_label, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %num_allocated to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_allocated, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %num_allocated, align 4
  %8 = load ptr, ptr %bo_labels, align 8
  %size_allocated = getelementptr inbounds %struct.vc4_label, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %size_allocated to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size_allocated, align 4
  %add = add i32 %10, %size
  store i32 %add, ptr %size_allocated, align 4
  tail call void @mutex_unlock(ptr noundef %bo_lock) #12
  %funcs = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i, i32 0, i32 11
  %11 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @vc4_gem_object_funcs, ptr %funcs, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vc4_bo_create(ptr noundef %dev, i32 noundef %unaligned_size, i1 noundef zeroext %allow_unzeroed, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %p = alloca %struct.drm_printer, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %unaligned_size, 4095
  %div58 = and i32 %add, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div58)
  %cmp = icmp eq i32 %div58, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %div1.i.i = lshr i32 %add, 12
  %sub.i.i = add nsw i32 %div1.i.i, -1
  %bo_lock.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %bo_lock.i, i32 noundef 0) #12
  %size_list_size.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %size_list_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size_list_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %1)
  %cmp.not.i = icmp ult i32 %sub.i.i, %1
  br i1 %cmp.not.i, label %if.end.i, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.end.i:                                         ; preds = %if.end
  %bo_cache.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %bo_cache.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bo_cache.i, align 8
  %arrayidx.i = getelementptr %struct.list_head, ptr %3, i32 %sub.i.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, %arrayidx.i
  br i1 %cmp.i.not.i, label %if.end.i.if.end10_crit_edge, label %out.i

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

out.i:                                            ; preds = %if.end.i
  %add.ptr.i = getelementptr i8, ptr %5, i32 -400
  tail call fastcc void @vc4_bo_remove_from_cache(ptr noundef %add.ptr.i) #12
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef 4) #12
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %add.ptr.i, align 4
  %tobool11.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool11.not.i, label %out.i.if.end10_crit_edge, label %if.then3

out.i.if.end10_crit_edge:                         ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then3:                                         ; preds = %out.i
  tail call fastcc void @vc4_bo_set_label(ptr noundef nonnull %add.ptr.i, i32 noundef %type) #12
  tail call void @mutex_unlock(ptr noundef %bo_lock.i) #12
  br i1 %allow_unzeroed, label %if.then3.cleanup_crit_edge, label %if.then5

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %vaddr = getelementptr i8, ptr %5, i32 -40
  %7 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vaddr, align 8
  %size8 = getelementptr i8, ptr %5, i32 -216
  %9 = ptrtoint ptr %size8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size8, align 8
  %11 = call ptr @memset(ptr %8, i32 0, i32 %10)
  br label %cleanup

if.end10:                                         ; preds = %out.i.if.end10_crit_edge, %if.end.i.if.end10_crit_edge, %if.end.if.end10_crit_edge
  tail call void @mutex_unlock(ptr noundef %bo_lock.i) #12
  %call11 = tail call ptr @drm_gem_cma_create(ptr noundef %dev, i32 noundef %div58) #12
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end10.if.end15_crit_edge

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then13:                                        ; preds = %if.end10
  tail call void @mutex_lock_nested(ptr noundef %bo_lock.i, i32 noundef 0) #12
  %time_list.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 8, i32 2
  %12 = ptrtoint ptr %time_list.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %time_list.i, align 4
  %cmp.i.not9.i = icmp eq ptr %13, %time_list.i
  br i1 %cmp.i.not9.i, label %if.then13.vc4_bo_cache_purge.exit_crit_edge, label %while.body.lr.ph.i

if.then13.vc4_bo_cache_purge.exit_crit_edge:      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %vc4_bo_cache_purge.exit

while.body.lr.ph.i:                               ; preds = %if.then13
  %prev.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 8, i32 2, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %add.ptr.i60 = getelementptr i8, ptr %15, i32 -388
  tail call fastcc void @vc4_bo_remove_from_cache(ptr noundef %add.ptr.i60) #12
  tail call fastcc void @vc4_bo_destroy(ptr noundef %add.ptr.i60) #12
  %16 = ptrtoint ptr %time_list.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %time_list.i, align 4
  %cmp.i.not.i61 = icmp eq ptr %17, %time_list.i
  br i1 %cmp.i.not.i61, label %while.body.i.vc4_bo_cache_purge.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.body.i.vc4_bo_cache_purge.exit_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vc4_bo_cache_purge.exit

vc4_bo_cache_purge.exit:                          ; preds = %while.body.i.vc4_bo_cache_purge.exit_crit_edge, %if.then13.vc4_bo_cache_purge.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %bo_lock.i) #12
  %call14 = tail call ptr @drm_gem_cma_create(ptr noundef %dev, i32 noundef %div58) #12
  br label %if.end15

if.end15:                                         ; preds = %vc4_bo_cache_purge.exit, %if.end10.if.end15_crit_edge
  %cma_obj.0 = phi ptr [ %call14, %vc4_bo_cache_purge.exit ], [ %call11, %if.end10.if.end15_crit_edge ]
  %cmp.i62 = icmp ugt ptr %cma_obj.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i62, label %if.then17, label %if.end15.if.end19_crit_edge

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then17:                                        ; preds = %if.end15
  %purgeable.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 12
  %lock.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 12, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #12
  %18 = ptrtoint ptr %purgeable.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %purgeable.i, align 4
  %cmp.i.not45.i = icmp eq ptr %19, %purgeable.i
  br i1 %cmp.i.not45.i, label %if.then17.vc4_bo_userspace_cache_purge.exit_crit_edge, label %while.body.lr.ph.i63

if.then17.vc4_bo_userspace_cache_purge.exit_crit_edge: ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %vc4_bo_userspace_cache_purge.exit

while.body.lr.ph.i63:                             ; preds = %if.then17
  %purged_size21.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 12, i32 4
  %purged_num.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 12, i32 3
  br label %while.body.i64

while.body.i64:                                   ; preds = %if.end23.i.while.body.i64_crit_edge, %while.body.lr.ph.i63
  %20 = phi ptr [ %19, %while.body.lr.ph.i63 ], [ %74, %if.end23.i.while.body.i64_crit_edge ]
  %dev.i.i = getelementptr i8, ptr %20, i32 -392
  %21 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i.i, align 8
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %20) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %while.body.i64.vc4_bo_remove_from_purgeable_pool_locked.exit.i_crit_edge

while.body.i64.vc4_bo_remove_from_purgeable_pool_locked.exit.i_crit_edge: ; preds = %while.body.i64
  call void @__sanitizer_cov_trace_pc() #14
  br label %vc4_bo_remove_from_purgeable_pool_locked.exit.i

if.end.i.i.i.i:                                   ; preds = %while.body.i64
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr i8, ptr %20, i32 4
  %23 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i.i.i, align 4
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %20, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %vc4_bo_remove_from_purgeable_pool_locked.exit.i

vc4_bo_remove_from_purgeable_pool_locked.exit.i:  ; preds = %if.end.i.i.i.i, %while.body.i64.vc4_bo_remove_from_purgeable_pool_locked.exit.i_crit_edge
  %29 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %20, ptr %20, align 4
  %prev.i3.i.i.i = getelementptr i8, ptr %20, i32 4
  %30 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %20, ptr %prev.i3.i.i.i, align 4
  %num.i.i = getelementptr inbounds %struct.vc4_dev, ptr %22, i32 0, i32 12, i32 1
  %31 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num.i.i, align 8
  %dec.i.i = add i32 %32, -1
  store i32 %dec.i.i, ptr %num.i.i, align 8
  %size.i.i = getelementptr i8, ptr %20, i32 -216
  %33 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size.i.i, align 8
  %size5.i.i = getelementptr inbounds %struct.vc4_dev, ptr %22, i32 0, i32 12, i32 2
  %35 = ptrtoint ptr %size5.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size5.i.i, align 4
  %sub.i.i65 = sub i32 %36, %34
  store i32 %sub.i.i65, ptr %size5.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock.i) #12
  %madv_lock.i = getelementptr i8, ptr %20, i32 24
  tail call void @mutex_lock_nested(ptr noundef %madv_lock.i, i32 noundef 0) #12
  %madv.i = getelementptr i8, ptr %20, i32 20
  %37 = ptrtoint ptr %madv.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %madv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp.i66 = icmp eq i32 %38, 1
  br i1 %cmp.i66, label %land.lhs.true.i, label %vc4_bo_remove_from_purgeable_pool_locked.exit.i.if.end.i67_crit_edge

vc4_bo_remove_from_purgeable_pool_locked.exit.i.if.end.i67_crit_edge: ; preds = %vc4_bo_remove_from_purgeable_pool_locked.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i67

land.lhs.true.i:                                  ; preds = %vc4_bo_remove_from_purgeable_pool_locked.exit.i
  %39 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %20, align 4
  %cmp.i41.not.i = icmp eq ptr %40, %20
  br i1 %cmp.i41.not.i, label %land.lhs.true10.i, label %land.lhs.true.i.if.end.i67_crit_edge

land.lhs.true.i.if.end.i67_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i67

land.lhs.true10.i:                                ; preds = %land.lhs.true.i
  %usecnt.i = getelementptr i8, ptr %20, i32 16
  %call.i.i.i43.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usecnt.i, i32 noundef 4) #12
  %41 = ptrtoint ptr %usecnt.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %usecnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool12.not.i = icmp eq i32 %42, 0
  br i1 %tobool12.not.i, label %if.then.i, label %land.lhs.true10.i.if.end.i67_crit_edge

land.lhs.true10.i.if.end.i67_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i67

if.then.i:                                        ; preds = %land.lhs.true10.i
  %43 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %size.i.i, align 8
  %45 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i.i, align 8
  %call2.i.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %madv_lock.i) #12
  br i1 %call2.i.i, label %if.then.i.if.end.i.i_crit_edge, label %do.end.i.i, !prof !89

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 293, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.if.end.i.i_crit_edge
  %47 = ptrtoint ptr %madv.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %madv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp.not.i.i = icmp eq i32 %48, 1
  br i1 %cmp.not.i.i, label %if.end.i.i.if.end44.i.i_crit_edge, label %do.end38.i.i, !prof !89

if.end.i.i.if.end44.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44.i.i

do.end38.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 294, i32 noundef 9, ptr noundef null) #12
  br label %if.end44.i.i

if.end44.i.i:                                     ; preds = %do.end38.i.i, %if.end.i.i.if.end44.i.i_crit_edge
  %anon_inode.i.i = getelementptr inbounds %struct.drm_device, ptr %46, i32 0, i32 12
  %49 = ptrtoint ptr %anon_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %anon_inode.i.i, align 4
  %i_mapping.i.i = getelementptr inbounds %struct.inode, ptr %50, i32 0, i32 9
  %51 = ptrtoint ptr %i_mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i_mapping.i.i, align 8
  %flags.i.i.i.i = getelementptr i8, ptr %20, i32 -232
  %53 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %flags.i.i.i.i, align 4
  %and1.i.i.i.i.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %if.end44.i.i.vc4_bo_purge.exit.i_crit_edge, label %if.then.i.i.i

if.end44.i.i.vc4_bo_purge.exit.i_crit_edge:       ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vc4_bo_purge.exit.i

if.then.i.i.i:                                    ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %start.i.i.i.i = getelementptr i8, ptr %20, i32 -328
  %55 = ptrtoint ptr %start.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %start.i.i.i.i, align 8
  %shl.i.i.i.i = shl i64 %56, 12
  %size.i.i.i.i = getelementptr i8, ptr %20, i32 -320
  %57 = ptrtoint ptr %size.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %size.i.i.i.i, align 8
  %conv.i.i.i.i = trunc i64 %58 to i32
  %shl.i.i.i = shl i32 %conv.i.i.i.i, 12
  %conv.i.i.i = zext i32 %shl.i.i.i to i64
  tail call void @unmap_mapping_range(ptr noundef %52, i64 noundef %shl.i.i.i.i, i64 noundef %conv.i.i.i, i32 noundef 1) #12
  br label %vc4_bo_purge.exit.i

vc4_bo_purge.exit.i:                              ; preds = %if.then.i.i.i, %if.end44.i.i.vc4_bo_purge.exit.i_crit_edge
  %dev52.i.i = getelementptr inbounds %struct.drm_device, ptr %46, i32 0, i32 2
  %59 = ptrtoint ptr %dev52.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev52.i.i, align 4
  %61 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %size.i.i, align 8
  %vaddr.i.i = getelementptr i8, ptr %20, i32 -40
  %63 = ptrtoint ptr %vaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vaddr.i.i, align 8
  %paddr.i.i = getelementptr i8, ptr %20, i32 -48
  %65 = ptrtoint ptr %paddr.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %paddr.i.i, align 8
  tail call void @dma_free_attrs(ptr noundef %60, i32 noundef %62, ptr noundef %64, i32 noundef %66, i32 noundef 4) #12
  %67 = ptrtoint ptr %vaddr.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %vaddr.i.i, align 8
  %68 = ptrtoint ptr %madv.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 2, ptr %madv.i, align 4
  br label %if.end.i67

if.end.i67:                                       ; preds = %vc4_bo_purge.exit.i, %land.lhs.true10.i.if.end.i67_crit_edge, %land.lhs.true.i.if.end.i67_crit_edge, %vc4_bo_remove_from_purgeable_pool_locked.exit.i.if.end.i67_crit_edge
  %purged_size.0.i = phi i32 [ 0, %land.lhs.true10.i.if.end.i67_crit_edge ], [ %44, %vc4_bo_purge.exit.i ], [ 0, %land.lhs.true.i.if.end.i67_crit_edge ], [ 0, %vc4_bo_remove_from_purgeable_pool_locked.exit.i.if.end.i67_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %madv_lock.i) #12
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %purged_size.0.i)
  %tobool18.not.i = icmp eq i32 %purged_size.0.i, 0
  br i1 %tobool18.not.i, label %if.end.i67.if.end23.i_crit_edge, label %if.then19.i

if.end.i67.if.end23.i_crit_edge:                  ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

if.then19.i:                                      ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %purged_size21.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %purged_size21.i, align 4
  %add.i = add i32 %70, %purged_size.0.i
  store i32 %add.i, ptr %purged_size21.i, align 4
  %71 = ptrtoint ptr %purged_num.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %purged_num.i, align 8
  %inc.i = add i32 %72, 1
  store i32 %inc.i, ptr %purged_num.i, align 8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then19.i, %if.end.i67.if.end23.i_crit_edge
  %73 = ptrtoint ptr %purgeable.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile ptr, ptr %purgeable.i, align 4
  %cmp.i.not.i68 = icmp eq ptr %74, %purgeable.i
  br i1 %cmp.i.not.i68, label %if.end23.i.vc4_bo_userspace_cache_purge.exit_crit_edge, label %if.end23.i.while.body.i64_crit_edge

if.end23.i.while.body.i64_crit_edge:              ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i64

if.end23.i.vc4_bo_userspace_cache_purge.exit_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vc4_bo_userspace_cache_purge.exit

vc4_bo_userspace_cache_purge.exit:                ; preds = %if.end23.i.vc4_bo_userspace_cache_purge.exit_crit_edge, %if.then17.vc4_bo_userspace_cache_purge.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #12
  %call18 = tail call ptr @drm_gem_cma_create(ptr noundef %dev, i32 noundef %div58) #12
  br label %if.end19

if.end19:                                         ; preds = %vc4_bo_userspace_cache_purge.exit, %if.end15.if.end19_crit_edge
  %cma_obj.1 = phi ptr [ %call18, %vc4_bo_userspace_cache_purge.exit ], [ %cma_obj.0, %if.end15.if.end19_crit_edge ]
  %cmp.i69 = icmp ugt ptr %cma_obj.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i69, label %if.then21, label %if.end25

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %p) #12
  %75 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 1
  %76 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 2
  %77 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 3
  %dev23 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %78 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev23, align 8
  %80 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @__drm_printfn_info, ptr %p, align 4, !alias.scope !90
  %81 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %75, align 4, !alias.scope !90
  %82 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %76, align 4, !alias.scope !90
  %83 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %77, align 4, !alias.scope !90
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  call fastcc void @vc4_bo_stats_print(ptr noundef nonnull %p, ptr noundef %dev)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %p) #12
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %madv = getelementptr inbounds %struct.vc4_bo, ptr %cma_obj.1, i32 0, i32 10
  %84 = ptrtoint ptr %madv to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 3, ptr %madv, align 4
  tail call void @mutex_lock_nested(ptr noundef %bo_lock.i, i32 noundef 0) #12
  tail call fastcc void @vc4_bo_set_label(ptr noundef %cma_obj.1, i32 noundef %type)
  tail call void @mutex_unlock(ptr noundef %bo_lock.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then21, %if.then5, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.then21 ], [ %cma_obj.1, %if.end25 ], [ %add.ptr.i, %if.then5 ], [ %add.ptr.i, %if.then3.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_cma_create(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vc4_bo_stats_print(ptr noundef %p, ptr noundef %vc4) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_labels = getelementptr inbounds %struct.vc4_dev, ptr %vc4, i32 0, i32 9
  %0 = ptrtoint ptr %num_labels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_labels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp50.not = icmp eq i32 %1, 0
  br i1 %cmp50.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %bo_labels = getelementptr inbounds %struct.vc4_dev, ptr %vc4, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %bo_labels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bo_labels, align 8
  %num_allocated = getelementptr %struct.vc4_label, ptr %3, i32 %i.051, i32 1
  %4 = ptrtoint ptr %num_allocated to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_allocated, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.vc4_label, ptr %3, i32 %i.051
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %size_allocated = getelementptr %struct.vc4_label, ptr %3, i32 %i.051, i32 2
  %8 = ptrtoint ptr %size_allocated to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size_allocated, align 4
  %div49 = lshr i32 %9, 10
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.16, ptr noundef %7, i32 noundef %div49, i32 noundef %5) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.051, 1
  %10 = ptrtoint ptr %num_labels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_labels, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %lock = getelementptr inbounds %struct.vc4_dev, ptr %vc4, i32 0, i32 12, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %num = getelementptr inbounds %struct.vc4_dev, ptr %vc4, i32 0, i32 12, i32 1
  %12 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool9.not = icmp eq i32 %13, 0
  br i1 %tobool9.not, label %for.end.if.end15_crit_edge, label %if.then10

for.end.if.end15_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then10:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %size = getelementptr inbounds %struct.vc4_dev, ptr %vc4, i32 0, i32 12, i32 2
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  %div1248 = lshr i32 %15, 10
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %div1248, i32 noundef %13) #12
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %for.end.if.end15_crit_edge
  %purged_num = getelementptr inbounds %struct.vc4_dev, ptr %vc4, i32 0, i32 12, i32 3
  %16 = ptrtoint ptr %purged_num to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %purged_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool17.not = icmp eq i32 %17, 0
  br i1 %tobool17.not, label %if.end15.if.end23_crit_edge, label %if.then18

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %purged_size = getelementptr inbounds %struct.vc4_dev, ptr %vc4, i32 0, i32 12, i32 4
  %18 = ptrtoint ptr %purged_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %purged_size, align 4
  %div2047 = lshr i32 %19, 10
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.19, i32 noundef %div2047, i32 noundef %17) #12
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.end15.if.end23_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vc4_bo_set_label(ptr nocapture noundef %gem_obj, i32 noundef %label) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %gem_obj, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 11, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !93

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 135, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %label)
  %cmp26.not = icmp eq i32 %label, -1
  br i1 %cmp26.not, label %if.end.if.end30_crit_edge, label %if.then27

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %bo_labels = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %bo_labels to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bo_labels, align 8
  %num_allocated = getelementptr %struct.vc4_label, ptr %4, i32 %label, i32 1
  %5 = ptrtoint ptr %num_allocated to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_allocated, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %num_allocated, align 4
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %gem_obj, i32 0, i32 5
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 8
  %9 = load ptr, ptr %bo_labels, align 8
  %size_allocated = getelementptr %struct.vc4_label, ptr %9, i32 %label, i32 2
  %10 = ptrtoint ptr %size_allocated to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size_allocated, align 4
  %add = add i32 %11, %8
  store i32 %add, ptr %size_allocated, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end.if.end30_crit_edge
  %bo_labels31 = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %bo_labels31 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bo_labels31, align 8
  %label32 = getelementptr inbounds %struct.vc4_bo, ptr %gem_obj, i32 0, i32 8
  %14 = ptrtoint ptr %label32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %label32, align 4
  %num_allocated34 = getelementptr %struct.vc4_label, ptr %13, i32 %15, i32 1
  %16 = ptrtoint ptr %num_allocated34 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_allocated34, align 4
  %dec = add i32 %17, -1
  store i32 %dec, ptr %num_allocated34, align 4
  %size35 = getelementptr inbounds %struct.drm_gem_object, ptr %gem_obj, i32 0, i32 5
  %18 = ptrtoint ptr %size35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size35, align 8
  %20 = load ptr, ptr %bo_labels31, align 8
  %21 = load i32, ptr %label32, align 4
  %size_allocated39 = getelementptr %struct.vc4_label, ptr %20, i32 %21, i32 2
  %22 = ptrtoint ptr %size_allocated39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size_allocated39, align 4
  %sub = sub i32 %23, %19
  store i32 %sub, ptr %size_allocated39, align 4
  %24 = load ptr, ptr %bo_labels31, align 8
  %25 = load i32, ptr %label32, align 4
  %num_allocated43 = getelementptr %struct.vc4_label, ptr %24, i32 %25, i32 1
  %26 = ptrtoint ptr %num_allocated43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_allocated43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp44 = icmp eq i32 %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %25)
  %cmp.i = icmp sgt i32 %25, 7
  %or.cond = select i1 %cmp44, i1 %cmp.i, i1 false
  br i1 %or.cond, label %if.then47, label %if.end30.if.end55_crit_edge

if.end30.if.end55_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.then47:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx50 = getelementptr %struct.vc4_label, ptr %24, i32 %25
  %28 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx50, align 4
  tail call void @kfree(ptr noundef %29) #12
  %30 = ptrtoint ptr %bo_labels31 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bo_labels31, align 8
  %32 = ptrtoint ptr %label32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %label32, align 4
  %arrayidx53 = getelementptr %struct.vc4_label, ptr %31, i32 %33
  %34 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %arrayidx53, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then47, %if.end30.if.end55_crit_edge
  %35 = ptrtoint ptr %label32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %label, ptr %label32, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vc4_dumb_create(ptr noundef %file_priv, ptr noundef %dev, ptr noundef %args) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %width = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 1
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 4
  %bpp = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 2
  %2 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bpp, align 8
  %mul = mul i32 %3, %1
  %sub = add i32 %mul, 7
  %div41 = lshr i32 %sub, 3
  %pitch = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 5
  %4 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pitch, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %div41)
  %cmp = icmp ult i32 %5, %div41
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %pitch to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div41, ptr %pitch, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %size = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 6
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %size, align 8
  %9 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pitch, align 4
  %11 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %args, align 8
  %mul3 = mul i32 %12, %10
  %conv = zext i32 %mul3 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %conv)
  %cmp4 = icmp ult i64 %8, %conv
  br i1 %cmp4, label %if.then6, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv, ptr %size, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then6, %if.end.if.end12_crit_edge
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %size, align 8
  %conv14 = trunc i64 %15 to i32
  %call = tail call ptr @vc4_bo_create(ptr noundef %dev, i32 noundef %conv14, i1 noundef zeroext false, i32 noundef 3)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %call to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %madv = getelementptr inbounds %struct.vc4_bo, ptr %call, i32 0, i32 10
  %17 = ptrtoint ptr %madv to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %madv, align 4
  %handle = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 4
  %call20 = tail call i32 @drm_gem_handle_create(ptr noundef %file_priv, ptr noundef %call, ptr noundef %handle) #12
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %if.end18.cleanup_crit_edge, label %if.then.i

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %if.end18
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !94
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #12
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #12, !srcloc !95
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !89

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #12
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !96
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.then16
  %retval.0 = phi i32 [ %16, %if.then16 ], [ %call20, %if.end18.cleanup_crit_edge ], [ %call20, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %call20, %if.then10.i.i.i.i.i.i ], [ %call20, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vc4_bo_inc_usecnt(ptr noundef %bo) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i13 = alloca i32, align 4
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %usecnt = getelementptr inbounds %struct.vc4_bo, ptr %bo, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usecnt, i32 noundef 4) #12
  %0 = ptrtoint ptr %usecnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %usecnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %entry
  %2 = phi i32 [ %1, %entry ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %3 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %2, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #12
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #12
  %4 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %usecnt, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %usecnt, ptr %usecnt, i32 %5, i32 %add.i.i.i, ptr elementtype(i32) %usecnt) #12, !srcloc !97
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !89

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %7 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %8, 1
  %9 = or i32 %add5.i.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !89

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %usecnt, i32 noundef 0) #12
  %10 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %11 = phi i32 [ %8, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.i.i.i.not = icmp eq i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #12
  br i1 %tobool12.i.i.i.not, label %if.end, label %refcount_inc_not_zero.exit.cleanup_crit_edge

refcount_inc_not_zero.exit.cleanup_crit_edge:     ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %refcount_inc_not_zero.exit
  %madv_lock = getelementptr inbounds %struct.vc4_bo, ptr %bo, i32 0, i32 11
  call void @mutex_lock_nested(ptr noundef %madv_lock, i32 noundef 0) #12
  %madv = getelementptr inbounds %struct.vc4_bo, ptr %bo, i32 0, i32 10
  %12 = ptrtoint ptr %madv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %madv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cond = icmp eq i32 %13, 0
  br i1 %cond, label %sw.bb, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i13) #12
  %call.i.i.i.i.i.i14 = call zeroext i1 @__kasan_check_read(ptr noundef %usecnt, i32 noundef 4) #12
  %14 = ptrtoint ptr %usecnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %usecnt, align 4
  br label %do.body.i.i.i16

do.body.i.i.i16:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i26.do.body.i.i.i16_crit_edge, %sw.bb
  %16 = phi i32 [ %15, %sw.bb ], [ %asmresult3.i.i.i.i.i.i24, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i26.do.body.i.i.i16_crit_edge ]
  %17 = ptrtoint ptr %old.i.i.i13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %old.i.i.i13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i.i15 = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i.i15, label %do.body.i.i.i16.if.end4.i.i.i29_crit_edge, label %do.cond.i.i.i20

do.body.i.i.i16.if.end4.i.i.i29_crit_edge:        ; preds = %do.body.i.i.i16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i29

do.cond.i.i.i20:                                  ; preds = %do.body.i.i.i16
  %add.i.i.i17 = add i32 %16, 1
  %call.i.i.i.i.i18 = call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #12
  %call.i3.i.i.i.i19 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i13, i32 noundef 4) #12
  %18 = ptrtoint ptr %old.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %old.i.i.i13, align 4
  call void @llvm.prefetch.p0(ptr %usecnt, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i23

do.body.i.i.i.i.i.i23:                            ; preds = %do.body.i.i.i.i.i.i23.do.body.i.i.i.i.i.i23_crit_edge, %do.cond.i.i.i20
  %20 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %usecnt, ptr %usecnt, i32 %19, i32 %add.i.i.i17, ptr elementtype(i32) %usecnt) #12, !srcloc !97
  %asmresult.i.i.i.i.i.i21 = extractvalue { i32, i32 } %20, 0
  %tobool.not.i.i.i.i.i.i22 = icmp eq i32 %asmresult.i.i.i.i.i.i21, 0
  br i1 %tobool.not.i.i.i.i.i.i22, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i26, label %do.body.i.i.i.i.i.i23.do.body.i.i.i.i.i.i23_crit_edge

do.body.i.i.i.i.i.i23.do.body.i.i.i.i.i.i23_crit_edge: ; preds = %do.body.i.i.i.i.i.i23
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i23

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i26:     ; preds = %do.body.i.i.i.i.i.i23
  %asmresult3.i.i.i.i.i.i24 = extractvalue { i32, i32 } %20, 1
  %cmp.not.i.i.i.i.i25 = icmp eq i32 %asmresult3.i.i.i.i.i.i24, %19
  br i1 %cmp.not.i.i.i.i.i25, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i26.if.end4.i.i.i29_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i26.do.body.i.i.i16_crit_edge, !prof !89

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i26.do.body.i.i.i16_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i26
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i16

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i26.if.end4.i.i.i29_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i29

if.end4.i.i.i29:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i26.if.end4.i.i.i29_crit_edge, %do.body.i.i.i16.if.end4.i.i.i29_crit_edge
  %21 = ptrtoint ptr %old.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %old.i.i.i13, align 4
  %add5.i.i.i27 = add i32 %22, 1
  %23 = or i32 %add5.i.i.i27, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %.not.i.i.i28 = icmp sgt i32 %23, -1
  br i1 %.not.i.i.i28, label %if.end4.i.i.i29.refcount_inc_not_zero.exit32_crit_edge, label %if.then10.i.i.i30, !prof !89

if.end4.i.i.i29.refcount_inc_not_zero.exit32_crit_edge: ; preds = %if.end4.i.i.i29
  call void @__sanitizer_cov_trace_pc() #14
  br label %refcount_inc_not_zero.exit32

if.then10.i.i.i30:                                ; preds = %if.end4.i.i.i29
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %usecnt, i32 noundef 0) #12
  %24 = ptrtoint ptr %old.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr33 = load i32, ptr %old.i.i.i13, align 4
  br label %refcount_inc_not_zero.exit32

refcount_inc_not_zero.exit32:                     ; preds = %if.then10.i.i.i30, %if.end4.i.i.i29.refcount_inc_not_zero.exit32_crit_edge
  %25 = phi i32 [ %22, %if.end4.i.i.i29.refcount_inc_not_zero.exit32_crit_edge ], [ %.pr33, %if.then10.i.i.i30 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool12.i.i.i31.not = icmp eq i32 %25, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i13) #12
  br i1 %tobool12.i.i.i31.not, label %if.then3, label %refcount_inc_not_zero.exit32.sw.epilog_crit_edge

refcount_inc_not_zero.exit32.sw.epilog_crit_edge: ; preds = %refcount_inc_not_zero.exit32
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then3:                                         ; preds = %refcount_inc_not_zero.exit32
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #12
  %26 = ptrtoint ptr %usecnt to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 1, ptr %usecnt, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then3, %refcount_inc_not_zero.exit32.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %if.then3 ], [ 0, %refcount_inc_not_zero.exit32.sw.epilog_crit_edge ], [ -22, %if.end.sw.epilog_crit_edge ]
  call void @mutex_unlock(ptr noundef %madv_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %refcount_inc_not_zero.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ 0, %refcount_inc_not_zero.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vc4_bo_dec_usecnt(ptr noundef %bo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %usecnt = getelementptr inbounds %struct.vc4_bo, ptr %bo, i32 0, i32 9
  %call = tail call zeroext i1 @refcount_dec_not_one(ptr noundef %usecnt) #12
  br i1 %call, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %madv_lock = getelementptr inbounds %struct.vc4_bo, ptr %bo, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %madv_lock, i32 noundef 0) #12
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !94
  tail call void @llvm.prefetch.p0(ptr %usecnt, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt, ptr %usecnt, i32 1, ptr elementtype(i32) %usecnt) #12, !srcloc !95
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %land.lhs.true, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end4_crit_edge, label %if.then10.i.i.i, !prof !89

if.end5.i.i.i.if.end4_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %usecnt, i32 noundef 3) #12
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !96
  %madv = getelementptr inbounds %struct.vc4_bo, ptr %bo, i32 0, i32 10
  %1 = ptrtoint ptr %madv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %madv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then3, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  %dev.i = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 2
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 8
  %purgeable.i = getelementptr inbounds %struct.vc4_dev, ptr %4, i32 0, i32 12
  %lock.i = getelementptr inbounds %struct.vc4_dev, ptr %4, i32 0, i32 12, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #12
  %size_head.i = getelementptr inbounds %struct.vc4_bo, ptr %bo, i32 0, i32 6
  %prev.i.i = getelementptr inbounds %struct.vc4_dev, ptr %4, i32 0, i32 12, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %size_head.i, ptr noundef %6, ptr noundef %purgeable.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then3.vc4_bo_add_to_purgeable_pool.exit_crit_edge

if.then3.vc4_bo_add_to_purgeable_pool.exit_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %vc4_bo_add_to_purgeable_pool.exit

if.end.i.i.i:                                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %size_head.i, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %size_head.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %purgeable.i, ptr %size_head.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.vc4_bo, ptr %bo, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %size_head.i, ptr %6, align 4
  br label %vc4_bo_add_to_purgeable_pool.exit

vc4_bo_add_to_purgeable_pool.exit:                ; preds = %if.end.i.i.i, %if.then3.vc4_bo_add_to_purgeable_pool.exit_crit_edge
  %num.i = getelementptr inbounds %struct.vc4_dev, ptr %4, i32 0, i32 12, i32 1
  %11 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num.i, align 8
  %inc.i = add i32 %12, 1
  store i32 %inc.i, ptr %num.i, align 8
  %size.i = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 5
  %13 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size.i, align 8
  %size7.i = getelementptr inbounds %struct.vc4_dev, ptr %4, i32 0, i32 12, i32 2
  %15 = ptrtoint ptr %size7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size7.i, align 4
  %add.i = add i32 %16, %14
  store i32 %add.i, ptr %size7.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock.i) #12
  br label %if.end4

if.end4:                                          ; preds = %vc4_bo_add_to_purgeable_pool.exit, %land.lhs.true.if.end4_crit_edge, %if.then10.i.i.i, %if.end5.i.i.i.if.end4_crit_edge
  tail call void @mutex_unlock(ptr noundef %madv_lock) #12
  br label %return

return:                                           ; preds = %if.end4, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_not_one(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vc4_create_bo_ioctl(ptr noundef %dev, ptr noundef %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %v3d.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %v3d.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v3d.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 19
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %bin_bo_used.i = getelementptr inbounds %struct.vc4_file, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %bin_bo_used.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bin_bo_used.i, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i = icmp eq i8 %5, 0
  br i1 %tobool1.not.i, label %vc4_grab_bin_bo.exit, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

vc4_grab_bin_bo.exit:                             ; preds = %if.end.i
  %call.i = tail call i32 @vc4_v3d_bin_bo_get(ptr noundef %dev, ptr noundef %bin_bo_used.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %vc4_grab_bin_bo.exit.if.end_crit_edge, label %vc4_grab_bin_bo.exit.cleanup_crit_edge

vc4_grab_bin_bo.exit.cleanup_crit_edge:           ; preds = %vc4_grab_bin_bo.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

vc4_grab_bin_bo.exit.if.end_crit_edge:            ; preds = %vc4_grab_bin_bo.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %vc4_grab_bin_bo.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 4
  %call2 = tail call ptr @vc4_bo_create(ptr noundef %dev, i32 noundef %7, i1 noundef zeroext false, i32 noundef 1)
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %madv = getelementptr inbounds %struct.vc4_bo, ptr %call2, i32 0, i32 10
  %9 = ptrtoint ptr %madv to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %madv, align 4
  %handle = getelementptr inbounds %struct.drm_vc4_create_bo, ptr %data, i32 0, i32 2
  %call8 = tail call i32 @drm_gem_handle_create(ptr noundef %file_priv, ptr noundef %call2, ptr noundef %handle) #12
  %tobool.not.i24 = icmp eq ptr %call2, null
  br i1 %tobool.not.i24, label %if.end6.cleanup_crit_edge, label %if.then.i

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %if.end6
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call2, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !94
  tail call void @llvm.prefetch.p0(ptr nonnull %call2, i32 1, i32 3, i32 1) #12
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call2, ptr nonnull %call2, i32 1, ptr nonnull elementtype(i32) %call2) #12, !srcloc !95
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !89

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call2, i32 noundef 3) #12
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !96
  tail call void @drm_gem_object_free(ptr noundef nonnull %call2) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then4, %vc4_grab_bin_bo.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then4 ], [ %call.i, %vc4_grab_bin_bo.exit.cleanup_crit_edge ], [ %call8, %if.end6.cleanup_crit_edge ], [ %call8, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %call8, %if.then10.i.i.i.i.i.i ], [ %call8, %if.then.i.i.i ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vc4_mmap_bo_ioctl(ptr nocapture noundef readnone %dev, ptr nocapture noundef %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 8
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file_priv, i32 noundef %1) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.then.i

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %3) #12
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %start.i = getelementptr inbounds %struct.drm_gem_object, ptr %call, i32 0, i32 4, i32 1, i32 1
  %4 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %start.i, align 8
  %shl.i = shl i64 %5, 12
  %offset = getelementptr inbounds %struct.drm_vc4_mmap_bo, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %shl.i, ptr %offset, align 8
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !94
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #12
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #12, !srcloc !95
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !89

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #12
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !96
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i.i ], [ 0, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vc4_create_shader_bo_ioctl(ptr noundef %dev, ptr noundef %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp ne i32 %3, 0
  %rem = and i32 %3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp2.not = icmp eq i32 %rem, 0
  %or.cond = and i1 %cmp, %cmp2.not
  br i1 %or.cond, label %if.end4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.drm_vc4_create_shader_bo, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp5.not = icmp eq i32 %5, 0
  br i1 %cmp5.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %5) #16
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %pad = getelementptr inbounds %struct.drm_vc4_create_shader_bo, ptr %data, i32 0, i32 4
  %6 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp10.not = icmp eq i32 %7, 0
  br i1 %cmp10.not, label %if.end18, label %do.end14

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %7) #16
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  %v3d.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 3
  %8 = ptrtoint ptr %v3d.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %v3d.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end18.cleanup_crit_edge, label %if.end.i

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end18
  %bin_bo_used.i = getelementptr inbounds %struct.vc4_file, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %bin_bo_used.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bin_bo_used.i, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool1.not.i = icmp eq i8 %11, 0
  br i1 %tobool1.not.i, label %vc4_grab_bin_bo.exit, label %if.end.i.if.end21_crit_edge

if.end.i.if.end21_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

vc4_grab_bin_bo.exit:                             ; preds = %if.end.i
  %call.i = tail call i32 @vc4_v3d_bin_bo_get(ptr noundef %dev, ptr noundef %bin_bo_used.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %vc4_grab_bin_bo.exit.if.end21_crit_edge, label %vc4_grab_bin_bo.exit.cleanup_crit_edge

vc4_grab_bin_bo.exit.cleanup_crit_edge:           ; preds = %vc4_grab_bin_bo.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

vc4_grab_bin_bo.exit.if.end21_crit_edge:          ; preds = %vc4_grab_bin_bo.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.end21:                                         ; preds = %vc4_grab_bin_bo.exit.if.end21_crit_edge, %if.end.i.if.end21_crit_edge
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data, align 8
  %call23 = tail call ptr @vc4_bo_create(ptr noundef %dev, i32 noundef %13, i1 noundef zeroext true, i32 noundef 2)
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %call23 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  %madv = getelementptr inbounds %struct.vc4_bo, ptr %call23, i32 0, i32 10
  %15 = ptrtoint ptr %madv to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %madv, align 4
  %vaddr = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call23, i32 0, i32 3
  %16 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vaddr, align 8
  %data28 = getelementptr inbounds %struct.drm_vc4_create_shader_bo, ptr %data, i32 0, i32 2
  %18 = ptrtoint ptr %data28 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %data28, align 8
  %conv = trunc i64 %19 to i32
  %20 = inttoptr i32 %conv to ptr
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp9.i.i = icmp slt i32 %22, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end27
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.fail_crit_edge, label %if.then27.i.i, !prof !89

land.rhs16.i.i.fail_crit_edge:                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %fail

if.then.i.i.i:                                    ; preds = %if.end27
  tail call void @__check_object_size(ptr noundef %17, i32 noundef %22, i1 noundef zeroext false) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.28, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %23 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %20, i32 %22, i32 -1226833920) #17, !srcloc !99
  %asmresult.i.i = extractvalue { i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !89

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %17, i32 noundef %22) #12
  %24 = tail call i32 @llvm.read_register.i32(metadata !79) #12
  %and.i.i.i.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 4
  %26 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !100
  %and.i.i.i.i = and i32 %26, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !102
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %17, ptr noundef %20, i32 noundef %22) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #12, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !102
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %22, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %22, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end33, label %if.then11.i.i, !prof !89

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub i32 %22, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %sub.i.i
  %27 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %fail

if.end33:                                         ; preds = %if.end.i.i
  %28 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vaddr, align 8
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %data, align 8
  %add.ptr = getelementptr i8, ptr %29, i32 %31
  %size39 = getelementptr inbounds %struct.drm_gem_object, ptr %call23, i32 0, i32 5
  %32 = ptrtoint ptr %size39 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size39, align 8
  %sub = sub i32 %33, %31
  %34 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  %call42 = tail call ptr @vc4_validate_shader(ptr noundef %call23) #12
  %validated_shader = getelementptr inbounds %struct.vc4_bo, ptr %call23, i32 0, i32 7
  %35 = ptrtoint ptr %validated_shader to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call42, ptr %validated_shader, align 8
  %tobool44.not = icmp eq ptr %call42, null
  br i1 %tobool44.not, label %if.end33.fail_crit_edge, label %if.end46

if.end33.fail_crit_edge:                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end46:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %handle = getelementptr inbounds %struct.drm_vc4_create_shader_bo, ptr %data, i32 0, i32 3
  %call49 = tail call i32 @drm_gem_handle_create(ptr noundef %file_priv, ptr noundef %call23, ptr noundef %handle) #12
  br label %fail

fail:                                             ; preds = %if.end46, %if.end33.fail_crit_edge, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.fail_crit_edge
  %ret.0 = phi i32 [ %call49, %if.end46 ], [ -22, %if.end33.fail_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.fail_crit_edge ]
  %tobool.not.i83 = icmp eq ptr %call23, null
  br i1 %tobool.not.i83, label %fail.cleanup_crit_edge, label %if.then.i84

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i84:                                      ; preds = %fail
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call23, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !94
  tail call void @llvm.prefetch.p0(ptr nonnull %call23, i32 1, i32 3, i32 1) #12
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call23, ptr nonnull %call23, i32 1, ptr nonnull elementtype(i32) %call23) #12, !srcloc !95
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i85, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !89

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call23, i32 noundef 3) #12
  br label %cleanup

if.then.i.i.i85:                                  ; preds = %if.then.i84
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !96
  tail call void @drm_gem_object_free(ptr noundef nonnull %call23) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i85, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %fail.cleanup_crit_edge, %if.then25, %vc4_grab_bin_bo.exit.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %do.end14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end14 ], [ %14, %if.then25 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %vc4_grab_bin_bo.exit.cleanup_crit_edge ], [ %ret.0, %fail.cleanup_crit_edge ], [ %ret.0, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %ret.0, %if.then10.i.i.i.i.i.i ], [ %ret.0, %if.then.i.i.i85 ], [ -19, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vc4_validate_shader(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vc4_set_tiling_ioctl(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.drm_vc4_set_tiling, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %modifier = getelementptr inbounds %struct.drm_vc4_set_tiling, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %modifier, align 8
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i64 %3, label %if.end.cleanup_crit_edge [
    i64 0, label %if.end.sw.epilog_crit_edge
    i64 504403158265495553, label %sw.bb1
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %if.end.sw.epilog_crit_edge
  %t_format.0.off0 = phi i1 [ true, %sw.bb1 ], [ false, %if.end.sw.epilog_crit_edge ]
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 8
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file_priv, i32 noundef %5) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then2, label %if.then.i

if.then2:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %7) #12
  br label %cleanup

if.then.i:                                        ; preds = %sw.epilog
  %t_format7 = getelementptr inbounds %struct.vc4_bo, ptr %call, i32 0, i32 3
  %frombool = zext i1 %t_format.0.off0 to i8
  %8 = ptrtoint ptr %t_format7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %t_format7, align 8
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !94
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #12
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #12, !srcloc !95
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !89

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #12
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !96
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.then2 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i.i ], [ 0, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vc4_get_tiling_ioctl(ptr nocapture noundef readnone %dev, ptr nocapture noundef %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.drm_vc4_get_tiling, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %modifier = getelementptr inbounds %struct.drm_vc4_get_tiling, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %modifier, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp1.not = icmp eq i64 %3, 0
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 8
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file_priv, i32 noundef %5) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then2, label %if.then.i

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %7) #12
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %t_format = getelementptr inbounds %struct.vc4_bo, ptr %call, i32 0, i32 3
  %8 = ptrtoint ptr %t_format to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %t_format, align 8, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  %. = select i1 %tobool6.not, i64 0, i64 504403158265495553
  %10 = ptrtoint ptr %modifier to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %., ptr %modifier, align 8
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !94
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #12
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #12, !srcloc !95
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !89

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #12
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !96
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.then2, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.then2 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i.i ], [ 0, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vc4_bo_cache_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 96) #15
  %bo_labels = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 10
  %1 = ptrtoint ptr %bo_labels to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %bo_labels, align 8
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %num_labels = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 9
  %2 = ptrtoint ptr %num_labels to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8, ptr %num_labels, align 4
  %3 = ptrtoint ptr %bo_labels to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bo_labels, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.29, ptr %4, align 4
  %6 = load ptr, ptr %bo_labels, align 8
  %arrayidx4.1 = getelementptr %struct.vc4_label, ptr %6, i32 1
  %7 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.30, ptr %arrayidx4.1, align 4
  %8 = load ptr, ptr %bo_labels, align 8
  %arrayidx4.2 = getelementptr %struct.vc4_label, ptr %8, i32 2
  %9 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.31, ptr %arrayidx4.2, align 4
  %10 = load ptr, ptr %bo_labels, align 8
  %arrayidx4.3 = getelementptr %struct.vc4_label, ptr %10, i32 3
  %11 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.32, ptr %arrayidx4.3, align 4
  %12 = load ptr, ptr %bo_labels, align 8
  %arrayidx4.4 = getelementptr %struct.vc4_label, ptr %12, i32 4
  %13 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.33, ptr %arrayidx4.4, align 4
  %14 = load ptr, ptr %bo_labels, align 8
  %arrayidx4.5 = getelementptr %struct.vc4_label, ptr %14, i32 5
  %15 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.34, ptr %arrayidx4.5, align 4
  %16 = load ptr, ptr %bo_labels, align 8
  %arrayidx4.6 = getelementptr %struct.vc4_label, ptr %16, i32 6
  %17 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.35, ptr %arrayidx4.6, align 4
  %18 = load ptr, ptr %bo_labels, align 8
  %arrayidx4.7 = getelementptr %struct.vc4_label, ptr %18, i32 7
  %19 = ptrtoint ptr %arrayidx4.7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.36, ptr %arrayidx4.7, align 4
  %bo_lock = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %bo_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @vc4_bo_cache_init.__key) #12
  tail call void @vc4_debugfs_add_file(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef nonnull @vc4_bo_stats_debugfs, ptr noundef null) #12
  %time_list = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 8, i32 2
  %20 = ptrtoint ptr %time_list to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %time_list, ptr %time_list, align 4
  %prev.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 8, i32 2, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %time_list, ptr %prev.i, align 4
  %time_work = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 8, i32 3
  tail call void @__init_work(ptr noundef %time_work, i32 noundef 0) #12
  %22 = ptrtoint ptr %time_work to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %time_work, align 8
  %lockdep_map = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 8, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @vc4_bo_cache_init.__key.11, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry16 = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 8, i32 3, i32 1
  %23 = ptrtoint ptr %entry16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry16, ptr %entry16, align 4
  %prev.i43 = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 8, i32 3, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i43 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry16, ptr %prev.i43, align 4
  %func = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 8, i32 3, i32 2
  %25 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @vc4_bo_cache_time_work, ptr %func, align 4
  %time_timer = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 8, i32 4
  tail call void @init_timer_key(ptr noundef %time_timer, ptr noundef nonnull @vc4_bo_cache_time_timer, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef nonnull @vc4_bo_cache_init.__key.13) #12
  %call25 = tail call i32 @__drmm_add_action_or_reset(ptr noundef %dev, ptr noundef nonnull @vc4_bo_cache_destroy, ptr noundef null, ptr noundef nonnull @.str.15) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_debugfs_add_file(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_bo_stats_debugfs(ptr noundef %m, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %p = alloca %struct.drm_printer, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev1 = getelementptr inbounds %struct.drm_minor, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %p) #12
  %6 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 1
  %7 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 2
  %8 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 3
  %9 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @__drm_printfn_seq_file, ptr %p, align 4, !alias.scope !103
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @__drm_puts_seq_file, ptr %6, align 4, !alias.scope !103
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %m, ptr %7, align 4, !alias.scope !103
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %8, align 4, !alias.scope !103
  call fastcc void @vc4_bo_stats_print(ptr noundef nonnull %p, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %p) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_bo_cache_time_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2376
  %bo_lock = getelementptr i8, ptr %work, i32 100
  tail call void @mutex_lock_nested(ptr noundef %bo_lock, i32 noundef 0) #12
  tail call fastcc void @vc4_bo_cache_free_old(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %bo_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_bo_cache_time_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %time_work = getelementptr i8, ptr %t, i32 -44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %time_work) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__drmm_add_action_or_reset(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_bo_cache_destroy(ptr noundef %dev, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %time_timer = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 8, i32 4
  %call1 = tail call i32 @del_timer(ptr noundef %time_timer) #12
  %time_work = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 8, i32 3
  %call3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %time_work) #12
  %bo_lock.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %bo_lock.i, i32 noundef 0) #12
  %time_list.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 8, i32 2
  %0 = ptrtoint ptr %time_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %time_list.i, align 4
  %cmp.i.not9.i = icmp eq ptr %1, %time_list.i
  br i1 %cmp.i.not9.i, label %entry.vc4_bo_cache_purge.exit_crit_edge, label %while.body.lr.ph.i

entry.vc4_bo_cache_purge.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %vc4_bo_cache_purge.exit

while.body.lr.ph.i:                               ; preds = %entry
  %prev.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 8, i32 2, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -388
  tail call fastcc void @vc4_bo_remove_from_cache(ptr noundef %add.ptr.i) #12
  tail call fastcc void @vc4_bo_destroy(ptr noundef %add.ptr.i) #12
  %4 = ptrtoint ptr %time_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %time_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, %time_list.i
  br i1 %cmp.i.not.i, label %while.body.i.vc4_bo_cache_purge.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.body.i.vc4_bo_cache_purge.exit_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vc4_bo_cache_purge.exit

vc4_bo_cache_purge.exit:                          ; preds = %while.body.i.vc4_bo_cache_purge.exit_crit_edge, %entry.vc4_bo_cache_purge.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %bo_lock.i) #12
  %num_labels = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 9
  %6 = ptrtoint ptr %num_labels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_labels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp30.not = icmp eq i32 %7, 0
  br i1 %cmp30.not, label %vc4_bo_cache_purge.exit.for.end_crit_edge, label %for.body.lr.ph

vc4_bo_cache_purge.exit.for.end_crit_edge:        ; preds = %vc4_bo_cache_purge.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %vc4_bo_cache_purge.exit
  %bo_labels = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.031 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %bo_labels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bo_labels, align 8
  %num_allocated = getelementptr %struct.vc4_label, ptr %9, i32 %i.031, i32 1
  %10 = ptrtoint ptr %num_allocated to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_allocated, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.vc4_label, ptr %9, i32 %i.031
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.37, i32 noundef %11, ptr noundef %13) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.031)
  %cmp.i = icmp sgt i32 %i.031, 7
  br i1 %cmp.i, label %if.then10, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %bo_labels to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bo_labels, align 8
  %arrayidx12 = getelementptr %struct.vc4_label, ptr %15, i32 %i.031
  %16 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx12, align 4
  tail call void @kfree(ptr noundef %17) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %if.end.for.inc_crit_edge
  %inc = add nuw i32 %i.031, 1
  %18 = ptrtoint ptr %num_labels to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_labels, align 4
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %vc4_bo_cache_purge.exit.for.end_crit_edge
  %bo_labels15 = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 10
  %20 = ptrtoint ptr %bo_labels15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bo_labels15, align 8
  tail call void @kfree(ptr noundef %21) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vc4_label_bo_ioctl(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.drm_vc4_label_bo, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %name2 = getelementptr inbounds %struct.drm_vc4_label_bo, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %name2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %name2, align 8
  %conv3 = trunc i64 %3 to i32
  %4 = inttoptr i32 %conv3 to ptr
  %add = add i32 %1, 1
  %call5 = tail call ptr @strndup_user(ptr noundef %4, i32 noundef %add) #12
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 8
  %call10 = tail call ptr @drm_gem_object_lookup(ptr noundef %file_priv, i32 noundef %7) #12
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, i32 noundef %9) #12
  tail call void @kfree(ptr noundef %call5) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %bo_lock = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %bo_lock, i32 noundef 0) #12
  %num_labels.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 9
  %10 = ptrtoint ptr %num_labels.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_labels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp94.not.i = icmp eq i32 %11, 0
  br i1 %cmp94.not.i, label %if.end14.if.else37.i_crit_edge, label %for.body.lr.ph.i

if.end14.if.else37.i_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else37.i

for.body.lr.ph.i:                                 ; preds = %if.end14
  %bo_labels.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 10
  %12 = ptrtoint ptr %bo_labels.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bo_labels.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %free_slot.097.i = phi i32 [ -1, %for.body.lr.ph.i ], [ %free_slot.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.095.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.vc4_label, ptr %13, i32 %i.095.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.else.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  %call.i = tail call i32 @strcmp(ptr noundef nonnull %15, ptr noundef %call5) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.i = icmp eq i32 %call.i, 0
  br i1 %cmp5.i, label %if.then6.i, label %if.else.i.for.inc.i_crit_edge

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef %call5) #12
  br label %vc4_get_user_label.exit

for.inc.i:                                        ; preds = %if.else.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %free_slot.1.i = phi i32 [ %free_slot.097.i, %if.else.i.for.inc.i_crit_edge ], [ %i.095.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw i32 %i.095.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %11
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %free_slot.1.i)
  %cmp8.not.i = icmp eq i32 %free_slot.1.i, -1
  br i1 %cmp8.not.i, label %for.end.i.if.else37.i_crit_edge, label %if.then9.i

for.end.i.if.else37.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else37.i

if.then9.i:                                       ; preds = %for.end.i
  %num_allocated.i = getelementptr %struct.vc4_label, ptr %13, i32 %free_slot.1.i, i32 1
  %16 = ptrtoint ptr %num_allocated.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_allocated.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp12.not.i = icmp eq i32 %17, 0
  br i1 %cmp12.not.i, label %if.then9.i.vc4_get_user_label.exit.thread41_crit_edge, label %do.end.i, !prof !89

if.then9.i.vc4_get_user_label.exit.thread41_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vc4_get_user_label.exit.thread41

do.end.i:                                         ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 103, i32 noundef 9, ptr noundef null) #12
  br label %vc4_get_user_label.exit.thread41

vc4_get_user_label.exit.thread41:                 ; preds = %do.end.i, %if.then9.i.vc4_get_user_label.exit.thread41_crit_edge
  %18 = ptrtoint ptr %bo_labels.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bo_labels.i, align 8
  %arrayidx35.i = getelementptr %struct.vc4_label, ptr %19, i32 %free_slot.1.i
  %20 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call5, ptr %arrayidx35.i, align 4
  br label %if.then18

if.else37.i:                                      ; preds = %for.end.i.if.else37.i_crit_edge, %if.end14.if.else37.i_crit_edge
  %add.i = add i32 %11, 1
  %bo_labels39.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 10
  %21 = ptrtoint ptr %bo_labels39.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bo_labels39.i, align 8
  %mul.i = mul i32 %add.i, 12
  %call40.i = tail call noalias ptr @krealloc(ptr noundef %22, i32 noundef %mul.i, i32 noundef 3264) #19
  %tobool41.not.i = icmp eq ptr %call40.i, null
  br i1 %tobool41.not.i, label %vc4_get_user_label.exit.thread, label %if.end43.i

vc4_get_user_label.exit.thread:                   ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef %call5) #12
  br label %if.then.i

if.end43.i:                                       ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %num_labels.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_labels.i, align 4
  %25 = ptrtoint ptr %bo_labels39.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call40.i, ptr %bo_labels39.i, align 8
  store i32 %add.i, ptr %num_labels.i, align 4
  %arrayidx48.i = getelementptr %struct.vc4_label, ptr %call40.i, i32 %24
  %26 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call5, ptr %arrayidx48.i, align 4
  %num_allocated52.i = getelementptr %struct.vc4_label, ptr %call40.i, i32 %24, i32 1
  %27 = ptrtoint ptr %num_allocated52.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %num_allocated52.i, align 4
  %size_allocated.i = getelementptr %struct.vc4_label, ptr %call40.i, i32 %24, i32 2
  %28 = ptrtoint ptr %size_allocated.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %size_allocated.i, align 4
  br label %vc4_get_user_label.exit

vc4_get_user_label.exit:                          ; preds = %if.end43.i, %if.then6.i
  %retval.1.i = phi i32 [ %i.095.i, %if.then6.i ], [ %24, %if.end43.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.1.i)
  %cmp16.not = icmp eq i32 %retval.1.i, -1
  br i1 %cmp16.not, label %vc4_get_user_label.exit.if.then.i_crit_edge, label %vc4_get_user_label.exit.if.then18_crit_edge

vc4_get_user_label.exit.if.then18_crit_edge:      ; preds = %vc4_get_user_label.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

vc4_get_user_label.exit.if.then.i_crit_edge:      ; preds = %vc4_get_user_label.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then18:                                        ; preds = %vc4_get_user_label.exit.if.then18_crit_edge, %vc4_get_user_label.exit.thread41
  %retval.1.i44 = phi i32 [ %free_slot.1.i, %vc4_get_user_label.exit.thread41 ], [ %retval.1.i, %vc4_get_user_label.exit.if.then18_crit_edge ]
  tail call fastcc void @vc4_bo_set_label(ptr noundef nonnull %call10, i32 noundef %retval.1.i44)
  br label %if.then.i

if.then.i:                                        ; preds = %if.then18, %vc4_get_user_label.exit.if.then.i_crit_edge, %vc4_get_user_label.exit.thread
  %ret.0 = phi i32 [ 0, %if.then18 ], [ -12, %vc4_get_user_label.exit.if.then.i_crit_edge ], [ -12, %vc4_get_user_label.exit.thread ]
  tail call void @mutex_unlock(ptr noundef %bo_lock) #12
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call10, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !94
  tail call void @llvm.prefetch.p0(ptr nonnull %call10, i32 1, i32 3, i32 1) #12
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call10, ptr nonnull %call10, i32 1, ptr nonnull elementtype(i32) %call10) #12, !srcloc !95
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !89

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call10, i32 noundef 3) #12
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !96
  tail call void @drm_gem_object_free(ptr noundef nonnull %call10) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.then12, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then7 ], [ -2, %if.then12 ], [ -22, %entry.cleanup_crit_edge ], [ %ret.0, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %ret.0, %if.then10.i.i.i.i.i.i ], [ %ret.0, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strndup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vc4_bo_remove_from_cache(ptr noundef %bo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 2
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  %dep_map = getelementptr inbounds %struct.vc4_dev, ptr %2, i32 0, i32 11, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !93

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 187, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %unref_head = getelementptr inbounds %struct.vc4_bo, ptr %bo, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %unref_head) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.vc4_bo, ptr %bo, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %unref_head to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %unref_head, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %9 = ptrtoint ptr %unref_head to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %unref_head, align 4
  %prev.i = getelementptr inbounds %struct.vc4_bo, ptr %bo, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %size_head = getelementptr inbounds %struct.vc4_bo, ptr %bo, i32 0, i32 6
  %call.i.i29 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %size_head) #12
  br i1 %call.i.i29, label %if.end.i.i32, label %list_del.exit.list_del.exit34_crit_edge

list_del.exit.list_del.exit34_crit_edge:          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit34

if.end.i.i32:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i30 = getelementptr inbounds %struct.vc4_bo, ptr %bo, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %prev.i.i30 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i30, align 4
  %13 = ptrtoint ptr %size_head to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %size_head, align 4
  %prev1.i.i.i31 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i31 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i31, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit34

list_del.exit34:                                  ; preds = %if.end.i.i32, %list_del.exit.list_del.exit34_crit_edge
  %17 = ptrtoint ptr %size_head to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %size_head, align 4
  %prev.i33 = getelementptr inbounds %struct.vc4_bo, ptr %bo, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %prev.i33 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i33, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vc4_bo_destroy(ptr noundef %bo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 2
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  %dep_map = getelementptr inbounds %struct.vc4_dev, ptr %2, i32 0, i32 11, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !93

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 169, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  tail call fastcc void @vc4_bo_set_label(ptr noundef %bo, i32 noundef -1)
  %validated_shader = getelementptr inbounds %struct.vc4_bo, ptr %bo, i32 0, i32 7
  %3 = ptrtoint ptr %validated_shader to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %validated_shader, align 8
  %tobool26.not = icmp eq ptr %4, null
  br i1 %tobool26.not, label %if.end.if.end32_crit_edge, label %if.then27

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %uniform_addr_offsets = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %uniform_addr_offsets to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %uniform_addr_offsets, align 4
  tail call void @kfree(ptr noundef %6) #12
  %7 = ptrtoint ptr %validated_shader to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %validated_shader, align 8
  %texture_samples = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %texture_samples to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %texture_samples, align 4
  tail call void @kfree(ptr noundef %10) #12
  %11 = ptrtoint ptr %validated_shader to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %validated_shader, align 8
  tail call void @kfree(ptr noundef %12) #12
  %13 = ptrtoint ptr %validated_shader to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %validated_shader, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %if.end.if.end32_crit_edge
  tail call void @drm_gem_cma_free(ptr noundef %bo) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_cma_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mapping_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_printfn_info(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_free_object(ptr noundef %gem_bo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_gem_object, ptr %gem_bo, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %madv_lock = getelementptr inbounds %struct.vc4_bo, ptr %gem_bo, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %madv_lock, i32 noundef 0) #12
  %madv = getelementptr inbounds %struct.vc4_bo, ptr %gem_bo, i32 0, i32 10
  %2 = ptrtoint ptr %madv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %madv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %usecnt = getelementptr inbounds %struct.vc4_bo, ptr %gem_bo, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usecnt, i32 noundef 4) #12
  %4 = ptrtoint ptr %usecnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %usecnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 8
  %lock.i = getelementptr inbounds %struct.vc4_dev, ptr %7, i32 0, i32 12, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #12
  %8 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1, align 8
  %size_head.i.i = getelementptr inbounds %struct.vc4_bo, ptr %gem_bo, i32 0, i32 6
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %size_head.i.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.vc4_bo_remove_from_purgeable_pool.exit_crit_edge

if.then.vc4_bo_remove_from_purgeable_pool.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %vc4_bo_remove_from_purgeable_pool.exit

if.end.i.i.i.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr inbounds %struct.vc4_bo, ptr %gem_bo, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i.i, align 4
  %12 = ptrtoint ptr %size_head.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %size_head.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %vc4_bo_remove_from_purgeable_pool.exit

vc4_bo_remove_from_purgeable_pool.exit:           ; preds = %if.end.i.i.i.i, %if.then.vc4_bo_remove_from_purgeable_pool.exit_crit_edge
  %16 = ptrtoint ptr %size_head.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %size_head.i.i, ptr %size_head.i.i, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.vc4_bo, ptr %gem_bo, i32 0, i32 6, i32 1
  %17 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %size_head.i.i, ptr %prev.i3.i.i.i, align 4
  %num.i.i = getelementptr inbounds %struct.vc4_dev, ptr %9, i32 0, i32 12, i32 1
  %18 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num.i.i, align 8
  %dec.i.i = add i32 %19, -1
  store i32 %dec.i.i, ptr %num.i.i, align 8
  %size.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %gem_bo, i32 0, i32 5
  %20 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size.i.i, align 8
  %size5.i.i = getelementptr inbounds %struct.vc4_dev, ptr %9, i32 0, i32 12, i32 2
  %22 = ptrtoint ptr %size5.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size5.i.i, align 4
  %sub.i.i = sub i32 %23, %21
  store i32 %sub.i.i, ptr %size5.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock.i) #12
  br label %if.end

if.end:                                           ; preds = %vc4_bo_remove_from_purgeable_pool.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %madv_lock) #12
  %bo_lock = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %bo_lock, i32 noundef 0) #12
  %import_attach = getelementptr inbounds %struct.drm_gem_object, ptr %gem_bo, i32 0, i32 8
  %24 = ptrtoint ptr %import_attach to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %import_attach, align 4
  %tobool5.not = icmp eq ptr %25, null
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @vc4_bo_destroy(ptr noundef %gem_bo)
  br label %out

if.end7:                                          ; preds = %if.end
  %name = getelementptr inbounds %struct.drm_gem_object, ptr %gem_bo, i32 0, i32 6
  %26 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %name, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool8.not = icmp eq i32 %27, 0
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @vc4_bo_destroy(ptr noundef %gem_bo)
  br label %out

if.end10:                                         ; preds = %if.end7
  %vaddr = getelementptr inbounds %struct.drm_gem_cma_object, ptr %gem_bo, i32 0, i32 3
  %28 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vaddr, align 8
  %tobool11.not = icmp eq ptr %29, null
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @vc4_bo_destroy(ptr noundef %gem_bo)
  br label %out

if.end13:                                         ; preds = %if.end10
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %gem_bo, i32 0, i32 5
  %30 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size, align 8
  %div1.i.i = lshr i32 %31, 12
  %sub.i.i60 = add nsw i32 %div1.i.i, -1
  %bo_cache.i = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 8
  %size_list_size.i = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 8, i32 1
  %32 = ptrtoint ptr %size_list_size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size_list_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %sub.i.i60)
  %cmp.not.i = icmp ugt i32 %33, %sub.i.i60
  br i1 %cmp.not.i, label %if.end13.vc4_get_cache_list_for_size.exit_crit_edge, label %if.then.i

if.end13.vc4_get_cache_list_for_size.exit_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %vc4_get_cache_list_for_size.exit

if.then.i:                                        ; preds = %if.end13
  %mul.i = shl i32 %33, 1
  %34 = tail call i32 @llvm.umax.i32(i32 %mul.i, i32 %div1.i.i) #12
  %35 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %34, i32 8) #12
  %36 = extractvalue { i32, i1 } %35, 1
  br i1 %36, label %if.then.i.if.then16_crit_edge, label %if.end7.i.i, !prof !93

if.then.i.if.then16_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

if.end7.i.i:                                      ; preds = %if.then.i
  %37 = extractvalue { i32, i1 } %35, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %37, i32 noundef 3264) #20
  %tobool.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.if.then16_crit_edge, label %for.cond.preheader.i

if.end7.i.i.if.then16_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

for.cond.preheader.i:                             ; preds = %if.end7.i.i
  %38 = ptrtoint ptr %size_list_size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size_list_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp972.not.i = icmp eq i32 %39, 0
  br i1 %cmp972.not.i, label %for.cond.preheader.i.for.cond19.preheader.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.cond19.preheader.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond19.preheader.i

for.cond19.preheader.i:                           ; preds = %if.end16.i.for.cond19.preheader.i_crit_edge, %for.cond.preheader.i.for.cond19.preheader.i_crit_edge
  %.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.cond19.preheader.i_crit_edge ], [ %52, %if.end16.i.for.cond19.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa.i, i32 %34)
  %cmp2075.i = icmp ult i32 %.lcssa.i, %34
  br i1 %cmp2075.i, label %for.cond19.preheader.i.for.body21.i_crit_edge, label %for.cond19.preheader.i.for.end25.i_crit_edge

for.cond19.preheader.i.for.end25.i_crit_edge:     ; preds = %for.cond19.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end25.i

for.cond19.preheader.i.for.body21.i_crit_edge:    ; preds = %for.cond19.preheader.i
  br label %for.body21.i

for.body.i:                                       ; preds = %if.end16.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.073.i = phi i32 [ %inc.i, %if.end16.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %40 = ptrtoint ptr %bo_cache.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bo_cache.i, align 8
  %arrayidx.i = getelementptr %struct.list_head, ptr %41, i32 %i.073.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not.i = icmp eq ptr %43, %arrayidx.i
  %arrayidx14.i = getelementptr %struct.list_head, ptr %call8.i.i, i32 %i.073.i
  br i1 %cmp.i.not.i, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %arrayidx14.i, ptr %arrayidx14.i, align 8
  %prev.i.i = getelementptr %struct.list_head, ptr %call8.i.i, i32 %i.073.i, i32 1
  br label %if.end16.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %43, ptr %arrayidx14.i, align 8
  %prev.i68.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i68.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %arrayidx14.i, ptr %prev.i68.i, align 4
  %prev3.i.i = getelementptr %struct.list_head, ptr %41, i32 %i.073.i, i32 1
  %47 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev3.i.i, align 4
  %prev4.i.i = getelementptr %struct.list_head, ptr %call8.i.i, i32 %i.073.i, i32 1
  %49 = ptrtoint ptr %prev4.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %prev4.i.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else.i, %if.then13.i
  %.sink.i = phi ptr [ %48, %if.else.i ], [ %prev.i.i, %if.then13.i ]
  %50 = ptrtoint ptr %.sink.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %arrayidx14.i, ptr %.sink.i, align 4
  %inc.i = add nuw i32 %i.073.i, 1
  %51 = ptrtoint ptr %size_list_size.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %size_list_size.i, align 4
  %cmp9.i = icmp ult i32 %inc.i, %52
  br i1 %cmp9.i, label %if.end16.i.for.body.i_crit_edge, label %if.end16.i.for.cond19.preheader.i_crit_edge

if.end16.i.for.cond19.preheader.i_crit_edge:      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond19.preheader.i

if.end16.i.for.body.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body21.i:                                     ; preds = %for.body21.i.for.body21.i_crit_edge, %for.cond19.preheader.i.for.body21.i_crit_edge
  %i.176.i = phi i32 [ %inc24.i, %for.body21.i.for.body21.i_crit_edge ], [ %.lcssa.i, %for.cond19.preheader.i.for.body21.i_crit_edge ]
  %arrayidx22.i = getelementptr %struct.list_head, ptr %call8.i.i, i32 %i.176.i
  %53 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %arrayidx22.i, ptr %arrayidx22.i, align 8
  %prev.i69.i = getelementptr %struct.list_head, ptr %call8.i.i, i32 %i.176.i, i32 1
  %54 = ptrtoint ptr %prev.i69.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %arrayidx22.i, ptr %prev.i69.i, align 4
  %inc24.i = add i32 %i.176.i, 1
  %exitcond.not.i = icmp eq i32 %inc24.i, %34
  br i1 %exitcond.not.i, label %for.body21.i.for.end25.i_crit_edge, label %for.body21.i.for.body21.i_crit_edge

for.body21.i.for.body21.i_crit_edge:              ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body21.i

for.body21.i.for.end25.i_crit_edge:               ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end25.i

for.end25.i:                                      ; preds = %for.body21.i.for.end25.i_crit_edge, %for.cond19.preheader.i.for.end25.i_crit_edge
  %55 = ptrtoint ptr %bo_cache.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bo_cache.i, align 8
  tail call void @kfree(ptr noundef %56) #12
  %57 = ptrtoint ptr %bo_cache.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call8.i.i, ptr %bo_cache.i, align 8
  %58 = ptrtoint ptr %size_list_size.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %34, ptr %size_list_size.i, align 4
  br label %vc4_get_cache_list_for_size.exit

vc4_get_cache_list_for_size.exit:                 ; preds = %for.end25.i, %if.end13.vc4_get_cache_list_for_size.exit_crit_edge
  %59 = ptrtoint ptr %bo_cache.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bo_cache.i, align 8
  %arrayidx37.i = getelementptr %struct.list_head, ptr %60, i32 %sub.i.i60
  %tobool15.not = icmp eq ptr %arrayidx37.i, null
  br i1 %tobool15.not, label %vc4_get_cache_list_for_size.exit.if.then16_crit_edge, label %if.end17

vc4_get_cache_list_for_size.exit.if.then16_crit_edge: ; preds = %vc4_get_cache_list_for_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

if.then16:                                        ; preds = %vc4_get_cache_list_for_size.exit.if.then16_crit_edge, %if.end7.i.i.if.then16_crit_edge, %if.then.i.if.then16_crit_edge
  tail call fastcc void @vc4_bo_destroy(ptr noundef %gem_bo)
  br label %out

if.end17:                                         ; preds = %vc4_get_cache_list_for_size.exit
  %validated_shader = getelementptr inbounds %struct.vc4_bo, ptr %gem_bo, i32 0, i32 7
  %61 = ptrtoint ptr %validated_shader to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %validated_shader, align 8
  %tobool18.not = icmp eq ptr %62, null
  br i1 %tobool18.not, label %if.end17.if.end24_crit_edge, label %if.then19

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %uniform_addr_offsets = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %uniform_addr_offsets to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %uniform_addr_offsets, align 4
  tail call void @kfree(ptr noundef %64) #12
  %65 = ptrtoint ptr %validated_shader to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %validated_shader, align 8
  %texture_samples = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %texture_samples to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %texture_samples, align 4
  tail call void @kfree(ptr noundef %68) #12
  %69 = ptrtoint ptr %validated_shader to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %validated_shader, align 8
  tail call void @kfree(ptr noundef %70) #12
  %71 = ptrtoint ptr %validated_shader to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %validated_shader, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.end17.if.end24_crit_edge
  %72 = ptrtoint ptr %madv to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 3, ptr %madv, align 4
  %usecnt26 = getelementptr inbounds %struct.vc4_bo, ptr %gem_bo, i32 0, i32 9
  %call.i.i.i62 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt26, i32 noundef 4) #12
  %73 = ptrtoint ptr %usecnt26 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile i32 0, ptr %usecnt26, align 4
  %t_format = getelementptr inbounds %struct.vc4_bo, ptr %gem_bo, i32 0, i32 3
  %74 = ptrtoint ptr %t_format to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %t_format, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %75 = load volatile i32, ptr @jiffies, align 128
  %free_time = getelementptr inbounds %struct.vc4_bo, ptr %gem_bo, i32 0, i32 5
  %76 = ptrtoint ptr %free_time to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %free_time, align 4
  %size_head = getelementptr inbounds %struct.vc4_bo, ptr %gem_bo, i32 0, i32 6
  %77 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx37.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %size_head, ptr noundef nonnull %arrayidx37.i, ptr noundef %78) #12
  br i1 %call.i.i, label %if.end.i.i64, label %if.end24.list_add.exit_crit_edge

if.end24.list_add.exit_crit_edge:                 ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i64:                                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %size_head, ptr %prev1.i.i, align 4
  %80 = ptrtoint ptr %size_head to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %78, ptr %size_head, align 4
  %prev3.i.i63 = getelementptr inbounds %struct.vc4_bo, ptr %gem_bo, i32 0, i32 6, i32 1
  %81 = ptrtoint ptr %prev3.i.i63 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %arrayidx37.i, ptr %prev3.i.i63, align 4
  %82 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %size_head, ptr %arrayidx37.i, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i64, %if.end24.list_add.exit_crit_edge
  %unref_head = getelementptr inbounds %struct.vc4_bo, ptr %gem_bo, i32 0, i32 4
  %time_list = getelementptr inbounds %struct.vc4_dev, ptr %1, i32 0, i32 8, i32 2
  %83 = ptrtoint ptr %time_list to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %time_list, align 4
  %call.i.i65 = tail call zeroext i1 @__list_add_valid(ptr noundef %unref_head, ptr noundef %time_list, ptr noundef %84) #12
  br i1 %call.i.i65, label %if.end.i.i68, label %list_add.exit.list_add.exit69_crit_edge

list_add.exit.list_add.exit69_crit_edge:          ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit69

if.end.i.i68:                                     ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i66 = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %prev1.i.i66 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %unref_head, ptr %prev1.i.i66, align 4
  %86 = ptrtoint ptr %unref_head to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %84, ptr %unref_head, align 4
  %prev3.i.i67 = getelementptr inbounds %struct.vc4_bo, ptr %gem_bo, i32 0, i32 4, i32 1
  %87 = ptrtoint ptr %prev3.i.i67 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %time_list, ptr %prev3.i.i67, align 4
  %88 = ptrtoint ptr %time_list to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %unref_head, ptr %time_list, align 4
  br label %list_add.exit69

list_add.exit69:                                  ; preds = %if.end.i.i68, %list_add.exit.list_add.exit69_crit_edge
  tail call fastcc void @vc4_bo_set_label(ptr noundef %gem_bo, i32 noundef 7)
  tail call fastcc void @vc4_bo_cache_free_old(ptr noundef %1)
  br label %out

out:                                              ; preds = %list_add.exit69, %if.then16, %if.then12, %if.then9, %if.then6
  tail call void @mutex_unlock(ptr noundef %bo_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vc4_prime_export(ptr noundef %obj, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %validated_shader = getelementptr inbounds %struct.vc4_bo, ptr %obj, i32 0, i32 7
  %0 = ptrtoint ptr %validated_shader to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %validated_shader, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.20) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @vc4_bo_inc_usecnt(ptr noundef %obj)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21) #12
  %2 = inttoptr i32 %call2 to ptr
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @drm_gem_prime_export(ptr noundef %obj, i32 noundef %flags) #12
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @vc4_bo_dec_usecnt(ptr noundef %obj)
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end6.cleanup_crit_edge, %if.then4, %if.then
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then ], [ %2, %if.then4 ], [ %call7, %if.then9 ], [ %call7, %if.end6.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @drm_gem_cma_object_get_sg_table(ptr noundef %obj) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call ptr @drm_gem_cma_get_sg_table(ptr noundef %obj) #12
  ret ptr %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drm_gem_cma_object_vmap(ptr noundef %obj, ptr noundef %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @drm_gem_cma_vmap(ptr noundef %obj, ptr noundef %map) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_gem_object_mmap(ptr noundef %obj, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %validated_shader = getelementptr inbounds %struct.vc4_bo, ptr %obj, i32 0, i32 7
  %0 = ptrtoint ptr %validated_shader to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %validated_shader, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %2 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_flags, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.22) #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %madv = getelementptr inbounds %struct.vc4_bo, ptr %obj, i32 0, i32 10
  %4 = ptrtoint ptr %madv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %madv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp4 = icmp eq i32 %5, 1
  %cond = select i1 %cmp4, ptr @.str.24, ptr @.str.25
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.23, ptr noundef nonnull %cond) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = tail call i32 @drm_gem_cma_mmap(ptr noundef %obj, ptr noundef %vma) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then2, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then2 ], [ %call6, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vc4_bo_cache_free_old(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %0, -100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %1 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 11, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !93

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 507, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %time_list = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 8, i32 2
  %2 = ptrtoint ptr %time_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %time_list, align 4
  %cmp.i.not51 = icmp eq ptr %3, %time_list
  br i1 %cmp.i.not51, label %if.end.cleanup41_crit_edge, label %while.body.lr.ph

if.end.cleanup41_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup41

while.body.lr.ph:                                 ; preds = %if.end
  %prev = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 8, i32 2, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end40.while.body_crit_edge, %while.body.lr.ph
  %4 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev, align 4
  %free_time = getelementptr i8, ptr %5, i32 8
  %6 = ptrtoint ptr %free_time to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %free_time, align 4
  %sub33 = sub i32 %sub, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub33)
  %cmp34 = icmp slt i32 %sub33, 0
  br i1 %cmp34, label %if.then35, label %if.end40

if.then35:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %time_timer = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 8, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %8, 100
  %call38 = tail call i32 @round_jiffies_up(i32 noundef %add) #12
  %call39 = tail call i32 @mod_timer(ptr noundef %time_timer, i32 noundef %call38) #12
  br label %cleanup41

if.end40:                                         ; preds = %while.body
  %add.ptr = getelementptr i8, ptr %5, i32 -388
  tail call fastcc void @vc4_bo_remove_from_cache(ptr noundef %add.ptr)
  tail call fastcc void @vc4_bo_destroy(ptr noundef %add.ptr)
  %9 = ptrtoint ptr %time_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %time_list, align 4
  %cmp.i.not = icmp eq ptr %10, %time_list
  br i1 %cmp.i.not, label %if.end40.cleanup41_crit_edge, label %if.end40.while.body_crit_edge

if.end40.while.body_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end40.cleanup41_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup41

cleanup41:                                        ; preds = %if.end40.cleanup41_crit_edge, %if.then35, %if.end.cleanup41_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_up(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_prime_export(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_cma_get_sg_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_cma_vmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_cma_mmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_vm_open(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_vm_close(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_fault(ptr nocapture noundef readonly %vmf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_private_data, align 4
  %madv_lock = getelementptr inbounds %struct.vc4_bo, ptr %3, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %madv_lock, i32 noundef 0) #12
  %madv = getelementptr inbounds %struct.vc4_bo, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %madv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %madv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !89

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 701, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %madv_lock) #12
  ret i32 2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_v3d_bin_bo_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_printfn_seq_file(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_puts_seq_file(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nounwind allocsize(1) }
attributes #20 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !16, !17, !19, !20, !22, !24, !25, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !49, !50, !52, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77}
!llvm.named.register.sp = !{!79}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @vc4_create_object.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/vc4/vc4_bo.c", i32 398, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/vc4/vc4_bo.c", i32 457, i32 3}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/vc4/vc4_bo.c", i32 795, i32 3}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/vc4/vc4_bo.c", i32 823, i32 3}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @vc4_create_shader_bo_ioctl._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @vc4_create_shader_bo_ioctl._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/vc4/vc4_bo.c", i32 828, i32 3}
!15 = !{ptr @vc4_create_shader_bo_ioctl._entry.6, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @vc4_create_shader_bo_ioctl._entry_ptr.8, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @vc4_bo_cache_init.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/vc4/vc4_bo.c", i32 973, i32 2}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/vc4/vc4_bo.c", i32 975, i32 28}
!22 = !{ptr @vc4_bo_cache_init.__key.11, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/vc4/vc4_bo.c", i32 979, i32 2}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @vc4_bo_cache_init.__key.13, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/vc4/vc4_bo.c", i32 980, i32 2}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/vc4/vc4_bo.c", i32 982, i32 9}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/vc4/vc4_bo.c", i32 50, i32 17}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/vc4/vc4_bo.c", i32 58, i32 17}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/vc4/vc4_bo.c", i32 58, i32 44}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/vc4/vc4_bo.c", i32 62, i32 44}
!38 = !{ptr @vc4_gem_object_funcs, !39, !"vc4_gem_object_funcs", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/vc4/vc4_bo.c", i32 732, i32 42}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/vc4/vc4_bo.c", i32 669, i32 3}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/vc4/vc4_bo.c", i32 680, i32 3}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/vc4/vc4_bo.c", i32 712, i32 3}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/vc4/vc4_bo.c", i32 717, i32 3}
!48 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @vc4_vm_ops, !51, !"vc4_vm_ops", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/vc4/vc4_bo.c", i32 726, i32 42}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/vc4/vc4_bo.c", i32 27, i32 2}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/vc4/vc4_bo.c", i32 28, i32 2}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/vc4/vc4_bo.c", i32 29, i32 2}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/vc4/vc4_bo.c", i32 30, i32 2}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/vc4/vc4_bo.c", i32 31, i32 2}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/vc4/vc4_bo.c", i32 32, i32 2}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/vc4/vc4_bo.c", i32 33, i32 2}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/vc4/vc4_bo.c", i32 34, i32 2}
!75 = distinct !{null, !76, !"bo_type_names", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/vc4/vc4_bo.c", i32 26, i32 27}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/vc4/vc4_bo.c", i32 997, i32 4}
!79 = !{!"sp"}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{!"branch_weights", i32 2000, i32 1}
!90 = !{!91}
!91 = distinct !{!91, !92, !"drm_info_printer: %agg.result"}
!92 = distinct !{!92, !"drm_info_printer"}
!93 = !{!"branch_weights", i32 1, i32 2000}
!94 = !{i64 2148565200}
!95 = !{i64 2148479664, i64 2148479696, i64 2148479725, i64 2148479759, i64 2148479790, i64 2148479813}
!96 = !{i64 2150191214}
!97 = !{i64 961182, i64 961206, i64 961227, i64 961244, i64 961261}
!98 = !{i8 0, i8 2}
!99 = !{i64 2152886890, i64 2152886915}
!100 = !{i64 5382445}
!101 = !{i64 5382642}
!102 = !{i64 2152867875}
!103 = !{!104}
!104 = distinct !{!104, !105, !"drm_seq_file_printer: %agg.result"}
!105 = distinct !{!105, !"drm_seq_file_printer"}
