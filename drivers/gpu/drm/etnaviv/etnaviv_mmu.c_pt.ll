; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/etnaviv/etnaviv_mmu.c_pt.bc'
source_filename = "../drivers/gpu/drm/etnaviv/etnaviv_mmu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.etnaviv_iommu_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.etnaviv_gem_object = type { %struct.drm_gem_object, ptr, %struct.mutex, i32, %struct.list_head, ptr, %struct.atomic_t, i32, ptr, ptr, ptr, %struct.list_head, i32, %struct.etnaviv_gem_userptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.etnaviv_gem_userptr = type { i32, ptr, i8 }
%struct.etnaviv_iommu_context = type { %struct.kref, ptr, %struct.mutex, %struct.list_head, %struct.drm_mm, i32, %struct.etnaviv_vram_mapping }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.etnaviv_vram_mapping = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, %struct.drm_mm_node, i32, i32 }
%struct.etnaviv_iommu_global = type { ptr, i32, ptr, i32, %struct.mutex, ptr, i32, i32, %union.anon.90 }
%union.anon.90 = type { %struct.anon.92 }
%struct.anon.92 = type { ptr, i32, %struct.spinlock, [16 x i32] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.drm_mm_scan = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.anon.88 = type { i32, ptr }
%struct.etnaviv_gpu = type { ptr, ptr, ptr, %struct.mutex, %struct.etnaviv_chip_identity, i32, ptr, %struct.drm_gpu_scheduler, i8, i8, %struct.etnaviv_cmdbuf, i32, [1 x i32], [30 x %struct.etnaviv_event], %struct.completion, %struct.spinlock, i32, %struct.mutex, %struct.idr, i32, i32, %struct.wait_queue_head, i64, %struct.spinlock, %struct.work_struct, i32, i32, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.etnaviv_chip_identity = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.etnaviv_cmdbuf = type { ptr, i32, ptr, i32, i32 }
%struct.etnaviv_event = type { ptr, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.etnaviv_drm_private = type { i32, [4 x ptr], i32, ptr, ptr, %struct.mutex, %struct.list_head }

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/etnaviv/etnaviv_mmu.c\00", [58 x i8] zeroinitializer }, align 32
@etnaviv_iommu_context_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 335, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"command buffer outside valid memory window\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"etnaviv_iommu_context_init\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@etnaviv_iommu_context_init._entry_ptr = internal global ptr @etnaviv_iommu_context_init._entry, section ".printk_index", align 4
@etnaviv_iommu_global_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 446, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"MMU version doesn't match global version\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"etnaviv_iommu_global_init\00", [38 x i8] zeroinitializer }, align 32
@etnaviv_iommu_global_init._entry_ptr = internal global ptr @etnaviv_iommu_global_init._entry, section ".printk_index", align 4
@etnaviv_iommu_global_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&global->lock\00", [18 x i8] zeroinitializer }, align 32
@etnaviv_iommuv1_ops = external dso_local constant %struct.etnaviv_iommu_ops, align 4
@etnaviv_iommuv2_ops = external dso_local constant %struct.etnaviv_iommu_ops, align 4
@etnaviv_context_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013unaligned: iova 0x%lx pa %pa size 0x%zx min_pagesz 0x%zx\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"etnaviv_context_map\00", [44 x i8] zeroinitializer }, align 32
@etnaviv_context_map._entry_ptr = internal global ptr @etnaviv_context_map._entry, section ".printk_index", align 4
@etnaviv_context_unmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str, i32 24, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013unaligned: iova 0x%lx size 0x%zx min_pagesz 0x%zx\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"etnaviv_context_unmap\00", [42 x i8] zeroinitializer }, align 32
@etnaviv_context_unmap._entry_ptr = internal global ptr @etnaviv_context_unmap._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 236, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 334, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 445, i32 4 }
@___asan_gen_.39 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 475, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 49, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [41 x i8] c"../drivers/gpu/drm/etnaviv/etnaviv_mmu.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 23, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @etnaviv_context_map._entry, ptr @etnaviv_context_map._entry_ptr, ptr @etnaviv_context_unmap._entry, ptr @etnaviv_context_unmap._entry_ptr, ptr @etnaviv_iommu_context_init._entry, ptr @etnaviv_iommu_context_init._entry_ptr, ptr @etnaviv_iommu_global_init._entry, ptr @etnaviv_iommu_global_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @etnaviv_iommu_global_init.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_iommu_context_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_iommu_global_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_iommu_global_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_context_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_context_unmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @etnaviv_iommu_map_gem(ptr noundef %context, ptr noundef %etnaviv_obj, i32 noundef %memory_base, ptr noundef %mapping, i64 noundef %va) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sgt1 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %etnaviv_obj, i32 0, i32 9
  %0 = ptrtoint ptr %sgt1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sgt1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.etnaviv_gem_object, ptr %etnaviv_obj, i32 0, i32 2, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !36

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 236, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %lock25 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %context, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock25, i32 noundef 0) #6
  %global = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %context, i32 0, i32 1
  %3 = ptrtoint ptr %global to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %global, align 4
  %version = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp26 = icmp eq i32 %6, 0
  br i1 %cmp26, label %land.lhs.true, label %if.end.if.end37_crit_edge

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

land.lhs.true:                                    ; preds = %if.end
  %nents = getelementptr inbounds %struct.sg_table, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp27 = icmp eq i32 %8, 1
  br i1 %cmp27, label %land.lhs.true28, label %land.lhs.true.if.end37_crit_edge

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

land.lhs.true28:                                  ; preds = %land.lhs.true
  %flags = getelementptr inbounds %struct.etnaviv_gem_object, ptr %etnaviv_obj, i32 0, i32 3
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 8
  %and = and i32 %10, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.then30, label %land.lhs.true28.if.end37_crit_edge

land.lhs.true28.if.end37_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then30:                                        ; preds = %land.lhs.true28
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_address, align 4
  %sub = sub i32 %14, %memory_base
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %12, i32 0, i32 4
  %15 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_length, align 4
  %sub32 = sub i32 -2147483648, %16
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sub32)
  %cmp33 = icmp ult i32 %sub, %sub32
  br i1 %cmp33, label %if.then34, label %if.then30.if.end37_crit_edge

if.then30.if.end37_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then34:                                        ; preds = %if.then30
  %iova35 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %mapping, i32 0, i32 7
  %17 = ptrtoint ptr %iova35 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub, ptr %iova35, align 4
  %mmu_node = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %mapping, i32 0, i32 2
  %mappings = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %context, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %context, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %mmu_node, ptr noundef %19, ptr noundef %mappings) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then34.cleanup61_crit_edge

if.then34.cleanup61_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup61

if.end.i.i:                                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %mmu_node, ptr %prev.i, align 4
  %21 = ptrtoint ptr %mmu_node to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %mappings, ptr %mmu_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %mapping, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %mmu_node, ptr %19, align 4
  br label %cleanup61

if.end37:                                         ; preds = %if.then30.if.end37_crit_edge, %land.lhs.true28.if.end37_crit_edge, %land.lhs.true.if.end37_crit_edge, %if.end.if.end37_crit_edge
  %vram_node = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %mapping, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %va)
  %tobool38.not = icmp eq i64 %va, 0
  %size42 = getelementptr inbounds %struct.drm_gem_object, ptr %etnaviv_obj, i32 0, i32 5
  %24 = ptrtoint ptr %size42 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size42, align 8
  br i1 %tobool38.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %if.end37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %26 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %if.then39.etnaviv_iommu_insert_exact.exit_crit_edge, label %land.rhs.i

if.then39.etnaviv_iommu_insert_exact.exit_crit_edge: ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  br label %etnaviv_iommu_insert_exact.exit

land.rhs.i:                                       ; preds = %if.then39
  %dep_map.i = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %context, i32 0, i32 2, i32 5
  %call.i.i93 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i93)
  %cmp.not.i = icmp eq i32 %call.i.i93, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.etnaviv_iommu_insert_exact.exit_crit_edge, !prof !36

land.rhs.i.etnaviv_iommu_insert_exact.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %etnaviv_iommu_insert_exact.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 222, i32 noundef 9, ptr noundef null) #6
  br label %etnaviv_iommu_insert_exact.exit

etnaviv_iommu_insert_exact.exit:                  ; preds = %do.end.i, %land.rhs.i.etnaviv_iommu_insert_exact.exit_crit_edge, %if.then39.etnaviv_iommu_insert_exact.exit_crit_edge
  %mm.i = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %context, i32 0, i32 4
  %conv.i = zext i32 %25 to i64
  %add.i = add i64 %conv.i, %va
  %call25.i = tail call i32 @drm_mm_insert_node_in_range(ptr noundef %mm.i, ptr noundef %vram_node, i64 noundef %conv.i, i64 noundef 0, i32 noundef 0, i64 noundef %va, i64 noundef %add.i, i32 noundef -2147483647) #6
  br label %if.end44

if.else:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %call43 = tail call fastcc i32 @etnaviv_iommu_find_iova(ptr noundef %context, ptr noundef %vram_node, i32 noundef %25)
  br label %if.end44

if.end44:                                         ; preds = %if.else, %etnaviv_iommu_insert_exact.exit
  %ret.1 = phi i32 [ %call25.i, %etnaviv_iommu_insert_exact.exit ], [ %call43, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp45 = icmp slt i32 %ret.1, 0
  br i1 %cmp45, label %if.end44.cleanup61_crit_edge, label %if.end47

if.end44.cleanup61_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup61

if.end47:                                         ; preds = %if.end44
  %start = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %mapping, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %start, align 8
  %conv = trunc i64 %28 to i32
  %iova48 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %mapping, i32 0, i32 7
  %29 = ptrtoint ptr %iova48 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv, ptr %iova48, align 4
  %tobool.not.i94 = icmp eq ptr %context, null
  %tobool1.not.i = icmp eq ptr %1, null
  %or.cond.i = or i1 %tobool.not.i94, %tobool1.not.i
  br i1 %or.cond.i, label %if.end47.if.then56_crit_edge, label %if.end.i

if.end47.if.then56_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then56

if.end.i:                                         ; preds = %if.end47
  %nents.i = getelementptr inbounds %struct.sg_table, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp3.not.i = icmp eq i32 %31, 0
  br i1 %cmp3.not.i, label %if.end.i.if.end57_crit_edge, label %for.body.preheader.i

if.end.i.if.end57_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

for.body.preheader.i:                             ; preds = %if.end.i
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.06.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %da.05.i = phi i32 [ %add6.i, %for.inc.i.for.body.i_crit_edge ], [ %conv, %for.body.preheader.i ]
  %sg.04.i = phi ptr [ %call8.i, %for.inc.i.for.body.i_crit_edge ], [ %33, %for.body.preheader.i ]
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.04.i, i32 0, i32 3
  %34 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_address.i, align 4
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %sg.04.i, i32 0, i32 1
  %36 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %offset.i, align 4
  %sub.i = sub i32 %35, %37
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.04.i, i32 0, i32 4
  %38 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma_length.i, align 4
  %add.i95 = add i32 %39, %37
  %call.i96 = tail call fastcc i32 @etnaviv_context_map(ptr noundef nonnull %context, i32 noundef %da.05.i, i32 noundef %sub.i, i32 noundef %add.i95, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool3.not.i = icmp eq i32 %call.i96, 0
  br i1 %tobool3.not.i, label %for.inc.i, label %fail.i

for.inc.i:                                        ; preds = %for.body.i
  %add6.i = add i32 %add.i95, %da.05.i
  %inc.i = add nuw i32 %i.06.i, 1
  %call8.i = tail call ptr @sg_next(ptr noundef %sg.04.i) #6
  %40 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nents.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %41
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end57_crit_edge

for.inc.i.if.end57_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

fail.i:                                           ; preds = %for.body.i
  %sub9.i = sub i32 %da.05.i, %conv
  %or.i.i = or i32 %sub9.i, %conv
  %and.i.i = and i32 %or.i.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %while.cond.preheader.i.i, label %do.end.i.i

while.cond.preheader.i.i:                         ; preds = %fail.i
  call void @__sanitizer_cov_trace_cmp4(i32 %da.05.i, i32 %conv)
  %cmp119.not.i.i = icmp eq i32 %da.05.i, %conv
  br i1 %cmp119.not.i.i, label %while.cond.preheader.i.i.etnaviv_iommu_map.exit_crit_edge, label %while.cond.preheader.i.i.while.body.i.i_crit_edge

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond.preheader.i.i.etnaviv_iommu_map.exit_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %etnaviv_iommu_map.exit

do.end.i.i:                                       ; preds = %fail.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv, i32 noundef %sub9.i, i32 noundef 4096) #9
  br label %etnaviv_iommu_map.exit

while.body.i.i:                                   ; preds = %if.end4.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %iova.addr.021.i.i = phi i32 [ %add.i.i, %if.end4.i.i.while.body.i.i_crit_edge ], [ %conv, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %unmapped.020.i.i = phi i32 [ %add5.i.i, %if.end4.i.i.while.body.i.i_crit_edge ], [ 0, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %42 = ptrtoint ptr %global to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %global, align 4
  %ops.i.i = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i.i, align 4
  %unmap.i.i = getelementptr inbounds %struct.etnaviv_iommu_ops, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %unmap.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %unmap.i.i, align 4
  %call2.i.i = tail call i32 %47(ptr noundef %context, i32 noundef %iova.addr.021.i.i, i32 noundef 4096) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.etnaviv_iommu_map.exit_crit_edge, label %if.end4.i.i

while.body.i.i.etnaviv_iommu_map.exit_crit_edge:  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %etnaviv_iommu_map.exit

if.end4.i.i:                                      ; preds = %while.body.i.i
  %add.i.i = add i32 %call2.i.i, %iova.addr.021.i.i
  %add5.i.i = add i32 %call2.i.i, %unmapped.020.i.i
  %cmp1.i.i = icmp ult i32 %add5.i.i, %sub9.i
  br i1 %cmp1.i.i, label %if.end4.i.i.while.body.i.i_crit_edge, label %if.end4.i.i.etnaviv_iommu_map.exit_crit_edge

if.end4.i.i.etnaviv_iommu_map.exit_crit_edge:     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %etnaviv_iommu_map.exit

if.end4.i.i.while.body.i.i_crit_edge:             ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

etnaviv_iommu_map.exit:                           ; preds = %if.end4.i.i.etnaviv_iommu_map.exit_crit_edge, %while.body.i.i.etnaviv_iommu_map.exit_crit_edge, %do.end.i.i, %while.cond.preheader.i.i.etnaviv_iommu_map.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %cmp54 = icmp slt i32 %call.i96, 0
  br i1 %cmp54, label %etnaviv_iommu_map.exit.if.then56_crit_edge, label %etnaviv_iommu_map.exit.if.end57_crit_edge

etnaviv_iommu_map.exit.if.end57_crit_edge:        ; preds = %etnaviv_iommu_map.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

etnaviv_iommu_map.exit.if.then56_crit_edge:       ; preds = %etnaviv_iommu_map.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then56

if.then56:                                        ; preds = %etnaviv_iommu_map.exit.if.then56_crit_edge, %if.end47.if.then56_crit_edge
  %retval.0.i111 = phi i32 [ %call.i96, %etnaviv_iommu_map.exit.if.then56_crit_edge ], [ -22, %if.end47.if.then56_crit_edge ]
  tail call void @drm_mm_remove_node(ptr noundef %vram_node) #6
  br label %cleanup61

if.end57:                                         ; preds = %etnaviv_iommu_map.exit.if.end57_crit_edge, %for.inc.i.if.end57_crit_edge, %if.end.i.if.end57_crit_edge
  %retval.0.i107 = phi i32 [ %call.i96, %etnaviv_iommu_map.exit.if.end57_crit_edge ], [ 0, %if.end.i.if.end57_crit_edge ], [ 0, %for.inc.i.if.end57_crit_edge ]
  %mmu_node58 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %mapping, i32 0, i32 2
  %mappings59 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %context, i32 0, i32 3
  %prev.i98 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %context, i32 0, i32 3, i32 1
  %48 = ptrtoint ptr %prev.i98 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i98, align 4
  %call.i.i99 = tail call zeroext i1 @__list_add_valid(ptr noundef %mmu_node58, ptr noundef %49, ptr noundef %mappings59) #6
  br i1 %call.i.i99, label %if.end.i.i101, label %if.end57.list_add_tail.exit102_crit_edge

if.end57.list_add_tail.exit102_crit_edge:         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit102

if.end.i.i101:                                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %prev.i98 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %mmu_node58, ptr %prev.i98, align 4
  %51 = ptrtoint ptr %mmu_node58 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %mappings59, ptr %mmu_node58, align 4
  %prev3.i.i100 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %mapping, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %prev3.i.i100 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev3.i.i100, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %mmu_node58, ptr %49, align 4
  br label %list_add_tail.exit102

list_add_tail.exit102:                            ; preds = %if.end.i.i101, %if.end57.list_add_tail.exit102_crit_edge
  %flush_seq = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %context, i32 0, i32 5
  %54 = ptrtoint ptr %flush_seq to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flush_seq, align 8
  %inc = add i32 %55, 1
  store i32 %inc, ptr %flush_seq, align 8
  br label %cleanup61

cleanup61:                                        ; preds = %list_add_tail.exit102, %if.then56, %if.end44.cleanup61_crit_edge, %if.end.i.i, %if.then34.cleanup61_crit_edge
  %ret.2 = phi i32 [ %ret.1, %if.end44.cleanup61_crit_edge ], [ %retval.0.i111, %if.then56 ], [ %retval.0.i107, %list_add_tail.exit102 ], [ 0, %if.then34.cleanup61_crit_edge ], [ 0, %if.end.i.i ]
  tail call void @mutex_unlock(ptr noundef %lock25) #6
  ret i32 %ret.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @etnaviv_iommu_find_iova(ptr noundef %context, ptr noundef %node, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  %scan = alloca %struct.drm_mm_scan, align 8
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %context, i32 0, i32 2, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !36

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 141, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %1 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %mm = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %context, i32 0, i32 4
  %conv = zext i32 %size to i64
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %scan) #6
  %2 = call ptr @memset(ptr %scan, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #6
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %list, align 4, !annotation !37
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !37
  %call24231 = call i32 @drm_mm_insert_node_in_range(ptr noundef %mm, ptr noundef %node, i64 noundef %conv, i64 noundef 0, i32 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call24231)
  %cmp25.not232 = icmp eq i32 %call24231, -28
  br i1 %cmp25.not232, label %if.end28.lr.ph, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end28.lr.ph:                                   ; preds = %if.end
  %mappings = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %context, i32 0, i32 3
  br label %if.end28

if.end28:                                         ; preds = %cleanup.if.end28_crit_edge, %if.end28.lr.ph
  %mode.0233 = phi i32 [ 1, %if.end28.lr.ph ], [ 3, %cleanup.if.end28_crit_edge ]
  call void @drm_mm_scan_init_with_range(ptr noundef nonnull %scan, ptr noundef %mm, i64 noundef %conv, i64 noundef 0, i32 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef %mode.0233) #6
  %5 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %list, ptr %list, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %1, align 4
  %7 = ptrtoint ptr %mappings to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn218 = load ptr, ptr %mappings, align 4
  %cmp33.not219 = icmp eq ptr %.pn218, %mappings
  br i1 %cmp33.not219, label %if.end28.if.then54.critedge_crit_edge, label %if.end28.for.body_crit_edge

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  br label %for.body

if.end28.if.then54.critedge_crit_edge:            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then54.critedge

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end28.for.body_crit_edge
  %.pn220 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn218, %if.end28.for.body_crit_edge ]
  %vram_node = getelementptr i8, ptr %.pn220, i32 16
  %mm37 = getelementptr i8, ptr %.pn220, i32 40
  %8 = ptrtoint ptr %mm37 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mm37, align 8
  %tobool38.not = icmp eq ptr %9, null
  br i1 %tobool38.not, label %for.body.for.inc_crit_edge, label %if.end40

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end40:                                         ; preds = %for.body
  %use = getelementptr i8, ptr %.pn220, i32 128
  %10 = ptrtoint ptr %use to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %use, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool41.not = icmp eq i32 %11, 0
  br i1 %tobool41.not, label %if.end43, label %if.end40.for.inc_crit_edge

if.end40.for.inc_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end43:                                         ; preds = %if.end40
  %scan_node = getelementptr i8, ptr %.pn220, i32 -8
  %12 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %scan_node, ptr noundef nonnull %list, ptr noundef %13) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end43.list_add.exit_crit_edge

if.end43.list_add.exit_crit_edge:                 ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %scan_node, ptr %prev1.i.i, align 4
  %15 = ptrtoint ptr %scan_node to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %scan_node, align 4
  %prev3.i.i = getelementptr i8, ptr %.pn220, i32 -4
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %scan_node, ptr %list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end43.list_add.exit_crit_edge
  %call45 = call zeroext i1 @drm_mm_scan_add_block(ptr noundef nonnull %scan, ptr noundef %vram_node) #6
  br i1 %call45, label %if.end97, label %list_add.exit.for.inc_crit_edge

list_add.exit.for.inc_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %list_add.exit.for.inc_crit_edge, %if.end40.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %18 = ptrtoint ptr %.pn220 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load ptr, ptr %.pn220, align 4
  %cmp33.not = icmp eq ptr %.pn, %mappings
  br i1 %cmp33.not, label %for.inc.if.then54.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.if.then54.critedge_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then54.critedge

if.then54.critedge:                               ; preds = %for.inc.if.then54.critedge_crit_edge, %if.end28.if.then54.critedge_crit_edge
  %19 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %list, align 4
  br label %for.cond64

for.cond64:                                       ; preds = %do.body71.for.cond64_crit_edge, %if.then54.critedge
  %.pn192.in = phi ptr [ %20, %if.then54.critedge ], [ %.pn192, %do.body71.for.cond64_crit_edge ]
  %cmp66.not = icmp eq ptr %.pn192.in, %list
  br i1 %cmp66.not, label %for.cond64.while.end_crit_edge, label %do.body71

for.cond64.while.end_crit_edge:                   ; preds = %for.cond64
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.body71:                                        ; preds = %for.cond64
  %21 = ptrtoint ptr %.pn192.in to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn192 = load ptr, ptr %.pn192.in, align 8
  %vram_node72 = getelementptr i8, ptr %.pn192.in, i32 24
  %call73 = call zeroext i1 @drm_mm_scan_remove_block(ptr noundef nonnull %scan, ptr noundef %vram_node72) #6
  br i1 %call73, label %do.body81, label %do.body71.for.cond64_crit_edge, !prof !36

do.body71.for.cond64_crit_edge:                   ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond64

do.body81:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_mmu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 181, 0\0A.popsection", ""() #6, !srcloc !38
  unreachable

if.end97:                                         ; preds = %list_add.exit
  %22 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %list, align 4
  %cmp109.not223 = icmp eq ptr %23, %list
  br i1 %cmp109.not223, label %if.end97.for.end125_crit_edge, label %if.end97.for.body113_crit_edge

if.end97.for.body113_crit_edge:                   ; preds = %if.end97
  br label %for.body113

if.end97.for.end125_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end125

for.body113:                                      ; preds = %for.inc119.for.body113_crit_edge, %if.end97.for.body113_crit_edge
  %.pn193.in224 = phi ptr [ %.pn193226, %for.inc119.for.body113_crit_edge ], [ %23, %if.end97.for.body113_crit_edge ]
  %24 = ptrtoint ptr %.pn193.in224 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn193226 = load ptr, ptr %.pn193.in224, align 8
  %vram_node114 = getelementptr i8, ptr %.pn193.in224, i32 24
  %call115 = call zeroext i1 @drm_mm_scan_remove_block(ptr noundef nonnull %scan, ptr noundef %vram_node114) #6
  br i1 %call115, label %for.body113.for.inc119_crit_edge, label %if.then116

for.body113.for.inc119_crit_edge:                 ; preds = %for.body113
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc119

if.then116:                                       ; preds = %for.body113
  %call.i.i198 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn193.in224) #6
  br i1 %call.i.i198, label %if.end.i.i199, label %if.then116.list_del_init.exit_crit_edge

if.then116.list_del_init.exit_crit_edge:          ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit

if.end.i.i199:                                    ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn193.in224, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %.pn193.in224 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %.pn193.in224, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i199, %if.then116.list_del_init.exit_crit_edge
  %31 = ptrtoint ptr %.pn193.in224 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %.pn193.in224, ptr %.pn193.in224, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn193.in224, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %.pn193.in224, ptr %prev.i3.i, align 4
  br label %for.inc119

for.inc119:                                       ; preds = %list_del_init.exit, %for.body113.for.inc119_crit_edge
  %cmp109.not = icmp eq ptr %.pn193226, %list
  br i1 %cmp109.not, label %for.inc119.for.end125_crit_edge, label %for.inc119.for.body113_crit_edge

for.inc119.for.body113_crit_edge:                 ; preds = %for.inc119
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body113

for.inc119.for.end125_crit_edge:                  ; preds = %for.inc119
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end125

for.end125:                                       ; preds = %for.inc119.for.end125_crit_edge, %if.end97.for.end125_crit_edge
  %33 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %list, align 4
  %cmp137.not227 = icmp eq ptr %34, %list
  br i1 %cmp137.not227, label %for.end125.cleanup_crit_edge, label %for.end125.for.body141_crit_edge

for.end125.for.body141_crit_edge:                 ; preds = %for.end125
  br label %for.body141

for.end125.cleanup_crit_edge:                     ; preds = %for.end125
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body141:                                      ; preds = %list_del_init.exit211.for.body141_crit_edge, %for.end125.for.body141_crit_edge
  %.pn194.in228 = phi ptr [ %.pn194, %list_del_init.exit211.for.body141_crit_edge ], [ %34, %for.end125.for.body141_crit_edge ]
  %m.2 = getelementptr i8, ptr %.pn194.in228, i32 -8
  %35 = ptrtoint ptr %.pn194.in228 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn194 = load ptr, ptr %.pn194.in228, align 8
  call fastcc void @etnaviv_iommu_remove_mapping(ptr noundef %context, ptr noundef %m.2)
  %context142 = getelementptr i8, ptr %.pn194.in228, i32 20
  %36 = ptrtoint ptr %context142 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %context142, align 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %37, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !39
  call void @llvm.prefetch.p0(ptr %37, i32 1, i32 3, i32 1) #6
  %38 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #6, !srcloc !40
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %for.body141
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.etnaviv_iommu_context_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !41

if.end5.i.i.i.i.i.etnaviv_iommu_context_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %etnaviv_iommu_context_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef %37, i32 noundef 3) #6
  br label %etnaviv_iommu_context_put.exit

if.then.i.i:                                      ; preds = %for.body141
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !42
  %cmdbuf_mapping.i.i.i = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %37, i32 0, i32 6
  call void @etnaviv_cmdbuf_suballoc_unmap(ptr noundef %37, ptr noundef %cmdbuf_mapping.i.i.i) #6
  %global.i.i.i = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %37, i32 0, i32 1
  %39 = ptrtoint ptr %global.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %global.i.i.i, align 4
  %ops.i.i.i = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i.i.i, align 4
  %free.i.i.i = getelementptr inbounds %struct.etnaviv_iommu_ops, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %free.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %free.i.i.i, align 4
  call void %44(ptr noundef %37) #6
  br label %etnaviv_iommu_context_put.exit

etnaviv_iommu_context_put.exit:                   ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.etnaviv_iommu_context_put.exit_crit_edge
  %45 = ptrtoint ptr %context142 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %context142, align 4
  %mmu_node144 = getelementptr i8, ptr %.pn194.in228, i32 8
  %call.i.i200 = call zeroext i1 @__list_del_entry_valid(ptr noundef %mmu_node144) #6
  br i1 %call.i.i200, label %if.end.i.i203, label %etnaviv_iommu_context_put.exit.list_del_init.exit205_crit_edge

etnaviv_iommu_context_put.exit.list_del_init.exit205_crit_edge: ; preds = %etnaviv_iommu_context_put.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit205

if.end.i.i203:                                    ; preds = %etnaviv_iommu_context_put.exit
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i201 = getelementptr i8, ptr %.pn194.in228, i32 12
  %46 = ptrtoint ptr %prev.i.i201 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i201, align 4
  %48 = ptrtoint ptr %mmu_node144 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mmu_node144, align 4
  %prev1.i.i.i202 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev1.i.i.i202 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev1.i.i.i202, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %49, ptr %47, align 4
  br label %list_del_init.exit205

list_del_init.exit205:                            ; preds = %if.end.i.i203, %etnaviv_iommu_context_put.exit.list_del_init.exit205_crit_edge
  %52 = ptrtoint ptr %mmu_node144 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %mmu_node144, ptr %mmu_node144, align 4
  %prev.i3.i204 = getelementptr i8, ptr %.pn194.in228, i32 12
  %53 = ptrtoint ptr %prev.i3.i204 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %mmu_node144, ptr %prev.i3.i204, align 4
  %call.i.i206 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn194.in228) #6
  br i1 %call.i.i206, label %if.end.i.i209, label %list_del_init.exit205.list_del_init.exit211_crit_edge

list_del_init.exit205.list_del_init.exit211_crit_edge: ; preds = %list_del_init.exit205
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit211

if.end.i.i209:                                    ; preds = %list_del_init.exit205
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i207 = getelementptr inbounds %struct.list_head, ptr %.pn194.in228, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i.i207 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i.i207, align 4
  %56 = ptrtoint ptr %.pn194.in228 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %.pn194.in228, align 4
  %prev1.i.i.i208 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i.i208 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev1.i.i.i208, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %57, ptr %55, align 4
  br label %list_del_init.exit211

list_del_init.exit211:                            ; preds = %if.end.i.i209, %list_del_init.exit205.list_del_init.exit211_crit_edge
  %60 = ptrtoint ptr %.pn194.in228 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %.pn194.in228, ptr %.pn194.in228, align 4
  %prev.i3.i210 = getelementptr inbounds %struct.list_head, ptr %.pn194.in228, i32 0, i32 1
  %61 = ptrtoint ptr %prev.i3.i210 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %.pn194.in228, ptr %prev.i3.i210, align 4
  %cmp137.not = icmp eq ptr %.pn194, %list
  br i1 %cmp137.not, label %list_del_init.exit211.cleanup_crit_edge, label %list_del_init.exit211.for.body141_crit_edge

list_del_init.exit211.for.body141_crit_edge:      ; preds = %list_del_init.exit211
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body141

list_del_init.exit211.cleanup_crit_edge:          ; preds = %list_del_init.exit211
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit211.cleanup_crit_edge, %for.end125.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #6
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %scan) #6
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %scan) #6
  %62 = call ptr @memset(ptr %scan, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #6
  %63 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr inttoptr (i32 -1 to ptr), ptr %list, align 4, !annotation !37
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !37
  %call24 = call i32 @drm_mm_insert_node_in_range(ptr noundef %mm, ptr noundef %node, i64 noundef %conv, i64 noundef 0, i32 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef 3) #6
  %cmp25.not = icmp eq i32 %call24, -28
  br i1 %cmp25.not, label %cleanup.if.end28_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

cleanup.if.end28_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %for.cond64.while.end_crit_edge, %if.end.while.end_crit_edge
  %call24217 = phi i32 [ %call24231, %if.end.while.end_crit_edge ], [ -28, %for.cond64.while.end_crit_edge ], [ %call24, %cleanup.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #6
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %scan) #6
  ret i32 %call24217
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_remove_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @etnaviv_iommu_unmap_gem(ptr noundef %context, ptr noundef %mapping) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %use = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %mapping, i32 0, i32 6
  %0 = ptrtoint ptr %use to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %use, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !41

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 285, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %lock = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %context, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %mm = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %mapping, i32 0, i32 5, i32 3
  %2 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mm, align 8
  %mm20 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %context, i32 0, i32 4
  %cmp = icmp eq ptr %3, %mm20
  br i1 %cmp, label %if.then21, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @etnaviv_iommu_remove_mapping(ptr noundef %context, ptr noundef %mapping)
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end.if.end22_crit_edge
  %mmu_node = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %mapping, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mmu_node) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end22.list_del.exit_crit_edge

if.end22.list_del.exit_crit_edge:                 ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %mapping, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %mmu_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmu_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end22.list_del.exit_crit_edge
  %10 = ptrtoint ptr %mmu_node to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %mmu_node, align 4
  %prev.i = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %mapping, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %flush_seq = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %context, i32 0, i32 5
  %12 = ptrtoint ptr %flush_seq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flush_seq, align 8
  %inc = add i32 %13, 1
  store i32 %inc, ptr %flush_seq, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @etnaviv_iommu_remove_mapping(ptr noundef %context, ptr noundef %mapping) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %object = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %mapping, i32 0, i32 3
  %0 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %context, i32 0, i32 2, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !36

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 127, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %sgt = getelementptr inbounds %struct.etnaviv_gem_object, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sgt, align 4
  %nents.i = getelementptr inbounds %struct.sg_table, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp3.not.i = icmp eq i32 %6, 0
  br i1 %cmp3.not.i, label %if.end.etnaviv_iommu_unmap.exit_crit_edge, label %for.body.lr.ph.i

if.end.etnaviv_iommu_unmap.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %etnaviv_iommu_unmap.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %start = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %mapping, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %start, align 8
  %conv = trunc i64 %8 to i32
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %4, align 4
  %global.i.i = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %context, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %do.end9.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %do.end9.i.for.body.i_crit_edge ]
  %da.05.i = phi i32 [ %conv, %for.body.lr.ph.i ], [ %add10.i, %do.end9.i.for.body.i_crit_edge ]
  %sg.04.i = phi ptr [ %10, %for.body.lr.ph.i ], [ %call.i30, %do.end9.i.for.body.i_crit_edge ]
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.04.i, i32 0, i32 4
  %11 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_length.i, align 4
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %sg.04.i, i32 0, i32 1
  %13 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset.i, align 4
  %add.i = add i32 %14, %12
  %or.i.i = or i32 %add.i, %da.05.i
  %and.i.i = and i32 %or.i.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %while.cond.preheader.i.i, label %do.end.i.i

while.cond.preheader.i.i:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp119.not.i.i = icmp eq i32 %add.i, 0
  br i1 %cmp119.not.i.i, label %while.cond.preheader.i.i.do.end9.i_crit_edge, label %while.cond.preheader.i.i.while.body.i.i_crit_edge

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond.preheader.i.i.do.end9.i_crit_edge:     ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9.i

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %da.05.i, i32 noundef %add.i, i32 noundef 4096) #9
  br label %etnaviv_context_unmap.exit.i

while.body.i.i:                                   ; preds = %if.end4.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %iova.addr.021.i.i = phi i32 [ %add.i.i, %if.end4.i.i.while.body.i.i_crit_edge ], [ %da.05.i, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %unmapped.020.i.i = phi i32 [ %add5.i.i, %if.end4.i.i.while.body.i.i_crit_edge ], [ 0, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %15 = ptrtoint ptr %global.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %global.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i.i, align 4
  %unmap.i.i = getelementptr inbounds %struct.etnaviv_iommu_ops, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %unmap.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %unmap.i.i, align 4
  %call2.i.i = tail call i32 %20(ptr noundef %context, i32 noundef %iova.addr.021.i.i, i32 noundef 4096) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.etnaviv_context_unmap.exit.i_crit_edge, label %if.end4.i.i

while.body.i.i.etnaviv_context_unmap.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %etnaviv_context_unmap.exit.i

if.end4.i.i:                                      ; preds = %while.body.i.i
  %add.i.i = add i32 %call2.i.i, %iova.addr.021.i.i
  %add5.i.i = add i32 %call2.i.i, %unmapped.020.i.i
  %cmp1.i.i = icmp ult i32 %add5.i.i, %add.i
  br i1 %cmp1.i.i, label %if.end4.i.i.while.body.i.i_crit_edge, label %if.end4.i.i.etnaviv_context_unmap.exit.i_crit_edge

if.end4.i.i.etnaviv_context_unmap.exit.i_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %etnaviv_context_unmap.exit.i

if.end4.i.i.while.body.i.i_crit_edge:             ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

etnaviv_context_unmap.exit.i:                     ; preds = %if.end4.i.i.etnaviv_context_unmap.exit.i_crit_edge, %while.body.i.i.etnaviv_context_unmap.exit.i_crit_edge, %do.end.i.i
  %and.i = and i32 %add.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp1.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp1.not.i, label %etnaviv_context_unmap.exit.i.do.end9.i_crit_edge, label %do.body4.i, !prof !41

etnaviv_context_unmap.exit.i.do.end9.i_crit_edge: ; preds = %etnaviv_context_unmap.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9.i

do.body4.i:                                       ; preds = %etnaviv_context_unmap.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_mmu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 116, 0\0A.popsection", ""() #6, !srcloc !43
  unreachable

do.end9.i:                                        ; preds = %etnaviv_context_unmap.exit.i.do.end9.i_crit_edge, %while.cond.preheader.i.i.do.end9.i_crit_edge
  %add10.i = add i32 %add.i, %da.05.i
  %inc.i = add nuw i32 %i.08.i, 1
  %call.i30 = tail call ptr @sg_next(ptr noundef %sg.04.i) #6
  %21 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nents.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %22
  br i1 %cmp.i, label %do.end9.i.for.body.i_crit_edge, label %do.end9.i.etnaviv_iommu_unmap.exit_crit_edge

do.end9.i.etnaviv_iommu_unmap.exit_crit_edge:     ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %etnaviv_iommu_unmap.exit

do.end9.i.for.body.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

etnaviv_iommu_unmap.exit:                         ; preds = %do.end9.i.etnaviv_iommu_unmap.exit_crit_edge, %if.end.etnaviv_iommu_unmap.exit_crit_edge
  %vram_node = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %mapping, i32 0, i32 5
  tail call void @drm_mm_remove_node(ptr noundef %vram_node) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @etnaviv_iommu_context_put(ptr noundef %context) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %context, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @llvm.prefetch.p0(ptr %context, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %context, ptr %context, i32 1, ptr elementtype(i32) %context) #6, !srcloc !40
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !41

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %context, i32 noundef 3) #6
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !42
  %cmdbuf_mapping.i.i = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %context, i32 0, i32 6
  tail call void @etnaviv_cmdbuf_suballoc_unmap(ptr noundef %context, ptr noundef %cmdbuf_mapping.i.i) #6
  %global.i.i = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %context, i32 0, i32 1
  %1 = ptrtoint ptr %global.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %global.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i.i, align 4
  %free.i.i = getelementptr inbounds %struct.etnaviv_iommu_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %free.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %free.i.i, align 4
  tail call void %6(ptr noundef %context) #6
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @etnaviv_iommu_context_init(ptr noundef %global, ptr noundef %suballoc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %version = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %global, i32 0, i32 1
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @etnaviv_iommuv1_context_alloc(ptr noundef %global) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call ptr @etnaviv_iommuv2_context_alloc(ptr noundef %global) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ctx.0 = phi ptr [ %call, %if.then ], [ %call1, %if.else ]
  %tobool.not = icmp eq ptr %ctx.0, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %cmdbuf_mapping = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %ctx.0, i32 0, i32 6
  %memory_base = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %global, i32 0, i32 7
  %2 = ptrtoint ptr %memory_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %memory_base, align 4
  %call4 = tail call i32 @etnaviv_cmdbuf_suballoc_map(ptr noundef %suballoc, ptr noundef nonnull %ctx.0, ptr noundef %cmdbuf_mapping, i32 noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.out_free_crit_edge

if.end3.out_free_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end7:                                          ; preds = %if.end3
  %4 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp9 = icmp eq i32 %5, 0
  br i1 %cmp9, label %land.lhs.true, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end7
  %iova = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %ctx.0, i32 0, i32 6, i32 7
  %6 = ptrtoint ptr %iova to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iova, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %7)
  %cmp11 = icmp ugt i32 %7, -2147483648
  br i1 %cmp11, label %do.end, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %global to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %global, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.1) #9
  tail call void @etnaviv_cmdbuf_suballoc_unmap(ptr noundef nonnull %ctx.0, ptr noundef %cmdbuf_mapping) #6
  br label %out_free

out_free:                                         ; preds = %do.end, %if.end3.out_free_crit_edge
  %ops = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %global, i32 0, i32 2
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %free = getelementptr inbounds %struct.etnaviv_iommu_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %free, align 4
  tail call void %13(ptr noundef nonnull %ctx.0) #6
  br label %cleanup

cleanup:                                          ; preds = %out_free, %land.lhs.true.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %out_free ], [ null, %if.end.cleanup_crit_edge ], [ %ctx.0, %land.lhs.true.cleanup_crit_edge ], [ %ctx.0, %if.end7.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @etnaviv_iommuv1_context_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @etnaviv_iommuv2_context_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_cmdbuf_suballoc_map(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_cmdbuf_suballoc_unmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @etnaviv_iommu_restore(ptr noundef %gpu, ptr noundef %context) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %global = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %global to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %global, align 4
  %ops = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %restore = getelementptr inbounds %struct.etnaviv_iommu_ops, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %restore to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %restore, align 4
  tail call void %5(ptr noundef %gpu, ptr noundef %context) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @etnaviv_iommu_get_suballoc_va(ptr noundef %context, ptr noundef %mapping, i32 noundef %memory_base, i32 noundef %paddr, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %context, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %use = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %mapping, i32 0, i32 6
  %0 = ptrtoint ptr %use to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %use, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add i32 %1, 1
  %2 = ptrtoint ptr %use to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %inc, ptr %use, align 8
  br label %return

if.end:                                           ; preds = %entry
  %global = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %context, i32 0, i32 1
  %3 = ptrtoint ptr %global to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %global, align 4
  %version = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp3 = icmp eq i32 %6, 0
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 %paddr, %memory_base
  %iova = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %mapping, i32 0, i32 7
  %7 = ptrtoint ptr %iova to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub, ptr %iova, align 4
  br label %if.end20

if.else:                                          ; preds = %if.end
  %vram_node = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %mapping, i32 0, i32 5
  %call = tail call fastcc i32 @etnaviv_iommu_find_iova(ptr noundef %context, ptr noundef %vram_node, i32 noundef %size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.else.return_crit_edge, label %if.end8

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end8:                                          ; preds = %if.else
  %start = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %mapping, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %start, align 8
  %conv = trunc i64 %9 to i32
  %iova9 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %mapping, i32 0, i32 7
  %10 = ptrtoint ptr %iova9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %iova9, align 4
  %call12 = tail call fastcc i32 @etnaviv_context_map(ptr noundef %context, i32 noundef %conv, i32 noundef %paddr, i32 noundef %size, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then15, label %cleanup

if.then15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_mm_remove_node(ptr noundef %vram_node) #6
  br label %return

cleanup:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %flush_seq = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %context, i32 0, i32 5
  %11 = ptrtoint ptr %flush_seq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flush_seq, align 8
  %inc18 = add i32 %12, 1
  store i32 %inc18, ptr %flush_seq, align 8
  br label %if.end20

if.end20:                                         ; preds = %cleanup, %if.then4
  %mmu_node = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %mapping, i32 0, i32 2
  %mappings = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %context, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %context, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %mmu_node, ptr noundef %14, ptr noundef %mappings) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end20.list_add_tail.exit_crit_edge

if.end20.list_add_tail.exit_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %mmu_node, ptr %prev.i, align 4
  %16 = ptrtoint ptr %mmu_node to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %mappings, ptr %mmu_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %mapping, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %mmu_node, ptr %14, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end20.list_add_tail.exit_crit_edge
  %19 = ptrtoint ptr %use to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %use, align 8
  br label %return

return:                                           ; preds = %list_add_tail.exit, %if.then15, %if.else.return_crit_edge, %if.then
  %retval.1 = phi i32 [ 0, %if.then ], [ 0, %list_add_tail.exit ], [ %call12, %if.then15 ], [ %call, %if.else.return_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @etnaviv_context_map(ptr noundef %context, i32 noundef %iova, i32 noundef %paddr, i32 noundef %size, i32 noundef %prot) unnamed_addr #0 align 64 {
entry:
  %paddr.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %paddr.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %paddr, ptr %paddr.addr, align 4
  %or = or i32 %paddr, %iova
  %or1 = or i32 %or, %size
  %and = and i32 %or1, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %while.cond.preheader, label %do.end

while.cond.preheader:                             ; preds = %entry
  %1 = ptrtoint ptr %paddr.addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %paddr.addr.promoted = load i32, ptr %paddr.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not39 = icmp eq i32 %size, 0
  br i1 %tobool.not39, label %while.cond.preheader.cleanup.loopexit35_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup.loopexit35_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.loopexit35

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %global = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %context, i32 0, i32 1
  br label %while.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %iova, ptr noundef nonnull %paddr.addr, i32 noundef %size, i32 noundef 4096) #9
  br label %cleanup

while.body:                                       ; preds = %if.end5.while.body_crit_edge, %while.body.lr.ph
  %iova.addr.042 = phi i32 [ %iova, %while.body.lr.ph ], [ %add, %if.end5.while.body_crit_edge ]
  %size.addr.041 = phi i32 [ %size, %while.body.lr.ph ], [ %sub7, %if.end5.while.body_crit_edge ]
  %add63740 = phi i32 [ %paddr.addr.promoted, %while.body.lr.ph ], [ %add6, %if.end5.while.body_crit_edge ]
  %2 = ptrtoint ptr %global to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %global, align 4
  %ops = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %map = getelementptr inbounds %struct.etnaviv_iommu_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 4
  %call2 = tail call i32 %7(ptr noundef %context, i32 noundef %iova.addr.042, i32 noundef %add63740, i32 noundef 4096, i32 noundef %prot) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then9

if.end5:                                          ; preds = %while.body
  %add = add i32 %iova.addr.042, 4096
  %add6 = add i32 %add63740, 4096
  %sub7 = add i32 %size.addr.041, -4096
  %tobool.not = icmp eq i32 %sub7, 0
  br i1 %tobool.not, label %if.end5.cleanup.loopexit35_crit_edge, label %if.end5.while.body_crit_edge

if.end5.while.body_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end5.cleanup.loopexit35_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.loopexit35

if.then9:                                         ; preds = %while.body
  %8 = ptrtoint ptr %paddr.addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add63740, ptr %paddr.addr, align 4
  %sub10 = sub i32 %size, %size.addr.041
  %or.i = or i32 %sub10, %iova
  %and.i = and i32 %or.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %while.cond.preheader.i, label %do.end.i

while.cond.preheader.i:                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_cmp4(i32 %size.addr.041, i32 %size)
  %cmp119.not.i = icmp eq i32 %size.addr.041, %size
  br i1 %cmp119.not.i, label %while.cond.preheader.i.cleanup_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.cleanup_crit_edge:         ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %iova, i32 noundef %sub10, i32 noundef 4096) #9
  br label %cleanup

while.body.i:                                     ; preds = %if.end4.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %iova.addr.021.i = phi i32 [ %add.i, %if.end4.i.while.body.i_crit_edge ], [ %iova, %while.cond.preheader.i.while.body.i_crit_edge ]
  %unmapped.020.i = phi i32 [ %add5.i, %if.end4.i.while.body.i_crit_edge ], [ 0, %while.cond.preheader.i.while.body.i_crit_edge ]
  %9 = ptrtoint ptr %global to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %global, align 4
  %ops.i = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %unmap.i = getelementptr inbounds %struct.etnaviv_iommu_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %unmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %unmap.i, align 4
  %call2.i = tail call i32 %14(ptr noundef %context, i32 noundef %iova.addr.021.i, i32 noundef 4096) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %while.body.i.cleanup_crit_edge, label %if.end4.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.i:                                        ; preds = %while.body.i
  %add.i = add i32 %call2.i, %iova.addr.021.i
  %add5.i = add i32 %call2.i, %unmapped.020.i
  %cmp1.i = icmp ult i32 %add5.i, %sub10
  br i1 %cmp1.i, label %if.end4.i.while.body.i_crit_edge, label %if.end4.i.cleanup_crit_edge

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.i.while.body.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

cleanup.loopexit35:                               ; preds = %if.end5.cleanup.loopexit35_crit_edge, %while.cond.preheader.cleanup.loopexit35_crit_edge
  %add637.lcssa = phi i32 [ %paddr.addr.promoted, %while.cond.preheader.cleanup.loopexit35_crit_edge ], [ %add6, %if.end5.cleanup.loopexit35_crit_edge ]
  %15 = ptrtoint ptr %paddr.addr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add637.lcssa, ptr %paddr.addr, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit35, %if.end4.i.cleanup_crit_edge, %while.body.i.cleanup_crit_edge, %do.end.i, %while.cond.preheader.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call2, %while.cond.preheader.i.cleanup_crit_edge ], [ %call2, %do.end.i ], [ 0, %cleanup.loopexit35 ], [ %call2, %while.body.i.cleanup_crit_edge ], [ %call2, %if.end4.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @etnaviv_iommu_put_suballoc_va(ptr noundef %context, ptr noundef %mapping) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vram_node = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %mapping, i32 0, i32 5
  %lock = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %context, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %use = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %mapping, i32 0, i32 6
  %0 = ptrtoint ptr %use to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %use, align 8
  %dec = add i32 %1, -1
  store i32 %dec, ptr %use, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %global = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %context, i32 0, i32 1
  %2 = ptrtoint ptr %global to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %global, align 4
  %version = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %start = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %mapping, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %start, align 8
  %conv = trunc i64 %7 to i32
  %size = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %mapping, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %size, align 8
  %conv4 = trunc i64 %9 to i32
  %or.i14 = or i64 %9, %7
  %and.i15 = and i64 %or.i14, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i15)
  %cmp.i = icmp eq i64 %and.i15, 0
  br i1 %cmp.i, label %while.cond.preheader.i, label %do.end.i

while.cond.preheader.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv4)
  %cmp119.not.i = icmp eq i32 %conv4, 0
  br i1 %cmp119.not.i, label %while.cond.preheader.i.etnaviv_context_unmap.exit_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.etnaviv_context_unmap.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %etnaviv_context_unmap.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv, i32 noundef %conv4, i32 noundef 4096) #9
  br label %etnaviv_context_unmap.exit

while.body.i:                                     ; preds = %if.end4.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %iova.addr.021.i = phi i32 [ %add.i, %if.end4.i.while.body.i_crit_edge ], [ %conv, %while.cond.preheader.i.while.body.i_crit_edge ]
  %unmapped.020.i = phi i32 [ %add5.i, %if.end4.i.while.body.i_crit_edge ], [ 0, %while.cond.preheader.i.while.body.i_crit_edge ]
  %10 = ptrtoint ptr %global to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %global, align 4
  %ops.i = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %unmap.i = getelementptr inbounds %struct.etnaviv_iommu_ops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %unmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %unmap.i, align 4
  %call2.i = tail call i32 %15(ptr noundef %context, i32 noundef %iova.addr.021.i, i32 noundef 4096) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %while.body.i.etnaviv_context_unmap.exit_crit_edge, label %if.end4.i

while.body.i.etnaviv_context_unmap.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %etnaviv_context_unmap.exit

if.end4.i:                                        ; preds = %while.body.i
  %add.i = add i32 %call2.i, %iova.addr.021.i
  %add5.i = add i32 %call2.i, %unmapped.020.i
  %cmp1.i = icmp ult i32 %add5.i, %conv4
  br i1 %cmp1.i, label %if.end4.i.while.body.i_crit_edge, label %if.end4.i.etnaviv_context_unmap.exit_crit_edge

if.end4.i.etnaviv_context_unmap.exit_crit_edge:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %etnaviv_context_unmap.exit

if.end4.i.while.body.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

etnaviv_context_unmap.exit:                       ; preds = %if.end4.i.etnaviv_context_unmap.exit_crit_edge, %while.body.i.etnaviv_context_unmap.exit_crit_edge, %do.end.i, %while.cond.preheader.i.etnaviv_context_unmap.exit_crit_edge
  tail call void @drm_mm_remove_node(ptr noundef %vram_node) #6
  br label %cleanup

cleanup:                                          ; preds = %etnaviv_context_unmap.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @etnaviv_iommu_dump_size(ptr noundef %context) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %global = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %global to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %global, align 4
  %ops = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %dump_size = getelementptr inbounds %struct.etnaviv_iommu_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dump_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dump_size, align 4
  %call = tail call i32 %5(ptr noundef %context) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @etnaviv_iommu_dump(ptr noundef %context, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %global = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %global to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %global, align 4
  %ops = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %dump = getelementptr inbounds %struct.etnaviv_iommu_ops, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dump to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dump, align 4
  tail call void %5(ptr noundef %context, ptr noundef %buf) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @etnaviv_iommu_global_init(ptr nocapture noundef readonly %gpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpu, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %minor_features1 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 4, i32 7
  %6 = ptrtoint ptr %minor_features1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %minor_features1, align 4
  %and = and i32 %7, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %not.tobool.not = xor i1 %tobool.not, true
  %spec.select = zext i1 %not.tobool.not to i32
  %mmu_global = getelementptr inbounds %struct.etnaviv_drm_private, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %mmu_global to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmu_global, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %if.end11, label %if.then4

if.then4:                                         ; preds = %entry
  %version6 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %version6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %version6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %spec.select)
  %cmp.not = icmp eq i32 %11, %spec.select
  br i1 %cmp.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %dev8 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 2
  %12 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev8, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.5) #9
  br label %cleanup

if.end9:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %use = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %9, i32 0, i32 3
  %14 = ptrtoint ptr %use to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %use, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %use, align 4
  br label %cleanup

if.end11:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 236) #10
  %tobool12.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %if.end14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %bad_page_dma = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %call7.i.i, i32 0, i32 6
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %5, i32 noundef 4096, ptr noundef %bad_page_dma, i32 noundef 3264, i32 noundef 4) #6
  %bad_page_cpu = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %call7.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %bad_page_cpu to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %bad_page_cpu, align 4
  %tobool17.not = icmp eq ptr %call.i, null
  br i1 %tobool17.not, label %if.end14.free_global_crit_edge, label %if.end19

if.end14.free_global_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_global

if.end19:                                         ; preds = %if.end14
  %call.i78 = tail call ptr @__memset32(ptr noundef nonnull %call.i, i32 noundef -559065686, i32 noundef 4096) #6
  br i1 %tobool.not, label %if.end19.if.end39_crit_edge, label %if.then23

if.end19.if.end39_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then23:                                        ; preds = %if.end19
  %18 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %call7.i.i, i32 0, i32 8
  %pta_dma = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 1
  %call.i79 = tail call ptr @dma_alloc_attrs(ptr noundef %5, i32 noundef 4096, ptr noundef %pta_dma, i32 noundef 3264, i32 noundef 4) #6
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i79, ptr %18, align 8
  %tobool26.not = icmp eq ptr %call.i79, null
  br i1 %tobool26.not, label %free_bad_page, label %if.then23.if.end39_crit_edge

if.then23.if.end39_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.end39:                                         ; preds = %if.then23.if.end39_crit_edge, %if.end19.if.end39_crit_edge
  %etnaviv_iommuv2_ops.sink = phi ptr [ @etnaviv_iommuv1_ops, %if.end19.if.end39_crit_edge ], [ @etnaviv_iommuv2_ops, %if.then23.if.end39_crit_edge ]
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %5, ptr %call7.i.i, align 8
  %version31.c = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %version31.c to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.select, ptr %version31.c, align 4
  %use32.c = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %call7.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %use32.c to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %use32.c, align 4
  %lock.c = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %call7.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock.c, ptr noundef nonnull @.str.7, ptr noundef nonnull @etnaviv_iommu_global_init.__key) #6
  %ops38 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %call7.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %ops38 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %etnaviv_iommuv2_ops.sink, ptr %ops38, align 8
  %24 = ptrtoint ptr %mmu_global to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %mmu_global, align 4
  br label %cleanup

free_bad_page:                                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %bad_page_cpu to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bad_page_cpu, align 4
  %27 = ptrtoint ptr %bad_page_dma to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bad_page_dma, align 8
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef 4096, ptr noundef %26, i32 noundef %28, i32 noundef 4) #6
  br label %free_global

free_global:                                      ; preds = %free_bad_page, %if.end14.free_global_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %free_global, %if.end39, %if.end11.cleanup_crit_edge, %if.end9, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ 0, %if.end9 ], [ 0, %if.end39 ], [ -12, %free_global ], [ -12, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @etnaviv_iommu_global_fini(ptr nocapture noundef readonly %gpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpu, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %mmu_global = getelementptr inbounds %struct.etnaviv_drm_private, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %mmu_global to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmu_global, align 4
  %use = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %use to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %use, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %5, i32 0, i32 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then1

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %pta_dma = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %5, i32 0, i32 8, i32 0, i32 1
  %13 = ptrtoint ptr %pta_dma to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pta_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %12, i32 noundef 4096, ptr noundef nonnull %10, i32 noundef %14, i32 noundef 4) #6
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  %bad_page_cpu = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %5, i32 0, i32 5
  %15 = ptrtoint ptr %bad_page_cpu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bad_page_cpu, align 4
  %tobool4.not = icmp eq ptr %16, null
  br i1 %tobool4.not, label %if.end3.if.end8_crit_edge, label %if.then5

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %5, align 4
  %bad_page_dma = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %5, i32 0, i32 6
  %19 = ptrtoint ptr %bad_page_dma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bad_page_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %18, i32 noundef 4096, ptr noundef nonnull %16, i32 noundef %20, i32 noundef 4) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end3.if.end8_crit_edge
  %lock = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %5, i32 0, i32 4
  tail call void @mutex_destroy(ptr noundef %lock) #6
  tail call void @kfree(ptr noundef %5) #6
  %21 = ptrtoint ptr %mmu_global to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %mmu_global, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mm_insert_node_in_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_mm_scan_add_block(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_mm_scan_remove_block(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_scan_init_with_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__memset32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12, !13, !14, !16, !17, !19, !20, !21, !22, !24, !25, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_mmu.c", i32 236, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_mmu.c", i32 334, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @etnaviv_iommu_context_init._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @etnaviv_iommu_context_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_mmu.c", i32 445, i32 4}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @etnaviv_iommu_global_init._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @etnaviv_iommu_global_init._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @etnaviv_iommu_global_init.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_mmu.c", i32 475, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_mmu.c", i32 49, i32 3}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @etnaviv_context_map._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @etnaviv_context_map._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_mmu.c", i32 23, i32 3}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @etnaviv_context_unmap._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @etnaviv_context_unmap._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"branch_weights", i32 1, i32 2000}
!37 = !{!"auto-init"}
!38 = !{i64 2156756186, i64 2156756688, i64 2156756223, i64 2156756279, i64 2156756313, i64 2156756337, i64 2156756378, i64 2156756399, i64 2156756427, i64 2156756461}
!39 = !{i64 2148608262}
!40 = !{i64 2148522726, i64 2148522758, i64 2148522787, i64 2148522821, i64 2148522852, i64 2148522875}
!41 = !{!"branch_weights", i32 2000, i32 1}
!42 = !{i64 2149630315}
!43 = !{i64 2156744635, i64 2156745137, i64 2156744672, i64 2156744728, i64 2156744762, i64 2156744786, i64 2156744827, i64 2156744848, i64 2156744876, i64 2156744910}
