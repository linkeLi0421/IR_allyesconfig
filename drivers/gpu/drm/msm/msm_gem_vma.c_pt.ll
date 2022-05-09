; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/msm_gem_vma.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/msm_gem_vma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.msm_gem_address_space = type { ptr, %struct.drm_mm, %struct.spinlock, ptr, %struct.kref, ptr }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.msm_mmu_funcs = type { ptr, ptr, ptr, ptr, ptr }
%struct.msm_gem_vma = type { %struct.drm_mm_node, i64, ptr, %struct.list_head, i8, i32 }

@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/msm/msm_gem_vma.c\00", [62 x i8] zeroinitializer }, align 32
@msm_gem_address_space_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&aspace->lock\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 47, i32 6 }
@___asan_gen_.5 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [37 x i8] c"../drivers/gpu/drm/msm/msm_gem_vma.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 155, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @msm_gem_address_space_create.__key, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gem_address_space_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_gem_address_space_put(ptr noundef %aspace) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %aspace, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %kref = getelementptr inbounds %struct.msm_gem_address_space, ptr %aspace, i32 0, i32 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !14
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #4
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #4, !srcloc !15
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !16

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #4
  br label %if.end

if.then.i:                                        ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !17
  %mm.i.i = getelementptr %struct.msm_gem_address_space, ptr %aspace, i32 0, i32 1
  tail call void @drm_mm_takedown(ptr noundef %mm.i.i) #4
  %mmu.i.i = getelementptr %struct.msm_gem_address_space, ptr %aspace, i32 0, i32 3
  %1 = ptrtoint ptr %mmu.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmu.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %if.then.i.msm_gem_address_space_destroy.exit.i_crit_edge, label %if.then.i.i

if.then.i.msm_gem_address_space_destroy.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %msm_gem_address_space_destroy.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %destroy.i.i = getelementptr inbounds %struct.msm_mmu_funcs, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %destroy.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %destroy.i.i, align 4
  tail call void %6(ptr noundef nonnull %2) #4
  br label %msm_gem_address_space_destroy.exit.i

msm_gem_address_space_destroy.exit.i:             ; preds = %if.then.i.i, %if.then.i.msm_gem_address_space_destroy.exit.i_crit_edge
  %pid.i.i = getelementptr %struct.msm_gem_address_space, ptr %aspace, i32 0, i32 5
  %7 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pid.i.i, align 4
  tail call void @put_pid(ptr noundef %8) #4
  tail call void @kfree(ptr noundef nonnull %aspace) #4
  br label %if.end

if.end:                                           ; preds = %msm_gem_address_space_destroy.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @msm_gem_address_space_get(ptr noundef returned %aspace) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %aspace, null
  %cmp.i = icmp ugt ptr %aspace, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %kref = getelementptr inbounds %struct.msm_gem_address_space, ptr %aspace, i32 0, i32 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #4
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #4, !srcloc !18
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !19

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !16

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #4
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %aspace
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_gem_purge_vma(ptr nocapture noundef readonly %aspace, ptr nocapture noundef %vma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %size1 = getelementptr inbounds %struct.drm_mm_node, ptr %vma, i32 0, i32 2
  %0 = ptrtoint ptr %size1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %size1, align 8
  %.tr = trunc i64 %1 to i32
  %conv = shl i32 %.tr, 12
  %inuse = getelementptr inbounds %struct.msm_gem_vma, ptr %vma, i32 0, i32 5
  %2 = ptrtoint ptr %inuse to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inuse, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %do.end, label %if.end23, !prof !19

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 47, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end23:                                         ; preds = %entry
  %mapped = getelementptr inbounds %struct.msm_gem_vma, ptr %vma, i32 0, i32 4
  %4 = ptrtoint ptr %mapped to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mapped, align 4, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool24.not = icmp eq i8 %5, 0
  br i1 %tobool24.not, label %if.end23.cleanup_crit_edge, label %if.end26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  %mmu = getelementptr inbounds %struct.msm_gem_address_space, ptr %aspace, i32 0, i32 3
  %6 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmu, align 4
  %tobool27.not = icmp eq ptr %7, null
  br i1 %tobool27.not, label %if.end26.if.end31_crit_edge, label %if.then28

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %unmap = getelementptr inbounds %struct.msm_mmu_funcs, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %unmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %unmap, align 4
  %iova = getelementptr inbounds %struct.msm_gem_vma, ptr %vma, i32 0, i32 1
  %12 = ptrtoint ptr %iova to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %iova, align 8
  %call = tail call i32 %11(ptr noundef nonnull %7, i64 noundef %13, i32 noundef %conv) #4
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end26.if.end31_crit_edge
  %14 = ptrtoint ptr %mapped to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %mapped, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end23.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_gem_unmap_vma(ptr nocapture noundef readnone %aspace, ptr nocapture noundef %vma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %iova = getelementptr inbounds %struct.msm_gem_vma, ptr %vma, i32 0, i32 1
  %0 = ptrtoint ptr %iova to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %iova, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %do.end, label %if.then22.critedge, !prof !19

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef null) #4
  br label %if.end23

if.then22.critedge:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %inuse = getelementptr inbounds %struct.msm_gem_vma, ptr %vma, i32 0, i32 5
  %2 = ptrtoint ptr %inuse to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inuse, align 8
  %dec = add i32 %3, -1
  store i32 %dec, ptr %inuse, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then22.critedge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_gem_map_vma(ptr noundef readonly %aspace, ptr nocapture noundef %vma, i32 noundef %prot, ptr noundef %sgt, i32 noundef %npages) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %npages, 12
  %iova = getelementptr inbounds %struct.msm_gem_vma, ptr %vma, i32 0, i32 1
  %0 = ptrtoint ptr %iova to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %iova, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !19

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end23:                                         ; preds = %entry
  %inuse = getelementptr inbounds %struct.msm_gem_vma, ptr %vma, i32 0, i32 5
  %2 = ptrtoint ptr %inuse to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inuse, align 8
  %inc = add i32 %3, 1
  store i32 %inc, ptr %inuse, align 8
  %mapped = getelementptr inbounds %struct.msm_gem_vma, ptr %vma, i32 0, i32 4
  %4 = ptrtoint ptr %mapped to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mapped, align 4, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool24.not = icmp eq i8 %5, 0
  br i1 %tobool24.not, label %if.end26, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  %6 = ptrtoint ptr %mapped to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %mapped, align 4
  %tobool28.not = icmp eq ptr %aspace, null
  br i1 %tobool28.not, label %if.end26.cleanup_crit_edge, label %land.lhs.true

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end26
  %mmu = getelementptr inbounds %struct.msm_gem_address_space, ptr %aspace, i32 0, i32 3
  %7 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmu, align 4
  %tobool29.not = icmp eq ptr %8, null
  br i1 %tobool29.not, label %land.lhs.true.cleanup_crit_edge, label %if.end34

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end34:                                         ; preds = %land.lhs.true
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %map = getelementptr inbounds %struct.msm_mmu_funcs, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map, align 4
  %call = tail call i32 %12(ptr noundef nonnull %8, i64 noundef %1, ptr noundef %sgt, i32 noundef %shl, i32 noundef %prot) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool35.not = icmp eq i32 %call, 0
  br i1 %tobool35.not, label %if.end34.cleanup_crit_edge, label %if.then36

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %mapped to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %mapped, align 4
  %14 = ptrtoint ptr %inuse to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %inuse, align 8
  %dec = add i32 %15, -1
  store i32 %dec, ptr %inuse, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %if.end34.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end23.cleanup_crit_edge ], [ %call, %if.then36 ], [ 0, %if.end34.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_gem_close_vma(ptr noundef %aspace, ptr noundef %vma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %inuse = getelementptr inbounds %struct.msm_gem_vma, ptr %vma, i32 0, i32 5
  %0 = ptrtoint ptr %inuse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inuse, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %mapped = getelementptr inbounds %struct.msm_gem_vma, ptr %vma, i32 0, i32 4
  %2 = ptrtoint ptr %mapped to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mapped, align 4, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end22.critedge, label %lor.rhs.do.end_crit_edge, !prof !16

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 103, i32 noundef 9, ptr noundef null) #4
  br label %return

if.end22.critedge:                                ; preds = %lor.rhs
  %lock = getelementptr inbounds %struct.msm_gem_address_space, ptr %aspace, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #4
  %iova = getelementptr inbounds %struct.msm_gem_vma, ptr %vma, i32 0, i32 1
  %4 = ptrtoint ptr %iova to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %iova, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool23.not = icmp eq i64 %5, 0
  br i1 %tobool23.not, label %if.end22.critedge.if.end25_crit_edge, label %if.then24

if.end22.critedge.if.end25_crit_edge:             ; preds = %if.end22.critedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then24:                                        ; preds = %if.end22.critedge
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @drm_mm_remove_node(ptr noundef %vma) #4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end22.critedge.if.end25_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #4
  %6 = ptrtoint ptr %iova to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %iova, align 8
  tail call void @msm_gem_address_space_put(ptr noundef %aspace)
  br label %return

return:                                           ; preds = %if.end25, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_remove_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_gem_init_vma(ptr noundef %aspace, ptr noundef %vma, i32 noundef %npages, i64 noundef %range_start, i64 noundef %range_end) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %iova = getelementptr inbounds %struct.msm_gem_vma, ptr %vma, i32 0, i32 1
  %0 = ptrtoint ptr %iova to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %iova, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.end22, label %do.end, !prof !16

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 123, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end22:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.msm_gem_address_space, ptr %aspace, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #4
  %mm = getelementptr inbounds %struct.msm_gem_address_space, ptr %aspace, i32 0, i32 1
  %conv = sext i32 %npages to i64
  %call = tail call i32 @drm_mm_insert_node_in_range(ptr noundef %mm, ptr noundef %vma, i64 noundef %conv, i64 noundef 0, i32 noundef 0, i64 noundef %range_start, i64 noundef %range_end, i32 noundef 0) #4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool24.not = icmp eq i32 %call, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %start = getelementptr inbounds %struct.drm_mm_node, ptr %vma, i32 0, i32 1
  %2 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %start, align 8
  %shl = shl i64 %3, 12
  %4 = ptrtoint ptr %iova to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %shl, ptr %iova, align 8
  %mapped = getelementptr inbounds %struct.msm_gem_vma, ptr %vma, i32 0, i32 4
  %5 = ptrtoint ptr %mapped to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %mapped, align 4
  %kref = getelementptr inbounds %struct.msm_gem_address_space, ptr %aspace, i32 0, i32 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #4
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #4, !srcloc !18
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end26.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !19

if.end26.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end26
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !16

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.cleanup_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end26.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end26.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ %call, %if.end22.cleanup_crit_edge ], [ 0, %if.else.i.i.i.i.cleanup_crit_edge ], [ 0, %if.end15.sink.split.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mm_insert_node_in_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @msm_gem_address_space_create(ptr noundef %mmu, ptr noundef %name, i64 noundef %va_start, i64 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp ugt ptr %mmu, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 216) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %lock = getelementptr inbounds %struct.msm_gem_address_space, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @msm_gem_address_space_create.__key, i16 noundef signext 3) #4
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %name, ptr %call7.i.i, align 8
  %mmu8 = getelementptr inbounds %struct.msm_gem_address_space, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %mmu8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mmu, ptr %mmu8, align 4
  %mm = getelementptr inbounds %struct.msm_gem_address_space, ptr %call7.i.i, i32 0, i32 1
  %shr = lshr i64 %va_start, 12
  %shr9 = lshr i64 %size, 12
  tail call void @drm_mm_init(ptr noundef %mm, i64 noundef %shr, i64 noundef %shr9) #4
  %kref = getelementptr inbounds %struct.msm_gem_address_space, ptr %call7.i.i, i32 0, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #4
  %3 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1, ptr %kref, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %do.body ], [ %mmu, %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_init(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_takedown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
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

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/msm_gem_vma.c", i32 47, i32 6}
!2 = !{ptr @msm_gem_address_space_create.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/msm_gem_vma.c", i32 155, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{i64 2148317825}
!15 = !{i64 2148232289, i64 2148232321, i64 2148232350, i64 2148232384, i64 2148232415, i64 2148232438}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2149880629}
!18 = !{i64 2148229824, i64 2148229856, i64 2148229885, i64 2148229919, i64 2148229950, i64 2148229973}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i8 0, i8 2}
