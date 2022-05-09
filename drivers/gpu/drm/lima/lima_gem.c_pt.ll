; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/lima/lima_gem.c_pt.bc'
source_filename = "../drivers/gpu/drm/lima/lima_gem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_gem_object_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sg_table = type { ptr, i32, i32 }
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
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.81, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.86, ptr, i32, ptr, i8, i32 }
%struct.anon.81 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.anon.86 = type { i32, ptr }
%struct.lima_bo = type { %struct.drm_gem_shmem_object, %struct.mutex, %struct.list_head, i32 }
%struct.drm_gem_shmem_object = type { %struct.drm_gem_object, %struct.mutex, ptr, i32, i32, %struct.list_head, i8, ptr, %struct.mutex, ptr, i32, i8 }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.lima_submit = type { ptr, i32, i32, ptr, ptr, i32, [2 x i32], i32, ptr }
%struct.drm_lima_gem_submit_bo = type { i32, i32 }
%struct.lima_ctx = type { %struct.kref, ptr, [2 x %struct.lima_sched_context], %struct.atomic_t, [16 x i8], i32 }
%struct.lima_sched_context = type { %struct.drm_sched_entity }
%struct.drm_sched_entity = type { %struct.list_head, ptr, ptr, i32, i32, %struct.spinlock, %struct.spsc_queue, %struct.atomic_t, i64, ptr, %struct.dma_fence_cb, ptr, ptr, ptr, i8, %struct.completion }
%struct.spsc_queue = type { ptr, %struct.atomic_t, %struct.atomic_t }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dma_fence = type { ptr, ptr, %union.anon.87, i64, i64, i32, %struct.kref, i32 }
%union.anon.87 = type { i64 }

@lima_heap_init_nr_pages = external dso_local local_unnamed_addr global i32, align 4
@lima_gem_create_object.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&bo->lock\00", [22 x i8] zeroinitializer }, align 32
@lima_gem_funcs = internal constant { %struct.drm_gem_object_funcs, [48 x i8] } { %struct.drm_gem_object_funcs { ptr @lima_gem_free_object, ptr @lima_gem_object_open, ptr @lima_gem_object_close, ptr @drm_gem_shmem_object_print_info, ptr null, ptr @lima_gem_pin, ptr @drm_gem_shmem_object_unpin, ptr @drm_gem_shmem_object_get_sg_table, ptr @lima_gem_vmap, ptr @drm_gem_shmem_object_vunmap, ptr @lima_gem_mmap, ptr null }, [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@lima_gem_free_object._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 152, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"lima gem free bo still has va\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lima_gem_free_object\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/gpu/drm/lima/lima_gem.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lima_gem_free_object._entry_ptr = internal global ptr @lima_gem_free_object._entry, section ".printk_index", align 4
@___asan_gen_.6 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 226, i32 2 }
@___asan_gen_.12 = private unnamed_addr constant [15 x i8] c"lima_gem_funcs\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 205, i32 42 }
@___asan_gen_.15 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private constant [35 x i8] c"../drivers/gpu/drm/lima/lima_gem.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 152, i32 3 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @lima_gem_free_object._entry, ptr @lima_gem_free_object._entry_ptr, ptr @lima_gem_create_object.__key, ptr @.str, ptr @lima_gem_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_gem_create_object.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_gem_funcs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_gem_free_object._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lima_heap_alloc(ptr noundef %bo, ptr noundef %vm) local_unnamed_addr #0 align 64 {
entry:
  %sgt = alloca %struct.sg_table, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %filp = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 3
  %0 = ptrtoint ptr %filp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filp, align 4
  %f_mapping = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_mapping, align 4
  %dev4 = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 2
  %4 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev4, align 8
  %dev5 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev5, align 4
  %heap_size = getelementptr inbounds %struct.lima_bo, ptr %bo, i32 0, i32 3
  %8 = ptrtoint ptr %heap_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %heap_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mul = shl i32 %9, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lima_heap_init_nr_pages to i32))
  %10 = load i32, ptr @lima_heap_init_nr_pages, align 4
  %shl = shl i32 %10, 12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul, %cond.true ], [ %shl, %cond.false ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sgt) #9
  %11 = ptrtoint ptr %sgt to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %sgt, align 4, !annotation !22
  %12 = getelementptr inbounds %struct.sg_table, ptr %sgt, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %12, align 4, !annotation !22
  %14 = getelementptr inbounds %struct.sg_table, ptr %sgt, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %14, align 4, !annotation !22
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 5
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %17)
  %cmp.not = icmp ult i32 %9, %17
  br i1 %cmp.not, label %if.end, label %cond.end.cleanup91_crit_edge

cond.end.cleanup91_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup91

if.end:                                           ; preds = %cond.end
  %18 = tail call i32 @llvm.umin.i32(i32 %cond, i32 %17)
  %pages_lock = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %bo, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %pages_lock, i32 noundef 0) #9
  %pages21 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %bo, i32 0, i32 2
  %19 = ptrtoint ptr %pages21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pages21, align 4
  %tobool22.not = icmp eq ptr %20, null
  br i1 %tobool22.not, label %kvmalloc_array.exit, label %if.end.if.end37_crit_edge

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

kvmalloc_array.exit:                              ; preds = %if.end
  %21 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size, align 8
  %23 = lshr i32 %22, 10
  %24 = and i32 %23, 4194300
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %24, i32 noundef 3520, i32 noundef -1) #12
  %tobool29.not = icmp eq ptr %call.i.i, null
  br i1 %tobool29.not, label %if.then30, label %if.end33

if.then30:                                        ; preds = %kvmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %pages_lock) #9
  br label %cleanup91

if.end33:                                         ; preds = %kvmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %pages21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i.i, ptr %pages21, align 4
  %pages_use_count = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %bo, i32 0, i32 3
  %26 = ptrtoint ptr %pages_use_count to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %pages_use_count, align 8
  %flags.i = getelementptr inbounds %struct.address_space, ptr %3, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags.i) #9
  br label %if.end37

if.end37:                                         ; preds = %if.end33, %if.end.if.end37_crit_edge
  %pages.0 = phi ptr [ %call.i.i, %if.end33 ], [ %20, %if.end.if.end37_crit_edge ]
  %shr38 = lshr i32 %9, 12
  %shr39 = lshr i32 %18, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %shr38, i32 %shr39)
  %cmp40156 = icmp ult i32 %shr38, %shr39
  br i1 %cmp40156, label %for.body.lr.ph, label %if.end37.for.end_crit_edge

if.end37.for.end_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end37
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %3, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0157 = phi i32 [ %shr38, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %27 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %gfp_mask.i.i, align 4
  %call1.i = tail call ptr @shmem_read_mapping_page_gfp(ptr noundef %3, i32 noundef %i.0157, i32 noundef %28) #9
  %cmp.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %for.inc

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %pages_lock) #9
  %29 = ptrtoint ptr %call1.i to i32
  br label %cleanup91

for.inc:                                          ; preds = %for.body
  %arrayidx = getelementptr ptr, ptr %pages.0, i32 %i.0157
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call1.i, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.0157, 1
  %exitcond.not = icmp eq i32 %inc, %shr39
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end37.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %shr38, %if.end37.for.end_crit_edge ], [ %shr39, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %pages_lock) #9
  %call.i = call i32 @sg_alloc_table_from_pages_segment(ptr noundef nonnull %sgt, ptr noundef %pages.0, i32 noundef %i.0.lcssa, i32 noundef 0, i32 noundef %18, i32 noundef -1, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool51.not = icmp eq i32 %call.i, 0
  br i1 %tobool51.not, label %if.end53, label %for.end.cleanup91_crit_edge

for.end.cleanup91_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup91

if.end53:                                         ; preds = %for.end
  %sgt55 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %bo, i32 0, i32 7
  %31 = ptrtoint ptr %sgt55 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sgt55, align 4
  %tobool56.not = icmp eq ptr %32, null
  br i1 %tobool56.not, label %if.else62, label %if.then57

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %orig_nents.i = getelementptr inbounds %struct.sg_table, ptr %32, i32 0, i32 2
  %35 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %orig_nents.i, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %7, ptr noundef %34, i32 noundef %36, i32 noundef 0, i32 noundef 0) #9
  %37 = ptrtoint ptr %sgt55 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sgt55, align 4
  call void @sg_free_table(ptr noundef %38) #9
  br label %if.end71

if.else62:                                        ; preds = %if.end53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3264, i32 noundef 12) #13
  %40 = ptrtoint ptr %sgt55 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call7.i, ptr %sgt55, align 4
  %tobool68.not = icmp eq ptr %call7.i, null
  br i1 %tobool68.not, label %if.then69, label %if.else62.if.end71_crit_edge

if.else62.if.end71_crit_edge:                     ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.then69:                                        ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #11
  call void @sg_free_table(ptr noundef nonnull %sgt) #9
  br label %cleanup91

if.end71:                                         ; preds = %if.else62.if.end71_crit_edge, %if.then57
  %call72 = call i32 @dma_map_sgtable(ptr noundef %7, ptr noundef nonnull %sgt, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end79, label %if.then74

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  call void @sg_free_table(ptr noundef nonnull %sgt) #9
  %41 = ptrtoint ptr %sgt55 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sgt55, align 4
  call void @kfree(ptr noundef %42) #9
  %43 = ptrtoint ptr %sgt55 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %sgt55, align 4
  br label %cleanup91

if.end79:                                         ; preds = %if.end71
  %44 = ptrtoint ptr %sgt55 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sgt55, align 4
  %46 = call ptr @memcpy(ptr %45, ptr %sgt, i32 12)
  %tobool82.not = icmp eq ptr %vm, null
  br i1 %tobool82.not, label %if.end79.if.end89_crit_edge, label %if.then83

if.end79.if.end89_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.then83:                                        ; preds = %if.end79
  %call85 = call i32 @lima_vm_map_bo(ptr noundef nonnull %vm, ptr noundef %bo, i32 noundef %shr38) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.then83.if.end89_crit_edge, label %if.then83.cleanup91_crit_edge

if.then83.cleanup91_crit_edge:                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup91

if.then83.if.end89_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.end89:                                         ; preds = %if.then83.if.end89_crit_edge, %if.end79.if.end89_crit_edge
  %47 = ptrtoint ptr %heap_size to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %18, ptr %heap_size, align 4
  br label %cleanup91

cleanup91:                                        ; preds = %if.end89, %if.then83.cleanup91_crit_edge, %if.then74, %if.then69, %for.end.cleanup91_crit_edge, %cleanup.thread, %if.then30, %cond.end.cleanup91_crit_edge
  %retval.2 = phi i32 [ %call72, %if.then74 ], [ 0, %if.end89 ], [ -12, %if.then69 ], [ -12, %if.then30 ], [ -28, %cond.end.cleanup91_crit_edge ], [ %call.i, %for.end.cleanup91_crit_edge ], [ %call85, %if.then83.cleanup91_crit_edge ], [ %29, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sgt) #9
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sgtable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_vm_map_bo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lima_gem_create_handle(ptr noundef %dev, ptr noundef %file, i32 noundef %size, i32 noundef %flags, ptr noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @drm_gem_shmem_create(ptr noundef %dev, i32 noundef %size) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  br label %cleanup21

if.end:                                           ; preds = %entry
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %filp = getelementptr inbounds %struct.drm_gem_object, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %filp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %filp, align 4
  %f_mapping = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 18
  %3 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f_mapping, align 4
  %gfp_mask.i = getelementptr inbounds %struct.address_space, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %gfp_mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gfp_mask.i, align 4
  %and4 = and i32 %6, -7
  %or = or i32 %and4, 4
  store i32 %or, ptr %gfp_mask.i, align 4
  br i1 %tobool.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end
  %call10 = tail call i32 @lima_heap_alloc(ptr noundef %call, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then8.if.end19_crit_edge, label %if.then8.out_crit_edge

if.then8.out_crit_edge:                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then8.if.end19_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.else:                                          ; preds = %if.end
  %call14 = tail call ptr @drm_gem_shmem_get_pages_sgt(ptr noundef %call) #9
  %cmp.i40 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i40, label %cleanup, label %if.else.if.end19_crit_edge

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

cleanup:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %call14 to i32
  br label %out

if.end19:                                         ; preds = %if.else.if.end19_crit_edge, %if.then8.if.end19_crit_edge
  %call20 = tail call i32 @drm_gem_handle_create(ptr noundef %file, ptr noundef %call, ptr noundef %handle) #9
  br label %out

out:                                              ; preds = %if.end19, %cleanup, %if.then8.out_crit_edge
  %err.1 = phi i32 [ %call10, %if.then8.out_crit_edge ], [ %call20, %if.end19 ], [ %7, %cleanup ]
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %out.cleanup21_crit_edge, label %if.then.i

out.cleanup21_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup21

if.then.i:                                        ; preds = %out
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !23
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #9, !srcloc !24
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup21_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !25

if.end5.i.i.i.i.i.i.cleanup21_crit_edge:          ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup21

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #9
  br label %cleanup21

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !26
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #9, !callees !27
  br label %cleanup21

cleanup21:                                        ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup21_crit_edge, %out.cleanup21_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %err.1, %out.cleanup21_crit_edge ], [ %err.1, %if.end5.i.i.i.i.i.i.cleanup21_crit_edge ], [ %err.1, %if.then10.i.i.i.i.i.i ], [ %err.1, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_shmem_create(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_shmem_get_pages_sgt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @lima_gem_create_object(ptr nocapture noundef readnone %dev, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 680) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.lima_bo, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @lima_gem_create_object.__key) #9
  %va = getelementptr inbounds %struct.lima_bo, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %va, ptr %va, align 4
  %prev.i = getelementptr inbounds %struct.lima_bo, ptr %call7.i.i, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %va, ptr %prev.i, align 8
  %map_wc = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %call7.i.i, i32 0, i32 11
  %3 = ptrtoint ptr %map_wc to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %map_wc, align 4
  %funcs = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i, i32 0, i32 11
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @lima_gem_funcs, ptr %funcs, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %do.body ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lima_gem_get_info(ptr noundef %file, i32 noundef %handle, ptr nocapture noundef writeonly %va, ptr nocapture noundef writeonly %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv.i = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call2 = tail call ptr @drm_gem_object_lookup(ptr noundef %file, i32 noundef %handle) #9
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %call4 = tail call i32 @lima_vm_get_va(ptr noundef %3, ptr noundef nonnull %call2) #9
  %4 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call4, ptr %va, align 4
  %start.i = getelementptr inbounds %struct.drm_gem_object, ptr %call2, i32 0, i32 4, i32 1, i32 1
  %5 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %start.i, align 8
  %shl.i = shl i64 %6, 12
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %shl.i, ptr %offset, align 8
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call2, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !23
  tail call void @llvm.prefetch.p0(ptr nonnull %call2, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call2, ptr nonnull %call2, i32 1, ptr nonnull elementtype(i32) %call2) #9, !srcloc !24
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !25

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call2, i32 noundef 3) #9
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !26
  tail call void @drm_gem_object_free(ptr noundef nonnull %call2) #9, !callees !27
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i.i ], [ 0, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_vm_get_va(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lima_gem_submit(ptr noundef %file, ptr nocapture noundef readonly %submit) local_unnamed_addr #0 align 64 {
entry:
  %fence.i = alloca ptr, align 4
  %ctx = alloca %struct.ww_acquire_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ctx) #9
  %0 = call ptr @memset(ptr %ctx, i32 255, i32 64)
  %driver_priv.i = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %1 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_priv.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %lbos = getelementptr inbounds %struct.lima_submit, ptr %submit, i32 0, i32 4
  %5 = ptrtoint ptr %lbos to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lbos, align 4
  %out_sync2 = getelementptr inbounds %struct.lima_submit, ptr %submit, i32 0, i32 7
  %7 = ptrtoint ptr %out_sync2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %out_sync2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then:                                          ; preds = %entry
  %call4 = tail call ptr @drm_syncobj_find(ptr noundef %file, i32 noundef %8) #9
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.then.cleanup107_crit_edge, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then.cleanup107_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup107

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %out_sync.0 = phi ptr [ %call4, %if.then.if.end7_crit_edge ], [ null, %entry.if.end7_crit_edge ]
  %nr_bos = getelementptr inbounds %struct.lima_submit, ptr %submit, i32 0, i32 5
  %9 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_bos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp246.not = icmp eq i32 %10, 0
  br i1 %cmp246.not, label %if.end7.for.end_crit_edge, label %for.body.lr.ph

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end7
  %bos8 = getelementptr inbounds %struct.lima_submit, ptr %submit, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0247 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %bos8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bos8, align 4
  %arrayidx = getelementptr %struct.drm_lima_gem_submit_bo, ptr %12, i32 %i.0247
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %call9 = tail call ptr @drm_gem_object_lookup(ptr noundef %file, i32 noundef %14) #9
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %for.body.err_out0_crit_edge, label %if.end12

for.body.err_out0_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out0

if.end12:                                         ; preds = %for.body
  %call14 = tail call i32 @lima_vm_bo_add(ptr noundef %4, ptr noundef nonnull %call9, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %for.inc, label %if.then.i

if.then.i:                                        ; preds = %if.end12
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !23
  tail call void @llvm.prefetch.p0(ptr nonnull %call9, i32 1, i32 3, i32 1) #9
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call9, ptr nonnull %call9, i32 1, ptr nonnull elementtype(i32) %call9) #9, !srcloc !24
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.err_out0_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !25

if.end5.i.i.i.i.i.i.err_out0_crit_edge:           ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out0

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call9, i32 noundef 3) #9
  br label %err_out0

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !26
  tail call void @drm_gem_object_free(ptr noundef nonnull %call9) #9, !callees !27
  br label %err_out0

for.inc:                                          ; preds = %if.end12
  %arrayidx18 = getelementptr ptr, ptr %6, i32 %i.0247
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call9, ptr %arrayidx18, align 4
  %inc = add nuw i32 %i.0247, 1
  %17 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_bos, align 4
  %cmp = icmp ult i32 %inc, %18
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end7.for.end_crit_edge
  %.lcssa233 = phi i32 [ 0, %if.end7.for.end_crit_edge ], [ %18, %for.inc.for.end_crit_edge ]
  %call21 = call i32 @drm_gem_lock_reservations(ptr noundef %6, i32 noundef %.lcssa233, ptr noundef nonnull %ctx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %for.end.err_out0_crit_edge

for.end.err_out0_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out0

if.end24:                                         ; preds = %for.end
  %task = getelementptr inbounds %struct.lima_submit, ptr %submit, i32 0, i32 8
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 4
  %21 = ptrtoint ptr %submit to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %submit, align 4
  %context = getelementptr inbounds %struct.lima_ctx, ptr %22, i32 0, i32 2
  %pipe = getelementptr inbounds %struct.lima_submit, ptr %submit, i32 0, i32 1
  %23 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pipe, align 4
  %add.ptr = getelementptr %struct.lima_sched_context, ptr %context, i32 %24
  %25 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr_bos, align 4
  %call27 = call i32 @lima_sched_task_init(ptr noundef %20, ptr noundef %add.ptr, ptr noundef %6, i32 noundef %26, ptr noundef %4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end24.err_out1_crit_edge

if.end24.err_out1_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out1

if.end30:                                         ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence.i) #9
  %27 = ptrtoint ptr %fence.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %fence.i, align 4
  %arrayidx.i = getelementptr %struct.lima_submit, ptr %submit, i32 0, i32 6, i32 0
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i192 = icmp eq i32 %29, 0
  br i1 %tobool.not.i192, label %if.end30.for.inc.i_crit_edge, label %if.end.i

if.end30.for.inc.i_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %if.end30
  %call.i = call i32 @drm_syncobj_find_fence(ptr noundef %file, i32 noundef %29, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %fence.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.lima_gem_add_deps.exit.thread_crit_edge

if.end.i.lima_gem_add_deps.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lima_gem_add_deps.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %30 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task, align 4
  %32 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fence.i, align 4
  %call6.i = call i32 @drm_sched_job_add_dependency(ptr noundef %31, ptr noundef %33) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end5.i.for.inc.i_crit_edge, label %if.end5.i.if.then8.i_crit_edge

if.end5.i.if.then8.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8.i

if.end5.i.for.inc.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then8.i:                                       ; preds = %if.end5.1.i.if.then8.i_crit_edge, %if.end5.i.if.then8.i_crit_edge
  %call6.lcssa.i = phi i32 [ %call6.i, %if.end5.i.if.then8.i_crit_edge ], [ %call6.1.i, %if.end5.1.i.if.then8.i_crit_edge ]
  %34 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fence.i, align 4
  %tobool.not.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i, label %if.then8.i.lima_gem_add_deps.exit.thread_crit_edge, label %if.then.i.i

if.then8.i.lima_gem_add_deps.exit.thread_crit_edge: ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lima_gem_add_deps.exit.thread

if.then.i.i:                                      ; preds = %if.then8.i
  %refcount.i.i = getelementptr inbounds %struct.dma_fence, ptr %35, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i193 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !23
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #9
  %36 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #9, !srcloc !24
  %asmresult.i.i.i.i.i.i.i.i.i194 = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i194)
  %cmp.i.i.i.i.i.i195 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i194, 1
  br i1 %cmp.i.i.i.i.i.i195, label %if.then.i.i.i199, label %if.end5.i.i.i.i.i.i197

if.end5.i.i.i.i.i.i197:                           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i194)
  %.not.i.i.i.i.i.i196 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i194, 0
  br i1 %.not.i.i.i.i.i.i196, label %if.end5.i.i.i.i.i.i197.lima_gem_add_deps.exit.thread_crit_edge, label %if.then10.i.i.i.i.i.i198, !prof !25

if.end5.i.i.i.i.i.i197.lima_gem_add_deps.exit.thread_crit_edge: ; preds = %if.end5.i.i.i.i.i.i197
  call void @__sanitizer_cov_trace_pc() #11
  br label %lima_gem_add_deps.exit.thread

if.then10.i.i.i.i.i.i198:                         ; preds = %if.end5.i.i.i.i.i.i197
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #9
  br label %lima_gem_add_deps.exit.thread

if.then.i.i.i199:                                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !26
  call void @dma_fence_release(ptr noundef %refcount.i.i) #9, !callees !27
  br label %lima_gem_add_deps.exit.thread

lima_gem_add_deps.exit.thread:                    ; preds = %if.end.1.i.lima_gem_add_deps.exit.thread_crit_edge, %if.then.i.i.i199, %if.then10.i.i.i.i.i.i198, %if.end5.i.i.i.i.i.i197.lima_gem_add_deps.exit.thread_crit_edge, %if.then8.i.lima_gem_add_deps.exit.thread_crit_edge, %if.end.i.lima_gem_add_deps.exit.thread_crit_edge
  %retval.1.ph.i = phi i32 [ %call6.lcssa.i, %if.then.i.i.i199 ], [ %call6.lcssa.i, %if.then10.i.i.i.i.i.i198 ], [ %call6.lcssa.i, %if.end5.i.i.i.i.i.i197.lima_gem_add_deps.exit.thread_crit_edge ], [ %call6.lcssa.i, %if.then8.i.lima_gem_add_deps.exit.thread_crit_edge ], [ %call.i, %if.end.i.lima_gem_add_deps.exit.thread_crit_edge ], [ %call.1.i, %if.end.1.i.lima_gem_add_deps.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence.i) #9
  br label %err_out2

for.inc.i:                                        ; preds = %if.end5.i.for.inc.i_crit_edge, %if.end30.for.inc.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence.i) #9
  %37 = ptrtoint ptr %fence.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %fence.i, align 4
  %arrayidx.1.i = getelementptr %struct.lima_submit, ptr %submit, i32 0, i32 6, i32 1
  %38 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.1.i = icmp eq i32 %39, 0
  br i1 %tobool.not.1.i, label %for.inc.i.lima_gem_add_deps.exit_crit_edge, label %if.end.1.i

for.inc.i.lima_gem_add_deps.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lima_gem_add_deps.exit

if.end.1.i:                                       ; preds = %for.inc.i
  %call.1.i = call i32 @drm_syncobj_find_fence(ptr noundef %file, i32 noundef %39, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %fence.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool3.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool3.not.1.i, label %if.end5.1.i, label %if.end.1.i.lima_gem_add_deps.exit.thread_crit_edge

if.end.1.i.lima_gem_add_deps.exit.thread_crit_edge: ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lima_gem_add_deps.exit.thread

if.end5.1.i:                                      ; preds = %if.end.1.i
  %40 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task, align 4
  %42 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fence.i, align 4
  %call6.1.i = call i32 @drm_sched_job_add_dependency(ptr noundef %41, ptr noundef %43) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.1.i)
  %tobool7.not.1.i = icmp eq i32 %call6.1.i, 0
  br i1 %tobool7.not.1.i, label %if.end5.1.i.lima_gem_add_deps.exit_crit_edge, label %if.end5.1.i.if.then8.i_crit_edge

if.end5.1.i.if.then8.i_crit_edge:                 ; preds = %if.end5.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8.i

if.end5.1.i.lima_gem_add_deps.exit_crit_edge:     ; preds = %if.end5.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lima_gem_add_deps.exit

lima_gem_add_deps.exit:                           ; preds = %if.end5.1.i.lima_gem_add_deps.exit_crit_edge, %for.inc.i.lima_gem_add_deps.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence.i) #9
  %44 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nr_bos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp37248.not = icmp eq i32 %45, 0
  br i1 %cmp37248.not, label %lima_gem_add_deps.exit.for.end53_crit_edge, label %for.body38.lr.ph

lima_gem_add_deps.exit.for.end53_crit_edge:       ; preds = %lima_gem_add_deps.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end53

for.body38.lr.ph:                                 ; preds = %lima_gem_add_deps.exit
  %bos41 = getelementptr inbounds %struct.lima_submit, ptr %submit, i32 0, i32 3
  %flags44 = getelementptr inbounds %struct.lima_submit, ptr %submit, i32 0, i32 2
  br label %for.body38

for.body38:                                       ; preds = %for.inc51.for.body38_crit_edge, %for.body38.lr.ph
  %i.1249 = phi i32 [ 0, %for.body38.lr.ph ], [ %inc52, %for.inc51.for.body38_crit_edge ]
  %46 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task, align 4
  %arrayidx40 = getelementptr ptr, ptr %6, i32 %i.1249
  %48 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx40, align 4
  %50 = ptrtoint ptr %bos41 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bos41, align 4
  %flags = getelementptr %struct.drm_lima_gem_submit_bo, ptr %51, i32 %i.1249, i32 1
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags, align 4
  %and = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool43 = icmp ne i32 %and, 0
  %54 = ptrtoint ptr %flags44 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags44, align 4
  %and45 = and i32 %55, 1
  br i1 %tobool43, label %if.end5.i202, label %if.then.i201

if.then.i201:                                     ; preds = %for.body38
  %resv.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %49, i32 0, i32 9
  %56 = ptrtoint ptr %resv.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %resv.i.i, align 8
  %call2.i = call i32 @dma_resv_reserve_shared(ptr noundef %57, i32 noundef 1) #9
  %58 = or i32 %call2.i, %and45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %.not = icmp eq i32 %58, 0
  br i1 %.not, label %if.then.i201.if.end8.i_crit_edge, label %if.then.i201.lima_gem_sync_bo.exit_crit_edge

if.then.i201.lima_gem_sync_bo.exit_crit_edge:     ; preds = %if.then.i201
  call void @__sanitizer_cov_trace_pc() #11
  br label %lima_gem_sync_bo.exit

if.then.i201.if.end8.i_crit_edge:                 ; preds = %if.then.i201
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.end5.i202:                                     ; preds = %for.body38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end5.i202.if.end8.i_crit_edge, label %if.end5.i202.for.inc51_crit_edge

if.end5.i202.for.inc51_crit_edge:                 ; preds = %if.end5.i202
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc51

if.end5.i202.if.end8.i_crit_edge:                 ; preds = %if.end5.i202
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end5.i202.if.end8.i_crit_edge, %if.then.i201.if.end8.i_crit_edge
  %call12.i = call i32 @drm_sched_job_add_implicit_dependencies(ptr noundef %47, ptr noundef %49, i1 noundef zeroext %tobool43) #9
  br label %lima_gem_sync_bo.exit

lima_gem_sync_bo.exit:                            ; preds = %if.end8.i, %if.then.i201.lima_gem_sync_bo.exit_crit_edge
  %retval.0.i = phi i32 [ %call12.i, %if.end8.i ], [ %call2.i, %if.then.i201.lima_gem_sync_bo.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool48.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool48.not, label %lima_gem_sync_bo.exit.for.inc51_crit_edge, label %lima_gem_sync_bo.exit.err_out2_crit_edge

lima_gem_sync_bo.exit.err_out2_crit_edge:         ; preds = %lima_gem_sync_bo.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out2

lima_gem_sync_bo.exit.for.inc51_crit_edge:        ; preds = %lima_gem_sync_bo.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc51

for.inc51:                                        ; preds = %lima_gem_sync_bo.exit.for.inc51_crit_edge, %if.end5.i202.for.inc51_crit_edge
  %inc52 = add nuw i32 %i.1249, 1
  %59 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nr_bos, align 4
  %cmp37 = icmp ult i32 %inc52, %60
  br i1 %cmp37, label %for.inc51.for.body38_crit_edge, label %for.inc51.for.end53_crit_edge

for.inc51.for.end53_crit_edge:                    ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end53

for.inc51.for.body38_crit_edge:                   ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body38

for.end53:                                        ; preds = %for.inc51.for.end53_crit_edge, %lima_gem_add_deps.exit.for.end53_crit_edge
  %61 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %task, align 4
  %call55 = call ptr @lima_sched_context_queue_task(ptr noundef %62) #9
  %63 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nr_bos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp58250.not = icmp eq i32 %64, 0
  br i1 %cmp58250.not, label %for.end53.for.end73_crit_edge, label %for.body59.lr.ph

for.end53.for.end73_crit_edge:                    ; preds = %for.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end73

for.body59.lr.ph:                                 ; preds = %for.end53
  %bos60 = getelementptr inbounds %struct.lima_submit, ptr %submit, i32 0, i32 3
  br label %for.body59

for.body59:                                       ; preds = %for.inc71.for.body59_crit_edge, %for.body59.lr.ph
  %i.2251 = phi i32 [ 0, %for.body59.lr.ph ], [ %inc72, %for.inc71.for.body59_crit_edge ]
  %65 = ptrtoint ptr %bos60 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bos60, align 4
  %flags62 = getelementptr %struct.drm_lima_gem_submit_bo, ptr %66, i32 %i.2251, i32 1
  %67 = ptrtoint ptr %flags62 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags62, align 4
  %and63 = and i32 %68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  %arrayidx68 = getelementptr ptr, ptr %6, i32 %i.2251
  %69 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx68, align 4
  %resv.i203 = getelementptr inbounds %struct.drm_gem_object, ptr %70, i32 0, i32 9
  %71 = ptrtoint ptr %resv.i203 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %resv.i203, align 8
  br i1 %tobool64.not, label %if.else, label %if.then65

if.then65:                                        ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #11
  call void @dma_resv_add_excl_fence(ptr noundef %72, ptr noundef %call55) #9
  br label %for.inc71

if.else:                                          ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #11
  call void @dma_resv_add_shared_fence(ptr noundef %72, ptr noundef %call55) #9
  br label %for.inc71

for.inc71:                                        ; preds = %if.else, %if.then65
  %inc72 = add nuw i32 %i.2251, 1
  %73 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %nr_bos, align 4
  %cmp58 = icmp ult i32 %inc72, %74
  br i1 %cmp58, label %for.inc71.for.body59_crit_edge, label %for.inc71.for.end73_crit_edge

for.inc71.for.end73_crit_edge:                    ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end73

for.inc71.for.body59_crit_edge:                   ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body59

for.end73:                                        ; preds = %for.inc71.for.end73_crit_edge, %for.end53.for.end73_crit_edge
  %.lcssa = phi i32 [ 0, %for.end53.for.end73_crit_edge ], [ %74, %for.inc71.for.end73_crit_edge ]
  call void @drm_gem_unlock_reservations(ptr noundef %6, i32 noundef %.lcssa, ptr noundef nonnull %ctx) #9
  %75 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %nr_bos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp77254.not = icmp eq i32 %76, 0
  br i1 %cmp77254.not, label %for.end73.for.end83_crit_edge, label %for.end73.for.body78_crit_edge

for.end73.for.body78_crit_edge:                   ; preds = %for.end73
  br label %for.body78

for.end73.for.end83_crit_edge:                    ; preds = %for.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end83

for.body78:                                       ; preds = %drm_gem_object_put.exit214.for.body78_crit_edge, %for.end73.for.body78_crit_edge
  %i.3255 = phi i32 [ %inc82, %drm_gem_object_put.exit214.for.body78_crit_edge ], [ 0, %for.end73.for.body78_crit_edge ]
  %arrayidx79 = getelementptr ptr, ptr %6, i32 %i.3255
  %77 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx79, align 4
  %tobool.not.i204 = icmp eq ptr %78, null
  br i1 %tobool.not.i204, label %for.body78.drm_gem_object_put.exit214_crit_edge, label %if.then.i208

for.body78.drm_gem_object_put.exit214_crit_edge:  ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_gem_object_put.exit214

if.then.i208:                                     ; preds = %for.body78
  %call.i.i.i.i.i.i.i.i205 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %78, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !23
  call void @llvm.prefetch.p0(ptr nonnull %78, i32 1, i32 3, i32 1) #9
  %79 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %78, ptr nonnull %78, i32 1, ptr nonnull elementtype(i32) %78) #9, !srcloc !24
  %asmresult.i.i.i.i.i.i.i.i.i206 = extractvalue { i32, i32, i32 } %79, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i206)
  %cmp.i.i.i.i.i.i207 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i206, 1
  br i1 %cmp.i.i.i.i.i.i207, label %if.then.i.i.i212, label %if.end5.i.i.i.i.i.i210

if.end5.i.i.i.i.i.i210:                           ; preds = %if.then.i208
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i206)
  %.not.i.i.i.i.i.i209 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i206, 0
  br i1 %.not.i.i.i.i.i.i209, label %if.end5.i.i.i.i.i.i210.drm_gem_object_put.exit214_crit_edge, label %if.then10.i.i.i.i.i.i211, !prof !25

if.end5.i.i.i.i.i.i210.drm_gem_object_put.exit214_crit_edge: ; preds = %if.end5.i.i.i.i.i.i210
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_gem_object_put.exit214

if.then10.i.i.i.i.i.i211:                         ; preds = %if.end5.i.i.i.i.i.i210
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef nonnull %78, i32 noundef 3) #9
  br label %drm_gem_object_put.exit214

if.then.i.i.i212:                                 ; preds = %if.then.i208
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !26
  call void @drm_gem_object_free(ptr noundef nonnull %78) #9, !callees !27
  br label %drm_gem_object_put.exit214

drm_gem_object_put.exit214:                       ; preds = %if.then.i.i.i212, %if.then10.i.i.i.i.i.i211, %if.end5.i.i.i.i.i.i210.drm_gem_object_put.exit214_crit_edge, %for.body78.drm_gem_object_put.exit214_crit_edge
  %inc82 = add nuw i32 %i.3255, 1
  %80 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %nr_bos, align 4
  %cmp77 = icmp ult i32 %inc82, %81
  br i1 %cmp77, label %drm_gem_object_put.exit214.for.body78_crit_edge, label %drm_gem_object_put.exit214.for.end83_crit_edge

drm_gem_object_put.exit214.for.end83_crit_edge:   ; preds = %drm_gem_object_put.exit214
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end83

drm_gem_object_put.exit214.for.body78_crit_edge:  ; preds = %drm_gem_object_put.exit214
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body78

for.end83:                                        ; preds = %drm_gem_object_put.exit214.for.end83_crit_edge, %for.end73.for.end83_crit_edge
  %tobool84.not = icmp eq ptr %out_sync.0, null
  br i1 %tobool84.not, label %for.end83.if.end86_crit_edge, label %if.then85

for.end83.if.end86_crit_edge:                     ; preds = %for.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

if.then85:                                        ; preds = %for.end83
  call void @__sanitizer_cov_trace_pc() #11
  call void @drm_syncobj_replace_fence(ptr noundef nonnull %out_sync.0, ptr noundef %call55) #9
  call fastcc void @drm_syncobj_put(ptr noundef nonnull %out_sync.0)
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %for.end83.if.end86_crit_edge
  call fastcc void @dma_fence_put(ptr noundef %call55)
  br label %cleanup107

err_out2:                                         ; preds = %lima_gem_sync_bo.exit.err_out2_crit_edge, %lima_gem_add_deps.exit.thread
  %err.1 = phi i32 [ %retval.1.ph.i, %lima_gem_add_deps.exit.thread ], [ %retval.0.i, %lima_gem_sync_bo.exit.err_out2_crit_edge ]
  %82 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %task, align 4
  call void @lima_sched_task_fini(ptr noundef %83) #9
  br label %err_out1

err_out1:                                         ; preds = %err_out2, %if.end24.err_out1_crit_edge
  %err.2 = phi i32 [ %call27, %if.end24.err_out1_crit_edge ], [ %err.1, %err_out2 ]
  %84 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %nr_bos, align 4
  call void @drm_gem_unlock_reservations(ptr noundef %6, i32 noundef %85, ptr noundef nonnull %ctx) #9
  br label %err_out0

err_out0:                                         ; preds = %err_out1, %for.end.err_out0_crit_edge, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.err_out0_crit_edge, %for.body.err_out0_crit_edge
  %err.3 = phi i32 [ %call21, %for.end.err_out0_crit_edge ], [ %err.2, %err_out1 ], [ %call14, %if.then.i.i.i ], [ %call14, %if.then10.i.i.i.i.i.i ], [ %call14, %if.end5.i.i.i.i.i.i.err_out0_crit_edge ], [ -2, %for.body.err_out0_crit_edge ]
  %86 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %nr_bos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp91256.not = icmp eq i32 %87, 0
  br i1 %cmp91256.not, label %err_out0.for.end103_crit_edge, label %err_out0.for.body92_crit_edge

err_out0.for.body92_crit_edge:                    ; preds = %err_out0
  br label %for.body92

err_out0.for.end103_crit_edge:                    ; preds = %err_out0
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end103

for.body92:                                       ; preds = %drm_gem_object_put.exit225.for.body92_crit_edge, %err_out0.for.body92_crit_edge
  %i.4257 = phi i32 [ %inc102, %drm_gem_object_put.exit225.for.body92_crit_edge ], [ 0, %err_out0.for.body92_crit_edge ]
  %arrayidx93 = getelementptr ptr, ptr %6, i32 %i.4257
  %88 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx93, align 4
  %tobool94.not = icmp eq ptr %89, null
  br i1 %tobool94.not, label %for.body92.for.end103_crit_edge, label %if.end96

for.body92.for.end103_crit_edge:                  ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end103

if.end96:                                         ; preds = %for.body92
  call void @lima_vm_bo_del(ptr noundef %4, ptr noundef nonnull %89) #9
  %90 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx93, align 4
  %tobool.not.i215 = icmp eq ptr %91, null
  br i1 %tobool.not.i215, label %if.end96.drm_gem_object_put.exit225_crit_edge, label %if.then.i219

if.end96.drm_gem_object_put.exit225_crit_edge:    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_gem_object_put.exit225

if.then.i219:                                     ; preds = %if.end96
  %call.i.i.i.i.i.i.i.i216 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %91, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !23
  call void @llvm.prefetch.p0(ptr nonnull %91, i32 1, i32 3, i32 1) #9
  %92 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %91, ptr nonnull %91, i32 1, ptr nonnull elementtype(i32) %91) #9, !srcloc !24
  %asmresult.i.i.i.i.i.i.i.i.i217 = extractvalue { i32, i32, i32 } %92, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i217)
  %cmp.i.i.i.i.i.i218 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i217, 1
  br i1 %cmp.i.i.i.i.i.i218, label %if.then.i.i.i223, label %if.end5.i.i.i.i.i.i221

if.end5.i.i.i.i.i.i221:                           ; preds = %if.then.i219
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i217)
  %.not.i.i.i.i.i.i220 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i217, 0
  br i1 %.not.i.i.i.i.i.i220, label %if.end5.i.i.i.i.i.i221.drm_gem_object_put.exit225_crit_edge, label %if.then10.i.i.i.i.i.i222, !prof !25

if.end5.i.i.i.i.i.i221.drm_gem_object_put.exit225_crit_edge: ; preds = %if.end5.i.i.i.i.i.i221
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_gem_object_put.exit225

if.then10.i.i.i.i.i.i222:                         ; preds = %if.end5.i.i.i.i.i.i221
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef nonnull %91, i32 noundef 3) #9
  br label %drm_gem_object_put.exit225

if.then.i.i.i223:                                 ; preds = %if.then.i219
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !26
  call void @drm_gem_object_free(ptr noundef nonnull %91) #9, !callees !27
  br label %drm_gem_object_put.exit225

drm_gem_object_put.exit225:                       ; preds = %if.then.i.i.i223, %if.then10.i.i.i.i.i.i222, %if.end5.i.i.i.i.i.i221.drm_gem_object_put.exit225_crit_edge, %if.end96.drm_gem_object_put.exit225_crit_edge
  %inc102 = add nuw i32 %i.4257, 1
  %93 = ptrtoint ptr %nr_bos to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %nr_bos, align 4
  %cmp91 = icmp ult i32 %inc102, %94
  br i1 %cmp91, label %drm_gem_object_put.exit225.for.body92_crit_edge, label %drm_gem_object_put.exit225.for.end103_crit_edge

drm_gem_object_put.exit225.for.end103_crit_edge:  ; preds = %drm_gem_object_put.exit225
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end103

drm_gem_object_put.exit225.for.body92_crit_edge:  ; preds = %drm_gem_object_put.exit225
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body92

for.end103:                                       ; preds = %drm_gem_object_put.exit225.for.end103_crit_edge, %for.body92.for.end103_crit_edge, %err_out0.for.end103_crit_edge
  %tobool104.not = icmp eq ptr %out_sync.0, null
  br i1 %tobool104.not, label %for.end103.cleanup107_crit_edge, label %if.then105

for.end103.cleanup107_crit_edge:                  ; preds = %for.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup107

if.then105:                                       ; preds = %for.end103
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %out_sync.0, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !23
  call void @llvm.prefetch.p0(ptr nonnull %out_sync.0, i32 1, i32 3, i32 1) #9
  %95 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %out_sync.0, ptr nonnull %out_sync.0, i32 1, ptr nonnull elementtype(i32) %out_sync.0) #9, !srcloc !24
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %95, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i226, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup107_crit_edge, label %if.then10.i.i.i.i.i, !prof !25

if.end5.i.i.i.i.i.cleanup107_crit_edge:           ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup107

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef nonnull %out_sync.0, i32 noundef 3) #9
  br label %cleanup107

if.then.i.i226:                                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !26
  call void @drm_syncobj_free(ptr noundef nonnull %out_sync.0) #9, !callees !27
  br label %cleanup107

cleanup107:                                       ; preds = %if.then.i.i226, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup107_crit_edge, %for.end103.cleanup107_crit_edge, %if.end86, %if.then.cleanup107_crit_edge
  %retval.0 = phi i32 [ 0, %if.end86 ], [ -2, %if.then.cleanup107_crit_edge ], [ %err.3, %for.end103.cleanup107_crit_edge ], [ %err.3, %if.end5.i.i.i.i.i.cleanup107_crit_edge ], [ %err.3, %if.then10.i.i.i.i.i ], [ %err.3, %if.then.i.i226 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ctx) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_syncobj_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_vm_bo_add(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_lock_reservations(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_sched_task_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lima_sched_context_queue_task(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_add_excl_fence(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_add_shared_fence(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_unlock_reservations(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_syncobj_replace_fence(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @drm_syncobj_put(ptr noundef %obj) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %obj, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !23
  tail call void @llvm.prefetch.p0(ptr %obj, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %obj, ptr %obj, i32 1, ptr elementtype(i32) %obj) #9, !srcloc !24
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !25

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %obj, i32 noundef 3) #9
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !26
  tail call void @drm_syncobj_free(ptr noundef %obj) #9, !callees !27
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dma_fence_put(ptr noundef %fence) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %tobool.not = icmp eq ptr %fence, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %refcount = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !23
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !24
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !25

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #9
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !26
  tail call void @dma_fence_release(ptr noundef %refcount) #9, !callees !27
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_sched_task_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_vm_bo_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lima_gem_wait(ptr noundef %file, i32 noundef %handle, i32 noundef %op, i64 noundef %timeout_ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %op)
  %tobool1.not = icmp eq i32 %op, 0
  br i1 %tobool1.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %op, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %call = tail call i32 @drm_timeout_abs_to_jiffies(i64 noundef %timeout_ns) #9
  %call3 = tail call i32 @drm_gem_dma_resv_wait(ptr noundef %file, i32 noundef %handle, i1 noundef zeroext %tobool, i32 noundef %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -62, i32 %call3)
  %cmp = icmp eq i32 %call3, -62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool5.not, i32 -16, i32 -110
  %ret.0 = select i1 %cmp, i32 %cond, i32 %call3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_timeout_abs_to_jiffies(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_dma_resv_wait(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @shmem_read_mapping_page_gfp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table_from_pages_segment(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lima_gem_free_object(ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %va = getelementptr inbounds %struct.lima_bo, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %va, align 4
  %cmp.i.not = icmp eq ptr %1, %va
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @drm_gem_shmem_free(ptr noundef %obj) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lima_gem_object_open(ptr noundef %obj, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv.i = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call3 = tail call i32 @lima_vm_bo_add(ptr noundef %3, ptr noundef %obj, i1 noundef zeroext true) #9
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lima_gem_object_close(ptr noundef %obj, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv.i = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @lima_vm_bo_del(ptr noundef %3, ptr noundef %obj) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drm_gem_shmem_object_print_info(ptr noundef %p, i32 noundef %indent, ptr noundef %obj) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @drm_gem_shmem_print_info(ptr noundef %obj, ptr noundef %p, i32 noundef %indent) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lima_gem_pin(ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %heap_size = getelementptr inbounds %struct.lima_bo, ptr %obj, i32 0, i32 3
  %0 = ptrtoint ptr %heap_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %heap_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @drm_gem_shmem_pin(ptr noundef %obj) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drm_gem_shmem_object_unpin(ptr noundef %obj) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @drm_gem_shmem_unpin(ptr noundef %obj) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @drm_gem_shmem_object_get_sg_table(ptr noundef %obj) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call ptr @drm_gem_shmem_get_sg_table(ptr noundef %obj) #9
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lima_gem_vmap(ptr noundef %obj, ptr noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %heap_size = getelementptr inbounds %struct.lima_bo, ptr %obj, i32 0, i32 3
  %0 = ptrtoint ptr %heap_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %heap_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @drm_gem_shmem_vmap(ptr noundef %obj, ptr noundef %map) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drm_gem_shmem_object_vunmap(ptr noundef %obj, ptr noundef %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @drm_gem_shmem_vunmap(ptr noundef %obj, ptr noundef %map) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lima_gem_mmap(ptr noundef %obj, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %heap_size = getelementptr inbounds %struct.lima_bo, ptr %obj, i32 0, i32 3
  %0 = ptrtoint ptr %heap_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %heap_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @drm_gem_shmem_mmap(ptr noundef %obj, ptr noundef %vma) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_shmem_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_shmem_print_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_shmem_pin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_shmem_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_shmem_get_sg_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_shmem_vmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_shmem_vunmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_shmem_mmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_syncobj_find_fence(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_job_add_dependency(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_reserve_shared(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_job_add_implicit_dependencies(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_syncobj_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @lima_gem_create_object.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/lima/lima_gem.c", i32 226, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @lima_gem_funcs, !4, !"lima_gem_funcs", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/lima/lima_gem.c", i32 205, i32 42}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/lima/lima_gem.c", i32 152, i32 3}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @lima_gem_free_object._entry, !6, !"_entry", i1 false, i1 false}
!12 = !{ptr @lima_gem_free_object._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"auto-init"}
!23 = !{i64 2148762150}
!24 = !{i64 2148676590, i64 2148676622, i64 2148676651, i64 2148676685, i64 2148676716, i64 2148676739}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 2149958385}
!27 = !{ptr @dma_fence_release, ptr @drm_gem_object_free, ptr @drm_syncobj_free}
