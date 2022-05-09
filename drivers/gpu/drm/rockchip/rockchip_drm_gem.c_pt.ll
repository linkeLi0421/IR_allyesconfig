; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/rockchip/rockchip_drm_gem.c_pt.bc'
source_filename = "../drivers/gpu/drm/rockchip/rockchip_drm_gem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.81, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.91, ptr, i32, ptr, i8, i32 }
%struct.anon.81 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.91 = type { i32, ptr }
%struct.rockchip_gem_object = type { %struct.drm_gem_object, i32, ptr, i32, i32, %struct.drm_mm_node, i32, ptr, ptr, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.rockchip_drm_private = type { ptr, %struct.mutex, %struct.drm_mm }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.dma_buf_map = type { %union.anon.89, i8 }
%union.anon.89 = type { ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }

@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to allocate sgt, %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to import sg table: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@rockchip_gem_object_funcs = internal constant { %struct.drm_gem_object_funcs, [48 x i8] } { %struct.drm_gem_object_funcs { ptr @rockchip_gem_free_object, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_gem_prime_get_sg_table, ptr @rockchip_gem_prime_vmap, ptr @rockchip_gem_prime_vunmap, ptr @rockchip_drm_gem_object_mmap, ptr @drm_gem_cma_vm_ops }, [48 x i8] zeroinitializer }, align 32
@drm_gem_cma_vm_ops = external dso_local constant %struct.vm_operations_struct, align 4
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to vmap() buffer\0A\00", [39 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"out of I/O virtual memory: %zd\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"failed to map buffer: size=%zd request_size=%zd\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to allocate %zu byte dma buffer\00", [57 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.6 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"failed to map sg_table to contiguous linear address.\0A\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 444, i32 3 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 502, i32 3 }
@___asan_gen_.13 = private unnamed_addr constant [26 x i8] c"rockchip_gem_object_funcs\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 276, i32 42 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 139, i32 4 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 34, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 43, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 170, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [47 x i8] c"../drivers/gpu/drm/rockchip/rockchip_drm_gem.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 473, i32 3 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @.str, ptr @.str.1, ptr @rockchip_gem_object_funcs, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_gem_object_funcs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rockchip_gem_create_object(ptr noundef %drm, i32 noundef %size, i1 noundef zeroext %alloc_kmap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 496) #7
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %rockchip_gem_alloc_object.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

rockchip_gem_alloc_object.exit:                   ; preds = %entry
  %sub.i = add i32 %size, -1
  %or.i = or i32 %sub.i, 4095
  %add.i = add i32 %or.i, 1
  %funcs.i = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i.i, i32 0, i32 11
  %1 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @rockchip_gem_object_funcs, ptr %funcs.i, align 4
  %call2.i = tail call i32 @drm_gem_object_init(ptr noundef %drm, ptr noundef nonnull %call7.i.i.i, i32 noundef %add.i) #4
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %rockchip_gem_alloc_object.exit.cleanup_crit_edge, label %if.end

rockchip_gem_alloc_object.exit.cleanup_crit_edge: ; preds = %rockchip_gem_alloc_object.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %rockchip_gem_alloc_object.exit
  %dev.i = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %tobool.not.i13 = icmp eq ptr %7, null
  br i1 %tobool.not.i13, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %call.i.i.i = tail call ptr @drm_gem_get_pages(ptr noundef nonnull %call7.i.i.i) #4
  %pages.i.i.i = getelementptr inbounds %struct.rockchip_gem_object, ptr %call7.i.i.i, i32 0, i32 7
  %8 = ptrtoint ptr %pages.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i.i, ptr %pages.i.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %if.then.i.rockchip_gem_get_pages.exit.i.i_crit_edge, label %if.end.i.i.i

if.then.i.rockchip_gem_get_pages.exit.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rockchip_gem_get_pages.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i
  %size.i.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size.i.i.i, align 8
  %shr.i.i.i = lshr i32 %10, 12
  %num_pages.i.i.i = getelementptr inbounds %struct.rockchip_gem_object, ptr %call7.i.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %num_pages.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shr.i.i.i, ptr %num_pages.i.i.i, align 8
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 8
  %call11.i.i.i = tail call ptr @drm_prime_pages_to_sg(ptr noundef %13, ptr noundef %call.i.i.i, i32 noundef %shr.i.i.i) #4
  %sgt.i.i.i = getelementptr inbounds %struct.rockchip_gem_object, ptr %call7.i.i.i, i32 0, i32 8
  %14 = ptrtoint ptr %sgt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call11.i.i.i, ptr %sgt.i.i.i, align 8
  %cmp.i49.i.i.i = icmp ugt ptr %call11.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i49.i.i.i, label %if.then14.i.i.i, label %if.end17.i.i.i

if.then14.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %pages.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pages.i.i.i, align 4
  tail call void @drm_gem_put_pages(ptr noundef nonnull %call7.i.i.i, ptr noundef %16, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %rockchip_gem_get_pages.exit.i.i

if.end17.i.i.i:                                   ; preds = %if.end.i.i.i
  %orig_nents53.i.i.i = getelementptr inbounds %struct.sg_table, ptr %call11.i.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %orig_nents53.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %orig_nents53.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp54.not.i.i.i = icmp eq i32 %18, 0
  br i1 %cmp54.not.i.i.i, label %if.end17.i.i.i.rockchip_gem_get_pages.exit.thread.i.i_crit_edge, label %for.body.preheader.i.i.i

if.end17.i.i.i.rockchip_gem_get_pages.exit.thread.i.i_crit_edge: ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rockchip_gem_get_pages.exit.thread.i.i

for.body.preheader.i.i.i:                         ; preds = %if.end17.i.i.i
  %19 = ptrtoint ptr %call11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call11.i.i.i, align 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %sg_phys.exit.i.i.i.for.body.i.i.i_crit_edge, %for.body.preheader.i.i.i
  %s.056.i.i.i = phi ptr [ %call21.i.i.i, %sg_phys.exit.i.i.i.for.body.i.i.i_crit_edge ], [ %20, %for.body.preheader.i.i.i ]
  %i.055.i.i.i = phi i32 [ %inc.i.i.i, %sg_phys.exit.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.preheader.i.i.i ]
  %21 = ptrtoint ptr %s.056.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s.056.i.i.i, align 4
  %and.i.i.i.i.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.i.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i.i, label %sg_phys.exit.i.i.i, label %do.body2.i.i.i.i.i, !prof !25

do.body2.i.i.i.i.i:                               ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #4, !srcloc !26
  unreachable

sg_phys.exit.i.i.i:                               ; preds = %for.body.i.i.i
  %and.i.i.i.i.i = and i32 %22, -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %23 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %23 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %and.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %sub.ptr.div.i.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %24 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i.i.i = add i32 %sub.ptr.div.i.i.i.i, %24
  %shl.i.i.i.i = shl i32 %add.i.i.i.i, 12
  %offset.i.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %s.056.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %offset.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offset.i.i.i.i, align 4
  %add1.i.i.i.i = add i32 %shl.i.i.i.i, %26
  %dma_address.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %s.056.i.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %dma_address.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add1.i.i.i.i, ptr %dma_address.i.i.i, align 4
  %inc.i.i.i = add nuw i32 %i.055.i.i.i, 1
  %call21.i.i.i = tail call ptr @sg_next(ptr noundef %s.056.i.i.i) #4
  %28 = ptrtoint ptr %sgt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sgt.i.i.i, align 8
  %orig_nents.i.i.i = getelementptr inbounds %struct.sg_table, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %orig_nents.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %orig_nents.i.i.i, align 4
  %cmp.i.i.i = icmp ult i32 %inc.i.i.i, %31
  br i1 %cmp.i.i.i, label %sg_phys.exit.i.i.i.for.body.i.i.i_crit_edge, label %sg_phys.exit.i.i.i.rockchip_gem_get_pages.exit.thread.i.i_crit_edge

sg_phys.exit.i.i.i.rockchip_gem_get_pages.exit.thread.i.i_crit_edge: ; preds = %sg_phys.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rockchip_gem_get_pages.exit.thread.i.i

sg_phys.exit.i.i.i.for.body.i.i.i_crit_edge:      ; preds = %sg_phys.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i.i

rockchip_gem_get_pages.exit.thread.i.i:           ; preds = %sg_phys.exit.i.i.i.rockchip_gem_get_pages.exit.thread.i.i_crit_edge, %if.end17.i.i.i.rockchip_gem_get_pages.exit.thread.i.i_crit_edge
  %.lcssa51.i.i.i = phi ptr [ %call11.i.i.i, %if.end17.i.i.i.rockchip_gem_get_pages.exit.thread.i.i_crit_edge ], [ %29, %sg_phys.exit.i.i.i.rockchip_gem_get_pages.exit.thread.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ 0, %if.end17.i.i.i.rockchip_gem_get_pages.exit.thread.i.i_crit_edge ], [ %31, %sg_phys.exit.i.i.i.rockchip_gem_get_pages.exit.thread.i.i_crit_edge ]
  %dev22.i.i.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %32 = ptrtoint ptr %dev22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev22.i.i.i, align 4
  %34 = ptrtoint ptr %.lcssa51.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %.lcssa51.i.i.i, align 4
  tail call void @dma_sync_sg_for_device(ptr noundef %33, ptr noundef %35, i32 noundef %.lcssa.i.i.i, i32 noundef 1) #4
  br label %if.end.i.i

rockchip_gem_get_pages.exit.i.i:                  ; preds = %if.then14.i.i.i, %if.then.i.rockchip_gem_get_pages.exit.i.i_crit_edge
  %retval.0.i.in.i.i = phi ptr [ %call11.i.i.i, %if.then14.i.i.i ], [ %call.i.i.i, %if.then.i.rockchip_gem_get_pages.exit.i.i_crit_edge ]
  %cmp.i.i = icmp slt ptr %retval.0.i.in.i.i, null
  br i1 %cmp.i.i, label %rockchip_gem_alloc_buf.exit, label %rockchip_gem_get_pages.exit.i.i.if.end.i.i_crit_edge

rockchip_gem_get_pages.exit.i.i.if.end.i.i_crit_edge: ; preds = %rockchip_gem_get_pages.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %rockchip_gem_get_pages.exit.i.i.if.end.i.i_crit_edge, %rockchip_gem_get_pages.exit.thread.i.i
  %call1.i.i = tail call fastcc i32 @rockchip_gem_iommu_map(ptr noundef %call7.i.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp2.i.i, label %if.end.i.i.err_free.i.i_crit_edge, label %if.end4.i.i

if.end.i.i.err_free.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_free.i.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  br i1 %alloc_kmap, label %if.then5.i.i, label %if.end4.i.i.cleanup_crit_edge

if.end4.i.i.cleanup_crit_edge:                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then5.i.i:                                     ; preds = %if.end4.i.i
  %36 = ptrtoint ptr %pages.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pages.i.i.i, align 4
  %num_pages.i.i = getelementptr inbounds %struct.rockchip_gem_object, ptr %call7.i.i.i, i32 0, i32 6
  %38 = ptrtoint ptr %num_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_pages.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %40 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = and i32 %40, -573
  %or6.i.i = or i32 %or.i.i, 516
  %call7.i.i = tail call ptr @vmap(ptr noundef %37, i32 noundef %39, i32 noundef 4, i32 noundef %or6.i.i) #4
  %kvaddr.i.i = getelementptr inbounds %struct.rockchip_gem_object, ptr %call7.i.i.i, i32 0, i32 2
  %41 = ptrtoint ptr %kvaddr.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i, ptr %kvaddr.i.i, align 4
  %tobool9.not.i.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not.i.i, label %if.then10.i.i, label %if.then5.i.i.cleanup_crit_edge

if.then5.i.i.cleanup_crit_edge:                   ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then10.i.i:                                    ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #4
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 8
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_private.i.i.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 8
  %dma_addr.i.i.i = getelementptr inbounds %struct.rockchip_gem_object, ptr %call7.i.i.i, i32 0, i32 3
  %48 = ptrtoint ptr %dma_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dma_addr.i.i.i, align 8
  %size.i25.i.i = getelementptr inbounds %struct.rockchip_gem_object, ptr %call7.i.i.i, i32 0, i32 9
  %50 = ptrtoint ptr %size.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %size.i25.i.i, align 4
  %call.i26.i.i = tail call i32 @iommu_unmap(ptr noundef %47, i32 noundef %49, i32 noundef %51) #4
  %mm_lock.i.i.i = getelementptr inbounds %struct.rockchip_drm_private, ptr %45, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mm_lock.i.i.i, i32 noundef 0) #4
  %mm.i.i.i = getelementptr inbounds %struct.rockchip_gem_object, ptr %call7.i.i.i, i32 0, i32 5
  tail call void @drm_mm_remove_node(ptr noundef %mm.i.i.i) #4
  tail call void @mutex_unlock(ptr noundef %mm_lock.i.i.i) #4
  br label %err_free.i.i

err_free.i.i:                                     ; preds = %if.then10.i.i, %if.end.i.i.err_free.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call1.i.i, %if.end.i.i.err_free.i.i_crit_edge ], [ -12, %if.then10.i.i ]
  %sgt.i27.i.i = getelementptr inbounds %struct.rockchip_gem_object, ptr %call7.i.i.i, i32 0, i32 8
  %52 = ptrtoint ptr %sgt.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sgt.i27.i.i, align 8
  tail call void @sg_free_table(ptr noundef %53) #4
  %54 = ptrtoint ptr %sgt.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sgt.i27.i.i, align 8
  tail call void @kfree(ptr noundef %55) #4
  %56 = ptrtoint ptr %pages.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pages.i.i.i, align 4
  tail call void @drm_gem_put_pages(ptr noundef %call7.i.i.i, ptr noundef %57, i1 noundef zeroext true, i1 noundef zeroext true) #4
  br label %err_free_rk_obj

if.else.i:                                        ; preds = %if.end
  %dma_attrs.i.i = getelementptr inbounds %struct.rockchip_gem_object, ptr %call7.i.i.i, i32 0, i32 4
  %spec.select.i.i = select i1 %alloc_kmap, i32 4, i32 20
  %58 = ptrtoint ptr %dma_attrs.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %spec.select.i.i, ptr %dma_attrs.i.i, align 4
  %dev2.i.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %59 = ptrtoint ptr %dev2.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev2.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i.i, i32 0, i32 5
  %61 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %size.i.i, align 8
  %dma_addr.i.i = getelementptr inbounds %struct.rockchip_gem_object, ptr %call7.i.i.i, i32 0, i32 3
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %60, i32 noundef %62, ptr noundef %dma_addr.i.i, i32 noundef 3264, i32 noundef %spec.select.i.i) #4
  %kvaddr.i9.i = getelementptr inbounds %struct.rockchip_gem_object, ptr %call7.i.i.i, i32 0, i32 2
  %63 = ptrtoint ptr %kvaddr.i9.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i.i, ptr %kvaddr.i9.i, align 4
  %tobool5.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool5.not.i.i, label %if.then6.i.i, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then6.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %64 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %size.i.i, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5, i32 noundef %65) #4
  br label %err_free_rk_obj

rockchip_gem_alloc_buf.exit:                      ; preds = %rockchip_gem_get_pages.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %retval.0.i.i.i = ptrtoint ptr %retval.0.i.in.i.i to i32
  br label %err_free_rk_obj

err_free_rk_obj:                                  ; preds = %rockchip_gem_alloc_buf.exit, %if.then6.i.i, %err_free.i.i
  %retval.0.i1431 = phi i32 [ %retval.0.i.i.i, %rockchip_gem_alloc_buf.exit ], [ -12, %if.then6.i.i ], [ %ret.0.i.i, %err_free.i.i ]
  tail call void @drm_gem_object_release(ptr noundef %call7.i.i.i) #4
  tail call void @kfree(ptr noundef %call7.i.i.i) #4
  %66 = inttoptr i32 %retval.0.i1431 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_free_rk_obj, %if.else.i.cleanup_crit_edge, %if.then5.i.i.cleanup_crit_edge, %if.end4.i.i.cleanup_crit_edge, %rockchip_gem_alloc_object.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %66, %err_free_rk_obj ], [ %call7.i.i.i, %rockchip_gem_alloc_object.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %call7.i.i.i, %if.else.i.cleanup_crit_edge ], [ %call7.i.i.i, %if.end4.i.i.cleanup_crit_edge ], [ %call7.i.i.i, %if.then5.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rockchip_gem_free_object(ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %import_attach = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 8
  %2 = ptrtoint ptr %import_attach to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %import_attach, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else5, label %if.then

if.then:                                          ; preds = %entry
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %dma_addr.i = getelementptr inbounds %struct.rockchip_gem_object, ptr %obj, i32 0, i32 3
  %8 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_addr.i, align 8
  %size.i = getelementptr inbounds %struct.rockchip_gem_object, ptr %obj, i32 0, i32 9
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.i, align 4
  %call.i = tail call i32 @iommu_unmap(ptr noundef nonnull %7, i32 noundef %9, i32 noundef %11) #4
  %mm_lock.i = getelementptr inbounds %struct.rockchip_drm_private, ptr %5, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mm_lock.i, i32 noundef 0) #4
  %mm.i = getelementptr inbounds %struct.rockchip_gem_object, ptr %obj, i32 0, i32 5
  tail call void @drm_mm_remove_node(ptr noundef %mm.i) #4
  tail call void @mutex_unlock(ptr noundef %mm_lock.i) #4
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %dev3 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev3, align 4
  %sgt = getelementptr inbounds %struct.rockchip_gem_object, ptr %obj, i32 0, i32 8
  %14 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sgt, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %orig_nents.i = getelementptr inbounds %struct.sg_table, ptr %15, i32 0, i32 2
  %18 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %orig_nents.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %13, ptr noundef %17, i32 noundef %19, i32 noundef 0, i32 noundef 0) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %sgt4 = getelementptr inbounds %struct.rockchip_gem_object, ptr %obj, i32 0, i32 8
  %20 = ptrtoint ptr %sgt4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sgt4, align 8
  tail call void @drm_prime_gem_destroy(ptr noundef %obj, ptr noundef %21) #4
  br label %if.end6

if.else5:                                         ; preds = %entry
  %pages.i = getelementptr inbounds %struct.rockchip_gem_object, ptr %obj, i32 0, i32 7
  %22 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pages.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #6
  %kvaddr.i.i = getelementptr inbounds %struct.rockchip_gem_object, ptr %obj, i32 0, i32 2
  %24 = ptrtoint ptr %kvaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %kvaddr.i.i, align 4
  tail call void @vunmap(ptr noundef %25) #4
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 8
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_private.i.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %dma_addr.i.i.i = getelementptr inbounds %struct.rockchip_gem_object, ptr %obj, i32 0, i32 3
  %32 = ptrtoint ptr %dma_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma_addr.i.i.i, align 8
  %size.i.i.i = getelementptr inbounds %struct.rockchip_gem_object, ptr %obj, i32 0, i32 9
  %34 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size.i.i.i, align 4
  %call.i.i.i = tail call i32 @iommu_unmap(ptr noundef %31, i32 noundef %33, i32 noundef %35) #4
  %mm_lock.i.i.i = getelementptr inbounds %struct.rockchip_drm_private, ptr %29, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mm_lock.i.i.i, i32 noundef 0) #4
  %mm.i.i.i = getelementptr inbounds %struct.rockchip_gem_object, ptr %obj, i32 0, i32 5
  tail call void @drm_mm_remove_node(ptr noundef %mm.i.i.i) #4
  tail call void @mutex_unlock(ptr noundef %mm_lock.i.i.i) #4
  %sgt.i.i.i = getelementptr inbounds %struct.rockchip_gem_object, ptr %obj, i32 0, i32 8
  %36 = ptrtoint ptr %sgt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sgt.i.i.i, align 8
  tail call void @sg_free_table(ptr noundef %37) #4
  %38 = ptrtoint ptr %sgt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sgt.i.i.i, align 8
  tail call void @kfree(ptr noundef %39) #4
  %40 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pages.i, align 4
  tail call void @drm_gem_put_pages(ptr noundef %obj, ptr noundef %41, i1 noundef zeroext true, i1 noundef zeroext true) #4
  br label %if.end6

if.else.i:                                        ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #6
  %dev1.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %42 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev1.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 5
  %44 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %size.i.i, align 8
  %kvaddr.i3.i = getelementptr inbounds %struct.rockchip_gem_object, ptr %obj, i32 0, i32 2
  %46 = ptrtoint ptr %kvaddr.i3.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %kvaddr.i3.i, align 4
  %dma_addr.i.i = getelementptr inbounds %struct.rockchip_gem_object, ptr %obj, i32 0, i32 3
  %48 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dma_addr.i.i, align 8
  %dma_attrs.i.i = getelementptr inbounds %struct.rockchip_gem_object, ptr %obj, i32 0, i32 4
  %50 = ptrtoint ptr %dma_attrs.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dma_attrs.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %43, i32 noundef %45, ptr noundef %47, i32 noundef %49, i32 noundef %51) #4
  br label %if.end6

if.end6:                                          ; preds = %if.else.i, %if.then.i, %if.end
  tail call void @drm_gem_object_release(ptr noundef %obj) #4
  tail call void @kfree(ptr noundef %obj) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_prime_gem_destroy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rockchip_gem_dumb_create(ptr noundef %file_priv, ptr noundef %dev, ptr noundef %args) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %div14 = lshr i32 %sub, 3
  %add1 = add nuw nsw i32 %div14, 63
  %and = and i32 %add1, 1073741760
  %pitch = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 5
  %4 = ptrtoint ptr %pitch to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %pitch, align 4
  %5 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %args, align 8
  %mul3 = mul i32 %and, %6
  %conv = zext i32 %mul3 to i64
  %size = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 6
  %7 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv, ptr %size, align 8
  %call.i = tail call ptr @rockchip_gem_create_object(ptr noundef %dev, i32 noundef %mul3, i1 noundef zeroext false) #4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.rockchip_gem_create_with_handle.exit_crit_edge, label %if.end.i

entry.rockchip_gem_create_with_handle.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %rockchip_gem_create_with_handle.exit

if.end.i:                                         ; preds = %entry
  %handle = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 4
  %call3.i = tail call i32 @drm_gem_handle_create(ptr noundef %file_priv, ptr noundef %call.i, ptr noundef %handle) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end5.i, label %err_handle_create.i

if.end5.i:                                        ; preds = %if.end.i
  %tobool.not.i.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i.i, label %if.end5.i.rockchip_gem_create_with_handle.exit_crit_edge, label %if.then.i.i

if.end5.i.rockchip_gem_create_with_handle.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rockchip_gem_create_with_handle.exit

if.then.i.i:                                      ; preds = %if.end5.i
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i, i32 1, i32 3, i32 1) #4
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i, ptr nonnull %call.i, i32 1, ptr nonnull elementtype(i32) %call.i) #4, !srcloc !28
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.rockchip_gem_create_with_handle.exit_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !25

if.end5.i.i.i.i.i.i.i.rockchip_gem_create_with_handle.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rockchip_gem_create_with_handle.exit

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call.i, i32 noundef 3) #4
  br label %rockchip_gem_create_with_handle.exit

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void @drm_gem_object_free(ptr noundef nonnull %call.i) #4
  br label %rockchip_gem_create_with_handle.exit

err_handle_create.i:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rockchip_gem_free_object(ptr noundef %call.i) #4
  %9 = inttoptr i32 %call3.i to ptr
  br label %rockchip_gem_create_with_handle.exit

rockchip_gem_create_with_handle.exit:             ; preds = %err_handle_create.i, %if.then.i.i.i.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.rockchip_gem_create_with_handle.exit_crit_edge, %if.end5.i.rockchip_gem_create_with_handle.exit_crit_edge, %entry.rockchip_gem_create_with_handle.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %err_handle_create.i ], [ %call.i, %entry.rockchip_gem_create_with_handle.exit_crit_edge ], [ null, %if.end5.i.rockchip_gem_create_with_handle.exit_crit_edge ], [ %call.i, %if.end5.i.i.i.i.i.i.i.rockchip_gem_create_with_handle.exit_crit_edge ], [ %call.i, %if.then10.i.i.i.i.i.i.i ], [ %call.i, %if.then.i.i.i.i ]
  %cmp.i.i15 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  %10 = ptrtoint ptr %retval.0.i to i32
  %spec.select.i = select i1 %cmp.i.i15, i32 %10, i32 0
  ret i32 %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rockchip_gem_prime_get_sg_table(ptr nocapture noundef readonly %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %pages = getelementptr inbounds %struct.rockchip_gem_object, ptr %obj, i32 0, i32 7
  %2 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pages, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %num_pages = getelementptr inbounds %struct.rockchip_gem_object, ptr %obj, i32 0, i32 6
  %4 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_pages, align 8
  %call = tail call ptr @drm_prime_pages_to_sg(ptr noundef %1, ptr noundef nonnull %3, i32 noundef %5) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 12) #7
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %dev8 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev8, align 4
  %kvaddr = getelementptr inbounds %struct.rockchip_gem_object, ptr %obj, i32 0, i32 2
  %9 = ptrtoint ptr %kvaddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %kvaddr, align 4
  %dma_addr = getelementptr inbounds %struct.rockchip_gem_object, ptr %obj, i32 0, i32 3
  %11 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_addr, align 8
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 5
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size, align 8
  %dma_attrs = getelementptr inbounds %struct.rockchip_gem_object, ptr %obj, i32 0, i32 4
  %15 = ptrtoint ptr %dma_attrs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_attrs, align 4
  %call9 = tail call i32 @dma_get_sgtable_attrs(ptr noundef %8, ptr noundef nonnull %call7.i.i, ptr noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.then11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %call9) #4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  %17 = inttoptr i32 %call9 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %call, %if.then ], [ %17, %if.then11 ], [ %call7.i.i, %if.end7.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_prime_pages_to_sg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_get_sgtable_attrs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rockchip_gem_prime_import_sg_table(ptr noundef %drm, ptr nocapture noundef readonly %attach, ptr noundef %sg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %2 = ptrtoint ptr %attach to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attach, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 496) #7
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %rockchip_gem_alloc_object.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

rockchip_gem_alloc_object.exit:                   ; preds = %entry
  %sub.i = add i32 %5, -1
  %or.i = or i32 %sub.i, 4095
  %add.i = add i32 %or.i, 1
  %funcs.i = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i.i, i32 0, i32 11
  %7 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @rockchip_gem_object_funcs, ptr %funcs.i, align 4
  %call2.i = tail call i32 @drm_gem_object_init(ptr noundef %drm, ptr noundef nonnull %call7.i.i.i, i32 noundef %add.i) #4
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %rockchip_gem_alloc_object.exit.cleanup_crit_edge, label %if.end

rockchip_gem_alloc_object.exit.cleanup_crit_edge: ; preds = %rockchip_gem_alloc_object.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %rockchip_gem_alloc_object.exit
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %sgt.i = getelementptr inbounds %struct.rockchip_gem_object, ptr %call7.i.i.i, i32 0, i32 8
  %10 = ptrtoint ptr %sgt.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sg, ptr %sgt.i, align 8
  %call.i = tail call fastcc i32 @rockchip_gem_iommu_map(ptr noundef nonnull %call7.i.i.i) #4
  br label %if.end6

if.else:                                          ; preds = %if.end
  %dev.i = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %call.i25 = tail call i32 @dma_map_sgtable(ptr noundef %12, ptr noundef %sg, i32 noundef 0, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool.not.i26 = icmp eq i32 %call.i25, 0
  br i1 %tobool.not.i26, label %if.end.i28, label %if.else.if.end6_crit_edge

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.end.i28:                                       ; preds = %if.else
  %call1.i = tail call i32 @drm_prime_get_contiguous_size(ptr noundef %sg) #4
  %13 = ptrtoint ptr %attach to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %attach, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i, i32 %16)
  %cmp.i27 = icmp ult i32 %call1.i, %16
  br i1 %cmp.i27, label %if.end6.thread, label %if.end6.thread37

if.end6.thread:                                   ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #4
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %19 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sg, align 4
  %orig_nents.i.i = getelementptr inbounds %struct.sg_table, ptr %sg, i32 0, i32 2
  %21 = ptrtoint ptr %orig_nents.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %orig_nents.i.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %18, ptr noundef %20, i32 noundef %22, i32 noundef 0, i32 noundef 0) #4
  br label %if.then7

if.end6.thread37:                                 ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sg, align 4
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_address.i, align 4
  %dma_addr.i = getelementptr inbounds %struct.rockchip_gem_object, ptr %call7.i.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %dma_addr.i, align 8
  %sgt.i29 = getelementptr inbounds %struct.rockchip_gem_object, ptr %call7.i.i.i, i32 0, i32 8
  %28 = ptrtoint ptr %sgt.i29 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %sg, ptr %sgt.i29, align 8
  br label %cleanup

if.end6:                                          ; preds = %if.else.if.end6_crit_edge, %if.then3
  %ret.0 = phi i32 [ %call.i, %if.then3 ], [ %call.i25, %if.else.if.end6_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp = icmp slt i32 %ret.0, 0
  br i1 %cmp, label %if.end6.if.then7_crit_edge, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6.if.then7_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then7

if.then7:                                         ; preds = %if.end6.if.then7_crit_edge, %if.end6.thread
  %ret.036 = phi i32 [ -22, %if.end6.thread ], [ %ret.0, %if.end6.if.then7_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %ret.036) #4
  tail call void @drm_gem_object_release(ptr noundef nonnull %call7.i.i.i) #4
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #4
  %29 = inttoptr i32 %ret.036 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end6.cleanup_crit_edge, %if.end6.thread37, %rockchip_gem_alloc_object.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %29, %if.then7 ], [ %call7.i.i.i, %if.end6.cleanup_crit_edge ], [ %call7.i.i.i, %rockchip_gem_alloc_object.exit.cleanup_crit_edge ], [ %call7.i.i.i, %if.end6.thread37 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rockchip_gem_prime_vmap(ptr nocapture noundef readonly %obj, ptr nocapture noundef writeonly %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pages = getelementptr inbounds %struct.rockchip_gem_object, ptr %obj, i32 0, i32 7
  %0 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pages, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %num_pages = getelementptr inbounds %struct.rockchip_gem_object, ptr %obj, i32 0, i32 6
  %2 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_pages, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %4 = load i32, ptr @pgprot_kernel, align 4
  %or = and i32 %4, -573
  %or2 = or i32 %or, 516
  %call = tail call ptr @vmap(ptr noundef nonnull %1, i32 noundef %3, i32 noundef 4, i32 noundef %or2) #4
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.then.cleanup10_crit_edge, label %if.then.cleanup10.sink.split_crit_edge

if.then.cleanup10.sink.split_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup10.sink.split

if.then.cleanup10_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup10

if.end5:                                          ; preds = %entry
  %dma_attrs = getelementptr inbounds %struct.rockchip_gem_object, ptr %obj, i32 0, i32 4
  %5 = ptrtoint ptr %dma_attrs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma_attrs, align 4
  %and6 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup10_crit_edge

if.end5.cleanup10_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup10

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %kvaddr = getelementptr inbounds %struct.rockchip_gem_object, ptr %obj, i32 0, i32 2
  %7 = ptrtoint ptr %kvaddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %kvaddr, align 4
  br label %cleanup10.sink.split

cleanup10.sink.split:                             ; preds = %if.end9, %if.then.cleanup10.sink.split_crit_edge
  %call.sink = phi ptr [ %8, %if.end9 ], [ %call, %if.then.cleanup10.sink.split_crit_edge ]
  %9 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.sink, ptr %map, align 4
  %is_iomem.i = getelementptr inbounds %struct.dma_buf_map, ptr %map, i32 0, i32 1
  %10 = ptrtoint ptr %is_iomem.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %is_iomem.i, align 4
  br label %cleanup10

cleanup10:                                        ; preds = %cleanup10.sink.split, %if.end5.cleanup10_crit_edge, %if.then.cleanup10_crit_edge
  %retval.1 = phi i32 [ -12, %if.then.cleanup10_crit_edge ], [ -12, %if.end5.cleanup10_crit_edge ], [ 0, %cleanup10.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rockchip_gem_prime_vunmap(ptr nocapture noundef readonly %obj, ptr nocapture noundef readonly %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pages = getelementptr inbounds %struct.rockchip_gem_object, ptr %obj, i32 0, i32 7
  %0 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pages, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  tail call void @vunmap(ptr noundef %3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_object_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_drm_gem_object_mmap(ptr nocapture noundef readonly %obj, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %0 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %vm_pgoff, align 4
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %1 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vm_flags, align 4
  %or = and i32 %2, -67388417
  %and = or i32 %or, 67387392
  store i32 %and, ptr %vm_flags, align 4
  %call = tail call i32 @vm_get_page_prot(i32 noundef %and) #4
  %and3 = and i32 %call, -61
  %or4 = or i32 %and3, 4
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %3 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or4, ptr %vm_page_prot, align 4
  %pages = getelementptr inbounds %struct.rockchip_gem_object, ptr %obj, i32 0, i32 7
  %4 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pages, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %vm_end.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %6 = ptrtoint ptr %vm_end.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vm_end.i.i, align 4
  %8 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vma, align 4
  %sub.i.i = sub i32 %7, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub.i.i)
  %cmp.i = icmp ult i32 %sub.i.i, 4096
  br i1 %cmp.i, label %if.then.if.then10_crit_edge, label %if.end.i

if.then.if.then10_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then10

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %size.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 5
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.i, align 8
  %shr.i = lshr i32 %11, 12
  %call1.i = tail call i32 @vm_map_pages(ptr noundef %vma, ptr noundef nonnull %5, i32 noundef %shr.i) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 8
  %dev1.i = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1.i, align 4
  %kvaddr.i = getelementptr inbounds %struct.rockchip_gem_object, ptr %obj, i32 0, i32 2
  %16 = ptrtoint ptr %kvaddr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %kvaddr.i, align 4
  %dma_addr.i = getelementptr inbounds %struct.rockchip_gem_object, ptr %obj, i32 0, i32 3
  %18 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_addr.i, align 8
  %size.i24 = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 5
  %20 = ptrtoint ptr %size.i24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size.i24, align 8
  %dma_attrs.i = getelementptr inbounds %struct.rockchip_gem_object, ptr %obj, i32 0, i32 4
  %22 = ptrtoint ptr %dma_attrs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_attrs.i, align 4
  %call.i = tail call i32 @dma_mmap_attrs(ptr noundef %15, ptr noundef %vma, ptr noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end.i
  %ret.0 = phi i32 [ %call.i, %if.else ], [ %call1.i, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool9.not = icmp eq i32 %ret.0, 0
  br i1 %tobool9.not, label %if.end.if.end11_crit_edge, label %if.end.if.then10_crit_edge

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then10

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then10:                                        ; preds = %if.end.if.then10_crit_edge, %if.then.if.then10_crit_edge
  %ret.027 = phi i32 [ %ret.0, %if.end.if.then10_crit_edge ], [ -6, %if.then.if.then10_crit_edge ]
  tail call void @drm_gem_vm_close(ptr noundef %vma) #4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end.if.end11_crit_edge
  %ret.028 = phi i32 [ %ret.027, %if.then10 ], [ 0, %if.end.if.end11_crit_edge ]
  ret i32 %ret.028
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_get_page_prot(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_vm_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_map_pages(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_mmap_attrs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_gem_iommu_map(ptr noundef %rk_obj) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %rk_obj, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %mm_lock = getelementptr inbounds %struct.rockchip_drm_private, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mm_lock, i32 noundef 0) #4
  %mm = getelementptr inbounds %struct.rockchip_drm_private, ptr %3, i32 0, i32 2
  %mm1 = getelementptr inbounds %struct.rockchip_gem_object, ptr %rk_obj, i32 0, i32 5
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %rk_obj, i32 0, i32 5
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 8
  %conv = zext i32 %5 to i64
  %call.i = tail call i32 @drm_mm_insert_node_in_range(ptr noundef %mm, ptr noundef %mm1, i64 noundef %conv, i64 noundef 4096, i32 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef 0) #4
  tail call void @mutex_unlock(ptr noundef %mm_lock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, i32 noundef %call.i) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %start = getelementptr inbounds %struct.rockchip_gem_object, ptr %rk_obj, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %start, align 8
  %conv6 = trunc i64 %7 to i32
  %dma_addr = getelementptr inbounds %struct.rockchip_gem_object, ptr %rk_obj, i32 0, i32 3
  %8 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv6, ptr %dma_addr, align 8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 8
  %sgt = getelementptr inbounds %struct.rockchip_gem_object, ptr %rk_obj, i32 0, i32 8
  %11 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sgt, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %orig_nents.i = getelementptr inbounds %struct.sg_table, ptr %12, i32 0, i32 2
  %15 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %orig_nents.i, align 4
  %call.i45 = tail call i32 @iommu_map_sg(ptr noundef %10, i32 noundef %conv6, ptr noundef %14, i32 noundef %16, i32 noundef 3) #4
  %17 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i45, i32 %18)
  %cmp11 = icmp ult i32 %call.i45, %18
  br i1 %cmp11, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4, i32 noundef %call.i45, i32 noundef %18) #4
  tail call void @mutex_lock_nested(ptr noundef %mm_lock, i32 noundef 0) #4
  tail call void @drm_mm_remove_node(ptr noundef %mm1) #4
  tail call void @mutex_unlock(ptr noundef %mm_lock) #4
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %size17 = getelementptr inbounds %struct.rockchip_gem_object, ptr %rk_obj, i32 0, i32 9
  %19 = ptrtoint ptr %size17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call.i45, ptr %size17, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then13, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ -12, %if.then13 ], [ 0, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_get_pages(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_put_pages(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_device(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_remove_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mm_insert_node_in_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_map_sg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_unmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sgtable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_prime_get_contiguous_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_gem.c", i32 444, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_gem.c", i32 502, i32 3}
!4 = !{ptr @rockchip_gem_object_funcs, !5, !"rockchip_gem_object_funcs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_gem.c", i32 276, i32 42}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_gem.c", i32 139, i32 4}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_gem.c", i32 34, i32 3}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_gem.c", i32 43, i32 3}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_gem.c", i32 170, i32 3}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_gem.c", i32 473, i32 3}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 2153403265, i64 2153403757, i64 2153403302, i64 2153403358, i64 2153403392, i64 2153403416, i64 2153403457, i64 2153403478, i64 2153403506, i64 2153403540}
!27 = !{i64 2148551632}
!28 = !{i64 2148466096, i64 2148466128, i64 2148466157, i64 2148466191, i64 2148466222, i64 2148466245}
!29 = !{i64 2150177646}
