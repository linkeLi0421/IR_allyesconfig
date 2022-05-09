; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/mediatek/mtk_drm_gem.c_pt.bc'
source_filename = "../drivers/gpu/drm/mediatek/mtk_drm_gem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_gem_object_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.67, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.72, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.67 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.anon.72 = type { i32, ptr }
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
%struct.mtk_drm_gem_obj = type { %struct.drm_gem_object, ptr, ptr, i32, i32, ptr, ptr }
%struct.mtk_drm_private = type { ptr, ptr, i32, ptr, ptr, ptr, [32 x ptr], [32 x %struct.mtk_ddp_comp], ptr, ptr }
%struct.mtk_ddp_comp = type { ptr, i32, ptr, i32, ptr }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_buf_map = type { %union.anon.73, i8 }
%union.anon.73 = type { ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }

@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to allocate %zx byte dma buffer\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"cookie = %p dma_addr = %pad size = %zu\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to allocate sgt, %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sg_table is not contiguous\00", [37 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@mtk_drm_gem_object_funcs = internal constant { %struct.drm_gem_object_funcs, [48 x i8] } { %struct.drm_gem_object_funcs { ptr @mtk_drm_gem_free_object, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_gem_prime_get_sg_table, ptr @mtk_drm_gem_prime_vmap, ptr @mtk_drm_gem_prime_vunmap, ptr @mtk_drm_gem_object_mmap, ptr @drm_gem_cma_vm_ops }, [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to initialize gem object\0A\00", [63 x i8] zeroinitializer }, align 32
@drm_gem_cma_vm_ops = external dso_local constant %struct.vm_operations_struct, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 75, i32 3 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 83, i32 2 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 194, i32 3 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 209, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant [25 x i8] c"mtk_drm_gem_object_funcs\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 19, i32 42 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [42 x i8] c"../drivers/gpu/drm/mediatek/mtk_drm_gem.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 44, i32 3 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @mtk_drm_gem_object_funcs, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_drm_gem_object_funcs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mtk_drm_gem_create(ptr noundef %dev, i32 noundef %size, i1 noundef zeroext %alloc_kmap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 376) #8
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %sub.i = add i32 %size, -1
  %or.i = or i32 %sub.i, 4095
  %add.i = add i32 %or.i, 1
  %funcs.i = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i.i, i32 0, i32 11
  %3 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @mtk_drm_gem_object_funcs, ptr %funcs.i, align 4
  %call3.i = tail call i32 @drm_gem_object_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i, i32 noundef %add.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %if.then4.i, label %if.end.i.mtk_drm_gem_init.exit_crit_edge

if.end.i.mtk_drm_gem_init.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mtk_drm_gem_init.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #5
  %4 = inttoptr i32 %call3.i to ptr
  br label %mtk_drm_gem_init.exit

mtk_drm_gem_init.exit:                            ; preds = %if.then4.i, %if.end.i.mtk_drm_gem_init.exit_crit_edge
  %retval.0.i = phi ptr [ %4, %if.then4.i ], [ %call7.i.i.i, %if.end.i.mtk_drm_gem_init.exit_crit_edge ]
  %cmp.i43 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i43, label %mtk_drm_gem_init.exit.cleanup_crit_edge, label %if.end

mtk_drm_gem_init.exit.cleanup_crit_edge:          ; preds = %mtk_drm_gem_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %mtk_drm_gem_init.exit
  %dma_attrs = getelementptr inbounds %struct.mtk_drm_gem_obj, ptr %retval.0.i, i32 0, i32 4
  %spec.select = select i1 %alloc_kmap, i32 4, i32 20
  %5 = ptrtoint ptr %dma_attrs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.select, ptr %dma_attrs, align 4
  %dma_dev = getelementptr inbounds %struct.mtk_drm_private, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_dev, align 4
  %size6 = getelementptr inbounds %struct.drm_gem_object, ptr %retval.0.i, i32 0, i32 5
  %8 = ptrtoint ptr %size6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size6, align 8
  %dma_addr = getelementptr inbounds %struct.mtk_drm_gem_obj, ptr %retval.0.i, i32 0, i32 3
  %call8 = tail call ptr @dma_alloc_attrs(ptr noundef %7, i32 noundef %9, ptr noundef %dma_addr, i32 noundef 3264, i32 noundef %spec.select) #5
  %cookie = getelementptr inbounds %struct.mtk_drm_gem_obj, ptr %retval.0.i, i32 0, i32 1
  %10 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8, ptr %cookie, align 8
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %size6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size6, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %12) #5
  tail call void @drm_gem_object_release(ptr noundef %retval.0.i) #5
  tail call void @kfree(ptr noundef %retval.0.i) #5
  br label %cleanup

if.end13:                                         ; preds = %if.end
  br i1 %alloc_kmap, label %if.then15, label %if.end13.if.end17_crit_edge

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %kvaddr = getelementptr inbounds %struct.mtk_drm_gem_obj, ptr %retval.0.i, i32 0, i32 2
  %13 = ptrtoint ptr %kvaddr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call8, ptr %kvaddr, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end13.if.end17_crit_edge
  %14 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cookie, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef %15, ptr noundef %dma_addr, i32 noundef %size) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then11, %mtk_drm_gem_init.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i, %if.end17 ], [ inttoptr (i32 -12 to ptr), %if.then11 ], [ %retval.0.i, %mtk_drm_gem_init.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_drm_gem_free_object(ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sg = getelementptr inbounds %struct.mtk_drm_gem_obj, ptr %obj, i32 0, i32 5
  %0 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sg, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_prime_gem_destroy(ptr noundef %obj, ptr noundef nonnull %1) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %dma_dev = getelementptr inbounds %struct.mtk_drm_private, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_dev, align 4
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 5
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 8
  %cookie = getelementptr inbounds %struct.mtk_drm_gem_obj, ptr %obj, i32 0, i32 1
  %10 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cookie, align 8
  %dma_addr = getelementptr inbounds %struct.mtk_drm_gem_obj, ptr %obj, i32 0, i32 3
  %12 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_addr, align 8
  %dma_attrs = getelementptr inbounds %struct.mtk_drm_gem_obj, ptr %obj, i32 0, i32 4
  %14 = ptrtoint ptr %dma_attrs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_attrs, align 4
  tail call void @dma_free_attrs(ptr noundef %7, i32 noundef %9, ptr noundef %11, i32 noundef %13, i32 noundef %15) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @drm_gem_object_release(ptr noundef %obj) #5
  tail call void @kfree(ptr noundef %obj) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_prime_gem_destroy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_drm_gem_dumb_create(ptr noundef %file_priv, ptr noundef %dev, ptr noundef %args) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %div25 = lshr i32 %sub, 3
  %pitch = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 5
  %4 = ptrtoint ptr %pitch to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div25, ptr %pitch, align 4
  %5 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %args, align 8
  %mul2 = mul i32 %div25, %6
  %conv = zext i32 %mul2 to i64
  %size = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 6
  %7 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv, ptr %size, align 8
  %call = tail call ptr @mtk_drm_gem_create(ptr noundef %dev, i32 noundef %mul2, i1 noundef zeroext false)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %handle = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 4
  %call7 = tail call i32 @drm_gem_handle_create(ptr noundef %file_priv, ptr noundef %call, ptr noundef %handle) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end9, label %err_handle_create

if.end9:                                          ; preds = %if.end
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %if.end9.cleanup_crit_edge, label %if.then.i

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %if.end9
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !21
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #5
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #5, !srcloc !22
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !23

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #5
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #5
  br label %cleanup

err_handle_create:                                ; preds = %if.end
  %sg.i = getelementptr inbounds %struct.mtk_drm_gem_obj, ptr %call, i32 0, i32 5
  %10 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sg.i, align 8
  %tobool.not.i26 = icmp eq ptr %11, null
  br i1 %tobool.not.i26, label %if.else.i, label %if.then.i27

if.then.i27:                                      ; preds = %err_handle_create
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_prime_gem_destroy(ptr noundef %call, ptr noundef nonnull %11) #5
  br label %mtk_drm_gem_free_object.exit

if.else.i:                                        ; preds = %err_handle_create
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.drm_gem_object, ptr %call, i32 0, i32 2
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_private.i, align 4
  %dma_dev.i = getelementptr inbounds %struct.mtk_drm_private, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma_dev.i, align 4
  %size.i = getelementptr inbounds %struct.drm_gem_object, ptr %call, i32 0, i32 5
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.i, align 8
  %cookie.i = getelementptr inbounds %struct.mtk_drm_gem_obj, ptr %call, i32 0, i32 1
  %20 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cookie.i, align 8
  %dma_addr.i = getelementptr inbounds %struct.mtk_drm_gem_obj, ptr %call, i32 0, i32 3
  %22 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_addr.i, align 8
  %dma_attrs.i = getelementptr inbounds %struct.mtk_drm_gem_obj, ptr %call, i32 0, i32 4
  %24 = ptrtoint ptr %dma_attrs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_attrs.i, align 4
  tail call void @dma_free_attrs(ptr noundef %17, i32 noundef %19, ptr noundef %21, i32 noundef %23, i32 noundef %25) #5
  br label %mtk_drm_gem_free_object.exit

mtk_drm_gem_free_object.exit:                     ; preds = %if.else.i, %if.then.i27
  tail call void @drm_gem_object_release(ptr noundef %call) #5
  tail call void @kfree(ptr noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %mtk_drm_gem_free_object.exit, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %8, %if.then ], [ %call7, %mtk_drm_gem_free_object.exit ], [ 0, %if.end9.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i.i ], [ 0, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mtk_gem_prime_get_sg_table(ptr nocapture noundef readonly %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 12) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dma_dev = getelementptr inbounds %struct.mtk_drm_private, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dma_dev, align 4
  %cookie = getelementptr inbounds %struct.mtk_drm_gem_obj, ptr %obj, i32 0, i32 1
  %7 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cookie, align 8
  %dma_addr = getelementptr inbounds %struct.mtk_drm_gem_obj, ptr %obj, i32 0, i32 3
  %9 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma_addr, align 8
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 5
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size, align 8
  %dma_attrs = getelementptr inbounds %struct.mtk_drm_gem_obj, ptr %obj, i32 0, i32 4
  %13 = ptrtoint ptr %dma_attrs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_attrs, align 4
  %call2 = tail call i32 @dma_get_sgtable_attrs(ptr noundef %6, ptr noundef nonnull %call7.i.i, ptr noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, i32 noundef %call2) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  %15 = inttoptr i32 %call2 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %15, %if.then4 ], [ %call7.i.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_get_sgtable_attrs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mtk_gem_prime_import_sg_table(ptr noundef %dev, ptr nocapture noundef readonly %attach, ptr noundef %sg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @drm_prime_get_contiguous_size(ptr noundef %sg) #5
  %0 = ptrtoint ptr %attach to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attach, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %3)
  %cmp = icmp ult i32 %call, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 376) #8
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %sub.i = add i32 %3, -1
  %or.i = or i32 %sub.i, 4095
  %add.i = add i32 %or.i, 1
  %funcs.i = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i.i, i32 0, i32 11
  %5 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mtk_drm_gem_object_funcs, ptr %funcs.i, align 4
  %call3.i = tail call i32 @drm_gem_object_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i, i32 noundef %add.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %if.then4.i, label %if.end.i.mtk_drm_gem_init.exit_crit_edge

if.end.i.mtk_drm_gem_init.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mtk_drm_gem_init.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #5
  %6 = inttoptr i32 %call3.i to ptr
  br label %mtk_drm_gem_init.exit

mtk_drm_gem_init.exit:                            ; preds = %if.then4.i, %if.end.i.mtk_drm_gem_init.exit_crit_edge
  %retval.0.i = phi ptr [ %6, %if.then4.i ], [ %call7.i.i.i, %if.end.i.mtk_drm_gem_init.exit_crit_edge ]
  %cmp.i17 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i17, label %mtk_drm_gem_init.exit.cleanup_crit_edge, label %if.end8

mtk_drm_gem_init.exit.cleanup_crit_edge:          ; preds = %mtk_drm_gem_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %mtk_drm_gem_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sg, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma_address, align 4
  %dma_addr = getelementptr inbounds %struct.mtk_drm_gem_obj, ptr %retval.0.i, i32 0, i32 3
  %11 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dma_addr, align 8
  %sg9 = getelementptr inbounds %struct.mtk_drm_gem_obj, ptr %retval.0.i, i32 0, i32 5
  %12 = ptrtoint ptr %sg9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %sg, ptr %sg9, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %mtk_drm_gem_init.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then ], [ %retval.0.i, %if.end8 ], [ %retval.0.i, %mtk_drm_gem_init.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_prime_get_contiguous_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_drm_gem_prime_vmap(ptr nocapture noundef %obj, ptr nocapture noundef writeonly %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %kvaddr = getelementptr inbounds %struct.mtk_drm_gem_obj, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %kvaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kvaddr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %dev.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 12) #8
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.if.then2_crit_edge, label %if.end.i

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2

if.end.i:                                         ; preds = %if.end
  %dma_dev.i = getelementptr inbounds %struct.mtk_drm_private, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma_dev.i, align 4
  %cookie.i = getelementptr inbounds %struct.mtk_drm_gem_obj, ptr %obj, i32 0, i32 1
  %9 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cookie.i, align 8
  %dma_addr.i = getelementptr inbounds %struct.mtk_drm_gem_obj, ptr %obj, i32 0, i32 3
  %11 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_addr.i, align 8
  %size.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 5
  %13 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size.i, align 8
  %dma_attrs.i = getelementptr inbounds %struct.mtk_drm_gem_obj, ptr %obj, i32 0, i32 4
  %15 = ptrtoint ptr %dma_attrs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_attrs.i, align 4
  %call2.i = tail call i32 @dma_get_sgtable_attrs(ptr noundef %8, ptr noundef nonnull %call7.i.i.i, ptr noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.mtk_gem_prime_get_sg_table.exit_crit_edge, label %if.then4.i

if.end.i.mtk_gem_prime_get_sg_table.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mtk_gem_prime_get_sg_table.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, i32 noundef %call2.i) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #5
  %17 = inttoptr i32 %call2.i to ptr
  br label %mtk_gem_prime_get_sg_table.exit

mtk_gem_prime_get_sg_table.exit:                  ; preds = %if.then4.i, %if.end.i.mtk_gem_prime_get_sg_table.exit_crit_edge
  %retval.0.i = phi ptr [ %17, %if.then4.i ], [ %call7.i.i.i, %if.end.i.mtk_gem_prime_get_sg_table.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mtk_gem_prime_get_sg_table.exit.if.then2_crit_edge, label %if.end4

mtk_gem_prime_get_sg_table.exit.if.then2_crit_edge: ; preds = %mtk_gem_prime_get_sg_table.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2

if.then2:                                         ; preds = %mtk_gem_prime_get_sg_table.exit.if.then2_crit_edge, %if.end.if.then2_crit_edge
  %retval.0.i36 = phi ptr [ %retval.0.i, %mtk_gem_prime_get_sg_table.exit.if.then2_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.if.then2_crit_edge ]
  %18 = ptrtoint ptr %retval.0.i36 to i32
  br label %cleanup

if.end4:                                          ; preds = %mtk_gem_prime_get_sg_table.exit
  %19 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size.i, align 8
  %shr = lshr i32 %20, 12
  %21 = shl nuw nsw i32 %shr, 2
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %21, i32 noundef 3520) #9
  %pages = getelementptr inbounds %struct.mtk_drm_gem_obj, ptr %obj, i32 0, i32 6
  %22 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call8.i.i, ptr %pages, align 4
  %tobool7.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef %retval.0.i) #5
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call i32 @drm_prime_sg_to_page_array(ptr noundef %retval.0.i, ptr noundef nonnull %call8.i.i, i32 noundef %shr) #5
  %23 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pages, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %25 = load i32, ptr @pgprot_kernel, align 4
  %or = and i32 %25, -573
  %or13 = or i32 %or, 516
  %call14 = tail call ptr @vmap(ptr noundef %24, i32 noundef %shr, i32 noundef 4, i32 noundef %or13) #5
  %26 = ptrtoint ptr %kvaddr to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call14, ptr %kvaddr, align 4
  br label %out

out:                                              ; preds = %if.end9, %entry.out_crit_edge
  %sgt.0 = phi ptr [ null, %entry.out_crit_edge ], [ %retval.0.i, %if.end9 ]
  tail call void @kfree(ptr noundef %sgt.0) #5
  %27 = ptrtoint ptr %kvaddr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %kvaddr, align 4
  %29 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %map, align 4
  %is_iomem.i = getelementptr inbounds %struct.dma_buf_map, ptr %map, i32 0, i32 1
  %30 = ptrtoint ptr %is_iomem.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %is_iomem.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then8, %if.then2
  %retval.0 = phi i32 [ 0, %out ], [ %18, %if.then2 ], [ -12, %if.then8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_prime_sg_to_page_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_drm_gem_prime_vunmap(ptr nocapture noundef %obj, ptr nocapture noundef readonly %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pages = getelementptr inbounds %struct.mtk_drm_gem_obj, ptr %obj, i32 0, i32 6
  %0 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pages, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  tail call void @vunmap(ptr noundef %3) #5
  %kvaddr = getelementptr inbounds %struct.mtk_drm_gem_obj, ptr %obj, i32 0, i32 2
  %4 = ptrtoint ptr %kvaddr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %kvaddr, align 4
  %5 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pages, align 4
  tail call void @kfree(ptr noundef %6) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_object_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_drm_gem_object_mmap(ptr nocapture noundef readonly %obj, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %4 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %vm_pgoff, align 4
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %5 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vm_flags, align 4
  %or = or i32 %6, 67387392
  store i32 %or, ptr %vm_flags, align 4
  %call = tail call i32 @vm_get_page_prot(i32 noundef %or) #5
  %and = and i32 %call, -61
  %or2 = or i32 %and, 4
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %7 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or2, ptr %vm_page_prot, align 4
  %dma_dev = getelementptr inbounds %struct.mtk_drm_private, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_dev, align 4
  %cookie = getelementptr inbounds %struct.mtk_drm_gem_obj, ptr %obj, i32 0, i32 1
  %10 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cookie, align 8
  %dma_addr = getelementptr inbounds %struct.mtk_drm_gem_obj, ptr %obj, i32 0, i32 3
  %12 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_addr, align 8
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 5
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 8
  %dma_attrs = getelementptr inbounds %struct.mtk_drm_gem_obj, ptr %obj, i32 0, i32 4
  %16 = ptrtoint ptr %dma_attrs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_attrs, align 4
  %call5 = tail call i32 @dma_mmap_attrs(ptr noundef %9, ptr noundef %vma, ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_gem_vm_close(ptr noundef %vma) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_get_page_prot(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_mmap_attrs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_vm_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_gem.c", i32 75, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_gem.c", i32 83, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_gem.c", i32 194, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_gem.c", i32 209, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_gem.c", i32 44, i32 3}
!10 = !{ptr @mtk_drm_gem_object_funcs, !11, !"mtk_drm_gem_object_funcs", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_gem.c", i32 19, i32 42}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 2148544977}
!22 = !{i64 2148459441, i64 2148459473, i64 2148459502, i64 2148459536, i64 2148459567, i64 2148459590}
!23 = !{!"branch_weights", i32 2000, i32 1}
!24 = !{i64 2150170991}
