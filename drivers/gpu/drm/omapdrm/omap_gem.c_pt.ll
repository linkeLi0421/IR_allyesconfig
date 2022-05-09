; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/omapdrm/omap_gem.c_pt.bc'
source_filename = "../drivers/gpu/drm/omapdrm/omap_gem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_gem_object_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.omap_gem_object = type { %struct.drm_gem_object, %struct.list_head, i32, i16, i16, i32, %struct.mutex, i32, %struct.refcount_struct, ptr, ptr, ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.80, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
%struct.anon.80 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.88 = type { i32, ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.omap_drm_private = type { ptr, ptr, i32, ptr, ptr, i8, i32, [8 x %struct.omap_drm_pipeline], [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], %struct.drm_private_obj, ptr, ptr, %struct.mutex, %struct.list_head, ptr, i8, ptr, %struct.spinlock, %struct.list_head, i32, i32 }
%struct.omap_drm_pipeline = type { ptr, ptr, ptr, ptr, i32 }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.77, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.77 = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.tiler_block = type { %struct.list_head, %struct.tcm_area, i32 }
%struct.tcm_area = type { i8, ptr, %struct.tcm_pt, %struct.tcm_pt }
%struct.tcm_pt = type { i16, i16 }
%union.omap_gem_size = type { i32 }
%struct.anon.91 = type { i16, i16 }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.omap_drm_usergart = type { [2 x %struct.omap_drm_usergart_entry], i32, i32, i32, i32, i32 }
%struct.omap_drm_usergart_entry = type { ptr, i32, ptr, i32 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.81, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.82, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.83, ptr, %struct.address_space, %struct.list_head, %union.anon.84, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.81 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.82 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.83 = type { ptr }
%union.anon.84 = type { ptr }

@omap_gem_mmap_offset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 144, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"could not allocate mmap offset\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"omap_gem_mmap_offset\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/omapdrm/omap_gem.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap_gem_mmap_offset._entry_ptr = internal global ptr @omap_gem_mmap_offset._entry, section ".printk_index", align 4
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mmap failed: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@omap_gem_roll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 651, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"invalid roll: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"omap_gem_roll\00", [18 x i8] zeroinitializer }, align 32
@omap_gem_roll._entry_ptr = internal global ptr @omap_gem_roll._entry, section ".printk_index", align 4
@omap_gem_roll._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 668, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"could not repin: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@omap_gem_roll._entry_ptr.10 = internal global ptr @omap_gem_roll._entry.8, section ".printk_index", align 4
@omap_gem_dma_sync_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 738, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: failed to map page\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"omap_gem_dma_sync_buffer\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@omap_gem_dma_sync_buffer._entry_ptr = internal global ptr @omap_gem_dma_sync_buffer._entry, section ".printk_index", align 4
@omap_gem_pin._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 800, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"could not remap: %d (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"omap_gem_pin\00", [19 x i8] zeroinitializer }, align 32
@omap_gem_pin._entry_ptr = internal global ptr @omap_gem_pin._entry, section ".printk_index", align 4
@omap_gem_pin._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 810, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"could not pin: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@omap_gem_pin._entry_ptr.18 = internal global ptr @omap_gem_pin._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"got dma address: %pad\0A\00", [41 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@omap_gem_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.20, ptr @.str.2, i32 1098, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"omap_gem_resume\00", [16 x i8] zeroinitializer }, align 32
@omap_gem_resume._entry_ptr = internal global ptr @omap_gem_resume._entry, section ".printk_index", align 4
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%08x: %2d (%2d) %08llx %pad (%2d) %p %4d\00", [55 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" %dx%d\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" (%dx%d, %dx%d)\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" %zu\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"   \00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Total %d objects, %zu bytes\0A\00", [35 x i8] zeroinitializer }, align 32
@omap_gem_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&omap_obj->lock\00", [16 x i8] zeroinitializer }, align 32
@omap_gem_object_funcs = internal constant { %struct.drm_gem_object_funcs, [48 x i8] } { %struct.drm_gem_object_funcs { ptr @omap_gem_free_object, ptr null, ptr null, ptr null, ptr @omap_gem_prime_export, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_gem_vm_ops }, [48 x i8] zeroinitializer }, align 32
@__const.omap_gem_init.fmts = private unnamed_addr constant [3 x i32] [i32 0, i32 1, i32 2], align 4
@omap_gem_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 1456, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"DMM not available, disable DMM support\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"omap_gem_init\00", [18 x i8] zeroinitializer }, align 32
@omap_gem_init._entry_ptr = internal global ptr @omap_gem_init._entry, section ".printk_index", align 4
@omap_gem_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 1486, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"reserve failed: %d, %d, %ld\0A\00", [35 x i8] zeroinitializer }, align 32
@omap_gem_init._entry_ptr.33 = internal global ptr @omap_gem_init._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%d:%d: %dx%d: dma_addr=%pad stride=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@omap_gem_attach_pages._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 241, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"could not get pages: %ld\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"omap_gem_attach_pages\00", [42 x i8] zeroinitializer }, align 32
@omap_gem_attach_pages._entry_ptr = internal global ptr @omap_gem_attach_pages._entry, section ".printk_index", align 4
@omap_gem_attach_pages._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.36, ptr @.str.2, i32 261, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@omap_gem_attach_pages._entry_ptr.38 = internal global ptr @omap_gem_attach_pages._entry.37, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@omap_gem_unpin_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 862, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"could not unpin pages: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"omap_gem_unpin_locked\00", [42 x i8] zeroinitializer }, align 32
@omap_gem_unpin_locked._entry_ptr = internal global ptr @omap_gem_unpin_locked._entry, section ".printk_index", align 4
@omap_gem_unpin_locked._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 867, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"could not release unmap: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@omap_gem_unpin_locked._entry_ptr.43 = internal global ptr @omap_gem_unpin_locked._entry.41, section ".printk_index", align 4
@omap_gem_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr @drm_gem_vm_open, ptr @drm_gem_vm_close, ptr null, ptr null, ptr null, ptr @omap_gem_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@omap_gem_fault_2d._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 453, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to pin: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"omap_gem_fault_2d\00", [46 x i8] zeroinitializer }, align 32
@omap_gem_fault_2d._entry_ptr = internal global ptr @omap_gem_fault_2d._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.46 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.47 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.48 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 512, i64 768]
@__sancov_gen_cov_switch_values.50 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.51 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 6]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 512, i64 768]
@__sancov_gen_cov_switch_values.54 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.55 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 512, i64 768]
@__sancov_gen_cov_switch_values.57 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 144, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 534, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 651, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 668, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 737, i32 5 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 799, i32 5 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 809, i32 5 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 817, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1098, i32 5 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1124, i32 16 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1131, i32 17 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1134, i32 18 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1139, i32 17 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1144, i32 16 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1155, i32 17 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1161, i32 16 }
@___asan_gen_.151 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1309, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant [22 x i8] c"omap_gem_object_funcs\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1255, i32 42 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1456, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1484, i32 5 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1492, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 241, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 260, i32 5 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 861, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 866, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant [16 x i8] c"omap_gem_vm_ops\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1249, i32 42 }
@___asan_gen_.208 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.215 = private constant [38 x i8] c"../drivers/gpu/drm/omapdrm/omap_gem.c\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 453, i32 3 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @omap_gem_attach_pages._entry, ptr @omap_gem_attach_pages._entry.37, ptr @omap_gem_attach_pages._entry_ptr, ptr @omap_gem_attach_pages._entry_ptr.38, ptr @omap_gem_dma_sync_buffer._entry, ptr @omap_gem_dma_sync_buffer._entry_ptr, ptr @omap_gem_fault_2d._entry, ptr @omap_gem_fault_2d._entry_ptr, ptr @omap_gem_init._entry, ptr @omap_gem_init._entry.31, ptr @omap_gem_init._entry_ptr, ptr @omap_gem_init._entry_ptr.33, ptr @omap_gem_mmap_offset._entry, ptr @omap_gem_mmap_offset._entry_ptr, ptr @omap_gem_pin._entry, ptr @omap_gem_pin._entry.16, ptr @omap_gem_pin._entry_ptr, ptr @omap_gem_pin._entry_ptr.18, ptr @omap_gem_resume._entry, ptr @omap_gem_resume._entry_ptr, ptr @omap_gem_roll._entry, ptr @omap_gem_roll._entry.8, ptr @omap_gem_roll._entry_ptr, ptr @omap_gem_roll._entry_ptr.10, ptr @omap_gem_unpin_locked._entry, ptr @omap_gem_unpin_locked._entry.41, ptr @omap_gem_unpin_locked._entry_ptr, ptr @omap_gem_unpin_locked._entry_ptr.43, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @omap_gem_new.__key, ptr @.str.28, ptr @omap_gem_object_funcs, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @omap_gem_vm_ops, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_gem_mmap_offset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_gem_roll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_gem_roll._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_gem_dma_sync_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_gem_pin._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_gem_pin._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_gem_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_gem_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_gem_object_funcs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_gem_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_gem_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_gem_attach_pages._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_gem_attach_pages._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_gem_unpin_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_gem_unpin_locked._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_gem_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_gem_fault_2d._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @omap_gem_mmap_offset(ptr noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %size1.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 5
  %2 = ptrtoint ptr %size1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size1.i, align 8
  %flags.i = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 2
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 8
  %and.i = lshr i32 %5, 8
  %6 = and i32 %and.i, 15
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %sw.default.i.i [
    i32 0, label %entry.omap_gem_mmap_size.exit_crit_edge
    i32 1, label %entry.gem2fmt.exit.i_crit_edge
    i32 2, label %sw.bb1.i.i
    i32 3, label %sw.bb2.i.i
  ]

entry.gem2fmt.exit.i_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %gem2fmt.exit.i

entry.omap_gem_mmap_size.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_gem_mmap_size.exit

sw.bb1.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %gem2fmt.exit.i

sw.bb2.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %gem2fmt.exit.i

sw.default.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %gem2fmt.exit.i

gem2fmt.exit.i:                                   ; preds = %sw.default.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %entry.gem2fmt.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 3, %sw.default.i.i ], [ 2, %sw.bb2.i.i ], [ 1, %sw.bb1.i.i ], [ 0, %entry.gem2fmt.exit.i_crit_edge ]
  %width.i = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 3
  %8 = ptrtoint ptr %width.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %width.i, align 4
  %height.i = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 4
  %10 = ptrtoint ptr %height.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %height.i, align 2
  %call3.i = tail call i32 @tiler_vsize(i32 noundef %retval.0.i.i, i16 noundef zeroext %9, i16 noundef zeroext %11) #10
  br label %omap_gem_mmap_size.exit

omap_gem_mmap_size.exit:                          ; preds = %gem2fmt.exit.i, %entry.omap_gem_mmap_size.exit_crit_edge
  %size.0.i = phi i32 [ %call3.i, %gem2fmt.exit.i ], [ %3, %entry.omap_gem_mmap_size.exit_crit_edge ]
  %call2 = tail call i32 @drm_gem_create_mmap_offset_size(ptr noundef %obj, i32 noundef %size.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %omap_gem_mmap_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev3 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str) #13
  br label %cleanup

if.end:                                           ; preds = %omap_gem_mmap_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  %start.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 4, i32 1, i32 1
  %14 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %start.i, align 8
  %shl.i = shl i64 %15, 12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i64 [ 0, %do.end ], [ %shl.i, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_gem_mmap_size(ptr nocapture noundef readonly %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %size1 = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 5
  %0 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size1, align 8
  %flags = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = lshr i32 %3, 8
  %4 = and i32 %and, 15
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %4, label %sw.default.i [
    i32 0, label %entry.if.end_crit_edge
    i32 1, label %entry.gem2fmt.exit_crit_edge
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb2.i
  ]

entry.gem2fmt.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %gem2fmt.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %gem2fmt.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %gem2fmt.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %gem2fmt.exit

gem2fmt.exit:                                     ; preds = %sw.default.i, %sw.bb2.i, %sw.bb1.i, %entry.gem2fmt.exit_crit_edge
  %retval.0.i = phi i32 [ 3, %sw.default.i ], [ 2, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 0, %entry.gem2fmt.exit_crit_edge ]
  %width = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 3
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %width, align 4
  %height = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 4
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %height, align 2
  %call3 = tail call i32 @tiler_vsize(i32 noundef %retval.0.i, i16 noundef zeroext %7, i16 noundef zeroext %9) #10
  br label %if.end

if.end:                                           ; preds = %gem2fmt.exit, %entry.if.end_crit_edge
  %size.0 = phi i32 [ %call3, %gem2fmt.exit ], [ %1, %entry.if.end_crit_edge ]
  ret i32 %size.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_create_mmap_offset_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @omap_gem_flags(ptr nocapture noundef readonly %obj) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tiler_vsize(i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_gem_mmap(ptr noundef %filp, ptr noundef %vma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @drm_gem_mmap(ptr noundef %filp, ptr noundef %vma) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %0 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_private_data, align 4
  %call1 = tail call i32 @omap_gem_mmap_obj(ptr noundef %1, ptr noundef %vma)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_mmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_gem_mmap_obj(ptr nocapture noundef readonly %obj, ptr noundef %vma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %0 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_flags, align 4
  %and = and i32 %1, -268436481
  %or = or i32 %and, 268435456
  store i32 %or, ptr %vm_flags, align 4
  %flags = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and2 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @vm_get_page_prot(i32 noundef %or) #10
  %and4 = and i32 %call, -61
  %or5 = or i32 %and4, 4
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %4 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or5, ptr %vm_page_prot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %and7 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else15, label %if.then9

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 @vm_get_page_prot(i32 noundef %or) #10
  %and12 = and i32 %call11, -61
  %vm_page_prot14 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %5 = ptrtoint ptr %vm_page_prot14 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and12, ptr %vm_page_prot14, align 4
  br label %cleanup

if.else15:                                        ; preds = %if.else
  %filp = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 3
  %6 = ptrtoint ptr %filp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %filp, align 4
  %tobool16.not = icmp eq ptr %7, null
  br i1 %tobool16.not, label %do.end, label %if.end41, !prof !103

do.end:                                           ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 559, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end41:                                         ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #12
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %8 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %vm_pgoff, align 4
  %9 = ptrtoint ptr %filp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %filp, align 4
  tail call void @vma_set_file(ptr noundef %vma, ptr noundef %10) #10
  %11 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vm_flags, align 4
  %call44 = tail call i32 @vm_get_page_prot(i32 noundef %12) #10
  %vm_page_prot45 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %13 = ptrtoint ptr %vm_page_prot45 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call44, ptr %vm_page_prot45, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %do.end, %if.then9, %if.then
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then9 ], [ 0, %if.end41 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_get_page_prot(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vma_set_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_gem_dumb_create(ptr noundef %file, ptr noundef %dev, ptr noundef %args) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %div13 = lshr i32 %sub, 3
  %pitch = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 5
  %4 = ptrtoint ptr %pitch to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div13, ptr %pitch, align 4
  %5 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %args, align 8
  %mul2 = mul i32 %div13, %6
  %add3 = add i32 %mul2, 4095
  %and = and i32 %add3, -4096
  %conv = zext i32 %and to i64
  %size = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 6
  %7 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv, ptr %size, align 8
  %handle = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %and, 0
  %call = tail call i32 @omap_gem_new_handle(ptr noundef %dev, ptr noundef %file, [1 x i32] %.fca.0.insert, i32 noundef 3, ptr noundef %handle)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_gem_new_handle(ptr noundef %dev, ptr noundef %file, [1 x i32] %gsize.coerce, i32 noundef %flags, ptr noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @omap_gem_new(ptr noundef %dev, [1 x i32] %gsize.coerce, i32 noundef %flags)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @drm_gem_handle_create(ptr noundef %file, ptr noundef nonnull %call, ptr noundef %handle) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.i, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @omap_gem_free_object(ptr noundef nonnull %call)
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #10, !srcloc !105
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !106

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !107
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then4 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i.i ], [ 0, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_gem_dumb_map_offset(ptr noundef %file, ptr nocapture noundef readnone %dev, i32 noundef %handle, ptr nocapture noundef writeonly %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file, i32 noundef %handle) #10
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.fail_crit_edge, label %if.end

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end:                                           ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.drm_gem_object, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1.i, align 8
  %size1.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %size1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size1.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.omap_gem_object, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i.i, align 8
  %and.i.i = lshr i32 %5, 8
  %6 = and i32 %and.i.i, 15
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %6, label %sw.default.i.i.i [
    i32 0, label %if.end.omap_gem_mmap_size.exit.i_crit_edge
    i32 1, label %if.end.gem2fmt.exit.i.i_crit_edge
    i32 2, label %sw.bb1.i.i.i
    i32 3, label %sw.bb2.i.i.i
  ]

if.end.gem2fmt.exit.i.i_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %gem2fmt.exit.i.i

if.end.omap_gem_mmap_size.exit.i_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_gem_mmap_size.exit.i

sw.bb1.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %gem2fmt.exit.i.i

sw.bb2.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %gem2fmt.exit.i.i

sw.default.i.i.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %gem2fmt.exit.i.i

gem2fmt.exit.i.i:                                 ; preds = %sw.default.i.i.i, %sw.bb2.i.i.i, %sw.bb1.i.i.i, %if.end.gem2fmt.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 3, %sw.default.i.i.i ], [ 2, %sw.bb2.i.i.i ], [ 1, %sw.bb1.i.i.i ], [ 0, %if.end.gem2fmt.exit.i.i_crit_edge ]
  %width.i.i = getelementptr inbounds %struct.omap_gem_object, ptr %call, i32 0, i32 3
  %8 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %width.i.i, align 4
  %height.i.i = getelementptr inbounds %struct.omap_gem_object, ptr %call, i32 0, i32 4
  %10 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %height.i.i, align 2
  %call3.i.i = tail call i32 @tiler_vsize(i32 noundef %retval.0.i.i.i, i16 noundef zeroext %9, i16 noundef zeroext %11) #10
  br label %omap_gem_mmap_size.exit.i

omap_gem_mmap_size.exit.i:                        ; preds = %gem2fmt.exit.i.i, %if.end.omap_gem_mmap_size.exit.i_crit_edge
  %size.0.i.i = phi i32 [ %call3.i.i, %gem2fmt.exit.i.i ], [ %3, %if.end.omap_gem_mmap_size.exit.i_crit_edge ]
  %call2.i = tail call i32 @drm_gem_create_mmap_offset_size(ptr noundef nonnull %call, i32 noundef %size.0.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %omap_gem_mmap_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev3.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev3.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str) #13
  br label %if.then.i

if.end.i:                                         ; preds = %omap_gem_mmap_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %start.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %call, i32 0, i32 4, i32 1, i32 1
  %14 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %start.i.i, align 8
  %shl.i.i = shl i64 %15, 12
  br label %if.then.i

if.then.i:                                        ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i64 [ 0, %do.end.i ], [ %shl.i.i, %if.end.i ]
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %retval.0.i, ptr %offset, align 8
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #10, !srcloc !105
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.fail_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !106

if.end5.i.i.i.i.i.i.fail_crit_edge:               ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #10
  br label %fail

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !107
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #10
  br label %fail

fail:                                             ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.fail_crit_edge, %entry.fail_crit_edge
  %ret.0 = phi i32 [ -2, %entry.fail_crit_edge ], [ 0, %if.end5.i.i.i.i.i.i.fail_crit_edge ], [ 0, %if.then10.i.i.i.i.i.i ], [ 0, %if.then.i.i.i ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_gem_roll(ptr noundef %obj, i32 noundef %roll) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 5
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 8
  %shr = lshr i32 %1, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %roll)
  %cmp = icmp ult i32 %shr, %roll
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.6, i32 noundef %roll) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %roll2 = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 5
  %6 = ptrtoint ptr %roll2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %roll, ptr %roll2, align 8
  %lock = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %block = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 10
  %7 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %block, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end.fail_crit_edge, label %if.then3

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.then3:                                         ; preds = %if.end
  %call = tail call fastcc i32 @omap_gem_attach_pages(ptr noundef %obj)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end6, label %if.then3.fail_crit_edge

if.then3.fail_crit_edge:                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end6:                                          ; preds = %if.then3
  %9 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %block, align 4
  %pages = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 11
  %11 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pages, align 8
  %call8 = tail call i32 @tiler_pin(ptr noundef %10, ptr noundef %12, i32 noundef %shr, i32 noundef %roll, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end6.fail_crit_edge, label %do.end13

if.end6.fail_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

do.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %dev14 = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %13 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev14, align 8
  %dev15 = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.9, i32 noundef %call8) #13
  br label %fail

fail:                                             ; preds = %do.end13, %if.end6.fail_crit_edge, %if.then3.fail_crit_edge, %if.end.fail_crit_edge
  %ret.0 = phi i32 [ %call, %if.then3.fail_crit_edge ], [ %call8, %do.end13 ], [ 0, %if.end6.fail_crit_edge ], [ 0, %if.end.fail_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %fail, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %fail ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omap_gem_attach_pages(ptr noundef %obj) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 5
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 8
  %shr = lshr i32 %3, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !103

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 2
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 8
  %and = and i32 %6, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %pages27 = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 11
  %7 = ptrtoint ptr %pages27 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pages27, align 8
  %tobool28.not = icmp eq ptr %8, null
  br i1 %tobool28.not, label %if.end30, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end30:                                         ; preds = %lor.lhs.false
  %call31 = tail call ptr @drm_gem_get_pages(ptr noundef %obj) #10
  %cmp.i = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end36, label %if.end41

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1, align 8
  %dev38 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev38, align 4
  %13 = ptrtoint ptr %call31 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.35, i32 noundef %13) #13
  br label %cleanup

if.end41:                                         ; preds = %if.end30
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 8
  %and43 = and i32 %15, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  %16 = shl nuw nsw i32 %shr, 2
  br i1 %tobool44.not, label %if.end7.i.i, label %if.end7.i

if.end7.i:                                        ; preds = %if.end41
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 3264) #14
  %tobool47.not = icmp eq ptr %call8.i, null
  br i1 %tobool47.not, label %if.end7.i.free_pages_crit_edge, label %for.cond.preheader

if.end7.i.free_pages_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_pages

for.cond.preheader:                               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %3)
  %cmp50130.not = icmp ult i32 %3, 4096
  br i1 %cmp50130.not, label %for.cond.preheader.if.end75_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end75_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev51 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %umax = call i32 @llvm.umax.i32(i32 %shr, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc69.for.body_crit_edge, %for.body.lr.ph
  %i.0131 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc69.for.body_crit_edge ]
  %17 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev51, align 4
  %arrayidx = getelementptr ptr, ptr %call31, i32 %i.0131
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %call52 = tail call i32 @dma_map_page_attrs(ptr noundef %18, ptr noundef %20, i32 noundef 0, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #10
  %arrayidx53 = getelementptr i32, ptr %call8.i, i32 %i.0131
  %21 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call52, ptr %arrayidx53, align 4
  %22 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev51, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %23, i32 noundef %call52) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call52)
  %cmp.i118.not = icmp eq i32 %call52, -1
  br i1 %cmp.i118.not, label %do.end61, label %for.inc69

do.end61:                                         ; preds = %for.body
  %24 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev51, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.36) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0131)
  %cmp64133.not = icmp eq i32 %i.0131, 0
  br i1 %cmp64133.not, label %do.end61.for.end_crit_edge, label %do.end61.for.body65_crit_edge

do.end61.for.body65_crit_edge:                    ; preds = %do.end61
  br label %for.body65

do.end61.for.end_crit_edge:                       ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body65:                                       ; preds = %for.body65.for.body65_crit_edge, %do.end61.for.body65_crit_edge
  %i.1134.in = phi i32 [ %i.1134, %for.body65.for.body65_crit_edge ], [ %i.0131, %do.end61.for.body65_crit_edge ]
  %i.1134 = add nsw i32 %i.1134.in, -1
  %26 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev51, align 4
  %arrayidx67 = getelementptr i32, ptr %call8.i, i32 %i.1134
  %28 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx67, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %27, i32 noundef %29, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #10
  %cmp64 = icmp sgt i32 %i.1134.in, 1
  br i1 %cmp64, label %for.body65.for.body65_crit_edge, label %for.body65.for.end_crit_edge

for.body65.for.end_crit_edge:                     ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body65.for.body65_crit_edge:                  ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body65

for.end:                                          ; preds = %for.body65.for.end_crit_edge, %do.end61.for.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i) #10
  br label %free_pages

for.inc69:                                        ; preds = %for.body
  %inc = add nuw nsw i32 %i.0131, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc69.if.end75_crit_edge, label %for.inc69.for.body_crit_edge

for.inc69.for.body_crit_edge:                     ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc69.if.end75_crit_edge:                     ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.end7.i.i:                                      ; preds = %if.end41
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 3520) #14
  %tobool72.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool72.not, label %if.end7.i.i.free_pages_crit_edge, label %if.end7.i.i.if.end75_crit_edge

if.end7.i.i.if.end75_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.end7.i.i.free_pages_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_pages

if.end75:                                         ; preds = %if.end7.i.i.if.end75_crit_edge, %for.inc69.if.end75_crit_edge, %for.cond.preheader.if.end75_crit_edge
  %addrs.0 = phi ptr [ %call8.i.i, %if.end7.i.i.if.end75_crit_edge ], [ %call8.i, %for.cond.preheader.if.end75_crit_edge ], [ %call8.i, %for.inc69.if.end75_crit_edge ]
  %dma_addrs = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 12
  %30 = ptrtoint ptr %dma_addrs to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %addrs.0, ptr %dma_addrs, align 4
  %31 = ptrtoint ptr %pages27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call31, ptr %pages27, align 8
  br label %cleanup

free_pages:                                       ; preds = %if.end7.i.i.free_pages_crit_edge, %for.end, %if.end7.i.free_pages_crit_edge
  tail call void @drm_gem_put_pages(ptr noundef %obj, ptr noundef %call31, i1 noundef zeroext true, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %free_pages, %if.end75, %do.end36, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %do.end36 ], [ -12, %free_pages ], [ 0, %if.end75 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tiler_pin(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_gem_cpu_sync_page(ptr nocapture noundef readonly %obj, i32 noundef %pgoff) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %flags.i = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 2
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 8
  %4 = and i32 %3, 33554438
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %4)
  %.not = icmp eq i32 %4, 33554432
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dma_addrs = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 12
  %5 = ptrtoint ptr %dma_addrs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dma_addrs, align 4
  %arrayidx = getelementptr i32, ptr %6, i32 %pgoff
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev3 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev3, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %10, i32 noundef %8, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #10
  %11 = ptrtoint ptr %dma_addrs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma_addrs, align 4
  %arrayidx7 = getelementptr i32, ptr %12, i32 %pgoff
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %arrayidx7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_gem_dma_sync_buffer(ptr nocapture noundef readonly %obj, i32 noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 5
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 8
  %pages2 = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 11
  %2 = ptrtoint ptr %pages2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pages2, align 8
  %flags.i = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 2
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 8
  %6 = and i32 %5, 33554438
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %6)
  %.not = icmp eq i32 %6, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %1)
  %cmp52 = icmp ugt i32 %1, 4095
  %or.cond = select i1 %.not, i1 %cmp52, i1 false
  br i1 %or.cond, label %for.body.lr.ph, label %entry.cleanup20_crit_edge

entry.cleanup20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup20

for.body.lr.ph:                                   ; preds = %entry
  %shr = lshr i32 %1, 12
  %dev1 = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %7 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1, align 8
  %dma_addrs = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 12
  %dev4 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 2
  br label %for.body.outer

for.body.outer:                                   ; preds = %for.inc.thread.for.body.outer_crit_edge, %for.body.lr.ph
  %dirty.0.off054.ph = phi i1 [ true, %for.inc.thread.for.body.outer_crit_edge ], [ false, %for.body.lr.ph ]
  %i.053.ph = phi i32 [ %inc57, %for.inc.thread.for.body.outer_crit_edge ], [ 0, %for.body.lr.ph ]
  %9 = ptrtoint ptr %dma_addrs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dma_addrs, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.outer
  %i.053 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %i.053.ph, %for.body.outer ]
  %arrayidx = getelementptr i32, ptr %10, i32 %i.053
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.then3, label %for.inc

if.then3:                                         ; preds = %for.body
  %13 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev4, align 4
  %arrayidx5 = getelementptr ptr, ptr %3, i32 %i.053
  %15 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx5, align 4
  %call6 = tail call i32 @dma_map_page_attrs(ptr noundef %14, ptr noundef %16, i32 noundef 0, i32 noundef 4096, i32 noundef %dir, i32 noundef 0) #10
  %17 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev4, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %18, i32 noundef %call6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call6)
  %cmp.i.not = icmp eq i32 %call6, -1
  br i1 %cmp.i.not, label %cleanup, label %for.inc.thread

cleanup:                                          ; preds = %if.then3
  %19 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #13
  br i1 %dirty.0.off054.ph, label %cleanup.if.then17_crit_edge, label %cleanup.cleanup20_crit_edge

cleanup.cleanup20_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup20

cleanup.if.then17_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.053, 1
  %exitcond.not = icmp eq i32 %inc, %shr
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.thread:                                   ; preds = %if.then3
  %21 = ptrtoint ptr %dma_addrs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dma_addrs, align 4
  %arrayidx14 = getelementptr i32, ptr %22, i32 %i.053
  %23 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call6, ptr %arrayidx14, align 4
  %inc57 = add nuw nsw i32 %i.053, 1
  %exitcond.not58 = icmp eq i32 %inc57, %shr
  br i1 %exitcond.not58, label %for.inc.thread.if.then17_crit_edge, label %for.inc.thread.for.body.outer_crit_edge

for.inc.thread.for.body.outer_crit_edge:          ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.outer

for.inc.thread.if.then17_crit_edge:               ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

for.end:                                          ; preds = %for.inc
  br i1 %dirty.0.off054.ph, label %for.end.if.then17_crit_edge, label %for.end.cleanup20_crit_edge

for.end.cleanup20_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup20

for.end.if.then17_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

if.then17:                                        ; preds = %for.end.if.then17_crit_edge, %for.inc.thread.if.then17_crit_edge, %cleanup.if.then17_crit_edge
  %filp = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 3
  %24 = ptrtoint ptr %filp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %filp, align 4
  %f_mapping = getelementptr inbounds %struct.file, ptr %25, i32 0, i32 18
  %26 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %f_mapping, align 4
  %28 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size, align 8
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags.i, align 8
  %and.i = lshr i32 %31, 8
  %32 = and i32 %and.i, 15
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %32, label %sw.default.i.i [
    i32 0, label %if.then17.omap_gem_mmap_size.exit_crit_edge
    i32 1, label %if.then17.gem2fmt.exit.i_crit_edge
    i32 2, label %sw.bb1.i.i
    i32 3, label %sw.bb2.i.i
  ]

if.then17.gem2fmt.exit.i_crit_edge:               ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %gem2fmt.exit.i

if.then17.omap_gem_mmap_size.exit_crit_edge:      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_gem_mmap_size.exit

sw.bb1.i.i:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %gem2fmt.exit.i

sw.bb2.i.i:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %gem2fmt.exit.i

sw.default.i.i:                                   ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %gem2fmt.exit.i

gem2fmt.exit.i:                                   ; preds = %sw.default.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.then17.gem2fmt.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 3, %sw.default.i.i ], [ 2, %sw.bb2.i.i ], [ 1, %sw.bb1.i.i ], [ 0, %if.then17.gem2fmt.exit.i_crit_edge ]
  %width.i = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 3
  %34 = ptrtoint ptr %width.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %width.i, align 4
  %height.i = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 4
  %36 = ptrtoint ptr %height.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %height.i, align 2
  %call3.i = tail call i32 @tiler_vsize(i32 noundef %retval.0.i.i, i16 noundef zeroext %35, i16 noundef zeroext %37) #10
  br label %omap_gem_mmap_size.exit

omap_gem_mmap_size.exit:                          ; preds = %gem2fmt.exit.i, %if.then17.omap_gem_mmap_size.exit_crit_edge
  %size.0.i = phi i32 [ %call3.i, %gem2fmt.exit.i ], [ %29, %if.then17.omap_gem_mmap_size.exit_crit_edge ]
  %conv = zext i32 %size.0.i to i64
  tail call void @unmap_mapping_range(ptr noundef %27, i64 noundef 0, i64 noundef %conv, i32 noundef 1) #10
  br label %cleanup20

cleanup20:                                        ; preds = %omap_gem_mmap_size.exit, %for.end.cleanup20_crit_edge, %cleanup.cleanup20_crit_edge, %entry.cleanup20_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mapping_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_gem_pin(ptr noundef %obj, ptr noundef writeonly %dma_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %lock = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %flags.i = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 2
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.then61_crit_edge

entry.if.then61_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then61

if.end.i:                                         ; preds = %entry
  %and2.i = and i32 %5, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %sgt.i = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 9
  %6 = ptrtoint ptr %sgt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sgt.i, align 8
  %nents.i = getelementptr inbounds %struct.sg_table, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp eq i32 %9, 1
  br i1 %cmp.i, label %land.lhs.true.i.land.lhs.true.i124_crit_edge, label %land.lhs.true.thread

land.lhs.true.i.land.lhs.true.i124_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i124

land.lhs.true:                                    ; preds = %if.end.i
  %has_dmm = getelementptr inbounds %struct.omap_drm_private, ptr %3, i32 0, i32 19
  %10 = ptrtoint ptr %has_dmm to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %has_dmm, align 4, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %land.lhs.true.fail_crit_edge, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

land.lhs.true.fail_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

land.lhs.true.thread:                             ; preds = %land.lhs.true.i
  %has_dmm134 = getelementptr inbounds %struct.omap_drm_private, ptr %3, i32 0, i32 19
  %12 = ptrtoint ptr %has_dmm134 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %has_dmm134, align 4, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not135 = icmp eq i8 %13, 0
  br i1 %tobool.not135, label %land.lhs.true.thread.land.lhs.true.i124_crit_edge, label %land.lhs.true.thread.if.then_crit_edge

land.lhs.true.thread.if.then_crit_edge:           ; preds = %land.lhs.true.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

land.lhs.true.thread.land.lhs.true.i124_crit_edge: ; preds = %land.lhs.true.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i124

if.then:                                          ; preds = %land.lhs.true.thread.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %dma_addr_cnt = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dma_addr_cnt, i32 noundef 4) #10
  %14 = ptrtoint ptr %dma_addr_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %dma_addr_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %if.then2, label %if.else52

if.then2:                                         ; preds = %if.then
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 5
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 8
  %shr = lshr i32 %17, 12
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 8
  %and.i111 = and i32 %19, 3840
  %20 = zext i32 %and.i111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %and.i111, label %sw.default.i [
    i32 256, label %if.then2.gem2fmt.exit_crit_edge
    i32 512, label %sw.bb1.i
    i32 768, label %sw.bb2.i
  ]

if.then2.gem2fmt.exit_crit_edge:                  ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %gem2fmt.exit

sw.bb1.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %gem2fmt.exit

sw.bb2.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %gem2fmt.exit

sw.default.i:                                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %gem2fmt.exit

gem2fmt.exit:                                     ; preds = %sw.default.i, %sw.bb2.i, %sw.bb1.i, %if.then2.gem2fmt.exit_crit_edge
  %retval.0.i112 = phi i32 [ 3, %sw.default.i ], [ 2, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 0, %if.then2.gem2fmt.exit_crit_edge ]
  %block4 = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 10
  %21 = ptrtoint ptr %block4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %block4, align 4
  %tobool5.not = icmp eq ptr %22, null
  br i1 %tobool5.not, label %do.end14, label %do.body9, !prof !106

do.body9:                                         ; preds = %gem2fmt.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/omapdrm/omap_gem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 781, 0\0A.popsection", ""() #10, !srcloc !109
  unreachable

do.end14:                                         ; preds = %gem2fmt.exit
  %call.i.i.i113 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dma_addr_cnt, i32 noundef 4) #10
  %23 = ptrtoint ptr %dma_addr_cnt to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 1, ptr %dma_addr_cnt, align 4
  %call16 = tail call fastcc i32 @omap_gem_attach_pages(ptr noundef %obj)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %do.end14.fail_crit_edge

do.end14.fail_crit_edge:                          ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end19:                                         ; preds = %do.end14
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i, align 8
  %and = and i32 %25, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %width = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 3
  %26 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %width, align 4
  %height = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 4
  %28 = ptrtoint ptr %height to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %height, align 2
  %call23 = tail call ptr @tiler_reserve_2d(i32 noundef %retval.0.i112, i16 noundef zeroext %27, i16 noundef zeroext %29, i16 noundef zeroext 4096) #10
  br label %if.end26

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size, align 8
  %call25 = tail call ptr @tiler_reserve_1d(i32 noundef %31) #10
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then22
  %block.0 = phi ptr [ %call23, %if.then22 ], [ %call25, %if.else ]
  %cmp.i114 = icmp ugt ptr %block.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i114, label %if.then28, label %if.end35

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %block.0 to i32
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 8
  %dev34 = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.14, i32 noundef %32, i32 noundef %retval.0.i112) #13
  br label %fail

if.end35:                                         ; preds = %if.end26
  %pages = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 11
  %37 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pages, align 8
  %roll = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 5
  %39 = ptrtoint ptr %roll to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %roll, align 8
  %call36 = tail call i32 @tiler_pin(ptr noundef %block.0, ptr noundef %38, i32 noundef %shr, i32 noundef %40, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %cleanup, label %if.then38

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %call39 = tail call i32 @tiler_release(ptr noundef %block.0) #10
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 8
  %dev44 = getelementptr inbounds %struct.drm_device, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev44, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.17, i32 noundef %call36) #13
  br label %fail

cleanup:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %call46 = tail call i32 @tiler_ssptr(ptr noundef %block.0) #10
  %dma_addr47 = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 7
  %45 = ptrtoint ptr %dma_addr47 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call46, ptr %dma_addr47, align 8
  %46 = ptrtoint ptr %block4 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %block.0, ptr %block4, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.19, ptr noundef %dma_addr47) #10
  br label %if.end54

if.else52:                                        ; preds = %if.then
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dma_addr_cnt, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %dma_addr_cnt, i32 1, i32 3, i32 1) #10
  %47 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dma_addr_cnt, ptr %dma_addr_cnt, i32 1, ptr elementtype(i32) %dma_addr_cnt) #10, !srcloc !110
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.else52.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !103

if.else52.if.end15.sink.split.i.i.i_crit_edge:    ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.else52
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %48 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %.not.i.i.i = icmp sgt i32 %48, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end54_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !106

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end54_crit_edge:                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.else52.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.else52.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %dma_addr_cnt, i32 noundef %.sink.i.i.i) #10
  br label %if.end54

if.end54:                                         ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end54_crit_edge, %cleanup
  %tobool55.not = icmp eq ptr %dma_addr, null
  br i1 %tobool55.not, label %if.end54.fail_crit_edge, label %if.then56

if.end54.fail_crit_edge:                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.then56:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %dma_addr57 = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 7
  %49 = ptrtoint ptr %dma_addr57 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dma_addr57, align 8
  %51 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %dma_addr, align 4
  br label %fail

land.lhs.true.i124:                               ; preds = %land.lhs.true.thread.land.lhs.true.i124_crit_edge, %land.lhs.true.i.land.lhs.true.i124_crit_edge
  %sgt.i121 = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 9
  %52 = ptrtoint ptr %sgt.i121 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sgt.i121, align 8
  %nents.i122 = getelementptr inbounds %struct.sg_table, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %nents.i122 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nents.i122, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp.i123 = icmp eq i32 %55, 1
  br i1 %cmp.i123, label %land.lhs.true.i124.if.then61_crit_edge, label %land.lhs.true.i124.fail_crit_edge

land.lhs.true.i124.fail_crit_edge:                ; preds = %land.lhs.true.i124
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

land.lhs.true.i124.if.then61_crit_edge:           ; preds = %land.lhs.true.i124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then61

if.then61:                                        ; preds = %land.lhs.true.i124.if.then61_crit_edge, %entry.if.then61_crit_edge
  %tobool62.not = icmp eq ptr %dma_addr, null
  br i1 %tobool62.not, label %if.then61.fail_crit_edge, label %if.then63

if.then61.fail_crit_edge:                         ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.then63:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  %dma_addr64 = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 7
  %56 = ptrtoint ptr %dma_addr64 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dma_addr64, align 8
  %58 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %dma_addr, align 4
  br label %fail

fail:                                             ; preds = %if.then63, %if.then61.fail_crit_edge, %land.lhs.true.i124.fail_crit_edge, %if.then56, %if.end54.fail_crit_edge, %if.then38, %if.then28, %do.end14.fail_crit_edge, %land.lhs.true.fail_crit_edge
  %ret.2 = phi i32 [ 0, %if.then63 ], [ 0, %if.then61.fail_crit_edge ], [ 0, %if.then56 ], [ 0, %if.end54.fail_crit_edge ], [ -22, %land.lhs.true.i124.fail_crit_edge ], [ %call16, %do.end14.fail_crit_edge ], [ %call36, %if.then38 ], [ %32, %if.then28 ], [ -22, %land.lhs.true.fail_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tiler_reserve_2d(i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tiler_reserve_1d(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tiler_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tiler_ssptr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_gem_unpin(ptr noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %dev.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %flags.i.i = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 2
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.omap_gem_unpin_locked.exit_crit_edge

entry.omap_gem_unpin_locked.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_gem_unpin_locked.exit

if.end.i.i:                                       ; preds = %entry
  %and2.i.i = and i32 %5, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.lor.lhs.false.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.lor.lhs.false.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %sgt.i.i = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 9
  %6 = ptrtoint ptr %sgt.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sgt.i.i, align 8
  %nents.i.i = getelementptr inbounds %struct.sg_table, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i.i = icmp eq i32 %9, 1
  br i1 %cmp.i.i, label %land.lhs.true.i.i.omap_gem_unpin_locked.exit_crit_edge, label %land.lhs.true.i.i.lor.lhs.false.i_crit_edge

land.lhs.true.i.i.lor.lhs.false.i_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

land.lhs.true.i.i.omap_gem_unpin_locked.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_gem_unpin_locked.exit

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i.i.lor.lhs.false.i_crit_edge, %if.end.i.i.lor.lhs.false.i_crit_edge
  %has_dmm.i = getelementptr inbounds %struct.omap_drm_private, ptr %3, i32 0, i32 19
  %10 = ptrtoint ptr %has_dmm.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %has_dmm.i, align 4, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.omap_gem_unpin_locked.exit_crit_edge, label %if.end.i

lor.lhs.false.i.omap_gem_unpin_locked.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_gem_unpin_locked.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %dma_addr_cnt.i = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dma_addr_cnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr %dma_addr_cnt.i, i32 1, i32 3, i32 1) #10
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dma_addr_cnt.i, ptr %dma_addr_cnt.i, i32 1, ptr elementtype(i32) %dma_addr_cnt.i) #10, !srcloc !105
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then2.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.omap_gem_unpin_locked.exit_crit_edge, label %if.then10.i.i.i.i, !prof !106

if.end5.i.i.i.i.omap_gem_unpin_locked.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_gem_unpin_locked.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %dma_addr_cnt.i, i32 noundef 3) #10
  br label %omap_gem_unpin_locked.exit

if.then2.i:                                       ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !107
  %sgt.i = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 9
  %13 = ptrtoint ptr %sgt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sgt.i, align 8
  %tobool3.not.i = icmp eq ptr %14, null
  br i1 %tobool3.not.i, label %if.then2.i.if.end8.i_crit_edge, label %if.then4.i

if.then2.i.if.end8.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.then4.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @sg_free_table(ptr noundef nonnull %14) #10
  %15 = ptrtoint ptr %sgt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sgt.i, align 8
  tail call void @kfree(ptr noundef %16) #10
  %17 = ptrtoint ptr %sgt.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %sgt.i, align 8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then4.i, %if.then2.i.if.end8.i_crit_edge
  %block.i = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 10
  %18 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %block.i, align 4
  %call9.i = tail call i32 @tiler_unpin(ptr noundef %19) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.if.end14.i_crit_edge, label %do.end.i

if.end8.i.if.end14.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

do.end.i:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 8
  %dev13.i = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dev13.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev13.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.39, i32 noundef %call9.i) #13
  br label %if.end14.i

if.end14.i:                                       ; preds = %do.end.i, %if.end8.i.if.end14.i_crit_edge
  %24 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %block.i, align 4
  %call16.i = tail call i32 @tiler_release(ptr noundef %25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end14.i.if.end24.i_crit_edge, label %do.end21.i

if.end14.i.if.end24.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

do.end21.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 8
  %dev23.i = getelementptr inbounds %struct.drm_device, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %dev23.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev23.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.42, i32 noundef %call16.i) #13
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.end21.i, %if.end14.i.if.end24.i_crit_edge
  %dma_addr.i = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 7
  %30 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %dma_addr.i, align 8
  %31 = ptrtoint ptr %block.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %block.i, align 4
  br label %omap_gem_unpin_locked.exit

omap_gem_unpin_locked.exit:                       ; preds = %if.end24.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.omap_gem_unpin_locked.exit_crit_edge, %lor.lhs.false.i.omap_gem_unpin_locked.exit_crit_edge, %land.lhs.true.i.i.omap_gem_unpin_locked.exit_crit_edge, %entry.omap_gem_unpin_locked.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_gem_rotated_dma_addr(ptr noundef %obj, i32 noundef %orient, i32 noundef %x, i32 noundef %y, ptr nocapture noundef writeonly %dma_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %dma_addr_cnt = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dma_addr_cnt, i32 noundef 4) #10
  %0 = ptrtoint ptr %dma_addr_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %dma_addr_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %block = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 10
  %2 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %block, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true1

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  %flags = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true1.if.end_crit_edge, label %if.then

land.lhs.true1.if.end_crit_edge:                  ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @tiler_tsptr(ptr noundef nonnull %3, i32 noundef %orient, i32 noundef %x, i32 noundef %y) #10
  %6 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call4, ptr %dma_addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true1.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.then ], [ -22, %land.lhs.true1.if.end_crit_edge ], [ -22, %land.lhs.true.if.end_crit_edge ], [ -22, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tiler_tsptr(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_gem_tiled_stride(ptr nocapture noundef readonly %obj, i32 noundef %orient) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = lshr i32 %1, 8
  %2 = and i32 %and, 15
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %2, label %sw.default.i [
    i32 0, label %entry.if.end_crit_edge
    i32 1, label %entry.gem2fmt.exit_crit_edge
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb2.i
  ]

entry.gem2fmt.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %gem2fmt.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %gem2fmt.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %gem2fmt.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %gem2fmt.exit

gem2fmt.exit:                                     ; preds = %sw.default.i, %sw.bb2.i, %sw.bb1.i, %entry.gem2fmt.exit_crit_edge
  %retval.0.i = phi i32 [ 3, %sw.default.i ], [ 2, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 0, %entry.gem2fmt.exit_crit_edge ]
  %call2 = tail call i32 @tiler_stride(i32 noundef %retval.0.i, i32 noundef %orient) #10
  br label %if.end

if.end:                                           ; preds = %gem2fmt.exit, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call2, %gem2fmt.exit ], [ -22, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tiler_stride(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_gem_get_pages(ptr noundef %obj, ptr nocapture noundef writeonly %pages, i1 noundef zeroext %remap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  br i1 %remap, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @omap_gem_attach_pages(ptr noundef %obj)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end3_crit_edge, label %if.then.unlock_crit_edge

if.then.unlock_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %pages4 = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 11
  %0 = ptrtoint ptr %pages4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pages4, align 8
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %if.end3.unlock_crit_edge, label %if.end7

if.end3.unlock_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %pages, align 4
  br label %unlock

unlock:                                           ; preds = %if.end7, %if.end3.unlock_crit_edge, %if.then.unlock_crit_edge
  %ret.1 = phi i32 [ %call, %if.then.unlock_crit_edge ], [ 0, %if.end7 ], [ -12, %if.end3.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %ret.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @omap_gem_put_pages(ptr nocapture noundef readnone %obj) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @omap_gem_get_sg(ptr noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  %addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #10
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %addr, align 4, !annotation !111
  %call = call i32 @omap_gem_pin(ptr noundef %obj, ptr noundef nonnull %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = inttoptr i32 %call to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %sgt2 = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 9
  %2 = ptrtoint ptr %sgt2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sgt2, align 8
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 12) #15
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end5.err_unpin_crit_edge, label %if.end9

if.end5.err_unpin_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_unpin

if.end9:                                          ; preds = %if.end5
  %flags = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 2
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 8
  %and = lshr i32 %6, 8
  %7 = and i32 %and, 15
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %7, label %sw.default.i [
    i32 0, label %if.end16.thread
    i32 1, label %if.end9.if.end16_crit_edge
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb2.i
  ]

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

sw.bb1.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

sw.bb2.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

sw.default.i:                                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.end16:                                         ; preds = %sw.default.i, %sw.bb2.i, %sw.bb1.i, %if.end9.if.end16_crit_edge
  %retval.0.i = phi i32 [ 3, %sw.default.i ], [ 2, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 0, %if.end9.if.end16_crit_edge ]
  %width = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 3
  %9 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %width, align 4
  %height = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 4
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %height, align 2
  %conv14 = zext i16 %12 to i32
  %call15 = call i32 @tiler_stride(i32 noundef %retval.0.i, i32 noundef 0) #10
  %call17 = call i32 @sg_alloc_table(ptr noundef nonnull %call7.i.i, i32 noundef %conv14, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.err_free_crit_edge

if.end16.err_free_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free

if.end16.thread:                                  ; preds = %if.end9
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 5
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size, align 8
  %call1770 = call i32 @sg_alloc_table(ptr noundef nonnull %call7.i.i, i32 noundef 1, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1770)
  %tobool18.not71 = icmp eq i32 %call1770, 0
  br i1 %tobool18.not71, label %if.end16.thread.for.body.preheader_crit_edge, label %if.end16.thread.err_free_crit_edge

if.end16.thread.err_free_crit_edge:               ; preds = %if.end16.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free

if.end16.thread.for.body.preheader_crit_edge:     ; preds = %if.end16.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

if.end20:                                         ; preds = %if.end16
  %conv = zext i16 %10 to i32
  %shl = shl nuw nsw i32 %conv, %retval.0.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp64.not = icmp eq i16 %12, 0
  br i1 %cmp64.not, label %if.end20.for.end_crit_edge, label %if.end20.for.body.preheader_crit_edge

if.end20.for.body.preheader_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.preheader:                               ; preds = %if.end20.for.body.preheader_crit_edge, %if.end16.thread.for.body.preheader_crit_edge
  %count.07282 = phi i32 [ %conv14, %if.end20.for.body.preheader_crit_edge ], [ 1, %if.end16.thread.for.body.preheader_crit_edge ]
  %len.07381 = phi i32 [ %shl, %if.end20.for.body.preheader_crit_edge ], [ %14, %if.end16.thread.for.body.preheader_crit_edge ]
  %stride.07480 = phi i32 [ %call15, %if.end20.for.body.preheader_crit_edge ], [ 0, %if.end16.thread.for.body.preheader_crit_edge ]
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call7.i.i, align 8
  br label %for.body

for.body:                                         ; preds = %sg_set_page.exit.for.body_crit_edge, %for.body.preheader
  %i.066 = phi i32 [ %inc, %sg_set_page.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sg.065 = phi ptr [ %call24, %sg_set_page.exit.for.body_crit_edge ], [ %16, %for.body.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %17 = load ptr, ptr @mem_map, align 4
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr, align 4
  %shr = lshr i32 %19, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %20 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %shr, %20
  %add.ptr22 = getelementptr %struct.page, ptr %17, i32 %sub
  %and23 = and i32 %19, 4095
  %21 = ptrtoint ptr %sg.065 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sg.065, align 4
  %23 = ptrtoint ptr %add.ptr22 to i32
  %and2.i.i = and i32 %23, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !106

do.body5.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !112
  unreachable

do.body11.i.i:                                    ; preds = %for.body
  %and.i.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !106

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !113
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  %and.i.i = and i32 %22, 3
  %or.i.i = or i32 %and.i.i, %23
  %24 = ptrtoint ptr %sg.065 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or.i.i, ptr %sg.065, align 4
  %offset1.i = getelementptr inbounds %struct.scatterlist, ptr %sg.065, i32 0, i32 1
  %25 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and23, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.065, i32 0, i32 2
  %26 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %len.07381, ptr %length.i, align 4
  %27 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %addr, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.065, i32 0, i32 3
  %29 = ptrtoint ptr %dma_address to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %dma_address, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.065, i32 0, i32 4
  %30 = ptrtoint ptr %dma_length to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %len.07381, ptr %dma_length, align 4
  %add = add i32 %28, %stride.07480
  store i32 %add, ptr %addr, align 4
  %inc = add nuw nsw i32 %i.066, 1
  %call24 = call ptr @sg_next(ptr noundef %sg.065) #10
  %exitcond.not = icmp eq i32 %inc, %count.07282
  br i1 %exitcond.not, label %sg_set_page.exit.for.end_crit_edge, label %sg_set_page.exit.for.body_crit_edge

sg_set_page.exit.for.body_crit_edge:              ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

sg_set_page.exit.for.end_crit_edge:               ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %sg_set_page.exit.for.end_crit_edge, %if.end20.for.end_crit_edge
  %31 = ptrtoint ptr %sgt2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i, ptr %sgt2, align 8
  br label %out

out:                                              ; preds = %for.end, %if.end.out_crit_edge
  %sgt.0 = phi ptr [ %3, %if.end.out_crit_edge ], [ %call7.i.i, %for.end ]
  call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

err_free:                                         ; preds = %if.end16.thread.err_free_crit_edge, %if.end16.err_free_crit_edge
  %call1775 = phi i32 [ %call1770, %if.end16.thread.err_free_crit_edge ], [ %call17, %if.end16.err_free_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  %phi.cast = inttoptr i32 %call1775 to ptr
  br label %err_unpin

err_unpin:                                        ; preds = %err_free, %if.end5.err_unpin_crit_edge
  %ret.0 = phi ptr [ %phi.cast, %err_free ], [ inttoptr (i32 -12 to ptr), %if.end5.err_unpin_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #10
  call void @omap_gem_unpin(ptr noundef %obj)
  br label %cleanup

cleanup:                                          ; preds = %err_unpin, %out, %if.then
  %retval.0 = phi ptr [ %1, %if.then ], [ %sgt.0, %out ], [ %ret.0, %err_unpin ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #10
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_gem_put_sg(ptr noundef %obj, ptr noundef readnone %sgt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sgt1 = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 9
  %0 = ptrtoint ptr %sgt1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sgt1, align 8
  %cmp.not = icmp eq ptr %1, %sgt
  br i1 %cmp.not, label %if.end23, label %do.end, !prof !106

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1037, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @omap_gem_unpin(ptr noundef %obj)
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @omap_gem_vaddr(ptr noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %vaddr1 = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 13
  %0 = ptrtoint ptr %vaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vaddr1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @omap_gem_attach_pages(ptr noundef %obj)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %2 = inttoptr i32 %call to ptr
  br label %unlock

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %pages = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 11
  %3 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pages, align 8
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 5
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 8
  %shr = lshr i32 %6, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %7 = load i32, ptr @pgprot_kernel, align 4
  %or = and i32 %7, -573
  %or5 = or i32 %or, 516
  %call6 = tail call ptr @vmap(ptr noundef %4, i32 noundef %shr, i32 noundef 4, i32 noundef %or5) #10
  %8 = ptrtoint ptr %vaddr1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call6, ptr %vaddr1, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  %9 = ptrtoint ptr %vaddr1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vaddr1, align 8
  br label %unlock

unlock:                                           ; preds = %if.end8, %if.then3
  %vaddr.0 = phi ptr [ %10, %if.end8 ], [ %2, %if.then3 ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret ptr %vaddr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_gem_resume(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %list_lock = getelementptr inbounds %struct.omap_drm_private, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %list_lock, i32 noundef 0) #10
  %obj_list = getelementptr inbounds %struct.omap_drm_private, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %obj_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn61 = load ptr, ptr %obj_list, align 4
  %cmp.not62 = icmp eq ptr %.pn61, %obj_list
  br i1 %cmp.not62, label %entry.cleanup43_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup43_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup43

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn63 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn61, %entry.for.body_crit_edge ]
  %block = getelementptr i8, ptr %.pn63, i32 124
  %3 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %block, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  %size = getelementptr i8, ptr %.pn63, i32 -168
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 8
  %shr = lshr i32 %6, 12
  %pages = getelementptr i8, ptr %.pn63, i32 128
  %7 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pages, align 8
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %do.end, label %if.then.if.end_crit_edge, !prof !103

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1093, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %9 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %block, align 4
  %11 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pages, align 8
  %roll = getelementptr i8, ptr %.pn63, i32 16
  %13 = ptrtoint ptr %roll to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %roll, align 8
  %call = tail call i32 @tiler_pin(ptr noundef %10, ptr noundef %12, i32 noundef %shr, i32 noundef %14, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool28.not = icmp eq i32 %call, 0
  br i1 %tobool28.not, label %if.end.for.inc_crit_edge, label %cleanup

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

cleanup:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev33 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %15 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.9, i32 noundef %call) #13
  br label %cleanup43

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %17 = ptrtoint ptr %.pn63 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn63, align 4
  %cmp.not = icmp eq ptr %.pn, %obj_list
  br i1 %cmp.not, label %for.inc.cleanup43_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup43_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup43

cleanup43:                                        ; preds = %for.inc.cleanup43_crit_edge, %cleanup, %entry.cleanup43_crit_edge
  %ret.2 = phi i32 [ %call, %cleanup ], [ 0, %entry.cleanup43_crit_edge ], [ 0, %for.inc.cleanup43_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %list_lock) #10
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_gem_describe(ptr noundef %obj, ptr noundef %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %start.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 4, i32 1, i32 1
  %0 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %start.i, align 8
  %conv = and i64 %1, 4294967295
  %lock = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %flags = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %name = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 6
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %name, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %obj, i32 noundef 4) #10
  %6 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %obj, align 4
  %dma_addr = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 7
  %dma_addr_cnt = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dma_addr_cnt, i32 noundef 4) #10
  %8 = ptrtoint ptr %dma_addr_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %dma_addr_cnt, align 4
  %vaddr = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 13
  %10 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vaddr, align 8
  %roll = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 5
  %12 = ptrtoint ptr %roll to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %roll, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.21, i32 noundef %3, i32 noundef %5, i32 noundef %7, i64 noundef %conv, ptr noundef %dma_addr, i32 noundef %9, ptr noundef %11, i32 noundef %13) #10
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 8
  %and = and i32 %15, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %width = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 3
  %16 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %width, align 4
  %conv4 = zext i16 %17 to i32
  %height = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 4
  %18 = ptrtoint ptr %height to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %height, align 2
  %conv5 = zext i16 %19 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.22, i32 noundef %conv4, i32 noundef %conv5) #10
  %block = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 10
  %20 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %block, align 4
  %tobool6.not = icmp eq ptr %21, null
  br i1 %tobool6.not, label %if.then.if.end18_crit_edge, label %if.then7

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %p0 = getelementptr inbounds %struct.tiler_block, ptr %21, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %p0 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %p0, align 4
  %conv10 = zext i16 %23 to i32
  %y = getelementptr inbounds %struct.tiler_block, ptr %21, i32 0, i32 1, i32 2, i32 1
  %24 = ptrtoint ptr %y to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %y, align 2
  %conv12 = zext i16 %25 to i32
  %p1 = getelementptr inbounds %struct.tiler_block, ptr %21, i32 0, i32 1, i32 3
  %26 = ptrtoint ptr %p1 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %p1, align 4
  %conv14 = zext i16 %27 to i32
  %y16 = getelementptr inbounds %struct.tiler_block, ptr %21, i32 0, i32 1, i32 3, i32 1
  %28 = ptrtoint ptr %y16 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %y16, align 2
  %conv17 = zext i16 %29 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.23, i32 noundef %conv10, i32 noundef %conv12, i32 noundef %conv14, i32 noundef %conv17) #10
  br label %if.end18

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 5
  %30 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.24, i32 noundef %31) #10
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then7, %if.then.if.end18_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.25) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_gem_describe_objects(ptr noundef readonly %list, ptr noundef %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn15 = load ptr, ptr %list, align 4
  %cmp.not16 = icmp eq ptr %.pn15, %list
  br i1 %cmp.not16, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn19 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn15, %entry.for.body_crit_edge ]
  %count.018 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %size.017 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %omap_obj.0 = getelementptr i8, ptr %.pn19, i32 -352
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.26) #10
  tail call void @omap_gem_describe(ptr noundef %omap_obj.0, ptr noundef %m)
  %inc = add i32 %count.018, 1
  %size1 = getelementptr i8, ptr %.pn19, i32 -168
  %1 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %size1, align 8
  %add = add i32 %2, %size.017
  %3 = ptrtoint ptr %.pn19 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn19, align 4
  %cmp.not = icmp eq ptr %.pn, %list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %size.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %count.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.27, i32 noundef %count.0.lcssa, i32 noundef %size.0.lcssa) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @omap_gem_new(ptr noundef %dev, [1 x i32] %gsize.coerce, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %gsize = alloca %union.omap_gem_size, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %gsize.coerce.fca.0.extract = extractvalue [1 x i32] %gsize.coerce, 0
  %0 = ptrtoint ptr %gsize to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %gsize.coerce.fca.0.extract, ptr %gsize, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %1 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_private, align 4
  %and.i = and i32 %flags, 6
  %3 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %and.i, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog.i_crit_edge
    i32 2, label %entry.sw.epilog.i_crit_edge121
    i32 6, label %entry.sw.epilog.i_crit_edge122
  ]

entry.sw.epilog.i_crit_edge122:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

entry.sw.epilog.i_crit_edge121:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog.i:                                      ; preds = %entry.sw.epilog.i_crit_edge, %entry.sw.epilog.i_crit_edge121, %entry.sw.epilog.i_crit_edge122
  %and1.i = and i32 %flags, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %if.else, label %if.then.i

if.then.i:                                        ; preds = %sw.epilog.i
  %usergart.i = getelementptr inbounds %struct.omap_drm_private, ptr %2, i32 0, i32 18
  %4 = ptrtoint ptr %usergart.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usergart.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %if.then.i.cleanup_crit_edge, label %if.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  %6 = zext i32 %and1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %and1.i, label %if.end.i.cleanup_crit_edge [
    i32 256, label %if.end.i.if.then1_crit_edge
    i32 512, label %if.end.i.if.then1_crit_edge123
    i32 768, label %if.end.i.if.then1_crit_edge124
  ]

if.end.i.if.then1_crit_edge124:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then1

if.end.i.if.then1_crit_edge123:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then1

if.end.i.if.then1_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then1

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then1:                                         ; preds = %if.end.i.if.then1_crit_edge, %if.end.i.if.then1_crit_edge123, %if.end.i.if.then1_crit_edge124
  %or = and i32 %flags, -33554439
  %call3 = tail call i32 @tiler_get_cpu_cache_flags() #10
  %and2 = or i32 %or, %call3
  %or4 = or i32 %and2, 33554432
  br label %if.end17

if.else:                                          ; preds = %sw.epilog.i
  %and5 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else.if.else10_crit_edge, label %land.lhs.true

if.else.if.else10_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else10

land.lhs.true:                                    ; preds = %if.else
  %has_dmm = getelementptr inbounds %struct.omap_drm_private, ptr %2, i32 0, i32 19
  %7 = ptrtoint ptr %has_dmm to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %has_dmm, align 4, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  br i1 %tobool7.not, label %if.then8, label %land.lhs.true.if.else10_crit_edge

land.lhs.true.if.else10_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else10

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %or9 = or i32 %flags, 16777216
  br label %if.end17

if.else10:                                        ; preds = %land.lhs.true.if.else10_crit_edge, %if.else.if.else10_crit_edge
  %and11 = lshr i32 %flags, 2
  %9 = and i32 %and11, 33554432
  %10 = xor i32 %9, 33554432
  %11 = or i32 %10, %flags
  br label %if.end17

if.end17:                                         ; preds = %if.else10, %if.then8, %if.then1
  %flags.addr.0 = phi i32 [ %or4, %if.then1 ], [ %or9, %if.then8 ], [ %11, %if.else10 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 496) #15
  %tobool19.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %if.end21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %flags22 = getelementptr inbounds %struct.omap_gem_object, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %flags22 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %flags.addr.0, ptr %flags22, align 8
  %lock = getelementptr inbounds %struct.omap_gem_object, ptr %call7.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.28, ptr noundef nonnull @omap_gem_new.__key) #10
  %and23 = lshr i32 %flags.addr.0, 8
  %14 = and i32 %and23, 15
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %14, label %gem2fmt.exit [
    i32 0, label %if.else35
    i32 1, label %gem2fmt.exit.thread
    i32 2, label %gem2fmt.exit.thread113
    i32 3, label %gem2fmt.exit.thread117
  ]

gem2fmt.exit.thread:                              ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %height111 = getelementptr inbounds %struct.anon.91, ptr %gsize, i32 0, i32 1
  call void @tiler_align(i32 noundef 0, ptr noundef nonnull %gsize, ptr noundef %height111) #10
  br label %gem2fmt.exit108

gem2fmt.exit.thread113:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %height115 = getelementptr inbounds %struct.anon.91, ptr %gsize, i32 0, i32 1
  call void @tiler_align(i32 noundef 1, ptr noundef nonnull %gsize, ptr noundef %height115) #10
  br label %gem2fmt.exit108

gem2fmt.exit.thread117:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %height119 = getelementptr inbounds %struct.anon.91, ptr %gsize, i32 0, i32 1
  call void @tiler_align(i32 noundef 2, ptr noundef nonnull %gsize, ptr noundef %height119) #10
  br label %gem2fmt.exit108

gem2fmt.exit:                                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %height = getelementptr inbounds %struct.anon.91, ptr %gsize, i32 0, i32 1
  call void @tiler_align(i32 noundef 3, ptr noundef nonnull %gsize, ptr noundef %height) #10
  br label %gem2fmt.exit108

gem2fmt.exit108:                                  ; preds = %gem2fmt.exit, %gem2fmt.exit.thread117, %gem2fmt.exit.thread113, %gem2fmt.exit.thread
  %height112 = phi ptr [ %height, %gem2fmt.exit ], [ %height119, %gem2fmt.exit.thread117 ], [ %height115, %gem2fmt.exit.thread113 ], [ %height111, %gem2fmt.exit.thread ]
  %retval.0.i107 = phi i32 [ 3, %gem2fmt.exit ], [ 2, %gem2fmt.exit.thread117 ], [ 1, %gem2fmt.exit.thread113 ], [ 0, %gem2fmt.exit.thread ]
  %16 = ptrtoint ptr %gsize to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %gsize, align 4
  %18 = ptrtoint ptr %height112 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %height112, align 2
  %call30 = call i32 @tiler_size(i32 noundef %retval.0.i107, i16 noundef zeroext %17, i16 noundef zeroext %19) #10
  %20 = ptrtoint ptr %gsize to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %gsize, align 4
  %width32 = getelementptr inbounds %struct.omap_gem_object, ptr %call7.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %width32 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %width32, align 4
  %23 = ptrtoint ptr %height112 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %height112, align 2
  %height34 = getelementptr inbounds %struct.omap_gem_object, ptr %call7.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %height34 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %height34, align 2
  br label %if.end37

if.else35:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %gsize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %gsize, align 4
  %add = add i32 %27, 4095
  %and36 = and i32 %add, -4096
  br label %if.end37

if.end37:                                         ; preds = %if.else35, %gem2fmt.exit108
  %size.0 = phi i32 [ %call30, %gem2fmt.exit108 ], [ %and36, %if.else35 ]
  %funcs = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i, i32 0, i32 11
  %28 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @omap_gem_object_funcs, ptr %funcs, align 4
  %and38 = and i32 %flags.addr.0, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.then40, label %if.else41

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  call void @drm_gem_private_object_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, i32 noundef %size.0) #10
  br label %if.end46

if.else41:                                        ; preds = %if.end37
  %call42 = call i32 @drm_gem_object_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, i32 noundef %size.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.else41.err_free_crit_edge

if.else41.err_free_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free

if.end45:                                         ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #12
  %filp = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %filp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %filp, align 4
  %f_mapping = getelementptr inbounds %struct.file, ptr %30, i32 0, i32 18
  %31 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %f_mapping, align 4
  %gfp_mask.i = getelementptr inbounds %struct.address_space, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %gfp_mask.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1051844, ptr %gfp_mask.i, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then40
  %and47 = and i32 %flags.addr.0, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end46.if.end56_crit_edge, label %if.then49

if.end46.if.end56_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then49:                                        ; preds = %if.end46
  %dev50 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %34 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev50, align 4
  %dma_addr = getelementptr inbounds %struct.omap_gem_object, ptr %call7.i.i, i32 0, i32 7
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %35, i32 noundef %size.0, ptr noundef %dma_addr, i32 noundef 3264, i32 noundef 4) #10
  %vaddr = getelementptr inbounds %struct.omap_gem_object, ptr %call7.i.i, i32 0, i32 13
  %36 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %vaddr, align 8
  %tobool53.not = icmp eq ptr %call.i, null
  br i1 %tobool53.not, label %err_release, label %if.then49.if.end56_crit_edge

if.then49.if.end56_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.end56:                                         ; preds = %if.then49.if.end56_crit_edge, %if.end46.if.end56_crit_edge
  %list_lock = getelementptr inbounds %struct.omap_drm_private, ptr %2, i32 0, i32 16
  call void @mutex_lock_nested(ptr noundef %list_lock, i32 noundef 0) #10
  %mm_list = getelementptr inbounds %struct.omap_gem_object, ptr %call7.i.i, i32 0, i32 1
  %obj_list = getelementptr inbounds %struct.omap_drm_private, ptr %2, i32 0, i32 17
  %37 = ptrtoint ptr %obj_list to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %obj_list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %mm_list, ptr noundef %obj_list, ptr noundef %38) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end56.list_add.exit_crit_edge

if.end56.list_add.exit_crit_edge:                 ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %mm_list, ptr %prev1.i.i, align 4
  %40 = ptrtoint ptr %mm_list to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %38, ptr %mm_list, align 8
  %prev3.i.i = getelementptr inbounds %struct.omap_gem_object, ptr %call7.i.i, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %obj_list, ptr %prev3.i.i, align 4
  %42 = ptrtoint ptr %obj_list to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %mm_list, ptr %obj_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end56.list_add.exit_crit_edge
  call void @mutex_unlock(ptr noundef %list_lock) #10
  br label %cleanup

err_release:                                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  call void @drm_gem_object_release(ptr noundef nonnull %call7.i.i) #10
  br label %err_free

err_free:                                         ; preds = %err_release, %if.else41.err_free_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_free, %list_add.exit, %if.end17.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %err_free ], [ %call7.i.i, %list_add.exit ], [ null, %if.end17.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %if.then.i.cleanup_crit_edge ], [ null, %if.end.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tiler_get_cpu_cache_flags() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tiler_align(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tiler_size(i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_private_object_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_object_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @omap_gem_new_dmabuf(ptr noundef %dev, i32 noundef %size, ptr noundef %sgt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %orig_nents = getelementptr inbounds %struct.sg_table, ptr %sgt, i32 0, i32 2
  %0 = ptrtoint ptr %orig_nents to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %orig_nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %has_dmm = getelementptr inbounds %struct.omap_drm_private, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %has_dmm to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_dmm, align 4, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup26_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup26_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup26

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %add = add i32 %size, 4095
  %and = and i32 %add, -4096
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %and, 0
  %call1 = tail call ptr @omap_gem_new(ptr noundef %dev, [1 x i32] %.fca.0.insert, i32 noundef 134217730)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup26_crit_edge, label %if.end5

if.end.cleanup26_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup26

if.end5:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.omap_gem_object, ptr %call1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %sgt6 = getelementptr inbounds %struct.omap_gem_object, ptr %call1, i32 0, i32 9
  %6 = ptrtoint ptr %sgt6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %sgt, ptr %sgt6, align 8
  %7 = ptrtoint ptr %orig_nents to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %orig_nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp8 = icmp eq i32 %8, 1
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sgt, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_address, align 4
  %dma_addr = getelementptr inbounds %struct.omap_gem_object, ptr %call1, i32 0, i32 7
  %13 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %dma_addr, align 8
  br label %done

if.else:                                          ; preds = %if.end5
  %div47 = lshr i32 %add, 12
  %14 = shl nuw nsw i32 %div47, 2
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #14
  %tobool12.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool12.not, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @omap_gem_free_object(ptr noundef nonnull %call1)
  br label %done

if.end15:                                         ; preds = %if.else
  %pages16 = getelementptr inbounds %struct.omap_gem_object, ptr %call1, i32 0, i32 11
  %15 = ptrtoint ptr %pages16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call8.i.i, ptr %pages16, align 8
  %call17 = tail call i32 @drm_prime_sg_to_page_array(ptr noundef %sgt, ptr noundef nonnull %call8.i.i, i32 noundef %div47) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end15.done_crit_edge, label %if.then19

if.end15.done_crit_edge:                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @omap_gem_free_object(ptr noundef nonnull %call1)
  br label %done

done:                                             ; preds = %if.then19, %if.end15.done_crit_edge, %if.then13, %if.then9
  %obj.1 = phi ptr [ %call1, %if.then9 ], [ inttoptr (i32 -12 to ptr), %if.then19 ], [ inttoptr (i32 -12 to ptr), %if.then13 ], [ %call1, %if.end15.done_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup26

cleanup26:                                        ; preds = %done, %if.end.cleanup26_crit_edge, %land.lhs.true.cleanup26_crit_edge
  %retval.0 = phi ptr [ %obj.1, %done ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.cleanup26_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup26_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_gem_free_object(ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %flags.i = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 2
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 8
  %and.i = lshr i32 %5, 8
  %6 = and i32 %and.i, 15
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %6, label %sw.default.i.i [
    i32 0, label %entry.omap_gem_evict.exit_crit_edge
    i32 1, label %entry.gem2fmt.exit.i_crit_edge
    i32 2, label %sw.bb1.i.i
    i32 3, label %sw.bb2.i.i
  ]

entry.gem2fmt.exit.i_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %gem2fmt.exit.i

entry.omap_gem_evict.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_gem_evict.exit

sw.bb1.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %gem2fmt.exit.i

sw.bb2.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %gem2fmt.exit.i

sw.default.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %gem2fmt.exit.i

gem2fmt.exit.i:                                   ; preds = %sw.default.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %entry.gem2fmt.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 3, %sw.default.i.i ], [ 2, %sw.bb2.i.i ], [ 1, %sw.bb1.i.i ], [ 0, %entry.gem2fmt.exit.i_crit_edge ]
  %usergart.i = getelementptr inbounds %struct.omap_drm_private, ptr %3, i32 0, i32 18
  %8 = ptrtoint ptr %usergart.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usergart.i, align 4
  %arrayidx.i = getelementptr %struct.omap_drm_usergart, ptr %9, i32 %retval.0.i.i
  %obj5.i = getelementptr inbounds %struct.omap_drm_usergart_entry, ptr %arrayidx.i, i32 0, i32 2
  %10 = ptrtoint ptr %obj5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %obj5.i, align 4
  %cmp6.i = icmp eq ptr %11, %obj
  br i1 %cmp6.i, label %if.then7.i, label %gem2fmt.exit.i.if.end.i_crit_edge

gem2fmt.exit.i.if.end.i_crit_edge:                ; preds = %gem2fmt.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then7.i:                                       ; preds = %gem2fmt.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @omap_gem_evict_entry(ptr noundef %obj, i32 noundef %retval.0.i.i, ptr noundef %arrayidx.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then7.i, %gem2fmt.exit.i.if.end.i_crit_edge
  %12 = ptrtoint ptr %usergart.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usergart.i, align 4
  %obj5.1.i = getelementptr %struct.omap_drm_usergart, ptr %13, i32 %retval.0.i.i, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %obj5.1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %obj5.1.i, align 4
  %cmp6.1.i = icmp eq ptr %15, %obj
  br i1 %cmp6.1.i, label %if.then7.1.i, label %if.end.i.omap_gem_evict.exit_crit_edge

if.end.i.omap_gem_evict.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_gem_evict.exit

if.then7.1.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx4.1.i = getelementptr %struct.omap_drm_usergart, ptr %13, i32 %retval.0.i.i, i32 0, i32 1
  tail call fastcc void @omap_gem_evict_entry(ptr noundef %obj, i32 noundef %retval.0.i.i, ptr noundef %arrayidx4.1.i) #10
  br label %omap_gem_evict.exit

omap_gem_evict.exit:                              ; preds = %if.then7.1.i, %if.end.i.omap_gem_evict.exit_crit_edge, %entry.omap_gem_evict.exit_crit_edge
  %list_lock = getelementptr inbounds %struct.omap_drm_private, ptr %3, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %list_lock, i32 noundef 0) #10
  %mm_list = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mm_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %omap_gem_evict.exit.list_del.exit_crit_edge

omap_gem_evict.exit.list_del.exit_crit_edge:      ; preds = %omap_gem_evict.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %omap_gem_evict.exit
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %mm_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mm_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %omap_gem_evict.exit.list_del.exit_crit_edge
  %22 = ptrtoint ptr %mm_list to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %mm_list, align 4
  %prev.i = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %list_lock) #10
  %lock = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %dma_addr_cnt = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dma_addr_cnt, i32 noundef 4) #10
  %24 = ptrtoint ptr %dma_addr_cnt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %dma_addr_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.not = icmp eq i32 %25, 0
  br i1 %cmp.not, label %list_del.exit.if.end_crit_edge, label %do.end, !prof !106

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1190, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %list_del.exit.if.end_crit_edge
  %pages = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 11
  %26 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pages, align 8
  %tobool22.not = icmp eq ptr %27, null
  br i1 %tobool22.not, label %if.end.if.end28_crit_edge, label %if.then23

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then23:                                        ; preds = %if.end
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i, align 8
  %and = and i32 %29, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %27) #10
  br label %if.end28

if.else:                                          ; preds = %if.then23
  %size.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 5
  %30 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size.i, align 8
  %shr.i = lshr i32 %31, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %32 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i, label %if.else.if.end.i73_crit_edge, label %land.rhs.i

if.else.if.end.i73_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i73

land.rhs.i:                                       ; preds = %if.else
  %dep_map.i = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 6, i32 5
  %call.i.i72 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i72)
  %cmp.not.i = icmp eq i32 %call.i.i72, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i73_crit_edge, !prof !103

land.rhs.i.if.end.i73_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i73

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 300, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i73

if.end.i73:                                       ; preds = %do.end.i, %land.rhs.i.if.end.i73_crit_edge, %if.else.if.end.i73_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %31)
  %cmp2548.not.i = icmp ult i32 %31, 4096
  br i1 %cmp2548.not.i, label %if.end.i73.omap_gem_detach_pages.exit_crit_edge, label %for.body.lr.ph.i

if.end.i73.omap_gem_detach_pages.exit_crit_edge:  ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_gem_detach_pages.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i73
  %dma_addrs.i = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 12
  %umax.i = tail call i32 @llvm.umax.i32(i32 %shr.i, i32 1) #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.049.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %33 = ptrtoint ptr %dma_addrs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dma_addrs.i, align 4
  %arrayidx.i75 = getelementptr i32, ptr %34, i32 %i.049.i
  %35 = ptrtoint ptr %arrayidx.i75 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool26.not.i = icmp eq i32 %36, 0
  br i1 %tobool26.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then27.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then27.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev1, align 8
  %dev28.i = getelementptr inbounds %struct.drm_device, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %dev28.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev28.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %40, i32 noundef %36, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then27.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.049.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.inc.i.omap_gem_detach_pages.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.omap_gem_detach_pages.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_gem_detach_pages.exit

omap_gem_detach_pages.exit:                       ; preds = %for.inc.i.omap_gem_detach_pages.exit_crit_edge, %if.end.i73.omap_gem_detach_pages.exit_crit_edge
  %dma_addrs32.i = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 12
  %41 = ptrtoint ptr %dma_addrs32.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dma_addrs32.i, align 4
  tail call void @kfree(ptr noundef %42) #10
  %43 = ptrtoint ptr %dma_addrs32.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %dma_addrs32.i, align 4
  %44 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pages, align 8
  tail call void @drm_gem_put_pages(ptr noundef %obj, ptr noundef %45, i1 noundef zeroext true, i1 noundef zeroext false) #10
  %46 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %pages, align 8
  br label %if.end28

if.end28:                                         ; preds = %omap_gem_detach_pages.exit, %if.then25, %if.end.if.end28_crit_edge
  %47 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags.i, align 8
  %and30 = and i32 %48, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.else34, label %if.then32

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %dev33 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %49 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev33, align 4
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 5
  %51 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %size, align 8
  %vaddr = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 13
  %53 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vaddr, align 8
  %dma_addr = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 7
  %55 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dma_addr, align 8
  tail call void @dma_free_attrs(ptr noundef %50, i32 noundef %52, ptr noundef %54, i32 noundef %56, i32 noundef 4) #10
  br label %if.end44

if.else34:                                        ; preds = %if.end28
  %vaddr35 = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 13
  %57 = ptrtoint ptr %vaddr35 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %vaddr35, align 8
  %tobool36.not = icmp eq ptr %58, null
  br i1 %tobool36.not, label %if.else39, label %if.then37

if.then37:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @vunmap(ptr noundef nonnull %58) #10
  br label %if.end44

if.else39:                                        ; preds = %if.else34
  %import_attach = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 8
  %59 = ptrtoint ptr %import_attach to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %import_attach, align 4
  %tobool40.not = icmp eq ptr %60, null
  br i1 %tobool40.not, label %if.else39.if.end44_crit_edge, label %if.then41

if.else39.if.end44_crit_edge:                     ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then41:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #12
  %sgt = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 9
  %61 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sgt, align 8
  tail call void @drm_prime_gem_destroy(ptr noundef %obj, ptr noundef %62) #10
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.else39.if.end44_crit_edge, %if.then37, %if.then32
  tail call void @mutex_unlock(ptr noundef %lock) #10
  tail call void @drm_gem_object_release(ptr noundef %obj) #10
  tail call void @mutex_destroy(ptr noundef %lock) #10
  tail call void @kfree(ptr noundef %obj) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_prime_sg_to_page_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_gem_init(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  %h = alloca i16, align 2
  %w = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %call = tail call zeroext i1 @dmm_is_available() #10
  br i1 %call, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.29) #13
  br label %cleanup82

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 156) #15
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %if.end.cleanup82_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup82_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup82

for.body:                                         ; preds = %if.end65.1.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0134 = phi i32 [ %inc79, %if.end65.1.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %h) #10
  %5 = ptrtoint ptr %h to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %h, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w) #10
  %shr = lshr i32 4096, %i.0134
  %conv = trunc i32 %shr to i16
  %6 = ptrtoint ptr %w to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %w, align 2
  %arrayidx = getelementptr [3 x i32], ptr @__const.omap_gem_init.fmts, i32 0, i32 %i.0134
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  call void @tiler_align(i32 noundef %8, ptr noundef nonnull %w, ptr noundef nonnull %h) #10
  %9 = ptrtoint ptr %h to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %h, align 2
  %conv5 = zext i16 %10 to i32
  %arrayidx6 = getelementptr %struct.omap_drm_usergart, ptr %call7.i.i.i, i32 %i.0134
  %height = getelementptr %struct.omap_drm_usergart, ptr %call7.i.i.i, i32 %i.0134, i32 1
  %11 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv5, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i.i = icmp eq i16 %10, 0
  %12 = call i32 @llvm.ctlz.i32(i32 %conv5, i1 true) #10, !range !114
  %sub.i.op.i = xor i32 %12, 31
  %sub.i = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.op.i
  %height_shift = getelementptr %struct.omap_drm_usergart, ptr %call7.i.i.i, i32 %i.0134, i32 2
  %13 = ptrtoint ptr %height_shift to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub.i, ptr %height_shift, align 4
  %call19 = call i32 @tiler_stride(i32 noundef %8, i32 noundef 0) #10
  %shr20 = lshr i32 %call19, 12
  %stride_pfn = getelementptr %struct.omap_drm_usergart, ptr %call7.i.i.i, i32 %i.0134, i32 4
  %14 = ptrtoint ptr %stride_pfn to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr20, ptr %stride_pfn, align 4
  %15 = ptrtoint ptr %h to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %h, align 2
  %17 = udiv i16 4096, %16
  %div = zext i16 %17 to i32
  %shr23 = lshr i32 %div, %i.0134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr23)
  %tobool.not.i.i128 = icmp eq i32 %shr23, 0
  %18 = call i32 @llvm.ctlz.i32(i32 %shr23, i1 true) #10, !range !114
  %sub.i.op.i129 = xor i32 %18, 31
  %sub.i130 = select i1 %tobool.not.i.i128, i32 -1, i32 %sub.i.op.i129
  %slot_shift = getelementptr %struct.omap_drm_usergart, ptr %call7.i.i.i, i32 %i.0134, i32 3
  %19 = ptrtoint ptr %slot_shift to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub.i130, ptr %slot_shift, align 4
  %20 = ptrtoint ptr %w to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %w, align 2
  %22 = ptrtoint ptr %h to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %h, align 2
  %call57 = call ptr @tiler_reserve_2d(i32 noundef %8, i16 noundef zeroext %21, i16 noundef zeroext %23, i16 noundef zeroext 4096) #10
  %cmp.i = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.body.do.end62_crit_edge, label %if.end65

for.body.do.end62_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end62

do.end62:                                         ; preds = %if.end65.do.end62_crit_edge, %for.body.do.end62_crit_edge
  %j.0133.lcssa = phi i32 [ 0, %for.body.do.end62_crit_edge ], [ 1, %if.end65.do.end62_crit_edge ]
  %call57.lcssa = phi ptr [ %call57, %for.body.do.end62_crit_edge ], [ %call57.1, %if.end65.do.end62_crit_edge ]
  %dev63 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %24 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev63, align 4
  %26 = ptrtoint ptr %call57.lcssa to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.32, i32 noundef %i.0134, i32 noundef %j.0133.lcssa, i32 noundef %26) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %h) #10
  br label %cleanup82

if.end65:                                         ; preds = %for.body
  %call66 = call i32 @tiler_ssptr(ptr noundef %call57) #10
  %dma_addr = getelementptr inbounds %struct.omap_drm_usergart_entry, ptr %arrayidx6, i32 0, i32 1
  %27 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call66, ptr %dma_addr, align 4
  %28 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call57, ptr %arrayidx6, align 4
  %29 = ptrtoint ptr %w to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %w, align 2
  %conv68 = zext i16 %30 to i32
  %31 = ptrtoint ptr %h to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %h, align 2
  %conv69 = zext i16 %32 to i32
  %33 = ptrtoint ptr %stride_pfn to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %stride_pfn, align 4
  %shl = shl i32 %34, 12
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.34, i32 noundef %i.0134, i32 noundef 0, i32 noundef %conv68, i32 noundef %conv69, ptr noundef %dma_addr, i32 noundef %shl) #10
  %35 = ptrtoint ptr %w to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %w, align 2
  %37 = ptrtoint ptr %h to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %h, align 2
  %call57.1 = call ptr @tiler_reserve_2d(i32 noundef %8, i16 noundef zeroext %36, i16 noundef zeroext %38, i16 noundef zeroext 4096) #10
  %cmp.i.1 = icmp ugt ptr %call57.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %if.end65.do.end62_crit_edge, label %if.end65.1

if.end65.do.end62_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end62

if.end65.1:                                       ; preds = %if.end65
  %arrayidx55.1 = getelementptr [2 x %struct.omap_drm_usergart_entry], ptr %arrayidx6, i32 0, i32 1
  %call66.1 = call i32 @tiler_ssptr(ptr noundef %call57.1) #10
  %dma_addr.1 = getelementptr inbounds %struct.omap_drm_usergart_entry, ptr %arrayidx55.1, i32 0, i32 1
  %39 = ptrtoint ptr %dma_addr.1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call66.1, ptr %dma_addr.1, align 4
  %40 = ptrtoint ptr %arrayidx55.1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call57.1, ptr %arrayidx55.1, align 4
  %41 = ptrtoint ptr %w to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %w, align 2
  %conv68.1 = zext i16 %42 to i32
  %43 = ptrtoint ptr %h to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %h, align 2
  %conv69.1 = zext i16 %44 to i32
  %45 = ptrtoint ptr %stride_pfn to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %stride_pfn, align 4
  %shl.1 = shl i32 %46, 12
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.34, i32 noundef %i.0134, i32 noundef 1, i32 noundef %conv68.1, i32 noundef %conv69.1, ptr noundef %dma_addr.1, i32 noundef %shl.1) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %h) #10
  %inc79 = add nuw nsw i32 %i.0134, 1
  %exitcond.not = icmp eq i32 %inc79, 3
  br i1 %exitcond.not, label %for.end80, label %if.end65.1.for.body_crit_edge

if.end65.1.for.body_crit_edge:                    ; preds = %if.end65.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end80:                                        ; preds = %if.end65.1
  call void @__sanitizer_cov_trace_pc() #12
  %usergart81 = getelementptr inbounds %struct.omap_drm_private, ptr %1, i32 0, i32 18
  %47 = ptrtoint ptr %usergart81 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call7.i.i.i, ptr %usergart81, align 4
  %has_dmm = getelementptr inbounds %struct.omap_drm_private, ptr %1, i32 0, i32 19
  %48 = ptrtoint ptr %has_dmm to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %has_dmm, align 4
  br label %cleanup82

cleanup82:                                        ; preds = %for.end80, %do.end62, %if.end.cleanup82_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dmm_is_available() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_gem_deinit(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %usergart = getelementptr inbounds %struct.omap_drm_private, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %usergart to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usergart, align 4
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_get_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_put_pages(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tiler_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap_gem_prime_export(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_vm_open(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_vm_close(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_gem_fault(ptr nocapture noundef readonly %vmf) #0 align 64 {
entry:
  %pages.i = alloca [64 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_private_data, align 4
  %lock = getelementptr inbounds %struct.omap_gem_object, ptr %3, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %call = tail call fastcc i32 @omap_gem_attach_pages(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call)
  %cmp.i = icmp eq i32 %call, -12
  %..i = select i1 %cmp.i, i32 1, i32 2
  br label %fail

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.omap_gem_object, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %dev.i = getelementptr inbounds %struct.drm_gem_object, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_private.i, align 4
  %10 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %and, label %sw.default.i.i [
    i32 256, label %if.then4.gem2fmt.exit.i_crit_edge
    i32 512, label %sw.bb1.i.i
    i32 768, label %sw.bb2.i.i
  ]

if.then4.gem2fmt.exit.i_crit_edge:                ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %gem2fmt.exit.i

sw.bb1.i.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %gem2fmt.exit.i

sw.bb2.i.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %gem2fmt.exit.i

sw.default.i.i:                                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %gem2fmt.exit.i

gem2fmt.exit.i:                                   ; preds = %sw.default.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.then4.gem2fmt.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 3, %sw.default.i.i ], [ 2, %sw.bb2.i.i ], [ 1, %sw.bb1.i.i ], [ 0, %if.then4.gem2fmt.exit.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %pages.i) #10
  %11 = call ptr @memset(ptr %pages.i, i32 255, i32 256)
  %usergart.i = getelementptr inbounds %struct.omap_drm_private, ptr %9, i32 0, i32 18
  %12 = ptrtoint ptr %usergart.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usergart.i, align 4
  %arrayidx.i = getelementptr %struct.omap_drm_usergart, ptr %13, i32 %retval.0.i.i
  %height.i = getelementptr %struct.omap_drm_usergart, ptr %13, i32 %retval.0.i.i, i32 1
  %14 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height.i, align 4
  %height_shift.i = getelementptr %struct.omap_drm_usergart, ptr %13, i32 %retval.0.i.i, i32 2
  %16 = ptrtoint ptr %height_shift.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height_shift.i, align 4
  %width.i = getelementptr inbounds %struct.omap_gem_object, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %width.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %width.i, align 4
  %conv.i = zext i16 %19 to i32
  %shl.i = shl nuw nsw i32 %conv.i, %retval.0.i.i
  %sub.i = add nuw nsw i32 %shl.i, 4095
  %div157.i = lshr i32 %sub.i, 12
  %address.i = getelementptr inbounds %struct.anon.13, ptr %vmf, i32 0, i32 3
  %20 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %address.i, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 4
  %sub4.i = sub i32 %21, %23
  %shr.i = lshr i32 %sub4.i, 12
  %shl5.i = shl i32 %div157.i, %17
  %neg.i = sub i32 0, %shl5.i
  %and.i = and i32 %shr.i, %neg.i
  %slot_shift.i = getelementptr %struct.omap_drm_usergart, ptr %13, i32 %retval.0.i.i, i32 3
  %24 = ptrtoint ptr %slot_shift.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %slot_shift.i, align 4
  %shr11.i = lshr i32 %conv.i, %25
  %sub13.neg.i = sub nsw i32 %and.i, %shr.i
  %shl14.neg.i = shl i32 %sub13.neg.i, 12
  %sub15.i = add i32 %shl14.neg.i, %21
  %last.i = getelementptr %struct.omap_drm_usergart, ptr %13, i32 %retval.0.i.i, i32 5
  %26 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %last.i, align 4
  %arrayidx21.i = getelementptr [2 x %struct.omap_drm_usergart_entry], ptr %arrayidx.i, i32 0, i32 %27
  %obj22.i = getelementptr inbounds %struct.omap_drm_usergart_entry, ptr %arrayidx21.i, i32 0, i32 2
  %28 = ptrtoint ptr %obj22.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %obj22.i, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %gem2fmt.exit.i.if.end.i_crit_edge, label %if.then.i

gem2fmt.exit.i.if.end.i_crit_edge:                ; preds = %gem2fmt.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %gem2fmt.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @omap_gem_evict_entry(ptr noundef nonnull %29, i32 noundef %retval.0.i.i, ptr noundef %arrayidx21.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %gem2fmt.exit.i.if.end.i_crit_edge
  %30 = ptrtoint ptr %obj22.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %3, ptr %obj22.i, align 4
  %obj_pgoff.i = getelementptr inbounds %struct.omap_drm_usergart_entry, ptr %arrayidx21.i, i32 0, i32 3
  %31 = ptrtoint ptr %obj_pgoff.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and.i, ptr %obj_pgoff.i, align 4
  %shr25.i = lshr i32 %and.i, %17
  %mul.i = mul i32 %shr25.i, %shr11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %shl.i)
  %cmp.i19 = icmp ugt i32 %shl.i, 4096
  br i1 %cmp.i19, label %if.then27.i, label %if.end.i.if.end40.i_crit_edge

if.end.i.if.end40.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.i

if.then27.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %rem.i = urem i32 %shr.i, %div157.i
  %add29.i = add nuw nsw i32 %rem.i, %and.i
  %32 = ptrtoint ptr %obj_pgoff.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add29.i, ptr %obj_pgoff.i, align 4
  %div30.i = udiv i32 %mul.i, %div157.i
  %shl31.i = shl i32 %rem.i, %17
  %sub32.i = sub i32 %shr11.i, %shl31.i
  %33 = tail call i32 @llvm.smin.i32(i32 %sub32.i, i32 %15) #10
  %add37.i = add i32 %div30.i, %shl31.i
  %shl38.i = shl nuw nsw i32 %rem.i, 12
  %add39.i = add i32 %shl38.i, %sub15.i
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then27.i, %if.end.i.if.end40.i_crit_edge
  %base_pgoff.0.i = phi i32 [ %add37.i, %if.then27.i ], [ %mul.i, %if.end.i.if.end40.i_crit_edge ]
  %vaddr.0.i = phi i32 [ %add39.i, %if.then27.i ], [ %sub15.i, %if.end.i.if.end40.i_crit_edge ]
  %slots.0.i = phi i32 [ %33, %if.then27.i ], [ %shr11.i, %if.end.i.if.end40.i_crit_edge ]
  %pages41.i = getelementptr inbounds %struct.omap_gem_object, ptr %3, i32 0, i32 11
  %34 = ptrtoint ptr %pages41.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pages41.i, align 8
  %arrayidx42.i = getelementptr ptr, ptr %35, i32 %base_pgoff.0.i
  %mul43.i = shl i32 %slots.0.i, 2
  %36 = call ptr @memcpy(ptr %pages.i, ptr %arrayidx42.i, i32 %mul43.i)
  %add.ptr45.i = getelementptr ptr, ptr %pages.i, i32 %slots.0.i
  %sub46.i = sub i32 %15, %slots.0.i
  %mul47.i = shl i32 %sub46.i, 2
  %37 = call ptr @memset(ptr %add.ptr45.i, i32 0, i32 %mul47.i)
  %38 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx21.i, align 4
  %call49.i = call i32 @tiler_pin(ptr noundef %39, ptr noundef nonnull %pages.i, i32 noundef 64, i32 noundef 0, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %if.end55.i, label %if.then51.i

if.then51.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call49.i)
  %cmp.i.i = icmp eq i32 %call49.i, -12
  %..i.i = select i1 %cmp.i.i, i32 1, i32 2
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 8
  %dev54.i = getelementptr inbounds %struct.drm_device, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %dev54.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev54.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.44, i32 noundef %call49.i) #13
  br label %omap_gem_fault_2d.exit

if.end55.i:                                       ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp57158.i = icmp sgt i32 %15, 0
  br i1 %cmp57158.i, label %for.body.lr.ph.i, label %if.end55.i.for.end.i_crit_edge

if.end55.i.for.end.i_crit_edge:                   ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end55.i
  %dma_addr.i = getelementptr inbounds %struct.omap_drm_usergart_entry, ptr %arrayidx21.i, i32 0, i32 1
  %44 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma_addr.i, align 4
  %shr56.i = lshr i32 %45, 12
  %mul67.i = and i32 %sub.i, 1044480
  br label %for.body.i

for.body.i:                                       ; preds = %if.end63.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0161.i = phi i32 [ %15, %for.body.lr.ph.i ], [ %dec.i, %if.end63.i.for.body.i_crit_edge ]
  %vaddr.1160.i = phi i32 [ %vaddr.0.i, %for.body.lr.ph.i ], [ %add68.i, %if.end63.i.for.body.i_crit_edge ]
  %pfn.0159.i = phi i32 [ %shr56.i, %for.body.lr.ph.i ], [ %add66.i, %if.end63.i.for.body.i_crit_edge ]
  %conv.i.i = zext i32 %pfn.0159.i to i64
  %or.i.i = or i64 %conv.i.i, 2305843009213693952
  %.fca.0.insert.i = insertvalue [1 x i64] poison, i64 %or.i.i, 0
  %call59.i = call i32 @vmf_insert_mixed(ptr noundef %1, i32 noundef %vaddr.1160.i, [1 x i64] %.fca.0.insert.i) #10
  %and60.i = and i32 %call59.i, 2163
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i)
  %tobool61.not.i = icmp eq i32 %and60.i, 0
  br i1 %tobool61.not.i, label %if.end63.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.end63.i:                                       ; preds = %for.body.i
  %46 = ptrtoint ptr %usergart.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %usergart.i, align 4
  %stride_pfn.i = getelementptr %struct.omap_drm_usergart, ptr %47, i32 %retval.0.i.i, i32 4
  %48 = ptrtoint ptr %stride_pfn.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %stride_pfn.i, align 4
  %add66.i = add i32 %49, %pfn.0159.i
  %add68.i = add i32 %vaddr.1160.i, %mul67.i
  %dec.i = add nsw i32 %i.0161.i, -1
  %cmp57.i = icmp sgt i32 %i.0161.i, 1
  br i1 %cmp57.i, label %if.end63.i.for.body.i_crit_edge, label %if.end63.i.for.end.i_crit_edge

if.end63.i.for.end.i_crit_edge:                   ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.end63.i.for.body.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %if.end63.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %if.end55.i.for.end.i_crit_edge
  %ret.1.i = phi i32 [ 256, %if.end55.i.for.end.i_crit_edge ], [ %call59.i, %for.body.i.for.end.i_crit_edge ], [ %call59.i, %if.end63.i.for.end.i_crit_edge ]
  %50 = ptrtoint ptr %usergart.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %usergart.i, align 4
  %last71.i = getelementptr %struct.omap_drm_usergart, ptr %51, i32 %retval.0.i.i, i32 5
  %52 = ptrtoint ptr %last71.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %last71.i, align 4
  %add72.i = add i32 %53, 1
  %rem73.i = srem i32 %add72.i, 2
  store i32 %rem73.i, ptr %last71.i, align 4
  br label %omap_gem_fault_2d.exit

omap_gem_fault_2d.exit:                           ; preds = %for.end.i, %if.then51.i
  %retval.0.i = phi i32 [ %..i.i, %if.then51.i ], [ %ret.1.i, %for.end.i ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %pages.i) #10
  br label %fail

if.else:                                          ; preds = %if.end
  %address.i20 = getelementptr inbounds %struct.anon.13, ptr %vmf, i32 0, i32 3
  %54 = ptrtoint ptr %address.i20 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %address.i20, align 4
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %1, align 4
  %sub.i21 = sub i32 %55, %57
  %shr.i22 = lshr i32 %sub.i21, 12
  %pages.i23 = getelementptr inbounds %struct.omap_gem_object, ptr %3, i32 0, i32 11
  %58 = ptrtoint ptr %pages.i23 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pages.i23, align 8
  %tobool.not.i24 = icmp eq ptr %59, null
  br i1 %tobool.not.i24, label %do.body.i, label %if.then.i25

if.then.i25:                                      ; preds = %if.else
  %dev1.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %3, i32 0, i32 2
  %60 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev1.i.i, align 8
  %62 = and i32 %5, 33554438
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %62)
  %.not.i.i = icmp eq i32 %62, 33554432
  br i1 %.not.i.i, label %if.end.i.i, label %if.then.i25.omap_gem_cpu_sync_page.exit.i_crit_edge

if.then.i25.omap_gem_cpu_sync_page.exit.i_crit_edge: ; preds = %if.then.i25
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_gem_cpu_sync_page.exit.i

if.end.i.i:                                       ; preds = %if.then.i25
  %dma_addrs.i.i = getelementptr inbounds %struct.omap_gem_object, ptr %3, i32 0, i32 12
  %63 = ptrtoint ptr %dma_addrs.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dma_addrs.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %64, i32 %shr.i22
  %65 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i.i = icmp eq i32 %66, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.omap_gem_cpu_sync_page.exit.i_crit_edge, label %if.then2.i.i

if.end.i.i.omap_gem_cpu_sync_page.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_gem_cpu_sync_page.exit.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev3.i.i = getelementptr inbounds %struct.drm_device, ptr %61, i32 0, i32 2
  %67 = ptrtoint ptr %dev3.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev3.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %68, i32 noundef %66, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #10
  %69 = ptrtoint ptr %dma_addrs.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dma_addrs.i.i, align 4
  %arrayidx7.i.i = getelementptr i32, ptr %70, i32 %shr.i22
  %71 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %arrayidx7.i.i, align 4
  br label %omap_gem_cpu_sync_page.exit.i

omap_gem_cpu_sync_page.exit.i:                    ; preds = %if.then2.i.i, %if.end.i.i.omap_gem_cpu_sync_page.exit.i_crit_edge, %if.then.i25.omap_gem_cpu_sync_page.exit.i_crit_edge
  %72 = ptrtoint ptr %pages.i23 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pages.i23, align 8
  %arrayidx.i26 = getelementptr ptr, ptr %73, i32 %shr.i22
  %74 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.i26, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %76 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %75 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %76 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %77 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %sub.ptr.div.i, %77
  br label %omap_gem_fault_1d.exit

do.body.i:                                        ; preds = %if.else
  %and.i.i27 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i27)
  %tobool.not.i25.i = icmp eq i32 %and.i.i27, 0
  br i1 %tobool.not.i25.i, label %if.end.i26.i, label %do.body.i.do.end11.i_crit_edge

do.body.i.do.end11.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11.i

if.end.i26.i:                                     ; preds = %do.body.i
  %and2.i.i = and i32 %5, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end.i26.i.do.body6.i_crit_edge, label %land.lhs.true.i.i

if.end.i26.i.do.body6.i_crit_edge:                ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body6.i

land.lhs.true.i.i:                                ; preds = %if.end.i26.i
  %sgt.i.i = getelementptr inbounds %struct.omap_gem_object, ptr %3, i32 0, i32 9
  %78 = ptrtoint ptr %sgt.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sgt.i.i, align 8
  %nents.i.i = getelementptr inbounds %struct.sg_table, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %nents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp.i.i28 = icmp eq i32 %81, 1
  br i1 %cmp.i.i28, label %land.lhs.true.i.i.do.end11.i_crit_edge, label %land.lhs.true.i.i.do.body6.i_crit_edge

land.lhs.true.i.i.do.body6.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body6.i

land.lhs.true.i.i.do.end11.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11.i

do.body6.i:                                       ; preds = %land.lhs.true.i.i.do.body6.i_crit_edge, %if.end.i26.i.do.body6.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/omapdrm/omap_gem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 360, 0\0A.popsection", ""() #10, !srcloc !115
  unreachable

do.end11.i:                                       ; preds = %land.lhs.true.i.i.do.end11.i_crit_edge, %do.body.i.do.end11.i_crit_edge
  %dma_addr.i29 = getelementptr inbounds %struct.omap_gem_object, ptr %3, i32 0, i32 7
  %82 = ptrtoint ptr %dma_addr.i29 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dma_addr.i29, align 8
  %shr12.i = lshr i32 %83, 12
  %add13.i = add nuw nsw i32 %shr12.i, %shr.i22
  br label %omap_gem_fault_1d.exit

omap_gem_fault_1d.exit:                           ; preds = %do.end11.i, %omap_gem_cpu_sync_page.exit.i
  %pfn.0.i = phi i32 [ %add.i, %omap_gem_cpu_sync_page.exit.i ], [ %add13.i, %do.end11.i ]
  %84 = ptrtoint ptr %address.i20 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %address.i20, align 4
  %conv.i.i30 = zext i32 %pfn.0.i to i64
  %or.i.i31 = or i64 %conv.i.i30, 2305843009213693952
  %.fca.0.insert.i32 = insertvalue [1 x i64] poison, i64 %or.i.i31, 0
  %call16.i = tail call i32 @vmf_insert_mixed(ptr noundef %1, i32 noundef %85, [1 x i64] %.fca.0.insert.i32) #10
  br label %fail

fail:                                             ; preds = %omap_gem_fault_1d.exit, %omap_gem_fault_2d.exit, %if.then
  %ret.0 = phi i32 [ %..i, %if.then ], [ %retval.0.i, %omap_gem_fault_2d.exit ], [ %call16.i, %omap_gem_fault_1d.exit ]
  call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_gem_evict_entry(ptr noundef %obj, i32 noundef %fmt, ptr nocapture noundef %entry1) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %usergart = getelementptr inbounds %struct.omap_drm_private, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %usergart to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usergart, align 4
  %height = getelementptr %struct.omap_drm_usergart, ptr %5, i32 %fmt, i32 1
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  %size1.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 5
  %8 = ptrtoint ptr %size1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size1.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 2
  %10 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i.i, align 8
  %and.i.i = lshr i32 %11, 8
  %12 = and i32 %and.i.i, 15
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %12, label %sw.default.i.i.i [
    i32 0, label %entry.omap_gem_mmap_size.exit.i_crit_edge
    i32 1, label %entry.gem2fmt.exit.i.i_crit_edge
    i32 2, label %sw.bb1.i.i.i
    i32 3, label %sw.bb2.i.i.i
  ]

entry.gem2fmt.exit.i.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %gem2fmt.exit.i.i

entry.omap_gem_mmap_size.exit.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_gem_mmap_size.exit.i

sw.bb1.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %gem2fmt.exit.i.i

sw.bb2.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %gem2fmt.exit.i.i

sw.default.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %gem2fmt.exit.i.i

gem2fmt.exit.i.i:                                 ; preds = %sw.default.i.i.i, %sw.bb2.i.i.i, %sw.bb1.i.i.i, %entry.gem2fmt.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 3, %sw.default.i.i.i ], [ 2, %sw.bb2.i.i.i ], [ 1, %sw.bb1.i.i.i ], [ 0, %entry.gem2fmt.exit.i.i_crit_edge ]
  %width.i.i = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 3
  %14 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %width.i.i, align 4
  %height.i.i = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 4
  %16 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %height.i.i, align 2
  %call3.i.i = tail call i32 @tiler_vsize(i32 noundef %retval.0.i.i.i, i16 noundef zeroext %15, i16 noundef zeroext %17) #10
  br label %omap_gem_mmap_size.exit.i

omap_gem_mmap_size.exit.i:                        ; preds = %gem2fmt.exit.i.i, %entry.omap_gem_mmap_size.exit.i_crit_edge
  %size.0.i.i = phi i32 [ %call3.i.i, %gem2fmt.exit.i.i ], [ %9, %entry.omap_gem_mmap_size.exit.i_crit_edge ]
  %call2.i = tail call i32 @drm_gem_create_mmap_offset_size(ptr noundef %obj, i32 noundef %size.0.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %omap_gem_mmap_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev3.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev3.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str) #13
  br label %omap_gem_mmap_offset.exit

if.end.i:                                         ; preds = %omap_gem_mmap_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %start.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 4, i32 1, i32 1
  %20 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %start.i.i, align 8
  %shl.i.i = shl i64 %21, 12
  br label %omap_gem_mmap_offset.exit

omap_gem_mmap_offset.exit:                        ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i64 [ 0, %do.end.i ], [ %shl.i.i, %if.end.i ]
  %obj_pgoff = getelementptr inbounds %struct.omap_drm_usergart_entry, ptr %entry1, i32 0, i32 3
  %22 = ptrtoint ptr %obj_pgoff to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %obj_pgoff, align 4
  %shl = shl i32 %23, 12
  %conv = zext i32 %shl to i64
  %add = add i64 %retval.0.i, %conv
  %width = getelementptr inbounds %struct.omap_gem_object, ptr %obj, i32 0, i32 3
  %24 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %width, align 4
  %conv2 = zext i16 %25 to i32
  %shl3 = shl i32 %conv2, %fmt
  %sub = add i32 %shl3, 4095
  %div28 = and i32 %sub, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %sub)
  %cmp = icmp ugt i32 %sub, 8191
  br i1 %cmp, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %omap_gem_mmap_offset.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp629 = icmp sgt i32 %7, 0
  br i1 %cmp629, label %for.body.lr.ph, label %for.cond.preheader.if.end_crit_edge

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %conv10 = zext i32 %div28 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.031 = phi i32 [ %7, %for.body.lr.ph ], [ %dec, %for.body.for.body_crit_edge ]
  %off.030 = phi i64 [ %add, %for.body.lr.ph ], [ %add11, %for.body.for.body_crit_edge ]
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 8
  %anon_inode = getelementptr inbounds %struct.drm_device, ptr %27, i32 0, i32 12
  %28 = ptrtoint ptr %anon_inode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %anon_inode, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_mapping, align 8
  tail call void @unmap_mapping_range(ptr noundef %31, i64 noundef %off.030, i64 noundef 4096, i32 noundef 1) #10
  %add11 = add i64 %off.030, %conv10
  %dec = add nsw i32 %i.031, -1
  %cmp6 = icmp ugt i32 %i.031, 1
  br i1 %cmp6, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.else:                                          ; preds = %omap_gem_mmap_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  %mul = shl i32 %7, 12
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 8
  %anon_inode13 = getelementptr inbounds %struct.drm_device, ptr %33, i32 0, i32 12
  %34 = ptrtoint ptr %anon_inode13 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %anon_inode13, align 4
  %i_mapping14 = getelementptr inbounds %struct.inode, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %i_mapping14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_mapping14, align 8
  %conv15 = zext i32 %mul to i64
  tail call void @unmap_mapping_range(ptr noundef %37, i64 noundef %add, i64 noundef %conv15, i32 noundef 1) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge
  %obj16 = getelementptr inbounds %struct.omap_drm_usergart_entry, ptr %entry1, i32 0, i32 2
  %38 = ptrtoint ptr %obj16 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %obj16, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vmf_insert_mixed(ptr noundef, i32 noundef, [1 x i64]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_prime_gem_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !70, !71, !72, !73, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !89, !91, !92, !93}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/omapdrm/omap_gem.c", i32 144, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @omap_gem_mmap_offset._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @omap_gem_mmap_offset._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/omapdrm/omap_gem.c", i32 534, i32 3}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/omapdrm/omap_gem.c", i32 651, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @omap_gem_roll._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @omap_gem_roll._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/omapdrm/omap_gem.c", i32 668, i32 4}
!17 = !{ptr @omap_gem_roll._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @omap_gem_roll._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/omapdrm/omap_gem.c", i32 737, i32 5}
!21 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @omap_gem_dma_sync_buffer._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @omap_gem_dma_sync_buffer._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/omapdrm/omap_gem.c", i32 799, i32 5}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @omap_gem_pin._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @omap_gem_pin._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/omapdrm/omap_gem.c", i32 809, i32 5}
!32 = !{ptr @omap_gem_pin._entry.16, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @omap_gem_pin._entry_ptr.18, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/omapdrm/omap_gem.c", i32 817, i32 4}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/omapdrm/omap_gem.c", i32 1098, i32 5}
!38 = !{ptr @omap_gem_resume._entry, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @omap_gem_resume._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/omapdrm/omap_gem.c", i32 1124, i32 16}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/omapdrm/omap_gem.c", i32 1131, i32 17}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/omapdrm/omap_gem.c", i32 1134, i32 18}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/omapdrm/omap_gem.c", i32 1139, i32 17}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/omapdrm/omap_gem.c", i32 1144, i32 16}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/omapdrm/omap_gem.c", i32 1155, i32 17}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/omapdrm/omap_gem.c", i32 1161, i32 16}
!54 = !{ptr @omap_gem_new.__key, !55, !"__key", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/omapdrm/omap_gem.c", i32 1309, i32 2}
!56 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/omapdrm/omap_gem.c", i32 1456, i32 3}
!59 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @omap_gem_init._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @omap_gem_init._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/omapdrm/omap_gem.c", i32 1484, i32 5}
!64 = !{ptr @omap_gem_init._entry.31, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @omap_gem_init._entry_ptr.33, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/omapdrm/omap_gem.c", i32 1492, i32 4}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/omapdrm/omap_gem.c", i32 241, i32 3}
!70 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @omap_gem_attach_pages._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @omap_gem_attach_pages._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @omap_gem_attach_pages._entry.37, !74, !"_entry", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/omapdrm/omap_gem.c", i32 260, i32 5}
!75 = !{ptr @omap_gem_attach_pages._entry_ptr.38, !74, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/omapdrm/omap_gem.c", i32 861, i32 4}
!78 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @omap_gem_unpin_locked._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @omap_gem_unpin_locked._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/omapdrm/omap_gem.c", i32 866, i32 4}
!83 = !{ptr @omap_gem_unpin_locked._entry.41, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @omap_gem_unpin_locked._entry_ptr.43, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @omap_gem_object_funcs, !86, !"omap_gem_object_funcs", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/omapdrm/omap_gem.c", i32 1255, i32 42}
!87 = !{ptr @omap_gem_vm_ops, !88, !"omap_gem_vm_ops", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/omapdrm/omap_gem.c", i32 1249, i32 42}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/omapdrm/omap_gem.c", i32 453, i32 3}
!91 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @omap_gem_fault_2d._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @omap_gem_fault_2d._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{!"branch_weights", i32 1, i32 2000}
!104 = !{i64 2148634934}
!105 = !{i64 2148549398, i64 2148549430, i64 2148549459, i64 2148549493, i64 2148549524, i64 2148549547}
!106 = !{!"branch_weights", i32 2000, i32 1}
!107 = !{i64 2149656987}
!108 = !{i8 0, i8 2}
!109 = !{i64 2156875276, i64 2156875775, i64 2156875313, i64 2156875369, i64 2156875403, i64 2156875427, i64 2156875468, i64 2156875489, i64 2156875517, i64 2156875551}
!110 = !{i64 2148546933, i64 2148546965, i64 2148546994, i64 2148547028, i64 2148547059, i64 2148547082}
!111 = !{!"auto-init"}
!112 = !{i64 2153811987, i64 2153812479, i64 2153812024, i64 2153812080, i64 2153812114, i64 2153812138, i64 2153812179, i64 2153812200, i64 2153812228, i64 2153812262}
!113 = !{i64 2153813597, i64 2153814089, i64 2153813634, i64 2153813690, i64 2153813724, i64 2153813748, i64 2153813789, i64 2153813810, i64 2153813838, i64 2153813872}
!114 = !{i32 0, i32 33}
!115 = !{i64 2156851554, i64 2156852053, i64 2156851591, i64 2156851647, i64 2156851681, i64 2156851705, i64 2156851746, i64 2156851767, i64 2156851795, i64 2156851829}
