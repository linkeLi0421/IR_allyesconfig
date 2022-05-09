; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nouveau_vmm.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_vmm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nouveau_vma = type { ptr, i32, %struct.list_head, i64, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.nvif_vma = type { i64, i64 }
%struct.nouveau_bo = type { %struct.ttm_buffer_object, %struct.ttm_placement, i32, [3 x %struct.ttm_place], [3 x %struct.ttm_place], i8, %struct.ttm_bo_kmap_obj, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, i8, i64, %struct.list_head, i24, i32, ptr }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.nouveau_mem = type { %struct.ttm_resource, ptr, i8, i8, %struct.nvif_mem, [2 x %struct.nvif_vma] }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"drmVmm\00", [25 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [41 x i8] c"../drivers/gpu/drm/nouveau/nouveau_vmm.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 131, i32 37 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_vma_unmap(ptr nocapture noundef %vma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mem = getelementptr inbounds %struct.nouveau_vma, ptr %vma, i32 0, i32 4
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vma, align 8
  %vmm1 = getelementptr inbounds %struct.nouveau_vmm, ptr %3, i32 0, i32 1
  %addr = getelementptr inbounds %struct.nouveau_vma, ptr %vma, i32 0, i32 3
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %addr, align 8
  %call = tail call i32 @nvif_vmm_unmap(ptr noundef %vmm1, i64 noundef %5) #5
  %6 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %mem, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_vmm_unmap(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_vma_map(ptr nocapture noundef %vma, ptr noundef %mem) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.nvif_vma, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #5
  %0 = getelementptr inbounds %struct.nvif_vma, ptr %tmp, i32 0, i32 1
  %addr1 = getelementptr inbounds %struct.nouveau_vma, ptr %vma, i32 0, i32 3
  %1 = ptrtoint ptr %addr1 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %addr1, align 8
  %3 = ptrtoint ptr %tmp to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %tmp, align 8
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %0, align 8
  %5 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vma, align 8
  %vmm2 = getelementptr inbounds %struct.nouveau_vmm, ptr %6, i32 0, i32 1
  %call = call i32 @nouveau_mem_map(ptr noundef %mem, ptr noundef %vmm2, ptr noundef nonnull %tmp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mem3 = getelementptr inbounds %struct.nouveau_vma, ptr %vma, i32 0, i32 4
  %7 = ptrtoint ptr %mem3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %mem, ptr %mem3, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #5
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_mem_map(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nouveau_vma_find(ptr noundef readonly %nvbo, ptr noundef readnone %vmm) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vma_list = getelementptr inbounds %struct.nouveau_bo, ptr %nvbo, i32 0, i32 14
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %vma_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 8
  %cmp.not = icmp eq ptr %.pn, %vma_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %vma.0 = getelementptr i8, ptr %.pn, i32 -8
  %1 = ptrtoint ptr %vma.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vma.0, align 8
  %cmp3 = icmp eq ptr %2, %vmm
  br i1 %cmp3, label %cleanup.split.loop.exit16, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

cleanup.split.loop.exit16:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %vma.0.le = getelementptr i8, ptr %.pn, i32 -8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit16, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %vma.0.le, %cleanup.split.loop.exit16 ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_vma_del(ptr nocapture noundef %pvma) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.nvif_vma, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pvma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvma, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %land.lhs.true

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

land.lhs.true:                                    ; preds = %entry
  %refs = getelementptr inbounds %struct.nouveau_vma, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %refs, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %refs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp = icmp slt i32 %dec, 1
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then:                                          ; preds = %land.lhs.true
  %addr = getelementptr inbounds %struct.nouveau_vma, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %5)
  %cmp1.not = icmp eq i64 %5, -1
  br i1 %cmp1.not, label %if.then.if.end_crit_edge, label %if.then4, !prof !11

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #5
  %6 = getelementptr inbounds %struct.nvif_vma, ptr %tmp, i32 0, i32 1
  %7 = ptrtoint ptr %tmp to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %5, ptr %tmp, align 8
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 1, ptr %6, align 8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %vmm7 = getelementptr inbounds %struct.nouveau_vmm, ptr %10, i32 0, i32 1
  call void @nvif_vmm_put(ptr noundef %vmm7, ptr noundef nonnull %tmp) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #5
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %head = getelementptr inbounds %struct.nouveau_vma, ptr %1, i32 0, i32 2
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %head) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.nouveau_vma, ptr %1, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %17 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %head, align 4
  %prev.i = getelementptr inbounds %struct.nouveau_vma, ptr %1, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %19 = ptrtoint ptr %pvma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pvma, align 4
  call void @kfree(ptr noundef %20) #5
  br label %if.end8

if.end8:                                          ; preds = %list_del.exit, %land.lhs.true.if.end8_crit_edge, %entry.if.end8_crit_edge
  %21 = ptrtoint ptr %pvma to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %pvma, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_vmm_put(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_vma_new(ptr noundef %nvbo, ptr noundef %vmm, ptr nocapture noundef %pvma) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i67 = alloca %struct.nvif_vma, align 8
  %tmp.i = alloca %struct.nvif_vma, align 8
  %tmp = alloca %struct.nvif_vma, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %nvbo, i32 0, i32 6
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resource, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #5
  %vma_list.i = getelementptr inbounds %struct.nouveau_bo, ptr %nvbo, i32 0, i32 14
  %2 = call ptr @memset(ptr %tmp, i32 255, i32 16)
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %vma_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %3 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i = load ptr, ptr %.pn.in.i, align 8
  %cmp.not.i = icmp eq ptr %.pn.i, %vma_list.i
  br i1 %cmp.not.i, label %nouveau_vma_find.exit.thread, label %for.body.i

nouveau_vma_find.exit.thread:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %pvma to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pvma, align 4
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %vma.0.i = getelementptr i8, ptr %.pn.i, i32 -8
  %5 = ptrtoint ptr %vma.0.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vma.0.i, align 8
  %cmp3.i = icmp eq ptr %6, %vmm
  br i1 %cmp3.i, label %nouveau_vma_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

nouveau_vma_find.exit:                            ; preds = %for.body.i
  %vma.0.i.le = getelementptr i8, ptr %.pn.i, i32 -8
  %7 = ptrtoint ptr %pvma to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %vma.0.i.le, ptr %pvma, align 4
  %tobool.not = icmp eq ptr %vma.0.i.le, null
  br i1 %tobool.not, label %nouveau_vma_find.exit.if.end_crit_edge, label %if.then

nouveau_vma_find.exit.if.end_crit_edge:           ; preds = %nouveau_vma_find.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %nouveau_vma_find.exit
  call void @__sanitizer_cov_trace_pc() #7
  %refs = getelementptr i8, ptr %.pn.i, i32 -4
  %8 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %refs, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %refs, align 4
  br label %cleanup

if.end:                                           ; preds = %nouveau_vma_find.exit.if.end_crit_edge, %nouveau_vma_find.exit.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 32) #8
  %11 = ptrtoint ptr %pvma to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i, ptr %pvma, align 4
  %tobool3.not = icmp eq ptr %call7.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %12 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %vmm, ptr %call7.i, align 8
  %refs7 = getelementptr inbounds %struct.nouveau_vma, ptr %call7.i, i32 0, i32 1
  %13 = ptrtoint ptr %refs7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %refs7, align 4
  %addr = getelementptr inbounds %struct.nouveau_vma, ptr %call7.i, i32 0, i32 3
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 -1, ptr %addr, align 8
  %mem8 = getelementptr inbounds %struct.nouveau_vma, ptr %call7.i, i32 0, i32 4
  %15 = ptrtoint ptr %mem8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %mem8, align 8
  %fence = getelementptr inbounds %struct.nouveau_vma, ptr %call7.i, i32 0, i32 5
  %16 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %fence, align 4
  %head = getelementptr inbounds %struct.nouveau_vma, ptr %call7.i, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.nouveau_bo, ptr %nvbo, i32 0, i32 14, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %head, ptr noundef %18, ptr noundef %vma_list.i) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end5.list_add_tail.exit_crit_edge

if.end5.list_add_tail.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %head, ptr %prev.i, align 4
  %20 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %vma_list.i, ptr %head, align 8
  %prev3.i.i = getelementptr inbounds %struct.nouveau_vma, ptr %call7.i, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %head, ptr %18, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end5.list_add_tail.exit_crit_edge
  %23 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %resource, align 4
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.not = icmp eq i32 %26, 0
  br i1 %cmp.not, label %list_add_tail.exit.if.else_crit_edge, label %land.lhs.true

list_add_tail.exit.if.else_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %list_add_tail.exit
  %page = getelementptr inbounds %struct.nouveau_mem, ptr %1, i32 0, i32 4, i32 2
  %27 = ptrtoint ptr %page to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %page, align 1
  %conv = zext i8 %28 to i32
  %page12 = getelementptr inbounds %struct.nouveau_bo, ptr %nvbo, i32 0, i32 15
  %29 = ptrtoint ptr %page12 to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load = load i32, ptr %page12, align 8
  %bf.lshr = lshr i32 %bf.load, 26
  %bf.clear = and i32 %bf.lshr, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear, i32 %conv)
  %cmp13 = icmp eq i32 %bf.clear, %conv
  br i1 %cmp13, label %if.then15, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then15:                                        ; preds = %land.lhs.true
  %vmm16 = getelementptr inbounds %struct.nouveau_vmm, ptr %vmm, i32 0, i32 1
  %size = getelementptr inbounds %struct.nouveau_mem, ptr %1, i32 0, i32 4, i32 4
  %30 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %size, align 8
  %call20 = call i32 @nvif_vmm_get(ptr noundef %vmm16, i32 noundef 2, i1 noundef zeroext false, i8 noundef zeroext %28, i8 noundef zeroext 0, i64 noundef %31, ptr noundef nonnull %tmp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.then15.if.then37_crit_edge

if.then15.if.then37_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then37

if.end23:                                         ; preds = %if.then15
  %32 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %tmp, align 8
  %34 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %addr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #5
  %35 = getelementptr inbounds %struct.nvif_vma, ptr %tmp.i, i32 0, i32 1
  %36 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %33, ptr %tmp.i, align 8
  %37 = ptrtoint ptr %35 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 0, ptr %35, align 8
  %38 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call7.i, align 8
  %vmm2.i = getelementptr inbounds %struct.nouveau_vmm, ptr %39, i32 0, i32 1
  %call.i = call i32 @nouveau_mem_map(ptr noundef %1, ptr noundef %vmm2.i, ptr noundef nonnull %tmp.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end23.nouveau_vma_map.exit_crit_edge

if.end23.nouveau_vma_map.exit_crit_edge:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %nouveau_vma_map.exit

if.end.i:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %mem8 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %1, ptr %mem8, align 8
  br label %nouveau_vma_map.exit

nouveau_vma_map.exit:                             ; preds = %if.end.i, %if.end23.nouveau_vma_map.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #5
  br label %done

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %list_add_tail.exit.if.else_crit_edge
  %vmm27 = getelementptr inbounds %struct.nouveau_vmm, ptr %vmm, i32 0, i32 1
  %page29 = getelementptr inbounds %struct.nouveau_mem, ptr %1, i32 0, i32 4, i32 2
  %41 = ptrtoint ptr %page29 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %page29, align 1
  %size31 = getelementptr inbounds %struct.nouveau_mem, ptr %1, i32 0, i32 4, i32 4
  %43 = ptrtoint ptr %size31 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %size31, align 8
  %call32 = call i32 @nvif_vmm_get(ptr noundef %vmm27, i32 noundef 1, i1 noundef zeroext false, i8 noundef zeroext %42, i8 noundef zeroext 0, i64 noundef %44, ptr noundef nonnull %tmp) #5
  %45 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %tmp, align 8
  %47 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %addr, align 8
  br label %done

done:                                             ; preds = %if.else, %nouveau_vma_map.exit
  %ret.0 = phi i32 [ %call.i, %nouveau_vma_map.exit ], [ %call32, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool36.not = icmp eq i32 %ret.0, 0
  br i1 %tobool36.not, label %done.cleanup_crit_edge, label %done.if.then37_crit_edge

done.if.then37_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then37

done.cleanup_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then37:                                        ; preds = %done.if.then37_crit_edge, %if.then15.if.then37_crit_edge
  %ret.074 = phi i32 [ %ret.0, %done.if.then37_crit_edge ], [ %call20, %if.then15.if.then37_crit_edge ]
  %48 = ptrtoint ptr %pvma to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pvma, align 4
  %tobool.not.i68 = icmp eq ptr %49, null
  br i1 %tobool.not.i68, label %if.then37.nouveau_vma_del.exit_crit_edge, label %land.lhs.true.i

if.then37.nouveau_vma_del.exit_crit_edge:         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #7
  br label %nouveau_vma_del.exit

land.lhs.true.i:                                  ; preds = %if.then37
  %refs.i = getelementptr inbounds %struct.nouveau_vma, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %refs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %refs.i, align 4
  %dec.i = add i32 %51, -1
  store i32 %dec.i, ptr %refs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i = icmp slt i32 %dec.i, 1
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.nouveau_vma_del.exit_crit_edge

land.lhs.true.i.nouveau_vma_del.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nouveau_vma_del.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %addr.i = getelementptr inbounds %struct.nouveau_vma, ptr %49, i32 0, i32 3
  %52 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %53)
  %cmp1.not.i = icmp eq i64 %53, -1
  br i1 %cmp1.not.i, label %if.then.i.if.end.i69_crit_edge, label %if.then4.i, !prof !11

if.then.i.if.end.i69_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i69

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i67) #5
  %54 = getelementptr inbounds %struct.nvif_vma, ptr %tmp.i67, i32 0, i32 1
  %55 = ptrtoint ptr %tmp.i67 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %53, ptr %tmp.i67, align 8
  %56 = ptrtoint ptr %54 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 1, ptr %54, align 8
  %57 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %49, align 8
  %vmm7.i = getelementptr inbounds %struct.nouveau_vmm, ptr %58, i32 0, i32 1
  call void @nvif_vmm_put(ptr noundef %vmm7.i, ptr noundef nonnull %tmp.i67) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i67) #5
  br label %if.end.i69

if.end.i69:                                       ; preds = %if.then4.i, %if.then.i.if.end.i69_crit_edge
  %head.i = getelementptr inbounds %struct.nouveau_vma, ptr %49, i32 0, i32 2
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %head.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i69.list_del.exit.i_crit_edge

if.end.i69.list_del.exit.i_crit_edge:             ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.nouveau_vma, ptr %49, i32 0, i32 2, i32 1
  %59 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i.i.i, align 4
  %61 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %head.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev1.i.i.i.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %62, ptr %60, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i69.list_del.exit.i_crit_edge
  %65 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 256 to ptr), ptr %head.i, align 4
  %prev.i.i = getelementptr inbounds %struct.nouveau_vma, ptr %49, i32 0, i32 2, i32 1
  %66 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %67 = ptrtoint ptr %pvma to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pvma, align 4
  call void @kfree(ptr noundef %68) #5
  br label %nouveau_vma_del.exit

nouveau_vma_del.exit:                             ; preds = %list_del.exit.i, %land.lhs.true.i.nouveau_vma_del.exit_crit_edge, %if.then37.nouveau_vma_del.exit_crit_edge
  %69 = ptrtoint ptr %pvma to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %pvma, align 4
  br label %cleanup

cleanup:                                          ; preds = %nouveau_vma_del.exit, %done.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -12, %if.end.cleanup_crit_edge ], [ %ret.074, %nouveau_vma_del.exit ], [ 0, %done.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_vmm_get(ptr noundef, i32 noundef, i1 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_vmm_fini(ptr noundef %vmm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vmm1 = getelementptr inbounds %struct.nouveau_vmm, ptr %vmm, i32 0, i32 1
  tail call void @nvif_vmm_dtor(ptr noundef %vmm1) #5
  %0 = ptrtoint ptr %vmm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %vmm, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_vmm_dtor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_vmm_init(ptr noundef %cli, i32 noundef %oclass, ptr noundef %vmm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mmu = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 4
  %vmm1 = getelementptr inbounds %struct.nouveau_vmm, ptr %vmm, i32 0, i32 1
  %call = tail call i32 @nvif_vmm_ctor(ptr noundef %mmu, ptr noundef nonnull @.str, i32 noundef %oclass, i1 noundef zeroext false, i64 noundef 4096, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef %vmm1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %vmm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %cli, ptr %vmm, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_vmm_ctor(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nouveau_vmm.c", i32 131, i32 37}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"branch_weights", i32 1, i32 2000}
