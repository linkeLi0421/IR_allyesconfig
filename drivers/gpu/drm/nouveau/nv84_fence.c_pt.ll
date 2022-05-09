; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nv84_fence.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nv84_fence.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nouveau_channel = type { %struct.anon, ptr, ptr, ptr, i32, i64, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.anon.114, i8, ptr, %struct.anon.115, i32, i32, i32, %struct.nvif_object, %struct.nvif_notify, %struct.atomic_t }
%struct.anon = type { %struct.nvif_push, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.anon.114 = type { ptr, ptr, %struct.nvif_object, i64 }
%struct.anon.115 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.0 }
%struct.anon.0 = type { ptr, i64 }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.96, %struct.anon.97, %struct.anon.99, ptr, %struct.anon.100, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.101, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.113 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.96 = type { ptr, i32, i32, i8 }
%struct.anon.97 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.98] }
%struct.anon.98 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.99 = type { i64, i64 }
%struct.anon.100 = type { i32, i64 }
%struct.anon.101 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.108, %struct.anon.109, %struct.anon.110, %struct.anon.111 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.102, i8 }
%union.anon.102 = type { %struct.anon.106 }
%struct.anon.106 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.108 = type { i32 }
%struct.anon.109 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.110 = type { i16, i16 }
%struct.anon.111 = type { i16, i16, i16, %struct.anon.112, i16 }
%struct.anon.112 = type { i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.113 = type { ptr, %struct.mutex, i8 }
%struct.nouveau_fence_chan = type { %struct.spinlock, %struct.kref, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, [32 x i8], %struct.nvif_notify, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nv84_fence_priv = type { %struct.nouveau_fence_priv, ptr, ptr, %struct.mutex }
%struct.nouveau_fence_priv = type { ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nv84_fence_chan = type { %struct.nouveau_fence_chan, ptr }
%struct.nouveau_fence = type { %struct.dma_fence, %struct.list_head, ptr, i32 }
%struct.dma_fence = type { ptr, ptr, %union.anon.87, i64, i64, i32, %struct.kref, i32 }
%union.anon.87 = type { i64 }
%struct.nouveau_vma = type { ptr, i32, %struct.list_head, i64, ptr, ptr }

@nv84_fence_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&priv->mutex\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/nouveau/nv84_fence.c\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segment overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pushbuf overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[%s/%08x:%s] %08x: %08x incr subc %d mthd 0x%04x size %d - %s\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.nv84_fence_emit32 = private unnamed_addr constant [18 x i8] c"nv84_fence_emit32\00", align 1
@.str.8 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"[%s/%08x:%s] %08x: %08x-> NV826F_SET_CONTEXT_DMA_SEMAPHORE\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[%s/%08x:%s] %08x: %08x-> NV826F_SEMAPHOREA\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[%s/%08x:%s] %08x: %08x-> NV826F_SEMAPHOREB\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[%s/%08x:%s] %08x: %08x-> NV826F_SEMAPHOREC\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[%s/%08x:%s] %08x: %08x-> NV826F_SEMAPHORED\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[%s/%08x:%s] %08x: %08x-> NV826F_NON_STALLED_INTERRUPT\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.nv84_fence_sync32 = private unnamed_addr constant [18 x i8] c"nv84_fence_sync32\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 209, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 41, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [40 x i8] c"../drivers/gpu/drm/nouveau/nv84_fence.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 43, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @nv84_fence_create.__key, ptr @.str, ptr @.str.1, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv84_fence_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv84_fence_context_new(ptr noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %drm = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drm, align 4
  %fence = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fence, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 216) #8
  %fence1 = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 12
  %5 = ptrtoint ptr %fence1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %fence1, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @nouveau_fence_context_new(ptr noundef %chan, ptr noundef nonnull %call7.i.i) #5
  %emit = getelementptr inbounds %struct.nouveau_fence_chan, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %emit to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @nv84_fence_emit, ptr %emit, align 8
  %sync = getelementptr inbounds %struct.nouveau_fence_chan, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %sync to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @nv84_fence_sync, ptr %sync, align 4
  %read = getelementptr inbounds %struct.nouveau_fence_chan, ptr %call7.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nv84_fence_read, ptr %read, align 8
  %emit32 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %call7.i.i, i32 0, i32 7
  %9 = ptrtoint ptr %emit32 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @nv84_fence_emit32, ptr %emit32, align 4
  %sync32 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %call7.i.i, i32 0, i32 8
  %10 = ptrtoint ptr %sync32 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @nv84_fence_sync32, ptr %sync32, align 8
  %11 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %drm, align 4
  %fence.i = getelementptr inbounds %struct.nouveau_drm, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fence.i, align 8
  %bo.i = getelementptr inbounds %struct.nv84_fence_priv, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %bo.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bo.i, align 4
  %chid.i = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 4
  %17 = ptrtoint ptr %chid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %chid.i, align 4
  %mul.i = shl i32 %18, 4
  %div.i = sdiv i32 %mul.i, 4
  %call.i = tail call i32 @nouveau_bo_rd32(ptr noundef %16, i32 noundef %div.i) #5
  %sequence = getelementptr inbounds %struct.nouveau_fence_chan, ptr %call7.i.i, i32 0, i32 9
  %19 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call.i, ptr %sequence, align 4
  %mutex = getelementptr inbounds %struct.nv84_fence_priv, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %bo = getelementptr inbounds %struct.nv84_fence_priv, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bo, align 4
  %vmm = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 3
  %22 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vmm, align 8
  %vma = getelementptr inbounds %struct.nv84_fence_chan, ptr %call7.i.i, i32 0, i32 1
  %call9 = tail call i32 @nouveau_vma_new(ptr noundef %21, ptr noundef %23, ptr noundef %vma) #5
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool11.not = icmp eq i32 %call9, 0
  br i1 %tobool11.not, label %if.end.cleanup_crit_edge, label %if.then12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %drm, align 4
  %fence.i33 = getelementptr inbounds %struct.nouveau_drm, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %fence.i33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fence.i33, align 8
  %28 = ptrtoint ptr %fence1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fence1, align 4
  %bo.i34 = getelementptr inbounds %struct.nv84_fence_priv, ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %bo.i34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bo.i34, align 4
  %32 = ptrtoint ptr %chid.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %chid.i, align 4
  %mul.i36 = shl i32 %33, 4
  %div.i37 = sdiv i32 %mul.i36, 4
  %sequence.i = getelementptr inbounds %struct.nouveau_fence_chan, ptr %29, i32 0, i32 9
  %34 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sequence.i, align 4
  tail call void @nouveau_bo_wr32(ptr noundef %31, i32 noundef %div.i37, i32 noundef %35) #5
  %mutex.i = getelementptr inbounds %struct.nv84_fence_priv, ptr %27, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %vma.i = getelementptr inbounds %struct.nv84_fence_chan, ptr %29, i32 0, i32 1
  tail call void @nouveau_vma_del(ptr noundef %vma.i) #5
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  tail call void @nouveau_fence_context_del(ptr noundef %29) #5
  %36 = ptrtoint ptr %fence1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %fence1, align 4
  tail call void @nouveau_fence_context_free(ptr noundef %29) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call9, %if.then12 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_fence_context_new(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv84_fence_emit(ptr nocapture noundef readonly %fence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr inbounds %struct.nouveau_fence, ptr %fence, i32 0, i32 2
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 8
  %fence1 = getelementptr inbounds %struct.nouveau_channel, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %fence1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fence1, align 4
  %vma = getelementptr inbounds %struct.nv84_fence_chan, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vma, align 4
  %addr2 = getelementptr inbounds %struct.nouveau_vma, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %addr2 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %addr2, align 8
  %chid = getelementptr inbounds %struct.nouveau_channel, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %chid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chid, align 4
  %mul = shl i32 %9, 4
  %conv = sext i32 %mul to i64
  %add = add i64 %7, %conv
  %emit32 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %emit32 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %emit32, align 4
  %seqno = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 4
  %12 = ptrtoint ptr %seqno to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %seqno, align 8
  %conv4 = trunc i64 %13 to i32
  %call = tail call i32 %11(ptr noundef %1, i64 noundef %add, i32 noundef %conv4) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv84_fence_sync(ptr nocapture noundef readonly %fence, ptr nocapture noundef readonly %prev, ptr noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fence1 = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 12
  %0 = ptrtoint ptr %fence1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fence1, align 4
  %vma = getelementptr inbounds %struct.nv84_fence_chan, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vma, align 4
  %addr2 = getelementptr inbounds %struct.nouveau_vma, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %addr2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %addr2, align 8
  %chid = getelementptr inbounds %struct.nouveau_channel, ptr %prev, i32 0, i32 4
  %6 = ptrtoint ptr %chid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chid, align 4
  %mul = shl i32 %7, 4
  %conv = sext i32 %mul to i64
  %add = add i64 %5, %conv
  %sync32 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %sync32 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sync32, align 4
  %seqno = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 4
  %10 = ptrtoint ptr %seqno to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %seqno, align 8
  %conv4 = trunc i64 %11 to i32
  %call = tail call i32 %9(ptr noundef %chan, i64 noundef %add, i32 noundef %conv4) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv84_fence_read(ptr nocapture noundef readonly %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %drm = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drm, align 4
  %fence = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fence, align 8
  %bo = getelementptr inbounds %struct.nv84_fence_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bo, align 4
  %chid = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 4
  %6 = ptrtoint ptr %chid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chid, align 4
  %mul = shl i32 %7, 4
  %div = sdiv i32 %mul, 4
  %call = tail call i32 @nouveau_bo_rd32(ptr noundef %5, i32 noundef %div) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv84_fence_emit32(ptr nocapture noundef readonly %chan, i64 noundef %virtual, i32 noundef %sequence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %push2 = getelementptr inbounds %struct.anon, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %push2, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %3, i32 8
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %5
  br i1 %cmp.not.i, label %entry.if.end71_crit_edge, label %if.then.i

entry.if.end71_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end71_crit_edge, label %if.then.i.if.end1203_crit_edge

if.then.i.if.end1203_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1203

if.then.i.if.end71_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

if.end71:                                         ; preds = %if.then.i.if.end71_crit_edge, %entry.if.end71_crit_edge
  %8 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %9, i32 8
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp84.not = icmp ult ptr %9, %add.ptr4.i
  br i1 %cmp84.not, label %if.end71.if.end108_crit_edge, label %do.end102, !prof !34

if.end71.if.end108_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end108

do.end102:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 41, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end108

if.end108:                                        ; preds = %do.end102, %if.end71.if.end108_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp121.not = icmp ult ptr %12, %14
  br i1 %cmp121.not, label %if.end108.if.end145_crit_edge, label %do.end139, !prof !34

if.end108.if.end145_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end145

do.end139:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 41, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  br label %if.end145

if.end145:                                        ; preds = %do.end139, %if.end108.if.end145_crit_edge
  %15 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cur.i, align 4
  %mem = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 6
  %17 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %18 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %19 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mem, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %client = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 1
  %25 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %client, align 4
  %name = getelementptr inbounds %struct.nvif_object, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 3
  %29 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %handle, align 4
  %name162 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 2
  %31 = ptrtoint ptr %name162 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name162, align 8
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.7, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 262240, i32 noundef 0, i32 noundef 96, i32 noundef 1, ptr noundef nonnull @__func__.nv84_fence_emit32) #5
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 262240, ptr %34, align 4
  %handle175 = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 7, i32 3
  %36 = ptrtoint ptr %handle175 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %handle175, align 4
  %38 = load ptr, ptr %cur.i, align 4
  %39 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %seg.i, align 8
  %cmp180.not = icmp ult ptr %38, %40
  br i1 %cmp180.not, label %if.end145.if.end204_crit_edge, label %do.end198, !prof !34

if.end145.if.end204_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end204

do.end198:                                        ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 41, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end204

if.end204:                                        ; preds = %do.end198, %if.end145.if.end204_crit_edge
  %41 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cur.i, align 4
  %43 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %end.i, align 4
  %cmp218.not = icmp ult ptr %42, %44
  br i1 %cmp218.not, label %if.end204.if.end242_crit_edge, label %do.end236, !prof !34

if.end204.if.end242_crit_edge:                    ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end242

do.end236:                                        ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 41, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  br label %if.end242

if.end242:                                        ; preds = %do.end236, %if.end204.if.end242_crit_edge
  %45 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cur.i, align 4
  %47 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast260 = ptrtoint ptr %46 to i32
  %sub.ptr.rhs.cast261 = ptrtoint ptr %48 to i32
  %sub.ptr.sub262 = sub i32 %sub.ptr.lhs.cast260, %sub.ptr.rhs.cast261
  %49 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mem, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %55 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %client, align 4
  %name274 = getelementptr inbounds %struct.nvif_object, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %name274 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name274, align 8
  %59 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %handle, align 4
  %61 = ptrtoint ptr %name162 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %name162, align 8
  tail call void (ptr, ptr, ...) %54(ptr noundef %mem, ptr noundef nonnull @.str.8, ptr noundef %58, i32 noundef %60, ptr noundef %62, i32 noundef %sub.ptr.sub262, i32 noundef %37) #5
  %63 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cur.i, align 4
  %incdec.ptr283 = getelementptr i32, ptr %64, i32 1
  store ptr %incdec.ptr283, ptr %cur.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %37, ptr %64, align 4
  %66 = load ptr, ptr %cur.i, align 4
  %67 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %seg.i, align 8
  %cmp504.not = icmp ult ptr %66, %68
  br i1 %cmp504.not, label %if.end242.if.end528_crit_edge, label %do.end522, !prof !34

if.end242.if.end528_crit_edge:                    ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end528

do.end522:                                        ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 52, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end528

if.end528:                                        ; preds = %do.end522, %if.end242.if.end528_crit_edge
  %69 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cur.i, align 4
  %71 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %end.i, align 4
  %cmp542.not = icmp ult ptr %70, %72
  br i1 %cmp542.not, label %if.end528.if.end566_crit_edge, label %do.end560, !prof !34

if.end528.if.end566_crit_edge:                    ; preds = %if.end528
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end566

do.end560:                                        ; preds = %if.end528
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 52, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  br label %if.end566

if.end566:                                        ; preds = %do.end560, %if.end528.if.end566_crit_edge
  %73 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cur.i, align 4
  %75 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast584 = ptrtoint ptr %74 to i32
  %sub.ptr.rhs.cast585 = ptrtoint ptr %76 to i32
  %sub.ptr.sub586 = sub i32 %sub.ptr.lhs.cast584, %sub.ptr.rhs.cast585
  %77 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mem, align 8
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %83 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %client, align 4
  %name598 = getelementptr inbounds %struct.nvif_object, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %name598 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %name598, align 8
  %87 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %handle, align 4
  %89 = ptrtoint ptr %name162 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %name162, align 8
  tail call void (ptr, ptr, ...) %82(ptr noundef %mem, ptr noundef nonnull @.str.7, ptr noundef %86, i32 noundef %88, ptr noundef %90, i32 noundef %sub.ptr.sub586, i32 noundef 1310736, i32 noundef 0, i32 noundef 16, i32 noundef 5, ptr noundef nonnull @__func__.nv84_fence_emit32) #5
  %91 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cur.i, align 4
  %incdec.ptr607 = getelementptr i32, ptr %92, i32 1
  store ptr %incdec.ptr607, ptr %cur.i, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1310736, ptr %92, align 4
  %shr = lshr i64 %virtual, 32
  %94 = trunc i64 %shr to i32
  %conv617 = and i32 %94, 255
  %95 = load ptr, ptr %cur.i, align 4
  %96 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %seg.i, align 8
  %cmp622.not = icmp ult ptr %95, %97
  br i1 %cmp622.not, label %if.end566.if.end647_crit_edge, label %do.end641, !prof !34

if.end566.if.end647_crit_edge:                    ; preds = %if.end566
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end647

do.end641:                                        ; preds = %if.end566
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 52, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end647

if.end647:                                        ; preds = %do.end641, %if.end566.if.end647_crit_edge
  %98 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cur.i, align 4
  %100 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %end.i, align 4
  %cmp661.not = icmp ult ptr %99, %101
  br i1 %cmp661.not, label %if.end647.if.end686_crit_edge, label %do.end680, !prof !34

if.end647.if.end686_crit_edge:                    ; preds = %if.end647
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end686

do.end680:                                        ; preds = %if.end647
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 52, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  br label %if.end686

if.end686:                                        ; preds = %do.end680, %if.end647.if.end686_crit_edge
  %102 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %cur.i, align 4
  %104 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast704 = ptrtoint ptr %103 to i32
  %sub.ptr.rhs.cast705 = ptrtoint ptr %105 to i32
  %sub.ptr.sub706 = sub i32 %sub.ptr.lhs.cast704, %sub.ptr.rhs.cast705
  %106 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mem, align 8
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 4
  %112 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %client, align 4
  %name718 = getelementptr inbounds %struct.nvif_object, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %name718 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %name718, align 8
  %116 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %handle, align 4
  %118 = ptrtoint ptr %name162 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %name162, align 8
  tail call void (ptr, ptr, ...) %111(ptr noundef %mem, ptr noundef nonnull @.str.13, ptr noundef %115, i32 noundef %117, ptr noundef %119, i32 noundef %sub.ptr.sub706, i32 noundef %conv617) #5
  %120 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %cur.i, align 4
  %incdec.ptr727 = getelementptr i32, ptr %121, i32 1
  store ptr %incdec.ptr727, ptr %cur.i, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %conv617, ptr %121, align 4
  %conv736 = trunc i64 %virtual to i32
  %123 = load ptr, ptr %cur.i, align 4
  %124 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %seg.i, align 8
  %cmp741.not = icmp ult ptr %123, %125
  br i1 %cmp741.not, label %if.end686.if.end766_crit_edge, label %do.end760, !prof !34

if.end686.if.end766_crit_edge:                    ; preds = %if.end686
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end766

do.end760:                                        ; preds = %if.end686
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 52, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end766

if.end766:                                        ; preds = %do.end760, %if.end686.if.end766_crit_edge
  %126 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %cur.i, align 4
  %128 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %end.i, align 4
  %cmp780.not = icmp ult ptr %127, %129
  br i1 %cmp780.not, label %if.end766.if.end805_crit_edge, label %do.end799, !prof !34

if.end766.if.end805_crit_edge:                    ; preds = %if.end766
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end805

do.end799:                                        ; preds = %if.end766
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 52, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  br label %if.end805

if.end805:                                        ; preds = %do.end799, %if.end766.if.end805_crit_edge
  %130 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %cur.i, align 4
  %132 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast823 = ptrtoint ptr %131 to i32
  %sub.ptr.rhs.cast824 = ptrtoint ptr %133 to i32
  %sub.ptr.sub825 = sub i32 %sub.ptr.lhs.cast823, %sub.ptr.rhs.cast824
  %134 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %mem, align 8
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %137, align 4
  %140 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %client, align 4
  %name837 = getelementptr inbounds %struct.nvif_object, ptr %141, i32 0, i32 2
  %142 = ptrtoint ptr %name837 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %name837, align 8
  %144 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %handle, align 4
  %146 = ptrtoint ptr %name162 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %name162, align 8
  tail call void (ptr, ptr, ...) %139(ptr noundef %mem, ptr noundef nonnull @.str.14, ptr noundef %143, i32 noundef %145, ptr noundef %147, i32 noundef %sub.ptr.sub825, i32 noundef %conv736) #5
  %148 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %cur.i, align 4
  %incdec.ptr846 = getelementptr i32, ptr %149, i32 1
  store ptr %incdec.ptr846, ptr %cur.i, align 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %conv736, ptr %149, align 4
  %151 = load ptr, ptr %cur.i, align 4
  %152 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %seg.i, align 8
  %cmp858.not = icmp ult ptr %151, %153
  br i1 %cmp858.not, label %if.end805.if.end883_crit_edge, label %do.end877, !prof !34

if.end805.if.end883_crit_edge:                    ; preds = %if.end805
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end883

do.end877:                                        ; preds = %if.end805
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 52, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end883

if.end883:                                        ; preds = %do.end877, %if.end805.if.end883_crit_edge
  %154 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %cur.i, align 4
  %156 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %end.i, align 4
  %cmp897.not = icmp ult ptr %155, %157
  br i1 %cmp897.not, label %if.end883.if.end922_crit_edge, label %do.end916, !prof !34

if.end883.if.end922_crit_edge:                    ; preds = %if.end883
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end922

do.end916:                                        ; preds = %if.end883
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 52, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  br label %if.end922

if.end922:                                        ; preds = %do.end916, %if.end883.if.end922_crit_edge
  %158 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %cur.i, align 4
  %160 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast940 = ptrtoint ptr %159 to i32
  %sub.ptr.rhs.cast941 = ptrtoint ptr %161 to i32
  %sub.ptr.sub942 = sub i32 %sub.ptr.lhs.cast940, %sub.ptr.rhs.cast941
  %162 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %mem, align 8
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %163, align 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %165, align 4
  %168 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %client, align 4
  %name954 = getelementptr inbounds %struct.nvif_object, ptr %169, i32 0, i32 2
  %170 = ptrtoint ptr %name954 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %name954, align 8
  %172 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %handle, align 4
  %174 = ptrtoint ptr %name162 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %name162, align 8
  tail call void (ptr, ptr, ...) %167(ptr noundef %mem, ptr noundef nonnull @.str.15, ptr noundef %171, i32 noundef %173, ptr noundef %175, i32 noundef %sub.ptr.sub942, i32 noundef %sequence) #5
  %176 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %cur.i, align 4
  %incdec.ptr963 = getelementptr i32, ptr %177, i32 1
  store ptr %incdec.ptr963, ptr %cur.i, align 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %sequence, ptr %177, align 4
  %179 = load ptr, ptr %cur.i, align 4
  %180 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %seg.i, align 8
  %cmp975.not = icmp ult ptr %179, %181
  br i1 %cmp975.not, label %if.end922.if.end1000_crit_edge, label %do.end994, !prof !34

if.end922.if.end1000_crit_edge:                   ; preds = %if.end922
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1000

do.end994:                                        ; preds = %if.end922
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 52, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end1000

if.end1000:                                       ; preds = %do.end994, %if.end922.if.end1000_crit_edge
  %182 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %cur.i, align 4
  %184 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %end.i, align 4
  %cmp1014.not = icmp ult ptr %183, %185
  br i1 %cmp1014.not, label %if.end1000.if.end1039_crit_edge, label %do.end1033, !prof !34

if.end1000.if.end1039_crit_edge:                  ; preds = %if.end1000
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1039

do.end1033:                                       ; preds = %if.end1000
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 52, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  br label %if.end1039

if.end1039:                                       ; preds = %do.end1033, %if.end1000.if.end1039_crit_edge
  %186 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %cur.i, align 4
  %188 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1057 = ptrtoint ptr %187 to i32
  %sub.ptr.rhs.cast1058 = ptrtoint ptr %189 to i32
  %sub.ptr.sub1059 = sub i32 %sub.ptr.lhs.cast1057, %sub.ptr.rhs.cast1058
  %190 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %mem, align 8
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %191, align 4
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %193, align 4
  %196 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %client, align 4
  %name1071 = getelementptr inbounds %struct.nvif_object, ptr %197, i32 0, i32 2
  %198 = ptrtoint ptr %name1071 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %name1071, align 8
  %200 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %handle, align 4
  %202 = ptrtoint ptr %name162 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %name162, align 8
  tail call void (ptr, ptr, ...) %195(ptr noundef %mem, ptr noundef nonnull @.str.16, ptr noundef %199, i32 noundef %201, ptr noundef %203, i32 noundef %sub.ptr.sub1059, i32 noundef 2) #5
  %204 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1080 = getelementptr i32, ptr %205, i32 1
  store ptr %incdec.ptr1080, ptr %cur.i, align 4
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 2, ptr %205, align 4
  %207 = load ptr, ptr %cur.i, align 4
  %208 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %seg.i, align 8
  %cmp1092.not = icmp ult ptr %207, %209
  br i1 %cmp1092.not, label %if.end1039.if.end1117_crit_edge, label %do.end1111, !prof !34

if.end1039.if.end1117_crit_edge:                  ; preds = %if.end1039
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1117

do.end1111:                                       ; preds = %if.end1039
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 52, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end1117

if.end1117:                                       ; preds = %do.end1111, %if.end1039.if.end1117_crit_edge
  %210 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %cur.i, align 4
  %212 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %end.i, align 4
  %cmp1131.not = icmp ult ptr %211, %213
  br i1 %cmp1131.not, label %if.end1117.if.end1156_crit_edge, label %do.end1150, !prof !34

if.end1117.if.end1156_crit_edge:                  ; preds = %if.end1117
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1156

do.end1150:                                       ; preds = %if.end1117
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 52, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  br label %if.end1156

if.end1156:                                       ; preds = %do.end1150, %if.end1117.if.end1156_crit_edge
  %214 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %cur.i, align 4
  %216 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1174 = ptrtoint ptr %215 to i32
  %sub.ptr.rhs.cast1175 = ptrtoint ptr %217 to i32
  %sub.ptr.sub1176 = sub i32 %sub.ptr.lhs.cast1174, %sub.ptr.rhs.cast1175
  %218 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %mem, align 8
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %219, align 4
  %222 = ptrtoint ptr %221 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %221, align 4
  %224 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %client, align 4
  %name1188 = getelementptr inbounds %struct.nvif_object, ptr %225, i32 0, i32 2
  %226 = ptrtoint ptr %name1188 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %name1188, align 8
  %228 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %handle, align 4
  %230 = ptrtoint ptr %name162 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %name162, align 8
  tail call void (ptr, ptr, ...) %223(ptr noundef %mem, ptr noundef nonnull @.str.17, ptr noundef %227, i32 noundef %229, ptr noundef %231, i32 noundef %sub.ptr.sub1176, i32 noundef 0) #5
  %232 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1197 = getelementptr i32, ptr %233, i32 1
  store ptr %incdec.ptr1197, ptr %cur.i, align 4
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 0, ptr %233, align 4
  %kick.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 1
  %235 = ptrtoint ptr %kick.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %kick.i, align 4
  tail call void %236(ptr noundef %1) #5
  br label %if.end1203

if.end1203:                                       ; preds = %if.end1156, %if.then.i.if.end1203_crit_edge
  %retval.1.i1348 = phi i32 [ 0, %if.end1156 ], [ %call.i, %if.then.i.if.end1203_crit_edge ]
  ret i32 %retval.1.i1348
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv84_fence_sync32(ptr nocapture noundef readonly %chan, i64 noundef %virtual, i32 noundef %sequence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %push2 = getelementptr inbounds %struct.anon, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %push2, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %3, i32 7
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %5
  br i1 %cmp.not.i, label %entry.if.end71_crit_edge, label %if.then.i

entry.if.end71_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end71_crit_edge, label %if.then.i.if.end1056_crit_edge

if.then.i.if.end1056_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1056

if.then.i.if.end71_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

if.end71:                                         ; preds = %if.then.i.if.end71_crit_edge, %entry.if.end71_crit_edge
  %8 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %9, i32 7
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp84.not = icmp ult ptr %9, %add.ptr4.i
  br i1 %cmp84.not, label %if.end71.if.end108_crit_edge, label %do.end102, !prof !34

if.end71.if.end108_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end108

do.end102:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end108

if.end108:                                        ; preds = %do.end102, %if.end71.if.end108_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp121.not = icmp ult ptr %12, %14
  br i1 %cmp121.not, label %if.end108.if.end145_crit_edge, label %do.end139, !prof !34

if.end108.if.end145_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end145

do.end139:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  br label %if.end145

if.end145:                                        ; preds = %do.end139, %if.end108.if.end145_crit_edge
  %15 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cur.i, align 4
  %mem = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 6
  %17 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %18 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %19 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mem, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %client = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 1
  %25 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %client, align 4
  %name = getelementptr inbounds %struct.nvif_object, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 3
  %29 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %handle, align 4
  %name162 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 2
  %31 = ptrtoint ptr %name162 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name162, align 8
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.7, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 262240, i32 noundef 0, i32 noundef 96, i32 noundef 1, ptr noundef nonnull @__func__.nv84_fence_sync32) #5
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 262240, ptr %34, align 4
  %handle175 = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 7, i32 3
  %36 = ptrtoint ptr %handle175 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %handle175, align 4
  %38 = load ptr, ptr %cur.i, align 4
  %39 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %seg.i, align 8
  %cmp180.not = icmp ult ptr %38, %40
  br i1 %cmp180.not, label %if.end145.if.end204_crit_edge, label %do.end198, !prof !34

if.end145.if.end204_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end204

do.end198:                                        ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end204

if.end204:                                        ; preds = %do.end198, %if.end145.if.end204_crit_edge
  %41 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cur.i, align 4
  %43 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %end.i, align 4
  %cmp218.not = icmp ult ptr %42, %44
  br i1 %cmp218.not, label %if.end204.if.end242_crit_edge, label %do.end236, !prof !34

if.end204.if.end242_crit_edge:                    ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end242

do.end236:                                        ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  br label %if.end242

if.end242:                                        ; preds = %do.end236, %if.end204.if.end242_crit_edge
  %45 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cur.i, align 4
  %47 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast260 = ptrtoint ptr %46 to i32
  %sub.ptr.rhs.cast261 = ptrtoint ptr %48 to i32
  %sub.ptr.sub262 = sub i32 %sub.ptr.lhs.cast260, %sub.ptr.rhs.cast261
  %49 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mem, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %55 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %client, align 4
  %name274 = getelementptr inbounds %struct.nvif_object, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %name274 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name274, align 8
  %59 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %handle, align 4
  %61 = ptrtoint ptr %name162 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %name162, align 8
  tail call void (ptr, ptr, ...) %54(ptr noundef %mem, ptr noundef nonnull @.str.8, ptr noundef %58, i32 noundef %60, ptr noundef %62, i32 noundef %sub.ptr.sub262, i32 noundef %37) #5
  %63 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cur.i, align 4
  %incdec.ptr283 = getelementptr i32, ptr %64, i32 1
  store ptr %incdec.ptr283, ptr %cur.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %37, ptr %64, align 4
  %66 = load ptr, ptr %cur.i, align 4
  %67 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %seg.i, align 8
  %cmp474.not = icmp ult ptr %66, %68
  br i1 %cmp474.not, label %if.end242.if.end498_crit_edge, label %do.end492, !prof !34

if.end242.if.end498_crit_edge:                    ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end498

do.end492:                                        ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 73, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end498

if.end498:                                        ; preds = %do.end492, %if.end242.if.end498_crit_edge
  %69 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cur.i, align 4
  %71 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %end.i, align 4
  %cmp512.not = icmp ult ptr %70, %72
  br i1 %cmp512.not, label %if.end498.if.end536_crit_edge, label %do.end530, !prof !34

if.end498.if.end536_crit_edge:                    ; preds = %if.end498
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end536

do.end530:                                        ; preds = %if.end498
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 73, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  br label %if.end536

if.end536:                                        ; preds = %do.end530, %if.end498.if.end536_crit_edge
  %73 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cur.i, align 4
  %75 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast554 = ptrtoint ptr %74 to i32
  %sub.ptr.rhs.cast555 = ptrtoint ptr %76 to i32
  %sub.ptr.sub556 = sub i32 %sub.ptr.lhs.cast554, %sub.ptr.rhs.cast555
  %77 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mem, align 8
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %83 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %client, align 4
  %name568 = getelementptr inbounds %struct.nvif_object, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %name568 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %name568, align 8
  %87 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %handle, align 4
  %89 = ptrtoint ptr %name162 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %name162, align 8
  tail call void (ptr, ptr, ...) %82(ptr noundef %mem, ptr noundef nonnull @.str.7, ptr noundef %86, i32 noundef %88, ptr noundef %90, i32 noundef %sub.ptr.sub556, i32 noundef 1048592, i32 noundef 0, i32 noundef 16, i32 noundef 4, ptr noundef nonnull @__func__.nv84_fence_sync32) #5
  %91 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cur.i, align 4
  %incdec.ptr577 = getelementptr i32, ptr %92, i32 1
  store ptr %incdec.ptr577, ptr %cur.i, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1048592, ptr %92, align 4
  %shr = lshr i64 %virtual, 32
  %94 = trunc i64 %shr to i32
  %conv587 = and i32 %94, 255
  %95 = load ptr, ptr %cur.i, align 4
  %96 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %seg.i, align 8
  %cmp592.not = icmp ult ptr %95, %97
  br i1 %cmp592.not, label %if.end536.if.end617_crit_edge, label %do.end611, !prof !34

if.end536.if.end617_crit_edge:                    ; preds = %if.end536
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end617

do.end611:                                        ; preds = %if.end536
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 73, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end617

if.end617:                                        ; preds = %do.end611, %if.end536.if.end617_crit_edge
  %98 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cur.i, align 4
  %100 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %end.i, align 4
  %cmp631.not = icmp ult ptr %99, %101
  br i1 %cmp631.not, label %if.end617.if.end656_crit_edge, label %do.end650, !prof !34

if.end617.if.end656_crit_edge:                    ; preds = %if.end617
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end656

do.end650:                                        ; preds = %if.end617
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 73, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  br label %if.end656

if.end656:                                        ; preds = %do.end650, %if.end617.if.end656_crit_edge
  %102 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %cur.i, align 4
  %104 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast674 = ptrtoint ptr %103 to i32
  %sub.ptr.rhs.cast675 = ptrtoint ptr %105 to i32
  %sub.ptr.sub676 = sub i32 %sub.ptr.lhs.cast674, %sub.ptr.rhs.cast675
  %106 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mem, align 8
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 4
  %112 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %client, align 4
  %name688 = getelementptr inbounds %struct.nvif_object, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %name688 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %name688, align 8
  %116 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %handle, align 4
  %118 = ptrtoint ptr %name162 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %name162, align 8
  tail call void (ptr, ptr, ...) %111(ptr noundef %mem, ptr noundef nonnull @.str.13, ptr noundef %115, i32 noundef %117, ptr noundef %119, i32 noundef %sub.ptr.sub676, i32 noundef %conv587) #5
  %120 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %cur.i, align 4
  %incdec.ptr697 = getelementptr i32, ptr %121, i32 1
  store ptr %incdec.ptr697, ptr %cur.i, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %conv587, ptr %121, align 4
  %conv706 = trunc i64 %virtual to i32
  %123 = load ptr, ptr %cur.i, align 4
  %124 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %seg.i, align 8
  %cmp711.not = icmp ult ptr %123, %125
  br i1 %cmp711.not, label %if.end656.if.end736_crit_edge, label %do.end730, !prof !34

if.end656.if.end736_crit_edge:                    ; preds = %if.end656
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end736

do.end730:                                        ; preds = %if.end656
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 73, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end736

if.end736:                                        ; preds = %do.end730, %if.end656.if.end736_crit_edge
  %126 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %cur.i, align 4
  %128 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %end.i, align 4
  %cmp750.not = icmp ult ptr %127, %129
  br i1 %cmp750.not, label %if.end736.if.end775_crit_edge, label %do.end769, !prof !34

if.end736.if.end775_crit_edge:                    ; preds = %if.end736
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end775

do.end769:                                        ; preds = %if.end736
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 73, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  br label %if.end775

if.end775:                                        ; preds = %do.end769, %if.end736.if.end775_crit_edge
  %130 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %cur.i, align 4
  %132 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast793 = ptrtoint ptr %131 to i32
  %sub.ptr.rhs.cast794 = ptrtoint ptr %133 to i32
  %sub.ptr.sub795 = sub i32 %sub.ptr.lhs.cast793, %sub.ptr.rhs.cast794
  %134 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %mem, align 8
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %137, align 4
  %140 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %client, align 4
  %name807 = getelementptr inbounds %struct.nvif_object, ptr %141, i32 0, i32 2
  %142 = ptrtoint ptr %name807 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %name807, align 8
  %144 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %handle, align 4
  %146 = ptrtoint ptr %name162 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %name162, align 8
  tail call void (ptr, ptr, ...) %139(ptr noundef %mem, ptr noundef nonnull @.str.14, ptr noundef %143, i32 noundef %145, ptr noundef %147, i32 noundef %sub.ptr.sub795, i32 noundef %conv706) #5
  %148 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %cur.i, align 4
  %incdec.ptr816 = getelementptr i32, ptr %149, i32 1
  store ptr %incdec.ptr816, ptr %cur.i, align 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %conv706, ptr %149, align 4
  %151 = load ptr, ptr %cur.i, align 4
  %152 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %seg.i, align 8
  %cmp828.not = icmp ult ptr %151, %153
  br i1 %cmp828.not, label %if.end775.if.end853_crit_edge, label %do.end847, !prof !34

if.end775.if.end853_crit_edge:                    ; preds = %if.end775
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end853

do.end847:                                        ; preds = %if.end775
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 73, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end853

if.end853:                                        ; preds = %do.end847, %if.end775.if.end853_crit_edge
  %154 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %cur.i, align 4
  %156 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %end.i, align 4
  %cmp867.not = icmp ult ptr %155, %157
  br i1 %cmp867.not, label %if.end853.if.end892_crit_edge, label %do.end886, !prof !34

if.end853.if.end892_crit_edge:                    ; preds = %if.end853
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end892

do.end886:                                        ; preds = %if.end853
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 73, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  br label %if.end892

if.end892:                                        ; preds = %do.end886, %if.end853.if.end892_crit_edge
  %158 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %cur.i, align 4
  %160 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast910 = ptrtoint ptr %159 to i32
  %sub.ptr.rhs.cast911 = ptrtoint ptr %161 to i32
  %sub.ptr.sub912 = sub i32 %sub.ptr.lhs.cast910, %sub.ptr.rhs.cast911
  %162 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %mem, align 8
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %163, align 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %165, align 4
  %168 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %client, align 4
  %name924 = getelementptr inbounds %struct.nvif_object, ptr %169, i32 0, i32 2
  %170 = ptrtoint ptr %name924 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %name924, align 8
  %172 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %handle, align 4
  %174 = ptrtoint ptr %name162 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %name162, align 8
  tail call void (ptr, ptr, ...) %167(ptr noundef %mem, ptr noundef nonnull @.str.15, ptr noundef %171, i32 noundef %173, ptr noundef %175, i32 noundef %sub.ptr.sub912, i32 noundef %sequence) #5
  %176 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %cur.i, align 4
  %incdec.ptr933 = getelementptr i32, ptr %177, i32 1
  store ptr %incdec.ptr933, ptr %cur.i, align 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %sequence, ptr %177, align 4
  %179 = load ptr, ptr %cur.i, align 4
  %180 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %seg.i, align 8
  %cmp945.not = icmp ult ptr %179, %181
  br i1 %cmp945.not, label %if.end892.if.end970_crit_edge, label %do.end964, !prof !34

if.end892.if.end970_crit_edge:                    ; preds = %if.end892
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end970

do.end964:                                        ; preds = %if.end892
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 73, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %if.end970

if.end970:                                        ; preds = %do.end964, %if.end892.if.end970_crit_edge
  %182 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %cur.i, align 4
  %184 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %end.i, align 4
  %cmp984.not = icmp ult ptr %183, %185
  br i1 %cmp984.not, label %if.end970.if.end1009_crit_edge, label %do.end1003, !prof !34

if.end970.if.end1009_crit_edge:                   ; preds = %if.end970
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1009

do.end1003:                                       ; preds = %if.end970
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 73, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  br label %if.end1009

if.end1009:                                       ; preds = %do.end1003, %if.end970.if.end1009_crit_edge
  %186 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %cur.i, align 4
  %188 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1027 = ptrtoint ptr %187 to i32
  %sub.ptr.rhs.cast1028 = ptrtoint ptr %189 to i32
  %sub.ptr.sub1029 = sub i32 %sub.ptr.lhs.cast1027, %sub.ptr.rhs.cast1028
  %190 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %mem, align 8
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %191, align 4
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %193, align 4
  %196 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %client, align 4
  %name1041 = getelementptr inbounds %struct.nvif_object, ptr %197, i32 0, i32 2
  %198 = ptrtoint ptr %name1041 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %name1041, align 8
  %200 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %handle, align 4
  %202 = ptrtoint ptr %name162 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %name162, align 8
  tail call void (ptr, ptr, ...) %195(ptr noundef %mem, ptr noundef nonnull @.str.16, ptr noundef %199, i32 noundef %201, ptr noundef %203, i32 noundef %sub.ptr.sub1029, i32 noundef 4) #5
  %204 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1050 = getelementptr i32, ptr %205, i32 1
  store ptr %incdec.ptr1050, ptr %cur.i, align 4
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 4, ptr %205, align 4
  %kick.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 1
  %207 = ptrtoint ptr %kick.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %kick.i, align 4
  tail call void %208(ptr noundef %1) #5
  br label %if.end1056

if.end1056:                                       ; preds = %if.end1009, %if.then.i.if.end1056_crit_edge
  %retval.1.i1184 = phi i32 [ 0, %if.end1009 ], [ %call.i, %if.then.i.if.end1056_crit_edge ]
  ret i32 %retval.1.i1184
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_vma_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv84_fence_context_del(ptr nocapture noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %drm = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drm, align 4
  %fence = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fence, align 8
  %fence1 = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 12
  %4 = ptrtoint ptr %fence1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fence1, align 4
  %bo = getelementptr inbounds %struct.nv84_fence_priv, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bo, align 4
  %chid = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 4
  %8 = ptrtoint ptr %chid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chid, align 4
  %mul = shl i32 %9, 4
  %div = sdiv i32 %mul, 4
  %sequence = getelementptr inbounds %struct.nouveau_fence_chan, ptr %5, i32 0, i32 9
  %10 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sequence, align 4
  tail call void @nouveau_bo_wr32(ptr noundef %7, i32 noundef %div, i32 noundef %11) #5
  %mutex = getelementptr inbounds %struct.nv84_fence_priv, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %vma = getelementptr inbounds %struct.nv84_fence_chan, ptr %5, i32 0, i32 1
  tail call void @nouveau_vma_del(ptr noundef %vma) #5
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  tail call void @nouveau_fence_context_del(ptr noundef %5) #5
  %12 = ptrtoint ptr %fence1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %fence1, align 4
  tail call void @nouveau_fence_context_free(ptr noundef %5) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv84_fence_create(ptr noundef %drm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 124) #8
  %fence = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 10
  %1 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %fence, align 8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @nv84_fence_destroy, ptr %call7.i.i, align 8
  %suspend = getelementptr inbounds %struct.nouveau_fence_priv, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %suspend to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @nv84_fence_suspend, ptr %suspend, align 4
  %resume = getelementptr inbounds %struct.nouveau_fence_priv, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %resume to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @nv84_fence_resume, ptr %resume, align 8
  %context_new = getelementptr inbounds %struct.nouveau_fence_priv, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %context_new to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @nv84_fence_context_new, ptr %context_new, align 4
  %context_del = getelementptr inbounds %struct.nouveau_fence_priv, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %context_del to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @nv84_fence_context_del, ptr %context_del, align 8
  %client = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2
  %family = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 3, i32 1, i32 4
  %7 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %8)
  %cmp = icmp ult i8 %8, 13
  %uevent = getelementptr inbounds %struct.nouveau_fence_priv, ptr %call7.i.i, i32 0, i32 5
  %frombool = zext i1 %cmp to i8
  %9 = ptrtoint ptr %uevent to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool, ptr %uevent, align 4
  %mutex = getelementptr inbounds %struct.nv84_fence_priv, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str, ptr noundef nonnull @nv84_fence_create.__key) #5
  %ram_size = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 3, i32 1, i32 6
  %10 = ptrtoint ptr %ram_size to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ram_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %cmp10.not = icmp eq i64 %11, 0
  %cond = select i1 %cmp10.not, i32 20, i32 2
  %chan = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 11
  %12 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chan, align 8
  %mul = shl i32 %13, 4
  %conv13 = sext i32 %mul to i64
  %bo = getelementptr inbounds %struct.nv84_fence_priv, ptr %call7.i.i, i32 0, i32 1
  %call14 = tail call i32 @nouveau_bo_new(ptr noundef %client, i64 noundef %conv13, i32 noundef 0, i32 noundef %cond, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef %bo) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.end.if.then38_crit_edge

if.end.if.then38_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then38

if.then17:                                        ; preds = %if.end
  %14 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bo, align 8
  %call19 = tail call i32 @nouveau_bo_pin(ptr noundef %15, i32 noundef %cond, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then22, label %if.then17.if.then32_crit_edge

if.then17.if.then32_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then32

if.then22:                                        ; preds = %if.then17
  %16 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bo, align 8
  %call24 = tail call i32 @nouveau_bo_map(ptr noundef %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then22.cleanup_crit_edge, label %if.then26

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then26:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bo, align 8
  %call28 = tail call i32 @nouveau_bo_unpin(ptr noundef %19) #5
  br label %if.then32

if.then32:                                        ; preds = %if.then26, %if.then17.if.then32_crit_edge
  %ret.0.ph = phi i32 [ %call19, %if.then17.if.then32_crit_edge ], [ %call24, %if.then26 ]
  %tobool.not.i = icmp eq ptr %bo, null
  br i1 %tobool.not.i, label %if.then32.if.then38_crit_edge, label %if.end.i

if.then32.if.then38_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then38

if.end.i:                                         ; preds = %if.then32
  %20 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bo, align 8
  store ptr null, ptr %bo, align 8
  %tobool5.not.i = icmp eq ptr %21, null
  br i1 %tobool5.not.i, label %if.end.i.if.then38_crit_edge, label %if.then6.i

if.end.i.if.then38_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then38

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ttm_bo_put(ptr noundef nonnull %21) #5
  br label %if.then38

if.then38:                                        ; preds = %if.then6.i, %if.end.i.if.then38_crit_edge, %if.then32.if.then38_crit_edge, %if.end.if.then38_crit_edge
  %ret.1.ph = phi i32 [ %ret.0.ph, %if.then6.i ], [ %ret.0.ph, %if.end.i.if.then38_crit_edge ], [ %ret.0.ph, %if.then32.if.then38_crit_edge ], [ %call14, %if.end.if.then38_crit_edge ]
  %22 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fence, align 8
  %bo.i = getelementptr inbounds %struct.nv84_fence_priv, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %bo.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bo.i, align 4
  tail call void @nouveau_bo_unmap(ptr noundef %25) #5
  %26 = ptrtoint ptr %bo.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bo.i, align 4
  %tobool.not.i65 = icmp eq ptr %27, null
  br i1 %tobool.not.i65, label %if.end.i66.thread, label %if.end.i66

if.end.i66.thread:                                ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %bo.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %bo.i, align 4
  br label %nv84_fence_destroy.exit

if.end.i66:                                       ; preds = %if.then38
  %call.i = tail call i32 @nouveau_bo_unpin(ptr noundef nonnull %27) #5
  %29 = ptrtoint ptr %bo.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pr = load ptr, ptr %bo.i, align 4
  store ptr null, ptr %bo.i, align 4
  %tobool5.not.i.i = icmp eq ptr %.pr, null
  br i1 %tobool5.not.i.i, label %if.end.i66.nv84_fence_destroy.exit_crit_edge, label %if.then6.i.i

if.end.i66.nv84_fence_destroy.exit_crit_edge:     ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv84_fence_destroy.exit

if.then6.i.i:                                     ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ttm_bo_put(ptr noundef nonnull %.pr) #5
  br label %nv84_fence_destroy.exit

nv84_fence_destroy.exit:                          ; preds = %if.then6.i.i, %if.end.i66.nv84_fence_destroy.exit_crit_edge, %if.end.i66.thread
  %30 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %fence, align 8
  tail call void @kfree(ptr noundef %23) #5
  br label %cleanup

cleanup:                                          ; preds = %nv84_fence_destroy.exit, %if.then22.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %ret.1.ph, %nv84_fence_destroy.exit ], [ 0, %if.then22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv84_fence_destroy(ptr nocapture noundef %drm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fence = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 10
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fence, align 8
  %bo = getelementptr inbounds %struct.nv84_fence_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bo, align 4
  tail call void @nouveau_bo_unmap(ptr noundef %3) #5
  %4 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bo, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @nouveau_bo_unpin(ptr noundef nonnull %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool.not.i = icmp eq ptr %bo, null
  br i1 %tobool.not.i, label %if.end.nouveau_bo_ref.exit_crit_edge, label %if.end.i

if.end.nouveau_bo_ref.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %nouveau_bo_ref.exit

if.end.i:                                         ; preds = %if.end
  %6 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bo, align 4
  store ptr null, ptr %bo, align 4
  %tobool5.not.i = icmp eq ptr %7, null
  br i1 %tobool5.not.i, label %if.end.i.nouveau_bo_ref.exit_crit_edge, label %if.then6.i

if.end.i.nouveau_bo_ref.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nouveau_bo_ref.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ttm_bo_put(ptr noundef nonnull %7) #5
  br label %nouveau_bo_ref.exit

nouveau_bo_ref.exit:                              ; preds = %if.then6.i, %if.end.i.nouveau_bo_ref.exit_crit_edge, %if.end.nouveau_bo_ref.exit_crit_edge
  %8 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %fence, align 8
  tail call void @kfree(ptr noundef %1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nv84_fence_suspend(ptr nocapture noundef readonly %drm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fence = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 10
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fence, align 8
  %chan = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 11
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 8
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 4) #5
  %5 = extractvalue { i32, i1 } %4, 1
  %6 = extractvalue { i32, i1 } %4, 0
  %retval.0.i = select i1 %5, i32 -1, i32 %6
  %call1 = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i) #9
  %suspend = getelementptr inbounds %struct.nv84_fence_priv, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %suspend to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1, ptr %suspend, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %8 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chan, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp18 = icmp sgt i32 %9, 0
  br i1 %cmp18, label %for.body.lr.ph, label %for.cond.preheader.if.end_crit_edge

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %bo = getelementptr inbounds %struct.nv84_fence_priv, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.019 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %10 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bo, align 4
  %mul = shl i32 %i.019, 2
  %call5 = tail call i32 @nouveau_bo_rd32(ptr noundef %11, i32 noundef %mul) #5
  %12 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %suspend, align 4
  %arrayidx = getelementptr i32, ptr %13, i32 %i.019
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call5, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.019, 1
  %15 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %chan, align 8
  %cmp = icmp slt i32 %inc, %16
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  %17 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %suspend, align 4
  %cmp8 = icmp ne ptr %18, null
  ret i1 %cmp8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv84_fence_resume(ptr nocapture noundef readonly %drm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fence = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 10
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fence, align 8
  %suspend = getelementptr inbounds %struct.nv84_fence_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %suspend, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %chan = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 11
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chan, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp12 = icmp sgt i32 %5, 0
  br i1 %cmp12, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %bo = getelementptr inbounds %struct.nv84_fence_priv, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bo, align 4
  %mul = shl i32 %i.013, 2
  %8 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %suspend, align 4
  %arrayidx = getelementptr i32, ptr %9, i32 %i.013
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  tail call void @nouveau_bo_wr32(ptr noundef %7, i32 noundef %mul, i32 noundef %11) #5
  %inc = add nuw nsw i32 %i.013, 1
  %12 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chan, align 8
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %14 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %suspend, align 4
  tail call void @vfree(ptr noundef %15) #5
  %16 = ptrtoint ptr %suspend to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %suspend, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_new(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_pin(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_map(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_unpin(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_rd32(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_wr32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_vma_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_fence_context_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_fence_context_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_unmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !11, !12, !13, !15, !16, !17, !18, !19, !20, !21, !22, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @nv84_fence_create.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nv84_fence.c", i32 209, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/nouveau/nv84_fence.c", i32 41, i32 3}
!5 = distinct !{null, !4, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !4, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !4, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.7, !4, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__func__.nv84_fence_emit32, !4, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !4, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/nouveau/nv84_fence.c", i32 43, i32 3}
!15 = distinct !{null, !14, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !14, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.13, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.14, !14, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.15, !14, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.16, !14, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.17, !14, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @__func__.nv84_fence_sync32, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/nouveau/nv84_fence.c", i32 64, i32 3}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{!"branch_weights", i32 2000, i32 1}
