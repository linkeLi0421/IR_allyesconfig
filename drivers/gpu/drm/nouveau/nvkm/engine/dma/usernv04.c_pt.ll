; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/dma/usernv04.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/dma/usernv04.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_dmaobj_func = type { ptr }
%struct.nvkm_mmu_func = type { ptr, i8, %struct.anon.5, %struct.anon.6, %struct.anon.7, ptr, i8 }
%struct.anon.5 = type { %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.anon.6 = type { %struct.nvkm_sclass, ptr, ptr }
%struct.anon.7 = type { %struct.nvkm_sclass, ptr, i8, i32 }
%struct.nvkm_dma = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.143 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.143 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_dmaobj = type { ptr, ptr, %struct.nvkm_object, i32, i32, i64, i64 }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.138, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.138 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nv04_dmaobj = type { %struct.nvkm_dmaobj, i8, i32, i32 }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_mmu = type { ptr, %struct.nvkm_subdev, i8, i32, [4 x %struct.anon.139], i32, [16 x %struct.anon.140], ptr, %struct.anon.141, %struct.anon.141, %struct.mutex, %struct.nvkm_device_oclass }
%struct.anon.139 = type { i8, i64 }
%struct.anon.140 = type { i8, i8 }
%struct.anon.141 = type { %struct.mutex, %struct.list_head }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_vmm = type { ptr, ptr, ptr, i32, %struct.kref, %struct.mutex, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_root, %struct.rb_root, i8, [51 x %struct.atomic_t], i32, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.rb_root = type { ptr }
%struct.nvkm_mmu_pt = type { %union.anon.4, ptr, i8, i16, i64, %struct.list_head }
%union.anon.4 = type { ptr }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }

@nv04_dmaobj_func = internal constant { %struct.nvkm_dmaobj_func, [28 x i8] } { %struct.nvkm_dmaobj_func { ptr @nv04_dmaobj_bind }, [28 x i8] zeroinitializer }, align 32
@nv04_mmu = external dso_local constant %struct.nvkm_mmu_func, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"nv04_dmaobj_func\00", align 1
@___asan_gen_.3 = private constant [54 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/dma/usernv04.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 76, i32 1 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @nv04_dmaobj_func], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_dmaobj_func to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv04_dmaobj_new(ptr noundef %dma, ptr noundef %oclass, ptr noundef %data, i32 noundef %size, ptr nocapture noundef writeonly %pdmaobj) local_unnamed_addr #0 align 64 {
entry:
  %data.addr = alloca ptr, align 4
  %size.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %data, ptr %data.addr, align 4
  %1 = ptrtoint ptr %size.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %size, ptr %size.addr, align 4
  %device1 = getelementptr inbounds %struct.nvkm_dma, ptr %dma, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 120) #6
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %pdmaobj to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %pdmaobj, align 4
  %call3 = call i32 @nvkm_dmaobj_ctor(ptr noundef nonnull @nv04_dmaobj_func, ptr noundef %dma, ptr noundef %oclass, ptr noundef nonnull %data.addr, ptr noundef nonnull %size.addr, ptr noundef nonnull %call7.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %target = getelementptr inbounds %struct.nvkm_dmaobj, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %target, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp eq i32 %7, 3
  br i1 %cmp, label %if.then8, label %if.end15

if.then8:                                         ; preds = %if.end6
  %mmu = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 35
  %8 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmu, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %cmp9 = icmp eq ptr %11, @nv04_mmu
  br i1 %cmp9, label %if.then10, label %if.then8.if.end15.thread_crit_edge

if.then8.if.end15.thread_crit_edge:               ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15.thread

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #5
  %clone = getelementptr inbounds %struct.nv04_dmaobj, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %clone to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %clone, align 8
  br label %if.end15.thread

if.end15.thread:                                  ; preds = %if.then10, %if.then8.if.end15.thread_crit_edge
  %13 = ptrtoint ptr %target to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %target, align 8
  %access = getelementptr inbounds %struct.nvkm_dmaobj, ptr %call7.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %access to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %access, align 4
  %oclass1758 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %oclass1758 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %oclass1758, align 4
  %flags059 = getelementptr inbounds %struct.nv04_dmaobj, ptr %call7.i.i, i32 0, i32 2
  br label %sw.bb21

if.end15:                                         ; preds = %if.end6
  %oclass17 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %oclass17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %oclass17, align 4
  %flags0 = getelementptr inbounds %struct.nv04_dmaobj, ptr %call7.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %flags0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %flags0, align 4
  %20 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.end15.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.end15.sw.bb21_crit_edge
    i32 2, label %sw.bb24
  ]

if.end15.sw.bb21_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb21

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  %or = or i32 %18, 12288
  %21 = ptrtoint ptr %flags0 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or, ptr %flags0, align 4
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end15.sw.bb21_crit_edge, %if.end15.thread
  %flags061 = phi ptr [ %flags059, %if.end15.thread ], [ %flags0, %if.end15.sw.bb21_crit_edge ]
  %22 = phi i32 [ %16, %if.end15.thread ], [ %18, %if.end15.sw.bb21_crit_edge ]
  %or23 = or i32 %22, 143360
  %23 = ptrtoint ptr %flags061 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or23, ptr %flags061, align 4
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  %or26 = or i32 %18, 208896
  %24 = ptrtoint ptr %flags0 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or26, ptr %flags0, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb24, %sw.bb21, %sw.bb
  %flags060 = phi ptr [ %flags0, %sw.bb24 ], [ %flags061, %sw.bb21 ], [ %flags0, %sw.bb ]
  %access28 = getelementptr inbounds %struct.nvkm_dmaobj, ptr %call7.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %access28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %access28, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %26, label %sw.epilog.cleanup_crit_edge [
    i32 1, label %sw.bb29
    i32 2, label %sw.bb32
    i32 3, label %sw.epilog.sw.bb35_crit_edge
  ]

sw.epilog.sw.bb35_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb35

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb29:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  %28 = ptrtoint ptr %flags060 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags060, align 4
  %or31 = or i32 %29, 16384
  store i32 %or31, ptr %flags060, align 4
  br label %cleanup

sw.bb32:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  %30 = ptrtoint ptr %flags060 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags060, align 4
  %or34 = or i32 %31, 32768
  store i32 %or34, ptr %flags060, align 4
  br label %sw.bb35

sw.bb35:                                          ; preds = %sw.bb32, %sw.epilog.sw.bb35_crit_edge
  %flags2 = getelementptr inbounds %struct.nv04_dmaobj, ptr %call7.i.i, i32 0, i32 3
  %32 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags2, align 8
  %or36 = or i32 %33, 2
  store i32 %or36, ptr %flags2, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb35, %sw.bb29, %sw.epilog.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ 0, %sw.bb35 ], [ 0, %sw.bb29 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_dmaobj_ctor(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv04_dmaobj_bind(ptr nocapture noundef readonly %base, ptr noundef %parent, i32 noundef %align, ptr noundef %pgpuobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dma = getelementptr inbounds %struct.nvkm_dmaobj, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma, align 4
  %device2 = getelementptr inbounds %struct.nvkm_dma, ptr %1, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device2, align 4
  %start = getelementptr inbounds %struct.nvkm_dmaobj, ptr %base, i32 0, i32 5
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %start, align 8
  %and = and i64 %5, 4294963200
  %limit = getelementptr inbounds %struct.nvkm_dmaobj, ptr %base, i32 0, i32 6
  %6 = ptrtoint ptr %limit to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %limit, align 8
  %sub = sub i64 %7, %5
  %conv = trunc i64 %sub to i32
  %clone = getelementptr inbounds %struct.nv04_dmaobj, ptr %base, i32 0, i32 1
  %8 = ptrtoint ptr %clone to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %clone, align 8, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %extract.t78 = trunc i64 %and to i32
  br i1 %tobool.not, label %entry.if.end19_crit_edge, label %if.then

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

if.then:                                          ; preds = %entry
  %mmu = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 35
  %10 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmu, align 8
  %vmm = getelementptr inbounds %struct.nvkm_mmu, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vmm, align 4
  %pd = getelementptr inbounds %struct.nvkm_vmm, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pd, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %memory = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %memory, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool12.not = icmp eq i64 %5, 0
  br i1 %tobool12.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @nvkm_gpuobj_wrap(ptr noundef %19, ptr noundef %pgpuobj) #3
  br label %cleanup39

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %acquire, align 4
  %call14 = tail call ptr %23(ptr noundef %19) #3
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %19, i32 0, i32 1
  %24 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ptrs, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %shr = lshr exact i64 %and, 10
  %add = add nuw nsw i64 %shr, 8
  %call15 = tail call i32 %27(ptr noundef %19, i64 noundef %add) #3
  %and17 = and i32 %call15, -4096
  %28 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %19, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %release, align 4
  tail call void %31(ptr noundef %19) #3
  br label %if.end19

if.end19:                                         ; preds = %cleanup, %entry.if.end19_crit_edge
  %offset.1.off0 = phi i32 [ %and17, %cleanup ], [ %extract.t78, %entry.if.end19_crit_edge ]
  %call20 = tail call i32 @nvkm_gpuobj_new(ptr noundef %3, i32 noundef 16, i32 noundef %align, i1 noundef zeroext false, ptr noundef %parent, ptr noundef %pgpuobj) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp eq i32 %call20, 0
  br i1 %cmp, label %if.then22, label %if.end19.cleanup39_crit_edge

if.end19.cleanup39_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup39

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #5
  %32 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pgpuobj, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %call24 = tail call ptr %37(ptr noundef %33) #3
  %38 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pgpuobj, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  %wr32 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wr32, align 4
  %flags0 = getelementptr inbounds %struct.nv04_dmaobj, ptr %base, i32 0, i32 2
  %44 = ptrtoint ptr %flags0 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags0, align 4
  %.tr = trunc i64 %5 to i32
  %46 = shl i32 %.tr, 20
  %conv26 = or i32 %45, %46
  tail call void %43(ptr noundef %39, i32 noundef 0, i32 noundef %conv26) #3
  %47 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pgpuobj, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 8
  %wr3227 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %wr3227 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %wr3227, align 4
  tail call void %52(ptr noundef %48, i32 noundef 4, i32 noundef %conv) #3
  %53 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pgpuobj, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 8
  %wr3228 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %wr3228 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wr3228, align 4
  %flags2 = getelementptr inbounds %struct.nv04_dmaobj, ptr %base, i32 0, i32 3
  %59 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags2, align 8
  %conv31 = or i32 %60, %offset.1.off0
  tail call void %58(ptr noundef %54, i32 noundef 8, i32 noundef %conv31) #3
  %61 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pgpuobj, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 8
  %wr3232 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %wr3232 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %wr3232, align 4
  %67 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags2, align 8
  %conv36 = or i32 %68, %offset.1.off0
  tail call void %66(ptr noundef %62, i32 noundef 12, i32 noundef %conv36) #3
  %69 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pgpuobj, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 8
  %release37 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %release37 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %release37, align 4
  tail call void %74(ptr noundef %70) #3
  br label %cleanup39

cleanup39:                                        ; preds = %if.then22, %if.end19.cleanup39_crit_edge, %cleanup.thread
  %retval.1 = phi i32 [ 0, %if.then22 ], [ %call20, %if.end19.cleanup39_crit_edge ], [ %call, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpuobj_wrap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpuobj_new(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @nv04_dmaobj_func, !1, !"nv04_dmaobj_func", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/dma/usernv04.c", i32 76, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i8 0, i8 2}
