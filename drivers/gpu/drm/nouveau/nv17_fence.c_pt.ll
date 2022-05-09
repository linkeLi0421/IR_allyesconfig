; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nv17_fence.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nv17_fence.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nouveau_channel = type { %struct.anon.3, ptr, ptr, ptr, i32, i64, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.anon.113, i8, ptr, %struct.anon.114, i32, i32, i32, %struct.nvif_object, %struct.nvif_notify, %struct.atomic_t }
%struct.anon.3 = type { %struct.nvif_push, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.anon.113 = type { ptr, ptr, %struct.nvif_object, i64 }
%struct.anon.114 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.4 }
%struct.anon.4 = type { ptr, i64 }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.95, %struct.anon.96, %struct.anon.98, ptr, %struct.anon.99, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.100, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.112 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.95 = type { ptr, i32, i32, i8 }
%struct.anon.96 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.97] }
%struct.anon.97 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.98 = type { i64, i64 }
%struct.anon.99 = type { i32, i64 }
%struct.anon.100 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.107, %struct.anon.108, %struct.anon.109, %struct.anon.110 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.101, i8 }
%union.anon.101 = type { %struct.anon.105 }
%struct.anon.105 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.107 = type { i32 }
%struct.anon.108 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.109 = type { i16, i16 }
%struct.anon.110 = type { i16, i16, i16, %struct.anon.111, i16 }
%struct.anon.111 = type { i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.112 = type { ptr, %struct.mutex, i8 }
%struct.nv10_fence_priv = type { %struct.nouveau_fence_priv, ptr, %struct.spinlock, i32 }
%struct.nouveau_fence_priv = type { ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nv10_fence_chan = type { %struct.nouveau_fence_chan, %struct.nvif_object }
%struct.nouveau_fence_chan = type { %struct.spinlock, %struct.kref, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, [32 x i8], %struct.nvif_notify, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nv_dma_v0 = type { i8, i8, i8, [5 x i8], i64, i64 }
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

@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/nouveau/nv17_fence.c\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segment overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pushbuf overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[%s/%08x:%s] %08x: %08x incr subc %d mthd 0x%04x size %d - %s\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.nv17_fence_sync = private unnamed_addr constant [16 x i8] c"nv17_fence_sync\00", align 1
@.str.10 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"[%s/%08x:%s] %08x: %08x-> NV176E_SET_CONTEXT_DMA_SEMAPHORE\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[%s/%08x:%s] %08x: %08x-> NV176E_SEMAPHORE_OFFSET\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"[%s/%08x:%s] %08x: %08x-> NV176E_SEMAPHORE_ACQUIRE\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"[%s/%08x:%s] %08x: %08x-> NV176E_SEMAPHORE_RELEASE\0A\00", [44 x i8] zeroinitializer }, align 32
@nv17_fence_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fenceCtxDma\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 57, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 131, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private constant [40 x i8] c"../drivers/gpu/drm/nouveau/nv17_fence.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 95, i32 38 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @.str, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @nv17_fence_create.__key, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv17_fence_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv17_fence_sync(ptr nocapture readnone %fence, ptr nocapture noundef readonly %prev, ptr nocapture noundef readonly %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.nouveau_channel, ptr %prev, i32 0, i32 17, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %drm = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 2
  %2 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drm, align 4
  %fence1 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %fence1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fence1, align 8
  %fence2 = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 12
  %6 = ptrtoint ptr %fence2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fence2, align 4
  %push = getelementptr inbounds %struct.anon.3, ptr %prev, i32 0, i32 1
  %8 = ptrtoint ptr %push to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %push, align 8
  %push5 = getelementptr inbounds %struct.anon.3, ptr %chan, i32 0, i32 1
  %10 = ptrtoint ptr %push5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %push5, align 8
  %mutex = getelementptr inbounds %struct.nouveau_cli, ptr %1, i32 0, i32 2
  %call = tail call i32 @mutex_trylock(ptr noundef %mutex) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.nv10_fence_priv, ptr %5, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #3
  %sequence = getelementptr inbounds %struct.nv10_fence_priv, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sequence, align 4
  %add = add i32 %13, 2
  store i32 %add, ptr %sequence, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #3
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 4
  %14 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %15, i32 5
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 6
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %17
  br i1 %cmp.not.i, label %if.end.if.end171_crit_edge, label %if.then.i

if.end.if.end171_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end171

if.then.i:                                        ; preds = %if.end
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %9, align 8
  %call.i = tail call i32 %19(ptr noundef %9, i32 noundef 5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end171_crit_edge, label %if.then.i.if.end1500_crit_edge

if.then.i.if.end1500_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1500

if.then.i.if.end171_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end171

if.end171:                                        ; preds = %if.then.i.if.end171_crit_edge, %if.end.if.end171_crit_edge
  %20 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %21, i32 5
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 5
  %22 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %21, %add.ptr4.i
  br i1 %cmp.not, label %if.end171.if.end207_crit_edge, label %do.end201, !prof !30

if.end171.if.end207_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end207

do.end201:                                        ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 60, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end207

if.end207:                                        ; preds = %do.end201, %if.end171.if.end207_crit_edge
  %23 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cur.i, align 4
  %25 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %end.i, align 4
  %cmp220.not = icmp ult ptr %24, %26
  br i1 %cmp220.not, label %if.end207.if.end244_crit_edge, label %do.end238, !prof !30

if.end207.if.end244_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end244

do.end238:                                        ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 60, i32 noundef 9, ptr noundef nonnull @.str.8) #3
  br label %if.end244

if.end244:                                        ; preds = %do.end238, %if.end207.if.end244_crit_edge
  %27 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cur.i, align 4
  %mem = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 2, i32 0, i32 6
  %29 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %28 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %30 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %31 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mem, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %client260 = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 2, i32 0, i32 1
  %37 = ptrtoint ptr %client260 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %client260, align 4
  %name = getelementptr inbounds %struct.nvif_object, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 2, i32 0, i32 3
  %41 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %handle, align 4
  %name262 = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 2, i32 0, i32 2
  %43 = ptrtoint ptr %name262 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name262, align 8
  tail call void (ptr, ptr, ...) %36(ptr noundef %mem, ptr noundef nonnull @.str.9, ptr noundef %40, i32 noundef %42, ptr noundef %44, i32 noundef %sub.ptr.sub, i32 noundef 1048672, i32 noundef 0, i32 noundef 96, i32 noundef 4, ptr noundef nonnull @__func__.nv17_fence_sync) #3
  %45 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %46, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1048672, ptr %46, align 4
  %handle275 = getelementptr inbounds %struct.nv10_fence_chan, ptr %7, i32 0, i32 1, i32 3
  %48 = ptrtoint ptr %handle275 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %handle275, align 4
  %50 = load ptr, ptr %cur.i, align 4
  %51 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %seg.i, align 8
  %cmp280.not = icmp ult ptr %50, %52
  br i1 %cmp280.not, label %if.end244.if.end304_crit_edge, label %do.end298, !prof !30

if.end244.if.end304_crit_edge:                    ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end304

do.end298:                                        ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 60, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end304

if.end304:                                        ; preds = %do.end298, %if.end244.if.end304_crit_edge
  %53 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cur.i, align 4
  %55 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %end.i, align 4
  %cmp318.not = icmp ult ptr %54, %56
  br i1 %cmp318.not, label %if.end304.if.end342_crit_edge, label %do.end336, !prof !30

if.end304.if.end342_crit_edge:                    ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end342

do.end336:                                        ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 60, i32 noundef 9, ptr noundef nonnull @.str.8) #3
  br label %if.end342

if.end342:                                        ; preds = %do.end336, %if.end304.if.end342_crit_edge
  %57 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cur.i, align 4
  %59 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast360 = ptrtoint ptr %58 to i32
  %sub.ptr.rhs.cast361 = ptrtoint ptr %60 to i32
  %sub.ptr.sub362 = sub i32 %sub.ptr.lhs.cast360, %sub.ptr.rhs.cast361
  %61 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mem, align 8
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %67 = ptrtoint ptr %client260 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %client260, align 4
  %name374 = getelementptr inbounds %struct.nvif_object, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %name374 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %name374, align 8
  %71 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %handle, align 4
  %73 = ptrtoint ptr %name262 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %name262, align 8
  tail call void (ptr, ptr, ...) %66(ptr noundef %mem, ptr noundef nonnull @.str.10, ptr noundef %70, i32 noundef %72, ptr noundef %74, i32 noundef %sub.ptr.sub362, i32 noundef %49) #3
  %75 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cur.i, align 4
  %incdec.ptr383 = getelementptr i32, ptr %76, i32 1
  store ptr %incdec.ptr383, ptr %cur.i, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %49, ptr %76, align 4
  %78 = load ptr, ptr %cur.i, align 4
  %79 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %seg.i, align 8
  %cmp395.not = icmp ult ptr %78, %80
  br i1 %cmp395.not, label %if.end342.if.end419_crit_edge, label %do.end413, !prof !30

if.end342.if.end419_crit_edge:                    ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end419

do.end413:                                        ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 60, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end419

if.end419:                                        ; preds = %do.end413, %if.end342.if.end419_crit_edge
  %81 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cur.i, align 4
  %83 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %end.i, align 4
  %cmp433.not = icmp ult ptr %82, %84
  br i1 %cmp433.not, label %if.end419.if.end457_crit_edge, label %do.end451, !prof !30

if.end419.if.end457_crit_edge:                    ; preds = %if.end419
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end457

do.end451:                                        ; preds = %if.end419
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 60, i32 noundef 9, ptr noundef nonnull @.str.8) #3
  br label %if.end457

if.end457:                                        ; preds = %do.end451, %if.end419.if.end457_crit_edge
  %85 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cur.i, align 4
  %87 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast475 = ptrtoint ptr %86 to i32
  %sub.ptr.rhs.cast476 = ptrtoint ptr %88 to i32
  %sub.ptr.sub477 = sub i32 %sub.ptr.lhs.cast475, %sub.ptr.rhs.cast476
  %89 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mem, align 8
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 4
  %95 = ptrtoint ptr %client260 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %client260, align 4
  %name489 = getelementptr inbounds %struct.nvif_object, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %name489 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %name489, align 8
  %99 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %handle, align 4
  %101 = ptrtoint ptr %name262 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %name262, align 8
  tail call void (ptr, ptr, ...) %94(ptr noundef %mem, ptr noundef nonnull @.str.11, ptr noundef %98, i32 noundef %100, ptr noundef %102, i32 noundef %sub.ptr.sub477, i32 noundef 0) #3
  %103 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %cur.i, align 4
  %incdec.ptr498 = getelementptr i32, ptr %104, i32 1
  store ptr %incdec.ptr498, ptr %cur.i, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %104, align 4
  %106 = load ptr, ptr %cur.i, align 4
  %107 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %seg.i, align 8
  %cmp511.not = icmp ult ptr %106, %108
  br i1 %cmp511.not, label %if.end457.if.end535_crit_edge, label %do.end529, !prof !30

if.end457.if.end535_crit_edge:                    ; preds = %if.end457
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end535

do.end529:                                        ; preds = %if.end457
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 60, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end535

if.end535:                                        ; preds = %do.end529, %if.end457.if.end535_crit_edge
  %109 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %cur.i, align 4
  %111 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %end.i, align 4
  %cmp549.not = icmp ult ptr %110, %112
  br i1 %cmp549.not, label %if.end535.if.end573_crit_edge, label %do.end567, !prof !30

if.end535.if.end573_crit_edge:                    ; preds = %if.end535
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end573

do.end567:                                        ; preds = %if.end535
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 60, i32 noundef 9, ptr noundef nonnull @.str.8) #3
  br label %if.end573

if.end573:                                        ; preds = %do.end567, %if.end535.if.end573_crit_edge
  %113 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cur.i, align 4
  %115 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast591 = ptrtoint ptr %114 to i32
  %sub.ptr.rhs.cast592 = ptrtoint ptr %116 to i32
  %sub.ptr.sub593 = sub i32 %sub.ptr.lhs.cast591, %sub.ptr.rhs.cast592
  %117 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mem, align 8
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %118, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %120, align 4
  %123 = ptrtoint ptr %client260 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %client260, align 4
  %name605 = getelementptr inbounds %struct.nvif_object, ptr %124, i32 0, i32 2
  %125 = ptrtoint ptr %name605 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %name605, align 8
  %127 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %handle, align 4
  %129 = ptrtoint ptr %name262 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %name262, align 8
  tail call void (ptr, ptr, ...) %122(ptr noundef %mem, ptr noundef nonnull @.str.12, ptr noundef %126, i32 noundef %128, ptr noundef %130, i32 noundef %sub.ptr.sub593, i32 noundef %13) #3
  %131 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %cur.i, align 4
  %incdec.ptr614 = getelementptr i32, ptr %132, i32 1
  store ptr %incdec.ptr614, ptr %cur.i, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %13, ptr %132, align 4
  %add622 = add i32 %13, 1
  %134 = load ptr, ptr %cur.i, align 4
  %135 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %seg.i, align 8
  %cmp627.not = icmp ult ptr %134, %136
  br i1 %cmp627.not, label %if.end573.if.end651_crit_edge, label %do.end645, !prof !30

if.end573.if.end651_crit_edge:                    ; preds = %if.end573
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end651

do.end645:                                        ; preds = %if.end573
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 60, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end651

if.end651:                                        ; preds = %do.end645, %if.end573.if.end651_crit_edge
  %137 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %cur.i, align 4
  %139 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %end.i, align 4
  %cmp665.not = icmp ult ptr %138, %140
  br i1 %cmp665.not, label %if.end651.land.lhs.true_crit_edge, label %do.end683, !prof !30

if.end651.land.lhs.true_crit_edge:                ; preds = %if.end651
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true

do.end683:                                        ; preds = %if.end651
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 60, i32 noundef 9, ptr noundef nonnull @.str.8) #3
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end683, %if.end651.land.lhs.true_crit_edge
  %141 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %cur.i, align 4
  %143 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast707 = ptrtoint ptr %142 to i32
  %sub.ptr.rhs.cast708 = ptrtoint ptr %144 to i32
  %sub.ptr.sub709 = sub i32 %sub.ptr.lhs.cast707, %sub.ptr.rhs.cast708
  %145 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %mem, align 8
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %146, align 4
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %148, align 4
  %151 = ptrtoint ptr %client260 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %client260, align 4
  %name721 = getelementptr inbounds %struct.nvif_object, ptr %152, i32 0, i32 2
  %153 = ptrtoint ptr %name721 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %name721, align 8
  %155 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %handle, align 4
  %157 = ptrtoint ptr %name262 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %name262, align 8
  tail call void (ptr, ptr, ...) %150(ptr noundef %mem, ptr noundef nonnull @.str.13, ptr noundef %154, i32 noundef %156, ptr noundef %158, i32 noundef %sub.ptr.sub709, i32 noundef %add622) #3
  %159 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %cur.i, align 4
  %incdec.ptr730 = getelementptr i32, ptr %160, i32 1
  store ptr %incdec.ptr730, ptr %cur.i, align 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %add622, ptr %160, align 4
  %kick.i = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 1
  %162 = ptrtoint ptr %kick.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %kick.i, align 4
  tail call void %163(ptr noundef %9) #3
  %cur.i1694 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 4
  %164 = ptrtoint ptr %cur.i1694 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %cur.i1694, align 4
  %add.ptr.i1695 = getelementptr i32, ptr %165, i32 5
  %end.i1696 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 6
  %166 = ptrtoint ptr %end.i1696 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %end.i1696, align 4
  %cmp.not.i1697 = icmp ult ptr %add.ptr.i1695, %167
  br i1 %cmp.not.i1697, label %land.lhs.true.if.end910_crit_edge, label %if.then.i1700

land.lhs.true.if.end910_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end910

if.then.i1700:                                    ; preds = %land.lhs.true
  %168 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %11, align 8
  %call.i1698 = tail call i32 %169(ptr noundef %11, i32 noundef 5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1698)
  %tobool.not.i1699 = icmp eq i32 %call.i1698, 0
  br i1 %tobool.not.i1699, label %if.then.i1700.if.end910_crit_edge, label %if.then.i1700.if.end1500_crit_edge

if.then.i1700.if.end1500_crit_edge:               ; preds = %if.then.i1700
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1500

if.then.i1700.if.end910_crit_edge:                ; preds = %if.then.i1700
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end910

if.end910:                                        ; preds = %if.then.i1700.if.end910_crit_edge, %land.lhs.true.if.end910_crit_edge
  %170 = ptrtoint ptr %cur.i1694 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %cur.i1694, align 4
  %add.ptr4.i1701 = getelementptr i32, ptr %171, i32 5
  %seg.i1702 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 5
  %172 = ptrtoint ptr %seg.i1702 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %add.ptr4.i1701, ptr %seg.i1702, align 8
  %cmp927.not = icmp ult ptr %171, %add.ptr4.i1701
  br i1 %cmp927.not, label %if.end910.if.end951_crit_edge, label %do.end945, !prof !30

if.end910.if.end951_crit_edge:                    ; preds = %if.end910
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end951

do.end945:                                        ; preds = %if.end910
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end951

if.end951:                                        ; preds = %do.end945, %if.end910.if.end951_crit_edge
  %173 = ptrtoint ptr %cur.i1694 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %cur.i1694, align 4
  %175 = ptrtoint ptr %end.i1696 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %end.i1696, align 4
  %cmp965.not = icmp ult ptr %174, %176
  br i1 %cmp965.not, label %if.end951.if.end989_crit_edge, label %do.end983, !prof !30

if.end951.if.end989_crit_edge:                    ; preds = %if.end951
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end989

do.end983:                                        ; preds = %if.end951
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.8) #3
  br label %if.end989

if.end989:                                        ; preds = %do.end983, %if.end951.if.end989_crit_edge
  %177 = ptrtoint ptr %cur.i1694 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %cur.i1694, align 4
  %mem1003 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2
  %map1005 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 6
  %179 = ptrtoint ptr %map1005 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %map1005, align 8
  %sub.ptr.lhs.cast1007 = ptrtoint ptr %178 to i32
  %sub.ptr.rhs.cast1008 = ptrtoint ptr %180 to i32
  %sub.ptr.sub1009 = sub i32 %sub.ptr.lhs.cast1007, %sub.ptr.rhs.cast1008
  %181 = ptrtoint ptr %mem1003 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %mem1003, align 8
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %182, align 4
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %184, align 4
  %client1019 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 1
  %187 = ptrtoint ptr %client1019 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %client1019, align 4
  %name1021 = getelementptr inbounds %struct.nvif_object, ptr %188, i32 0, i32 2
  %189 = ptrtoint ptr %name1021 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %name1021, align 8
  %handle1022 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 3
  %191 = ptrtoint ptr %handle1022 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %handle1022, align 4
  %name1023 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 2
  %193 = ptrtoint ptr %name1023 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %name1023, align 8
  tail call void (ptr, ptr, ...) %186(ptr noundef %mem1003, ptr noundef nonnull @.str.9, ptr noundef %190, i32 noundef %192, ptr noundef %194, i32 noundef %sub.ptr.sub1009, i32 noundef 1048672, i32 noundef 0, i32 noundef 96, i32 noundef 4, ptr noundef nonnull @__func__.nv17_fence_sync) #3
  %195 = ptrtoint ptr %cur.i1694 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %cur.i1694, align 4
  %incdec.ptr1030 = getelementptr i32, ptr %196, i32 1
  store ptr %incdec.ptr1030, ptr %cur.i1694, align 4
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 1048672, ptr %196, align 4
  %198 = ptrtoint ptr %handle275 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %handle275, align 4
  %200 = load ptr, ptr %cur.i1694, align 4
  %201 = ptrtoint ptr %seg.i1702 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %seg.i1702, align 8
  %cmp1044.not = icmp ult ptr %200, %202
  br i1 %cmp1044.not, label %if.end989.if.end1068_crit_edge, label %do.end1062, !prof !30

if.end989.if.end1068_crit_edge:                   ; preds = %if.end989
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1068

do.end1062:                                       ; preds = %if.end989
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end1068

if.end1068:                                       ; preds = %do.end1062, %if.end989.if.end1068_crit_edge
  %203 = ptrtoint ptr %cur.i1694 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %cur.i1694, align 4
  %205 = ptrtoint ptr %end.i1696 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %end.i1696, align 4
  %cmp1082.not = icmp ult ptr %204, %206
  br i1 %cmp1082.not, label %if.end1068.if.end1106_crit_edge, label %do.end1100, !prof !30

if.end1068.if.end1106_crit_edge:                  ; preds = %if.end1068
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1106

do.end1100:                                       ; preds = %if.end1068
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.8) #3
  br label %if.end1106

if.end1106:                                       ; preds = %do.end1100, %if.end1068.if.end1106_crit_edge
  %207 = ptrtoint ptr %cur.i1694 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %cur.i1694, align 4
  %209 = ptrtoint ptr %map1005 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %map1005, align 8
  %sub.ptr.lhs.cast1124 = ptrtoint ptr %208 to i32
  %sub.ptr.rhs.cast1125 = ptrtoint ptr %210 to i32
  %sub.ptr.sub1126 = sub i32 %sub.ptr.lhs.cast1124, %sub.ptr.rhs.cast1125
  %211 = ptrtoint ptr %mem1003 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %mem1003, align 8
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %212, align 4
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %214, align 4
  %217 = ptrtoint ptr %client1019 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %client1019, align 4
  %name1138 = getelementptr inbounds %struct.nvif_object, ptr %218, i32 0, i32 2
  %219 = ptrtoint ptr %name1138 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %name1138, align 8
  %221 = ptrtoint ptr %handle1022 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %handle1022, align 4
  %223 = ptrtoint ptr %name1023 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %name1023, align 8
  tail call void (ptr, ptr, ...) %216(ptr noundef %mem1003, ptr noundef nonnull @.str.10, ptr noundef %220, i32 noundef %222, ptr noundef %224, i32 noundef %sub.ptr.sub1126, i32 noundef %199) #3
  %225 = ptrtoint ptr %cur.i1694 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %cur.i1694, align 4
  %incdec.ptr1147 = getelementptr i32, ptr %226, i32 1
  store ptr %incdec.ptr1147, ptr %cur.i1694, align 4
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %199, ptr %226, align 4
  %228 = load ptr, ptr %cur.i1694, align 4
  %229 = ptrtoint ptr %seg.i1702 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %seg.i1702, align 8
  %cmp1159.not = icmp ult ptr %228, %230
  br i1 %cmp1159.not, label %if.end1106.if.end1183_crit_edge, label %do.end1177, !prof !30

if.end1106.if.end1183_crit_edge:                  ; preds = %if.end1106
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1183

do.end1177:                                       ; preds = %if.end1106
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end1183

if.end1183:                                       ; preds = %do.end1177, %if.end1106.if.end1183_crit_edge
  %231 = ptrtoint ptr %cur.i1694 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %cur.i1694, align 4
  %233 = ptrtoint ptr %end.i1696 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %end.i1696, align 4
  %cmp1197.not = icmp ult ptr %232, %234
  br i1 %cmp1197.not, label %if.end1183.if.end1221_crit_edge, label %do.end1215, !prof !30

if.end1183.if.end1221_crit_edge:                  ; preds = %if.end1183
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1221

do.end1215:                                       ; preds = %if.end1183
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.8) #3
  br label %if.end1221

if.end1221:                                       ; preds = %do.end1215, %if.end1183.if.end1221_crit_edge
  %235 = ptrtoint ptr %cur.i1694 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %cur.i1694, align 4
  %237 = ptrtoint ptr %map1005 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %map1005, align 8
  %sub.ptr.lhs.cast1239 = ptrtoint ptr %236 to i32
  %sub.ptr.rhs.cast1240 = ptrtoint ptr %238 to i32
  %sub.ptr.sub1241 = sub i32 %sub.ptr.lhs.cast1239, %sub.ptr.rhs.cast1240
  %239 = ptrtoint ptr %mem1003 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %mem1003, align 8
  %241 = ptrtoint ptr %240 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %240, align 4
  %243 = ptrtoint ptr %242 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %242, align 4
  %245 = ptrtoint ptr %client1019 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %client1019, align 4
  %name1253 = getelementptr inbounds %struct.nvif_object, ptr %246, i32 0, i32 2
  %247 = ptrtoint ptr %name1253 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %name1253, align 8
  %249 = ptrtoint ptr %handle1022 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %handle1022, align 4
  %251 = ptrtoint ptr %name1023 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %name1023, align 8
  tail call void (ptr, ptr, ...) %244(ptr noundef %mem1003, ptr noundef nonnull @.str.11, ptr noundef %248, i32 noundef %250, ptr noundef %252, i32 noundef %sub.ptr.sub1241, i32 noundef 0) #3
  %253 = ptrtoint ptr %cur.i1694 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %cur.i1694, align 4
  %incdec.ptr1262 = getelementptr i32, ptr %254, i32 1
  store ptr %incdec.ptr1262, ptr %cur.i1694, align 4
  %255 = ptrtoint ptr %254 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 0, ptr %254, align 4
  %256 = load ptr, ptr %cur.i1694, align 4
  %257 = ptrtoint ptr %seg.i1702 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %seg.i1702, align 8
  %cmp1275.not = icmp ult ptr %256, %258
  br i1 %cmp1275.not, label %if.end1221.if.end1299_crit_edge, label %do.end1293, !prof !30

if.end1221.if.end1299_crit_edge:                  ; preds = %if.end1221
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1299

do.end1293:                                       ; preds = %if.end1221
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end1299

if.end1299:                                       ; preds = %do.end1293, %if.end1221.if.end1299_crit_edge
  %259 = ptrtoint ptr %cur.i1694 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %cur.i1694, align 4
  %261 = ptrtoint ptr %end.i1696 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %end.i1696, align 4
  %cmp1313.not = icmp ult ptr %260, %262
  br i1 %cmp1313.not, label %if.end1299.if.end1337_crit_edge, label %do.end1331, !prof !30

if.end1299.if.end1337_crit_edge:                  ; preds = %if.end1299
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1337

do.end1331:                                       ; preds = %if.end1299
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.8) #3
  br label %if.end1337

if.end1337:                                       ; preds = %do.end1331, %if.end1299.if.end1337_crit_edge
  %263 = ptrtoint ptr %cur.i1694 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %cur.i1694, align 4
  %265 = ptrtoint ptr %map1005 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %map1005, align 8
  %sub.ptr.lhs.cast1355 = ptrtoint ptr %264 to i32
  %sub.ptr.rhs.cast1356 = ptrtoint ptr %266 to i32
  %sub.ptr.sub1357 = sub i32 %sub.ptr.lhs.cast1355, %sub.ptr.rhs.cast1356
  %267 = ptrtoint ptr %mem1003 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %mem1003, align 8
  %269 = ptrtoint ptr %268 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %268, align 4
  %271 = ptrtoint ptr %270 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %270, align 4
  %273 = ptrtoint ptr %client1019 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %client1019, align 4
  %name1369 = getelementptr inbounds %struct.nvif_object, ptr %274, i32 0, i32 2
  %275 = ptrtoint ptr %name1369 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %name1369, align 8
  %277 = ptrtoint ptr %handle1022 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %handle1022, align 4
  %279 = ptrtoint ptr %name1023 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %name1023, align 8
  tail call void (ptr, ptr, ...) %272(ptr noundef %mem1003, ptr noundef nonnull @.str.12, ptr noundef %276, i32 noundef %278, ptr noundef %280, i32 noundef %sub.ptr.sub1357, i32 noundef %add622) #3
  %281 = ptrtoint ptr %cur.i1694 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %cur.i1694, align 4
  %incdec.ptr1378 = getelementptr i32, ptr %282, i32 1
  store ptr %incdec.ptr1378, ptr %cur.i1694, align 4
  %283 = ptrtoint ptr %282 to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %add622, ptr %282, align 4
  %284 = load ptr, ptr %cur.i1694, align 4
  %285 = ptrtoint ptr %seg.i1702 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %seg.i1702, align 8
  %cmp1391.not = icmp ult ptr %284, %286
  br i1 %cmp1391.not, label %if.end1337.if.end1415_crit_edge, label %do.end1409, !prof !30

if.end1337.if.end1415_crit_edge:                  ; preds = %if.end1337
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1415

do.end1409:                                       ; preds = %if.end1337
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %if.end1415

if.end1415:                                       ; preds = %do.end1409, %if.end1337.if.end1415_crit_edge
  %287 = ptrtoint ptr %cur.i1694 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %cur.i1694, align 4
  %289 = ptrtoint ptr %end.i1696 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %end.i1696, align 4
  %cmp1429.not = icmp ult ptr %288, %290
  br i1 %cmp1429.not, label %if.end1415.if.end1453_crit_edge, label %do.end1447, !prof !30

if.end1415.if.end1453_crit_edge:                  ; preds = %if.end1415
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1453

do.end1447:                                       ; preds = %if.end1415
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.8) #3
  br label %if.end1453

if.end1453:                                       ; preds = %do.end1447, %if.end1415.if.end1453_crit_edge
  %291 = ptrtoint ptr %cur.i1694 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %cur.i1694, align 4
  %293 = ptrtoint ptr %map1005 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %map1005, align 8
  %sub.ptr.lhs.cast1471 = ptrtoint ptr %292 to i32
  %sub.ptr.rhs.cast1472 = ptrtoint ptr %294 to i32
  %sub.ptr.sub1473 = sub i32 %sub.ptr.lhs.cast1471, %sub.ptr.rhs.cast1472
  %295 = ptrtoint ptr %mem1003 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %mem1003, align 8
  %297 = ptrtoint ptr %296 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %296, align 4
  %299 = ptrtoint ptr %298 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %298, align 4
  %301 = ptrtoint ptr %client1019 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %client1019, align 4
  %name1485 = getelementptr inbounds %struct.nvif_object, ptr %302, i32 0, i32 2
  %303 = ptrtoint ptr %name1485 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %name1485, align 8
  %305 = ptrtoint ptr %handle1022 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %handle1022, align 4
  %307 = ptrtoint ptr %name1023 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %name1023, align 8
  tail call void (ptr, ptr, ...) %300(ptr noundef %mem1003, ptr noundef nonnull @.str.13, ptr noundef %304, i32 noundef %306, ptr noundef %308, i32 noundef %sub.ptr.sub1473, i32 noundef %add) #3
  %309 = ptrtoint ptr %cur.i1694 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %cur.i1694, align 4
  %incdec.ptr1494 = getelementptr i32, ptr %310, i32 1
  store ptr %incdec.ptr1494, ptr %cur.i1694, align 4
  %311 = ptrtoint ptr %310 to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 %add, ptr %310, align 4
  %kick.i1706 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 1
  %312 = ptrtoint ptr %kick.i1706 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %kick.i1706, align 4
  tail call void %313(ptr noundef %11) #3
  br label %if.end1500

if.end1500:                                       ; preds = %if.end1453, %if.then.i1700.if.end1500_crit_edge, %if.then.i.if.end1500_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end1500, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end1500 ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv17_fence_resume(ptr nocapture noundef readonly %drm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %fence = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 10
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fence, align 8
  %bo = getelementptr inbounds %struct.nv10_fence_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bo, align 4
  %sequence = getelementptr inbounds %struct.nv10_fence_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sequence, align 4
  tail call void @nouveau_bo_wr32(ptr noundef %3, i32 noundef 0, i32 noundef %5) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_wr32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv17_fence_create(ptr noundef %drm) local_unnamed_addr #0 align 64 {
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
  store ptr @nv17_fence_context_new, ptr %context_new, align 4
  %context_del = getelementptr inbounds %struct.nouveau_fence_priv, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %context_del to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @nv10_fence_context_del, ptr %context_del, align 8
  %lock = getelementptr inbounds %struct.nv10_fence_priv, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @nv17_fence_create.__key, i16 noundef signext 3) #3
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv17_fence_context_new(ptr noundef %chan) #0 align 64 {
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
  %call13 = call i32 @nvif_object_ctor(ptr noundef %user, ptr noundef nonnull @.str.15, i32 noundef -2147483633, i32 noundef 2, ptr noundef nonnull %.compoundliteral, i32 noundef 24, ptr noundef %sema) #3
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
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_fence_context_new(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv10_fence_emit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv10_fence_read(ptr noundef) #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nv17_fence.c", i32 57, i32 3}
!2 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__func__.nv17_fence_sync, !1, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.11, !1, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.12, !1, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.13, !1, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @nv17_fence_create.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nv17_fence.c", i32 131, i32 2}
!18 = !{ptr @.str.14, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.15, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/nv17_fence.c", i32 95, i32 38}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{!"branch_weights", i32 2000, i32 1}
