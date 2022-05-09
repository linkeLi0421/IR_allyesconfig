; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/ummu.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/ummu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.139, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.139 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_mmu_func = type { ptr, i8, %struct.anon.97, %struct.anon.98, %struct.anon.100, ptr, i8 }
%struct.anon.97 = type { %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.anon.98 = type { %struct.nvkm_sclass, ptr, ptr }
%struct.anon.100 = type { %struct.nvkm_sclass, ptr, i8, i32 }
%struct.nvkm_mmu = type { ptr, %struct.nvkm_subdev, i8, i32, [4 x %struct.anon.101], i32, [16 x %struct.anon.102], ptr, %struct.anon.103, %struct.anon.103, %struct.mutex, %struct.nvkm_device_oclass }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.101 = type { i8, i64 }
%struct.anon.102 = type { i8, i8 }
%struct.anon.103 = type { %struct.mutex, %struct.list_head }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvif_mmu_v0 = type { i8, i8, i8, i8, i16 }
%struct.nvkm_ummu = type { %struct.nvkm_object, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvif_mmu_heap_v0 = type { i8, i8, [6 x i8], i64 }
%struct.nvif_mmu_type_v0 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.nvif_mmu_kind_v0 = type { i8, i8, i16, [0 x i8] }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }

@nvkm_ummu = internal constant { %struct.nvkm_object_func, [36 x i8] } { %struct.nvkm_object_func { ptr null, ptr null, ptr null, ptr @nvkm_ummu_mthd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nvkm_ummu_sclass }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.1 = private unnamed_addr constant [10 x i8] c"nvkm_ummu\00", align 1
@___asan_gen_.2 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/ummu.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 147, i32 1 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @nvkm_ummu], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_ummu to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_ummu_new(ptr nocapture noundef readonly %device, ptr noundef %oclass, ptr nocapture noundef %argv, i32 noundef %argc, ptr nocapture noundef writeonly %pobject) local_unnamed_addr #0 align 64 {
entry:
  %kinds = alloca i32, align 4
  %unused = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mmu1 = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 35
  %0 = ptrtoint ptr %mmu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmu1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %kinds) #5
  %2 = ptrtoint ptr %kinds to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %kinds, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %unused) #5
  %3 = ptrtoint ptr %unused to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %unused, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %kind = getelementptr inbounds %struct.nvkm_mmu_func, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kind, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.land.lhs.true_crit_edge, label %if.then

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = call ptr %7(ptr noundef %1, ptr noundef nonnull %kinds, ptr noundef nonnull %unused) #5
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then, %entry.land.lhs.true_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %argc)
  %cmp4 = icmp ugt i32 %argc, 5
  br i1 %cmp4, label %land.lhs.true8, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true8:                                   ; preds = %land.lhs.true
  %8 = ptrtoint ptr %argv to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %argv, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp11 = icmp eq i8 %9, 0
  br i1 %cmp11, label %if.then13, label %land.lhs.true8.cleanup_crit_edge

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then13:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %argc)
  %tobool15.not = icmp eq i32 %argc, 6
  br i1 %tobool15.not, label %if.then19, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then19:                                        ; preds = %if.then13
  %dma_bits = getelementptr inbounds %struct.nvkm_mmu, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %dma_bits to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dma_bits, align 8
  %dmabits = getelementptr inbounds %struct.nvif_mmu_v0, ptr %argv, i32 0, i32 1
  %12 = ptrtoint ptr %dmabits to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %dmabits, align 1
  %heap_nr = getelementptr inbounds %struct.nvkm_mmu, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %heap_nr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %heap_nr, align 4
  %conv20 = trunc i32 %14 to i8
  %heap_nr21 = getelementptr inbounds %struct.nvif_mmu_v0, ptr %argv, i32 0, i32 2
  %15 = ptrtoint ptr %heap_nr21 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv20, ptr %heap_nr21, align 2
  %type_nr = getelementptr inbounds %struct.nvkm_mmu, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %type_nr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type_nr, align 8
  %conv22 = trunc i32 %17 to i8
  %type_nr23 = getelementptr inbounds %struct.nvif_mmu_v0, ptr %argv, i32 0, i32 3
  %18 = ptrtoint ptr %type_nr23 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv22, ptr %type_nr23, align 1
  %19 = ptrtoint ptr %kinds to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %kinds, align 4
  %conv24 = trunc i32 %20 to i16
  %kind_nr = getelementptr inbounds %struct.nvif_mmu_v0, ptr %argv, i32 0, i32 4
  %21 = ptrtoint ptr %kind_nr to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv24, ptr %kind_nr, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 80) #8
  %tobool27.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool27.not, label %if.then19.cleanup_crit_edge, label %if.end29

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end29:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  call void @nvkm_object_ctor(ptr noundef nonnull @nvkm_ummu, ptr noundef %oclass, ptr noundef nonnull %call7.i.i) #5
  %mmu30 = getelementptr inbounds %struct.nvkm_ummu, ptr %call7.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %mmu30 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %1, ptr %mmu30, align 8
  %24 = ptrtoint ptr %pobject to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %pobject, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then19.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29 ], [ -12, %if.then19.cleanup_crit_edge ], [ -38, %land.lhs.true.cleanup_crit_edge ], [ -38, %land.lhs.true8.cleanup_crit_edge ], [ -7, %if.then13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %unused) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %kinds) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_ummu_mthd(ptr nocapture noundef readonly %object, i32 noundef %mthd, ptr nocapture noundef %argv, i32 noundef %argc) #0 align 64 {
entry:
  %count.i = alloca i32, align 4
  %kind_inv.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mthd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mthd, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %mmu1.i = getelementptr inbounds %struct.nvkm_ummu, ptr %object, i32 0, i32 1
  %1 = ptrtoint ptr %mmu1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmu1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %argc)
  %cmp2.i = icmp ugt i32 %argc, 15
  br i1 %cmp2.i, label %land.lhs.true6.i, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true6.i:                                 ; preds = %sw.bb
  %3 = ptrtoint ptr %argv to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %argv, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp9.i = icmp eq i8 %4, 0
  br i1 %cmp9.i, label %if.then.i, label %land.lhs.true6.i.cleanup_crit_edge

land.lhs.true6.i.cleanup_crit_edge:               ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %argc)
  %tobool.not.i = icmp eq i32 %argc, 16
  br i1 %tobool.not.i, label %if.then14.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then14.i:                                      ; preds = %if.then.i
  %index15.i = getelementptr inbounds %struct.nvif_mmu_heap_v0, ptr %argv, i32 0, i32 1
  %5 = ptrtoint ptr %index15.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %index15.i, align 1
  %conv16.i = zext i8 %6 to i32
  %heap_nr.i = getelementptr inbounds %struct.nvkm_mmu, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %heap_nr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %heap_nr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv16.i)
  %cmp17.not.i = icmp sgt i32 %8, %conv16.i
  br i1 %cmp17.not.i, label %if.end20.i, label %if.then14.i.cleanup_crit_edge

if.then14.i.cleanup_crit_edge:                    ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #7
  %size.i = getelementptr %struct.nvkm_mmu, ptr %2, i32 0, i32 4, i32 %conv16.i, i32 1
  %9 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %size.i, align 8
  %size21.i = getelementptr inbounds %struct.nvif_mmu_heap_v0, ptr %argv, i32 0, i32 3
  %11 = ptrtoint ptr %size21.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %size21.i, align 8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %mmu1.i11 = getelementptr inbounds %struct.nvkm_ummu, ptr %object, i32 0, i32 1
  %12 = ptrtoint ptr %mmu1.i11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmu1.i11, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %argc)
  %cmp2.i12 = icmp ugt i32 %argc, 10
  br i1 %cmp2.i12, label %land.lhs.true6.i14, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true6.i14:                               ; preds = %sw.bb1
  %14 = ptrtoint ptr %argv to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %argv, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp9.i13 = icmp eq i8 %15, 0
  br i1 %cmp9.i13, label %if.then.i16, label %land.lhs.true6.i14.cleanup_crit_edge

land.lhs.true6.i14.cleanup_crit_edge:             ; preds = %land.lhs.true6.i14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i16:                                      ; preds = %land.lhs.true6.i14
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %argc)
  %tobool.not.i15 = icmp eq i32 %argc, 11
  br i1 %tobool.not.i15, label %if.then14.i20, label %if.then.i16.cleanup_crit_edge

if.then.i16.cleanup_crit_edge:                    ; preds = %if.then.i16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then14.i20:                                    ; preds = %if.then.i16
  %index15.i17 = getelementptr inbounds %struct.nvif_mmu_type_v0, ptr %argv, i32 0, i32 1
  %16 = ptrtoint ptr %index15.i17 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %index15.i17, align 1
  %conv16.i18 = zext i8 %17 to i32
  %type_nr.i = getelementptr inbounds %struct.nvkm_mmu, ptr %13, i32 0, i32 5
  %18 = ptrtoint ptr %type_nr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type_nr.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv16.i18)
  %cmp17.not.i19 = icmp sgt i32 %19, %conv16.i18
  br i1 %cmp17.not.i19, label %if.end20.i21, label %if.then14.i20.cleanup_crit_edge

if.then14.i20.cleanup_crit_edge:                  ; preds = %if.then14.i20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20.i21:                                     ; preds = %if.then14.i20
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr %struct.nvkm_mmu, ptr %13, i32 0, i32 6, i32 %conv16.i18
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i, align 2
  %heap.i = getelementptr %struct.nvkm_mmu, ptr %13, i32 0, i32 6, i32 %conv16.i18, i32 1
  %22 = ptrtoint ptr %heap.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %heap.i, align 1
  %heap26.i = getelementptr inbounds %struct.nvif_mmu_type_v0, ptr %argv, i32 0, i32 2
  %24 = ptrtoint ptr %heap26.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %heap26.i, align 1
  %and.i = and i8 %21, 1
  %vram.i = getelementptr inbounds %struct.nvif_mmu_type_v0, ptr %argv, i32 0, i32 3
  %25 = ptrtoint ptr %vram.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %and.i, ptr %vram.i, align 1
  %and32.i = lshr i8 %21, 1
  %and32.lobit.i = and i8 %and32.i, 1
  %host.i = getelementptr inbounds %struct.nvif_mmu_type_v0, ptr %argv, i32 0, i32 4
  %26 = ptrtoint ptr %host.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %and32.lobit.i, ptr %host.i, align 1
  %and40.i = lshr i8 %21, 2
  %and40.lobit.i = and i8 %and40.i, 1
  %comp.i = getelementptr inbounds %struct.nvif_mmu_type_v0, ptr %argv, i32 0, i32 5
  %27 = ptrtoint ptr %comp.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %and40.lobit.i, ptr %comp.i, align 1
  %and48.i = lshr i8 %21, 3
  %and48.lobit.i = and i8 %and48.i, 1
  %disp.i = getelementptr inbounds %struct.nvif_mmu_type_v0, ptr %argv, i32 0, i32 6
  %28 = ptrtoint ptr %disp.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %and48.lobit.i, ptr %disp.i, align 1
  %and56.i = lshr i8 %21, 4
  %and56.lobit.i = and i8 %and56.i, 1
  %kind.i = getelementptr inbounds %struct.nvif_mmu_type_v0, ptr %argv, i32 0, i32 7
  %29 = ptrtoint ptr %kind.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %and56.lobit.i, ptr %kind.i, align 1
  %and64.i = lshr i8 %21, 5
  %and64.lobit.i = and i8 %and64.i, 1
  %mappable.i = getelementptr inbounds %struct.nvif_mmu_type_v0, ptr %argv, i32 0, i32 8
  %30 = ptrtoint ptr %mappable.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %and64.lobit.i, ptr %mappable.i, align 1
  %and72.i = lshr i8 %21, 6
  %and72.lobit.i = and i8 %and72.i, 1
  %coherent.i = getelementptr inbounds %struct.nvif_mmu_type_v0, ptr %argv, i32 0, i32 9
  %31 = ptrtoint ptr %coherent.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %and72.lobit.i, ptr %coherent.i, align 1
  %.lobit.i = lshr i8 %21, 7
  %uncached.i = getelementptr inbounds %struct.nvif_mmu_type_v0, ptr %argv, i32 0, i32 10
  %32 = ptrtoint ptr %uncached.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %.lobit.i, ptr %uncached.i, align 1
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %mmu1.i23 = getelementptr inbounds %struct.nvkm_ummu, ptr %object, i32 0, i32 1
  %33 = ptrtoint ptr %mmu1.i23 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmu1.i23, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count.i) #5
  %35 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %count.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %kind_inv.i) #5
  %36 = ptrtoint ptr %kind_inv.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %kind_inv.i, align 1
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %34, align 8
  %kind2.i = getelementptr inbounds %struct.nvkm_mmu_func, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %kind2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %kind2.i, align 4
  %tobool.not.i24 = icmp eq ptr %40, null
  br i1 %tobool.not.i24, label %sw.bb3.land.lhs.true.i_crit_edge, label %if.then.i25

sw.bb3.land.lhs.true.i_crit_edge:                 ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

if.then.i25:                                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = call ptr %40(ptr noundef %34, ptr noundef nonnull %count.i, ptr noundef nonnull %kind_inv.i) #5
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then.i25, %sw.bb3.land.lhs.true.i_crit_edge
  %kind.0.i = phi ptr [ %call.i, %if.then.i25 ], [ null, %sw.bb3.land.lhs.true.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %argc)
  %cmp5.i = icmp ugt i32 %argc, 3
  br i1 %cmp5.i, label %land.lhs.true9.i, label %land.lhs.true.i.nvkm_ummu_kind.exit_crit_edge

land.lhs.true.i.nvkm_ummu_kind.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_ummu_kind.exit

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %41 = ptrtoint ptr %argv to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %argv, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp12.i = icmp eq i8 %42, 0
  br i1 %cmp12.i, label %if.then20.i, label %land.lhs.true9.i.nvkm_ummu_kind.exit_crit_edge

land.lhs.true9.i.nvkm_ummu_kind.exit_crit_edge:   ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_ummu_kind.exit

if.then20.i:                                      ; preds = %land.lhs.true9.i
  %sub.i = add i32 %argc, -4
  %count21.i = getelementptr inbounds %struct.nvif_mmu_kind_v0, ptr %argv, i32 0, i32 2
  %43 = ptrtoint ptr %count21.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %count21.i, align 2
  %conv22.i = zext i16 %44 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv22.i)
  %cmp23.not.i = icmp eq i32 %sub.i, %conv22.i
  br i1 %cmp23.not.i, label %if.end26.i, label %if.then20.i.nvkm_ummu_kind.exit_crit_edge

if.then20.i.nvkm_ummu_kind.exit_crit_edge:        ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_ummu_kind.exit

if.end26.i:                                       ; preds = %if.then20.i
  %45 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %sub.i)
  %cmp29.i = icmp slt i32 %46, %sub.i
  br i1 %cmp29.i, label %if.end26.i.nvkm_ummu_kind.exit_crit_edge, label %if.end32.i

if.end26.i.nvkm_ummu_kind.exit_crit_edge:         ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nvkm_ummu_kind.exit

if.end32.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %kind_inv.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %kind_inv.i, align 1
  %kind_inv33.i = getelementptr inbounds %struct.nvif_mmu_kind_v0, ptr %argv, i32 0, i32 1
  %49 = ptrtoint ptr %kind_inv33.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %kind_inv33.i, align 1
  %data.i = getelementptr inbounds %struct.nvif_mmu_kind_v0, ptr %argv, i32 0, i32 3
  %50 = call ptr @memcpy(ptr %data.i, ptr %kind.0.i, i32 %sub.i)
  br label %nvkm_ummu_kind.exit

nvkm_ummu_kind.exit:                              ; preds = %if.end32.i, %if.end26.i.nvkm_ummu_kind.exit_crit_edge, %if.then20.i.nvkm_ummu_kind.exit_crit_edge, %land.lhs.true9.i.nvkm_ummu_kind.exit_crit_edge, %land.lhs.true.i.nvkm_ummu_kind.exit_crit_edge
  %retval.0.i26 = phi i32 [ 0, %if.end32.i ], [ -22, %if.then20.i.nvkm_ummu_kind.exit_crit_edge ], [ -22, %if.end26.i.nvkm_ummu_kind.exit_crit_edge ], [ -38, %land.lhs.true9.i.nvkm_ummu_kind.exit_crit_edge ], [ -38, %land.lhs.true.i.nvkm_ummu_kind.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %kind_inv.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i) #5
  br label %cleanup

cleanup:                                          ; preds = %nvkm_ummu_kind.exit, %if.end20.i21, %if.then14.i20.cleanup_crit_edge, %if.then.i16.cleanup_crit_edge, %land.lhs.true6.i14.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %if.end20.i, %if.then14.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %land.lhs.true6.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i26, %nvkm_ummu_kind.exit ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end20.i ], [ -22, %if.then14.i.cleanup_crit_edge ], [ -38, %sw.bb.cleanup_crit_edge ], [ -38, %land.lhs.true6.i.cleanup_crit_edge ], [ -7, %if.then.i.cleanup_crit_edge ], [ 0, %if.end20.i21 ], [ -22, %if.then14.i20.cleanup_crit_edge ], [ -38, %sw.bb1.cleanup_crit_edge ], [ -38, %land.lhs.true6.i14.cleanup_crit_edge ], [ -7, %if.then.i16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nvkm_ummu_sclass(ptr nocapture noundef readonly %object, i32 noundef %index, ptr nocapture noundef writeonly %oclass) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mmu1 = getelementptr inbounds %struct.nvkm_ummu, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %mmu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmu1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %oclass2 = getelementptr inbounds %struct.nvkm_mmu_func, ptr %3, i32 0, i32 3, i32 0, i32 2
  %4 = ptrtoint ptr %oclass2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %oclass2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then:                                          ; preds = %entry
  %mem = getelementptr inbounds %struct.nvkm_mmu_func, ptr %3, i32 0, i32 3
  %dec = add i32 %index, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp = icmp eq i32 %index, 0
  br i1 %cmp, label %if.then.cleanup.sink.split_crit_edge, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %index.addr.0 = phi i32 [ %dec, %if.then.if.end7_crit_edge ], [ %index, %entry.if.end7_crit_edge ]
  %oclass10 = getelementptr inbounds %struct.nvkm_mmu_func, ptr %3, i32 0, i32 4, i32 0, i32 2
  %6 = ptrtoint ptr %oclass10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oclass10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool11.not = icmp ne i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.addr.0)
  %cmp14 = icmp eq i32 %index.addr.0, 0
  %or.cond = and i1 %cmp14, %tobool11.not
  br i1 %or.cond, label %if.then15, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then15:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %vmm = getelementptr inbounds %struct.nvkm_mmu_func, ptr %3, i32 0, i32 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then15, %if.then.cleanup.sink.split_crit_edge
  %vmm.sink = phi ptr [ %vmm, %if.then15 ], [ %mem, %if.then.cleanup.sink.split_crit_edge ]
  %nvkm_uvmm_new.sink = phi ptr [ @nvkm_uvmm_new, %if.then15 ], [ @nvkm_umem_new, %if.then.cleanup.sink.split_crit_edge ]
  %base16 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1
  %8 = call ptr @memcpy(ptr %base16, ptr %vmm.sink, i32 20)
  %9 = ptrtoint ptr %oclass to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %nvkm_uvmm_new.sink, ptr %oclass, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end7.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_umem_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_uvmm_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @nvkm_ummu, !1, !"nvkm_ummu", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/ummu.c", i32 147, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
