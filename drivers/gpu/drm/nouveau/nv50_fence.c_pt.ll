; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nv50_fence.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nv50_fence.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.95, %struct.anon.96, %struct.anon.101, ptr, %struct.anon.102, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.103, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.115 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.anon.95 = type { ptr, i32, i32, i8 }
%struct.anon.96 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.97] }
%struct.anon.97 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.anon.101 = type { i64, i64 }
%struct.anon.102 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.anon.103 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.110, %struct.anon.111, %struct.anon.112, %struct.anon.113 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.104, i8 }
%union.anon.104 = type { %struct.anon.108 }
%struct.anon.108 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.110 = type { i32 }
%struct.anon.111 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.112 = type { i16, i16 }
%struct.anon.113 = type { i16, i16, i16, %struct.anon.114, i16 }
%struct.anon.114 = type { i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.115 = type { ptr, %struct.mutex, i8 }
%struct.nouveau_fence_priv = type { ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nv10_fence_priv = type { %struct.nouveau_fence_priv, ptr, %struct.spinlock, i32 }
%struct.nv_dma_v0 = type { i8, i8, i8, [5 x i8], i64, i64 }
%struct.nouveau_channel = type { %struct.anon.98, ptr, ptr, ptr, i32, i64, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.anon.99, i8, ptr, %struct.anon.100, i32, i32, i32, %struct.nvif_object, %struct.nvif_notify, %struct.atomic_t }
%struct.anon.98 = type { %struct.nvif_push, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.anon.99 = type { ptr, ptr, %struct.nvif_object, i64 }
%struct.anon.100 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
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
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nouveau_fence_chan = type { %struct.spinlock, %struct.kref, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, [32 x i8], %struct.nvif_notify, i32, i32 }
%struct.nv10_fence_chan = type { %struct.nouveau_fence_chan, %struct.nvif_object }

@nv50_fence_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fenceCtxDma\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 82, i32 2 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [40 x i8] c"../drivers/gpu/drm/nouveau/nv50_fence.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 54, i32 38 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @nv50_fence_create.__key, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_fence_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_fence_create(ptr noundef %drm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 76) #6
  %fence = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 10
  %1 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %fence, align 8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @nv10_fence_destroy, ptr %call7.i.i, align 8
  %resume = getelementptr inbounds %struct.nouveau_fence_priv, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %resume to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @nv17_fence_resume, ptr %resume, align 8
  %context_new = getelementptr inbounds %struct.nouveau_fence_priv, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %context_new to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @nv50_fence_context_new, ptr %context_new, align 4
  %context_del = getelementptr inbounds %struct.nouveau_fence_priv, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %context_del to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @nv10_fence_context_del, ptr %context_del, align 8
  %lock = getelementptr inbounds %struct.nv10_fence_priv, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @nv50_fence_create.__key, i16 noundef signext 3) #3
  %client = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2
  %bo = getelementptr inbounds %struct.nv10_fence_priv, ptr %call7.i.i, i32 0, i32 1
  %call5 = tail call i32 @nouveau_bo_new(ptr noundef %client, i64 noundef 4096, i32 noundef 4096, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef %bo) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end.if.then27_crit_edge

if.end.if.then27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then27

if.then7:                                         ; preds = %if.end
  %6 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bo, align 8
  %call9 = tail call i32 @nouveau_bo_pin(ptr noundef %7, i32 noundef 2, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.then7.if.then21_crit_edge

if.then7.if.then21_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then21

if.then11:                                        ; preds = %if.then7
  %8 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bo, align 8
  %call13 = tail call i32 @nouveau_bo_map(ptr noundef %9) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  %10 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bo, align 8
  br i1 %tobool14.not, label %if.end28, label %if.then15

if.then15:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #5
  %call17 = tail call i32 @nouveau_bo_unpin(ptr noundef %11) #3
  br label %if.then21

if.then21:                                        ; preds = %if.then15, %if.then7.if.then21_crit_edge
  %ret.0.ph = phi i32 [ %call13, %if.then15 ], [ %call9, %if.then7.if.then21_crit_edge ]
  %tobool.not.i = icmp eq ptr %bo, null
  br i1 %tobool.not.i, label %if.then21.if.then27_crit_edge, label %if.end.i

if.then21.if.then27_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then27

if.end.i:                                         ; preds = %if.then21
  %12 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bo, align 8
  store ptr null, ptr %bo, align 8
  %tobool5.not.i = icmp eq ptr %13, null
  br i1 %tobool5.not.i, label %if.end.i.if.then27_crit_edge, label %if.then6.i

if.end.i.if.then27_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then27

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @ttm_bo_put(ptr noundef nonnull %13) #3
  br label %if.then27

if.then27:                                        ; preds = %if.then6.i, %if.end.i.if.then27_crit_edge, %if.then21.if.then27_crit_edge, %if.end.if.then27_crit_edge
  %ret.1.ph = phi i32 [ %ret.0.ph, %if.then6.i ], [ %ret.0.ph, %if.end.i.if.then27_crit_edge ], [ %ret.0.ph, %if.then21.if.then27_crit_edge ], [ %call5, %if.end.if.then27_crit_edge ]
  tail call void @nv10_fence_destroy(ptr noundef %drm) #3
  br label %cleanup

if.end28:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @nouveau_bo_wr32(ptr noundef %11, i32 noundef 0, i32 noundef 0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then27, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1.ph, %if.then27 ], [ 0, %if.end28 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv10_fence_destroy(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv17_fence_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_fence_context_new(ptr noundef %chan) #0 align 64 {
entry:
  %.compoundliteral = alloca %struct.nv_dma_v0, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %drm = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drm, align 4
  %fence = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fence, align 8
  %bo = getelementptr inbounds %struct.nv10_fence_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bo, align 4
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resource, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %5, i32 0, i32 5
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 256) #6
  %fence5 = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 12
  %13 = ptrtoint ptr %fence5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %fence5, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = shl i32 %9, 12
  %add = add i32 %11, -1
  %sub = add i32 %add, %mul
  tail call void @nouveau_fence_context_new(ptr noundef %chan, ptr noundef nonnull %call7.i.i) #3
  %emit = getelementptr inbounds %struct.nouveau_fence_chan, ptr %call7.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %emit to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @nv10_fence_emit, ptr %emit, align 8
  %read = getelementptr inbounds %struct.nouveau_fence_chan, ptr %call7.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @nv10_fence_read, ptr %read, align 8
  %sync = getelementptr inbounds %struct.nouveau_fence_chan, ptr %call7.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %sync to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @nv17_fence_sync, ptr %sync, align 4
  %user = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 17
  %17 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %.compoundliteral, align 8
  %target = getelementptr inbounds %struct.nv_dma_v0, ptr %.compoundliteral, i32 0, i32 1
  %18 = ptrtoint ptr %target to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %target, align 1
  %access = getelementptr inbounds %struct.nv_dma_v0, ptr %.compoundliteral, i32 0, i32 2
  %19 = ptrtoint ptr %access to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 3, ptr %access, align 2
  %pad03 = getelementptr inbounds %struct.nv_dma_v0, ptr %.compoundliteral, i32 0, i32 3
  %20 = call ptr @memset(ptr %pad03, i32 0, i32 5)
  %start10 = getelementptr inbounds %struct.nv_dma_v0, ptr %.compoundliteral, i32 0, i32 4
  %conv = zext i32 %mul to i64
  %21 = ptrtoint ptr %start10 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv, ptr %start10, align 8
  %limit11 = getelementptr inbounds %struct.nv_dma_v0, ptr %.compoundliteral, i32 0, i32 5
  %conv12 = zext i32 %sub to i64
  %22 = ptrtoint ptr %limit11 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv12, ptr %limit11, align 8
  %sema = getelementptr inbounds %struct.nv10_fence_chan, ptr %call7.i.i, i32 0, i32 1
  %call13 = call i32 @nvif_object_ctor(ptr noundef %user, ptr noundef nonnull @.str.1, i32 noundef -2147483633, i32 noundef 61, ptr noundef nonnull %.compoundliteral, i32 noundef 24, ptr noundef %sema) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.then15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  call void @nv10_fence_context_del(ptr noundef %chan) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call13, %if.then15 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv10_fence_context_del(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_new(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_pin(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_map(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_unpin(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_wr32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_fence_context_new(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv10_fence_emit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv10_fence_read(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv17_fence_sync(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @nv50_fence_create.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nv50_fence.c", i32 82, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/nouveau/nv50_fence.c", i32 54, i32 38}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
