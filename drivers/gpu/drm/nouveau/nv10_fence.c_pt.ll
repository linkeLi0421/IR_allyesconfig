; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nv10_fence.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nv10_fence.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nouveau_fence = type { %struct.dma_fence, %struct.list_head, ptr, i32 }
%struct.dma_fence = type { ptr, ptr, %union.anon.2, i64, i64, i32, %struct.kref, i32 }
%union.anon.2 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.anon.3 = type { %struct.nvif_push, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.4 }
%struct.anon.4 = type { ptr, i64 }
%struct.nouveau_channel = type { %struct.anon.3, ptr, ptr, ptr, i32, i64, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.anon.113, i8, ptr, %struct.anon.114, i32, i32, i32, %struct.nvif_object, %struct.nvif_notify, %struct.atomic_t }
%struct.anon.113 = type { ptr, ptr, %struct.nvif_object, i64 }
%struct.anon.114 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nv10_fence_chan = type { %struct.nouveau_fence_chan, %struct.nvif_object }
%struct.nouveau_fence_chan = type { %struct.spinlock, %struct.kref, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, [32 x i8], %struct.nvif_notify, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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

@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/nouveau/nv10_fence.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segment overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pushbuf overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[%s/%08x:%s] %08x: %08x incr subc %d mthd 0x%04x size %d - %s\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.nv10_fence_emit = private unnamed_addr constant [16 x i8] c"nv10_fence_emit\00", align 1
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"[%s/%08x:%s] %08x: %08x-> NV06E_SET_REFERENCE\0A\00", [49 x i8] zeroinitializer }, align 32
@nv10_fence_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 38, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private constant [40 x i8] c"../drivers/gpu/drm/nouveau/nv10_fence.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 108, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @nv10_fence_create.__key, ptr @.str.8], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv10_fence_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv10_fence_emit(ptr nocapture noundef readonly %fence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr inbounds %struct.nouveau_fence, ptr %fence, i32 0, i32 2
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 8
  %push1 = getelementptr inbounds %struct.anon.3, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %push1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %push1, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %5, i32 2
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %7
  br i1 %cmp.not.i, label %entry.if.end70_crit_edge, label %if.then.i

entry.if.end70_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end70

if.then.i:                                        ; preds = %entry
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %call.i = tail call i32 %9(ptr noundef %3, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end70_crit_edge, label %if.then.i.if.end289_crit_edge

if.then.i.if.end289_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end289

if.then.i.if.end70_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end70

if.end70:                                         ; preds = %if.then.i.if.end70_crit_edge, %entry.if.end70_crit_edge
  %10 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %11, i32 2
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp83.not = icmp ult ptr %11, %add.ptr4.i
  br i1 %cmp83.not, label %if.end70.if.end107_crit_edge, label %do.end101, !prof !22

if.end70.if.end107_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end107

do.end101:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 38, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end107

if.end107:                                        ; preds = %do.end101, %if.end70.if.end107_crit_edge
  %13 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cur.i, align 4
  %15 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %end.i, align 4
  %cmp120.not = icmp ult ptr %14, %16
  br i1 %cmp120.not, label %if.end107.if.end144_crit_edge, label %do.end138, !prof !22

if.end107.if.end144_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end144

do.end138:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 38, i32 noundef 9, ptr noundef nonnull @.str.5) #4
  br label %if.end144

if.end144:                                        ; preds = %do.end138, %if.end107.if.end144_crit_edge
  %17 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cur.i, align 4
  %mem = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 2, i32 0, i32 6
  %19 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %18 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %20 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %21 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mem, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %client = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 2, i32 0, i32 1
  %27 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %client, align 4
  %name = getelementptr inbounds %struct.nvif_object, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 2, i32 0, i32 3
  %31 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %handle, align 4
  %name161 = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 2, i32 0, i32 2
  %33 = ptrtoint ptr %name161 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name161, align 8
  tail call void (ptr, ptr, ...) %26(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %30, i32 noundef %32, ptr noundef %34, i32 noundef %sub.ptr.sub, i32 noundef 262224, i32 noundef 0, i32 noundef 80, i32 noundef 1, ptr noundef nonnull @__func__.nv10_fence_emit) #4
  %35 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %36, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 262224, ptr %36, align 4
  %seqno = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 4
  %38 = ptrtoint ptr %seqno to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %seqno, align 8
  %conv = trunc i64 %39 to i32
  %40 = load ptr, ptr %cur.i, align 4
  %41 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %seg.i, align 8
  %cmp178.not = icmp ult ptr %40, %42
  br i1 %cmp178.not, label %if.end144.if.end203_crit_edge, label %do.end197, !prof !22

if.end144.if.end203_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end203

do.end197:                                        ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 38, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end203

if.end203:                                        ; preds = %do.end197, %if.end144.if.end203_crit_edge
  %43 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cur.i, align 4
  %45 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %end.i, align 4
  %cmp217.not = icmp ult ptr %44, %46
  br i1 %cmp217.not, label %if.end203.if.end242_crit_edge, label %do.end236, !prof !22

if.end203.if.end242_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end242

do.end236:                                        ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 38, i32 noundef 9, ptr noundef nonnull @.str.5) #4
  br label %if.end242

if.end242:                                        ; preds = %do.end236, %if.end203.if.end242_crit_edge
  %47 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cur.i, align 4
  %49 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast260 = ptrtoint ptr %48 to i32
  %sub.ptr.rhs.cast261 = ptrtoint ptr %50 to i32
  %sub.ptr.sub262 = sub i32 %sub.ptr.lhs.cast260, %sub.ptr.rhs.cast261
  %51 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mem, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %57 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %client, align 4
  %name274 = getelementptr inbounds %struct.nvif_object, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %name274 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %name274, align 8
  %61 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %handle, align 4
  %63 = ptrtoint ptr %name161 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %name161, align 8
  tail call void (ptr, ptr, ...) %56(ptr noundef %mem, ptr noundef nonnull @.str.7, ptr noundef %60, i32 noundef %62, ptr noundef %64, i32 noundef %sub.ptr.sub262, i32 noundef %conv) #4
  %65 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cur.i, align 4
  %incdec.ptr283 = getelementptr i32, ptr %66, i32 1
  store ptr %incdec.ptr283, ptr %cur.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv, ptr %66, align 4
  %kick.i = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 1
  %68 = ptrtoint ptr %kick.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %kick.i, align 4
  tail call void %69(ptr noundef %3) #4
  br label %if.end289

if.end289:                                        ; preds = %if.end242, %if.then.i.if.end289_crit_edge
  %retval.1.i330 = phi i32 [ 0, %if.end242 ], [ %call.i, %if.then.i.if.end289_crit_edge ]
  ret i32 %retval.1.i330
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv10_fence_read(ptr noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %map = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 17, i32 6
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then, !prof !23

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i8, ptr %1, i32 72
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %user = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 17
  %call6 = tail call i32 @nvif_object_rd(ptr noundef %user, i32 noundef 4, i64 noundef 72) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %_data.0 = phi i32 [ %2, %if.then ], [ %call6, %if.else ]
  ret i32 %_data.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_rd(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv10_fence_context_del(ptr nocapture noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fence = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 12
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fence, align 4
  tail call void @nouveau_fence_context_del(ptr noundef %1) #4
  %sema = getelementptr inbounds %struct.nv10_fence_chan, ptr %1, i32 0, i32 1
  tail call void @nvif_object_dtor(ptr noundef %sema) #4
  %2 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fence, align 4
  tail call void @nouveau_fence_context_free(ptr noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_fence_context_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_dtor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_fence_context_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv10_fence_destroy(ptr nocapture noundef %drm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fence = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 10
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fence, align 8
  %bo = getelementptr inbounds %struct.nv10_fence_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bo, align 4
  tail call void @nouveau_bo_unmap(ptr noundef %3) #4
  %4 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bo, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @nouveau_bo_unpin(ptr noundef nonnull %5) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool.not.i = icmp eq ptr %bo, null
  br i1 %tobool.not.i, label %if.end.nouveau_bo_ref.exit_crit_edge, label %if.end.i

if.end.nouveau_bo_ref.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %nouveau_bo_ref.exit

if.end.i:                                         ; preds = %if.end
  %6 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bo, align 4
  store ptr null, ptr %bo, align 4
  %tobool5.not.i = icmp eq ptr %7, null
  br i1 %tobool5.not.i, label %if.end.i.nouveau_bo_ref.exit_crit_edge, label %if.then6.i

if.end.i.nouveau_bo_ref.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nouveau_bo_ref.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ttm_bo_put(ptr noundef nonnull %7) #4
  br label %nouveau_bo_ref.exit

nouveau_bo_ref.exit:                              ; preds = %if.then6.i, %if.end.i.nouveau_bo_ref.exit_crit_edge, %if.end.nouveau_bo_ref.exit_crit_edge
  %8 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %fence, align 8
  tail call void @kfree(ptr noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_unmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_unpin(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv10_fence_create(ptr nocapture noundef writeonly %drm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 76) #7
  %fence = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 10
  %1 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %fence, align 8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @nv10_fence_destroy, ptr %call7.i.i, align 8
  %context_new = getelementptr inbounds %struct.nouveau_fence_priv, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %context_new to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @nv10_fence_context_new, ptr %context_new, align 4
  %context_del = getelementptr inbounds %struct.nouveau_fence_priv, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %context_del to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @nv10_fence_context_del, ptr %context_del, align 8
  %lock = getelementptr inbounds %struct.nv10_fence_priv, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @nv10_fence_create.__key, i16 noundef signext 3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv10_fence_context_new(ptr noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 256) #7
  %fence = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 12
  %1 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %fence, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nouveau_fence_context_new(ptr noundef %chan, ptr noundef nonnull %call7.i.i) #4
  %emit = getelementptr inbounds %struct.nouveau_fence_chan, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %emit to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @nv10_fence_emit, ptr %emit, align 8
  %read = getelementptr inbounds %struct.nouveau_fence_chan, ptr %call7.i.i, i32 0, i32 6
  %3 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @nv10_fence_read, ptr %read, align 8
  %sync = getelementptr inbounds %struct.nouveau_fence_chan, ptr %call7.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %sync to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @nv10_fence_sync, ptr %sync, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_fence_context_new(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nv10_fence_sync(ptr nocapture noundef readnone %fence, ptr nocapture noundef readnone %prev, ptr nocapture noundef readnone %chan) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -19
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nv10_fence.c", i32 38, i32 3}
!2 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__func__.nv10_fence_emit, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @nv10_fence_create.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nv10_fence.c", i32 108, i32 2}
!12 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{i64 5389224}
!25 = !{i64 2157169564}
