; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvc0_fence.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvc0_fence.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.hlist_node = type { ptr, ptr }
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
%struct.nouveau_channel = type { %struct.anon.98, ptr, ptr, ptr, i32, i64, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.anon.99, i8, ptr, %struct.anon.100, i32, i32, i32, %struct.nvif_object, %struct.nvif_notify, %struct.atomic_t }
%struct.anon.98 = type { %struct.nvif_push, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.anon.99 = type { ptr, ptr, %struct.nvif_object, i64 }
%struct.anon.100 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.nouveau_fence_chan = type { %struct.spinlock, %struct.kref, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, [32 x i8], %struct.nvif_notify, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }

@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/nouveau/nvc0_fence.c\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segment overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pushbuf overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[%s/%08x:%s] %08x: %08x incr subc %d mthd 0x%04x size %d - %s\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.nvc0_fence_emit32 = private unnamed_addr constant [18 x i8] c"nvc0_fence_emit32\00", align 1
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[%s/%08x:%s] %08x: %08x-> NV906F_SEMAPHOREA\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[%s/%08x:%s] %08x: %08x-> NV906F_SEMAPHOREB\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[%s/%08x:%s] %08x: %08x-> NV906F_SEMAPHOREC\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[%s/%08x:%s] %08x: %08x-> NV906F_SEMAPHORED\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[%s/%08x:%s] %08x: %08x-> NV906F_NON_STALL_INTERRUPT\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.nvc0_fence_sync32 = private unnamed_addr constant [18 x i8] c"nvc0_fence_sync32\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [40 x i8] c"../drivers/gpu/drm/nouveau/nvc0_fence.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 40, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvc0_fence_create(ptr noundef %drm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nv84_fence_create(ptr noundef %drm) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %fence = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 10
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fence, align 8
  %context_new = getelementptr inbounds %struct.nouveau_fence_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %context_new to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @nvc0_fence_context_new, ptr %context_new, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv84_fence_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvc0_fence_context_new(ptr noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nv84_fence_context_new(ptr noundef %chan) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %fence = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 12
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fence, align 4
  %emit32 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %emit32 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @nvc0_fence_emit32, ptr %emit32, align 4
  %sync32 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %sync32 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @nvc0_fence_sync32, ptr %sync32, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv84_fence_context_new(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvc0_fence_emit32(ptr nocapture noundef readonly %chan, i64 noundef %virtual, i32 noundef %sequence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %push2 = getelementptr inbounds %struct.anon.98, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %push2, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %3, i32 6
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %5
  br i1 %cmp.not.i, label %entry.if.end191_crit_edge, label %if.then.i

entry.if.end191_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end191

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 6) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end191_crit_edge, label %if.then.i.if.end883_crit_edge

if.then.i.if.end883_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end883

if.then.i.if.end191_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end191

if.end191:                                        ; preds = %if.then.i.if.end191_crit_edge, %entry.if.end191_crit_edge
  %8 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %9, i32 6
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp204.not = icmp ult ptr %9, %add.ptr4.i
  br i1 %cmp204.not, label %if.end191.if.end228_crit_edge, label %do.end222, !prof !29

if.end191.if.end228_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end228

do.end222:                                        ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.8) #2
  br label %if.end228

if.end228:                                        ; preds = %do.end222, %if.end191.if.end228_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp241.not = icmp ult ptr %12, %14
  br i1 %cmp241.not, label %if.end228.if.end265_crit_edge, label %do.end259, !prof !29

if.end228.if.end265_crit_edge:                    ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end265

do.end259:                                        ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.9) #2
  br label %if.end265

if.end265:                                        ; preds = %do.end259, %if.end228.if.end265_crit_edge
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
  %name282 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 2
  %31 = ptrtoint ptr %name282 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name282, align 8
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.10, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 537198596, i32 noundef 0, i32 noundef 16, i32 noundef 5, ptr noundef nonnull @__func__.nvc0_fence_emit32) #2
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 537198596, ptr %34, align 4
  %shr = lshr i64 %virtual, 32
  %36 = trunc i64 %shr to i32
  %conv297 = and i32 %36, 255
  %37 = load ptr, ptr %cur.i, align 4
  %38 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %seg.i, align 8
  %cmp302.not = icmp ult ptr %37, %39
  br i1 %cmp302.not, label %if.end265.if.end327_crit_edge, label %do.end321, !prof !29

if.end265.if.end327_crit_edge:                    ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end327

do.end321:                                        ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.8) #2
  br label %if.end327

if.end327:                                        ; preds = %do.end321, %if.end265.if.end327_crit_edge
  %40 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cur.i, align 4
  %42 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %end.i, align 4
  %cmp341.not = icmp ult ptr %41, %43
  br i1 %cmp341.not, label %if.end327.if.end366_crit_edge, label %do.end360, !prof !29

if.end327.if.end366_crit_edge:                    ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end366

do.end360:                                        ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.9) #2
  br label %if.end366

if.end366:                                        ; preds = %do.end360, %if.end327.if.end366_crit_edge
  %44 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cur.i, align 4
  %46 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast384 = ptrtoint ptr %45 to i32
  %sub.ptr.rhs.cast385 = ptrtoint ptr %47 to i32
  %sub.ptr.sub386 = sub i32 %sub.ptr.lhs.cast384, %sub.ptr.rhs.cast385
  %48 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mem, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %54 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %client, align 4
  %name398 = getelementptr inbounds %struct.nvif_object, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %name398 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %name398, align 8
  %58 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %handle, align 4
  %60 = ptrtoint ptr %name282 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %name282, align 8
  tail call void (ptr, ptr, ...) %53(ptr noundef %mem, ptr noundef nonnull @.str.11, ptr noundef %57, i32 noundef %59, ptr noundef %61, i32 noundef %sub.ptr.sub386, i32 noundef %conv297) #2
  %62 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cur.i, align 4
  %incdec.ptr407 = getelementptr i32, ptr %63, i32 1
  store ptr %incdec.ptr407, ptr %cur.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv297, ptr %63, align 4
  %conv416 = trunc i64 %virtual to i32
  %65 = load ptr, ptr %cur.i, align 4
  %66 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %seg.i, align 8
  %cmp421.not = icmp ult ptr %65, %67
  br i1 %cmp421.not, label %if.end366.if.end446_crit_edge, label %do.end440, !prof !29

if.end366.if.end446_crit_edge:                    ; preds = %if.end366
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end446

do.end440:                                        ; preds = %if.end366
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.8) #2
  br label %if.end446

if.end446:                                        ; preds = %do.end440, %if.end366.if.end446_crit_edge
  %68 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cur.i, align 4
  %70 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %end.i, align 4
  %cmp460.not = icmp ult ptr %69, %71
  br i1 %cmp460.not, label %if.end446.if.end485_crit_edge, label %do.end479, !prof !29

if.end446.if.end485_crit_edge:                    ; preds = %if.end446
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end485

do.end479:                                        ; preds = %if.end446
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.9) #2
  br label %if.end485

if.end485:                                        ; preds = %do.end479, %if.end446.if.end485_crit_edge
  %72 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cur.i, align 4
  %74 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast503 = ptrtoint ptr %73 to i32
  %sub.ptr.rhs.cast504 = ptrtoint ptr %75 to i32
  %sub.ptr.sub505 = sub i32 %sub.ptr.lhs.cast503, %sub.ptr.rhs.cast504
  %76 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mem, align 8
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %82 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %client, align 4
  %name517 = getelementptr inbounds %struct.nvif_object, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %name517 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %name517, align 8
  %86 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %handle, align 4
  %88 = ptrtoint ptr %name282 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %name282, align 8
  tail call void (ptr, ptr, ...) %81(ptr noundef %mem, ptr noundef nonnull @.str.12, ptr noundef %85, i32 noundef %87, ptr noundef %89, i32 noundef %sub.ptr.sub505, i32 noundef %conv416) #2
  %90 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cur.i, align 4
  %incdec.ptr526 = getelementptr i32, ptr %91, i32 1
  store ptr %incdec.ptr526, ptr %cur.i, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %conv416, ptr %91, align 4
  %93 = load ptr, ptr %cur.i, align 4
  %94 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %seg.i, align 8
  %cmp538.not = icmp ult ptr %93, %95
  br i1 %cmp538.not, label %if.end485.if.end563_crit_edge, label %do.end557, !prof !29

if.end485.if.end563_crit_edge:                    ; preds = %if.end485
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end563

do.end557:                                        ; preds = %if.end485
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.8) #2
  br label %if.end563

if.end563:                                        ; preds = %do.end557, %if.end485.if.end563_crit_edge
  %96 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cur.i, align 4
  %98 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %end.i, align 4
  %cmp577.not = icmp ult ptr %97, %99
  br i1 %cmp577.not, label %if.end563.if.end602_crit_edge, label %do.end596, !prof !29

if.end563.if.end602_crit_edge:                    ; preds = %if.end563
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end602

do.end596:                                        ; preds = %if.end563
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.9) #2
  br label %if.end602

if.end602:                                        ; preds = %do.end596, %if.end563.if.end602_crit_edge
  %100 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cur.i, align 4
  %102 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast620 = ptrtoint ptr %101 to i32
  %sub.ptr.rhs.cast621 = ptrtoint ptr %103 to i32
  %sub.ptr.sub622 = sub i32 %sub.ptr.lhs.cast620, %sub.ptr.rhs.cast621
  %104 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mem, align 8
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 4
  %110 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %client, align 4
  %name634 = getelementptr inbounds %struct.nvif_object, ptr %111, i32 0, i32 2
  %112 = ptrtoint ptr %name634 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %name634, align 8
  %114 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %handle, align 4
  %116 = ptrtoint ptr %name282 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %name282, align 8
  tail call void (ptr, ptr, ...) %109(ptr noundef %mem, ptr noundef nonnull @.str.13, ptr noundef %113, i32 noundef %115, ptr noundef %117, i32 noundef %sub.ptr.sub622, i32 noundef %sequence) #2
  %118 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %cur.i, align 4
  %incdec.ptr643 = getelementptr i32, ptr %119, i32 1
  store ptr %incdec.ptr643, ptr %cur.i, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %sequence, ptr %119, align 4
  %121 = load ptr, ptr %cur.i, align 4
  %122 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %seg.i, align 8
  %cmp655.not = icmp ult ptr %121, %123
  br i1 %cmp655.not, label %if.end602.if.end680_crit_edge, label %do.end674, !prof !29

if.end602.if.end680_crit_edge:                    ; preds = %if.end602
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end680

do.end674:                                        ; preds = %if.end602
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.8) #2
  br label %if.end680

if.end680:                                        ; preds = %do.end674, %if.end602.if.end680_crit_edge
  %124 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %cur.i, align 4
  %126 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %end.i, align 4
  %cmp694.not = icmp ult ptr %125, %127
  br i1 %cmp694.not, label %if.end680.if.end719_crit_edge, label %do.end713, !prof !29

if.end680.if.end719_crit_edge:                    ; preds = %if.end680
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end719

do.end713:                                        ; preds = %if.end680
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.9) #2
  br label %if.end719

if.end719:                                        ; preds = %do.end713, %if.end680.if.end719_crit_edge
  %128 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %cur.i, align 4
  %130 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast737 = ptrtoint ptr %129 to i32
  %sub.ptr.rhs.cast738 = ptrtoint ptr %131 to i32
  %sub.ptr.sub739 = sub i32 %sub.ptr.lhs.cast737, %sub.ptr.rhs.cast738
  %132 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %mem, align 8
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %133, align 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 4
  %138 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %client, align 4
  %name751 = getelementptr inbounds %struct.nvif_object, ptr %139, i32 0, i32 2
  %140 = ptrtoint ptr %name751 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %name751, align 8
  %142 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %handle, align 4
  %144 = ptrtoint ptr %name282 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %name282, align 8
  tail call void (ptr, ptr, ...) %137(ptr noundef %mem, ptr noundef nonnull @.str.14, ptr noundef %141, i32 noundef %143, ptr noundef %145, i32 noundef %sub.ptr.sub739, i32 noundef 2) #2
  %146 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %cur.i, align 4
  %incdec.ptr760 = getelementptr i32, ptr %147, i32 1
  store ptr %incdec.ptr760, ptr %cur.i, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 2, ptr %147, align 4
  %149 = load ptr, ptr %cur.i, align 4
  %150 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %seg.i, align 8
  %cmp772.not = icmp ult ptr %149, %151
  br i1 %cmp772.not, label %if.end719.if.end797_crit_edge, label %do.end791, !prof !29

if.end719.if.end797_crit_edge:                    ; preds = %if.end719
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end797

do.end791:                                        ; preds = %if.end719
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.8) #2
  br label %if.end797

if.end797:                                        ; preds = %do.end791, %if.end719.if.end797_crit_edge
  %152 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %cur.i, align 4
  %154 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %end.i, align 4
  %cmp811.not = icmp ult ptr %153, %155
  br i1 %cmp811.not, label %if.end797.if.end836_crit_edge, label %do.end830, !prof !29

if.end797.if.end836_crit_edge:                    ; preds = %if.end797
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end836

do.end830:                                        ; preds = %if.end797
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.9) #2
  br label %if.end836

if.end836:                                        ; preds = %do.end830, %if.end797.if.end836_crit_edge
  %156 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %cur.i, align 4
  %158 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast854 = ptrtoint ptr %157 to i32
  %sub.ptr.rhs.cast855 = ptrtoint ptr %159 to i32
  %sub.ptr.sub856 = sub i32 %sub.ptr.lhs.cast854, %sub.ptr.rhs.cast855
  %160 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %mem, align 8
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %161, align 4
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %163, align 4
  %166 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %client, align 4
  %name868 = getelementptr inbounds %struct.nvif_object, ptr %167, i32 0, i32 2
  %168 = ptrtoint ptr %name868 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %name868, align 8
  %170 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %handle, align 4
  %172 = ptrtoint ptr %name282 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %name282, align 8
  tail call void (ptr, ptr, ...) %165(ptr noundef %mem, ptr noundef nonnull @.str.15, ptr noundef %169, i32 noundef %171, ptr noundef %173, i32 noundef %sub.ptr.sub856, i32 noundef 0) #2
  %174 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %cur.i, align 4
  %incdec.ptr877 = getelementptr i32, ptr %175, i32 1
  store ptr %incdec.ptr877, ptr %cur.i, align 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 0, ptr %175, align 4
  %kick.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 1
  %177 = ptrtoint ptr %kick.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %kick.i, align 4
  tail call void %178(ptr noundef %1) #2
  br label %if.end883

if.end883:                                        ; preds = %if.end836, %if.then.i.if.end883_crit_edge
  %retval.1.i992 = phi i32 [ 0, %if.end836 ], [ %call.i, %if.then.i.if.end883_crit_edge ]
  ret i32 %retval.1.i992
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvc0_fence_sync32(ptr nocapture noundef readonly %chan, i64 noundef %virtual, i32 noundef %sequence) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %push2 = getelementptr inbounds %struct.anon.98, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %push2, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %3, i32 5
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %5
  br i1 %cmp.not.i, label %entry.if.end161_crit_edge, label %if.then.i

entry.if.end161_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end161

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 5) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end161_crit_edge, label %if.then.i.if.end736_crit_edge

if.then.i.if.end736_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end736

if.then.i.if.end161_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end161

if.end161:                                        ; preds = %if.then.i.if.end161_crit_edge, %entry.if.end161_crit_edge
  %8 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %9, i32 5
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp174.not = icmp ult ptr %9, %add.ptr4.i
  br i1 %cmp174.not, label %if.end161.if.end198_crit_edge, label %do.end192, !prof !29

if.end161.if.end198_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end198

do.end192:                                        ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 9, ptr noundef nonnull @.str.8) #2
  br label %if.end198

if.end198:                                        ; preds = %do.end192, %if.end161.if.end198_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp211.not = icmp ult ptr %12, %14
  br i1 %cmp211.not, label %if.end198.if.end235_crit_edge, label %do.end229, !prof !29

if.end198.if.end235_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end235

do.end229:                                        ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 9, ptr noundef nonnull @.str.9) #2
  br label %if.end235

if.end235:                                        ; preds = %do.end229, %if.end198.if.end235_crit_edge
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
  %name252 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 2
  %31 = ptrtoint ptr %name252 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name252, align 8
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.10, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 537133060, i32 noundef 0, i32 noundef 16, i32 noundef 4, ptr noundef nonnull @__func__.nvc0_fence_sync32) #2
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 537133060, ptr %34, align 4
  %shr = lshr i64 %virtual, 32
  %36 = trunc i64 %shr to i32
  %conv267 = and i32 %36, 255
  %37 = load ptr, ptr %cur.i, align 4
  %38 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %seg.i, align 8
  %cmp272.not = icmp ult ptr %37, %39
  br i1 %cmp272.not, label %if.end235.if.end297_crit_edge, label %do.end291, !prof !29

if.end235.if.end297_crit_edge:                    ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end297

do.end291:                                        ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 9, ptr noundef nonnull @.str.8) #2
  br label %if.end297

if.end297:                                        ; preds = %do.end291, %if.end235.if.end297_crit_edge
  %40 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cur.i, align 4
  %42 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %end.i, align 4
  %cmp311.not = icmp ult ptr %41, %43
  br i1 %cmp311.not, label %if.end297.if.end336_crit_edge, label %do.end330, !prof !29

if.end297.if.end336_crit_edge:                    ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end336

do.end330:                                        ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 9, ptr noundef nonnull @.str.9) #2
  br label %if.end336

if.end336:                                        ; preds = %do.end330, %if.end297.if.end336_crit_edge
  %44 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cur.i, align 4
  %46 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast354 = ptrtoint ptr %45 to i32
  %sub.ptr.rhs.cast355 = ptrtoint ptr %47 to i32
  %sub.ptr.sub356 = sub i32 %sub.ptr.lhs.cast354, %sub.ptr.rhs.cast355
  %48 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mem, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %54 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %client, align 4
  %name368 = getelementptr inbounds %struct.nvif_object, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %name368 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %name368, align 8
  %58 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %handle, align 4
  %60 = ptrtoint ptr %name252 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %name252, align 8
  tail call void (ptr, ptr, ...) %53(ptr noundef %mem, ptr noundef nonnull @.str.11, ptr noundef %57, i32 noundef %59, ptr noundef %61, i32 noundef %sub.ptr.sub356, i32 noundef %conv267) #2
  %62 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cur.i, align 4
  %incdec.ptr377 = getelementptr i32, ptr %63, i32 1
  store ptr %incdec.ptr377, ptr %cur.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv267, ptr %63, align 4
  %conv386 = trunc i64 %virtual to i32
  %65 = load ptr, ptr %cur.i, align 4
  %66 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %seg.i, align 8
  %cmp391.not = icmp ult ptr %65, %67
  br i1 %cmp391.not, label %if.end336.if.end416_crit_edge, label %do.end410, !prof !29

if.end336.if.end416_crit_edge:                    ; preds = %if.end336
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end416

do.end410:                                        ; preds = %if.end336
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 9, ptr noundef nonnull @.str.8) #2
  br label %if.end416

if.end416:                                        ; preds = %do.end410, %if.end336.if.end416_crit_edge
  %68 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cur.i, align 4
  %70 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %end.i, align 4
  %cmp430.not = icmp ult ptr %69, %71
  br i1 %cmp430.not, label %if.end416.if.end455_crit_edge, label %do.end449, !prof !29

if.end416.if.end455_crit_edge:                    ; preds = %if.end416
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end455

do.end449:                                        ; preds = %if.end416
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 9, ptr noundef nonnull @.str.9) #2
  br label %if.end455

if.end455:                                        ; preds = %do.end449, %if.end416.if.end455_crit_edge
  %72 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cur.i, align 4
  %74 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast473 = ptrtoint ptr %73 to i32
  %sub.ptr.rhs.cast474 = ptrtoint ptr %75 to i32
  %sub.ptr.sub475 = sub i32 %sub.ptr.lhs.cast473, %sub.ptr.rhs.cast474
  %76 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mem, align 8
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %82 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %client, align 4
  %name487 = getelementptr inbounds %struct.nvif_object, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %name487 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %name487, align 8
  %86 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %handle, align 4
  %88 = ptrtoint ptr %name252 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %name252, align 8
  tail call void (ptr, ptr, ...) %81(ptr noundef %mem, ptr noundef nonnull @.str.12, ptr noundef %85, i32 noundef %87, ptr noundef %89, i32 noundef %sub.ptr.sub475, i32 noundef %conv386) #2
  %90 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cur.i, align 4
  %incdec.ptr496 = getelementptr i32, ptr %91, i32 1
  store ptr %incdec.ptr496, ptr %cur.i, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %conv386, ptr %91, align 4
  %93 = load ptr, ptr %cur.i, align 4
  %94 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %seg.i, align 8
  %cmp508.not = icmp ult ptr %93, %95
  br i1 %cmp508.not, label %if.end455.if.end533_crit_edge, label %do.end527, !prof !29

if.end455.if.end533_crit_edge:                    ; preds = %if.end455
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end533

do.end527:                                        ; preds = %if.end455
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 9, ptr noundef nonnull @.str.8) #2
  br label %if.end533

if.end533:                                        ; preds = %do.end527, %if.end455.if.end533_crit_edge
  %96 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cur.i, align 4
  %98 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %end.i, align 4
  %cmp547.not = icmp ult ptr %97, %99
  br i1 %cmp547.not, label %if.end533.if.end572_crit_edge, label %do.end566, !prof !29

if.end533.if.end572_crit_edge:                    ; preds = %if.end533
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end572

do.end566:                                        ; preds = %if.end533
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 9, ptr noundef nonnull @.str.9) #2
  br label %if.end572

if.end572:                                        ; preds = %do.end566, %if.end533.if.end572_crit_edge
  %100 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cur.i, align 4
  %102 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast590 = ptrtoint ptr %101 to i32
  %sub.ptr.rhs.cast591 = ptrtoint ptr %103 to i32
  %sub.ptr.sub592 = sub i32 %sub.ptr.lhs.cast590, %sub.ptr.rhs.cast591
  %104 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mem, align 8
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 4
  %110 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %client, align 4
  %name604 = getelementptr inbounds %struct.nvif_object, ptr %111, i32 0, i32 2
  %112 = ptrtoint ptr %name604 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %name604, align 8
  %114 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %handle, align 4
  %116 = ptrtoint ptr %name252 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %name252, align 8
  tail call void (ptr, ptr, ...) %109(ptr noundef %mem, ptr noundef nonnull @.str.13, ptr noundef %113, i32 noundef %115, ptr noundef %117, i32 noundef %sub.ptr.sub592, i32 noundef %sequence) #2
  %118 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %cur.i, align 4
  %incdec.ptr613 = getelementptr i32, ptr %119, i32 1
  store ptr %incdec.ptr613, ptr %cur.i, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %sequence, ptr %119, align 4
  %121 = load ptr, ptr %cur.i, align 4
  %122 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %seg.i, align 8
  %cmp625.not = icmp ult ptr %121, %123
  br i1 %cmp625.not, label %if.end572.if.end650_crit_edge, label %do.end644, !prof !29

if.end572.if.end650_crit_edge:                    ; preds = %if.end572
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end650

do.end644:                                        ; preds = %if.end572
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 9, ptr noundef nonnull @.str.8) #2
  br label %if.end650

if.end650:                                        ; preds = %do.end644, %if.end572.if.end650_crit_edge
  %124 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %cur.i, align 4
  %126 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %end.i, align 4
  %cmp664.not = icmp ult ptr %125, %127
  br i1 %cmp664.not, label %if.end650.if.end689_crit_edge, label %do.end683, !prof !29

if.end650.if.end689_crit_edge:                    ; preds = %if.end650
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end689

do.end683:                                        ; preds = %if.end650
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 9, ptr noundef nonnull @.str.9) #2
  br label %if.end689

if.end689:                                        ; preds = %do.end683, %if.end650.if.end689_crit_edge
  %128 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %cur.i, align 4
  %130 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast707 = ptrtoint ptr %129 to i32
  %sub.ptr.rhs.cast708 = ptrtoint ptr %131 to i32
  %sub.ptr.sub709 = sub i32 %sub.ptr.lhs.cast707, %sub.ptr.rhs.cast708
  %132 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %mem, align 8
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %133, align 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 4
  %138 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %client, align 4
  %name721 = getelementptr inbounds %struct.nvif_object, ptr %139, i32 0, i32 2
  %140 = ptrtoint ptr %name721 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %name721, align 8
  %142 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %handle, align 4
  %144 = ptrtoint ptr %name252 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %name252, align 8
  tail call void (ptr, ptr, ...) %137(ptr noundef %mem, ptr noundef nonnull @.str.14, ptr noundef %141, i32 noundef %143, ptr noundef %145, i32 noundef %sub.ptr.sub709, i32 noundef 4100) #2
  %146 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %cur.i, align 4
  %incdec.ptr730 = getelementptr i32, ptr %147, i32 1
  store ptr %incdec.ptr730, ptr %cur.i, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 4100, ptr %147, align 4
  %kick.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 1
  %149 = ptrtoint ptr %kick.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %kick.i, align 4
  tail call void %150(ptr noundef %1) #2
  br label %if.end736

if.end736:                                        ; preds = %if.end689, %if.then.i.if.end736_crit_edge
  %retval.1.i828 = phi i32 [ 0, %if.end689 ], [ %call.i, %if.then.i.if.end736_crit_edge ]
  ret i32 %retval.1.i828
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvc0_fence.c", i32 40, i32 3}
!2 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__func__.nvc0_fence_emit32, !1, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.11, !1, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.12, !1, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.13, !1, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.14, !1, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.15, !1, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__func__.nvc0_fence_sync32, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvc0_fence.c", i32 63, i32 3}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"branch_weights", i32 2000, i32 1}
