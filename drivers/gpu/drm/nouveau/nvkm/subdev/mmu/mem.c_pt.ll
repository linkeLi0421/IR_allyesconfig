; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/mem.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/mem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_mem = type { %struct.nvkm_memory, i32, ptr, i64, ptr, %union.anon.145 }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.145 = type { ptr }
%struct.nvkm_mmu = type { ptr, %struct.nvkm_subdev, i8, i32, [4 x %struct.anon.136], i32, [16 x %struct.anon.137], ptr, %struct.anon.138, %struct.anon.138, %struct.mutex, %struct.nvkm_device_oclass }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.anon.136 = type { i8, i64 }
%struct.anon.137 = type { i8, i8 }
%struct.anon.138 = type { %struct.mutex, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.135, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.anon.135 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvif_mem_ram_v0 = type { i8, [7 x i8], ptr, ptr }
%struct.nvkm_mmu_func = type { ptr, i8, %struct.anon, %struct.anon.0, %struct.anon.1, ptr, i8 }
%struct.anon = type { %struct.nvkm_sclass }
%struct.anon.0 = type { %struct.nvkm_sclass, ptr, ptr }
%struct.anon.1 = type { %struct.nvkm_sclass, ptr, i8, i32 }
%struct.nvkm_vmm_map = type { ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, i64, i64, i64 }

@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@nvkm_mem_dma = internal constant { %struct.nvkm_memory_func, [56 x i8] } { %struct.nvkm_memory_func { ptr @nvkm_mem_dtor, ptr @nvkm_mem_target, ptr @nvkm_mem_page, ptr null, ptr @nvkm_mem_addr, ptr @nvkm_mem_size, ptr null, ptr null, ptr null, ptr @nvkm_mem_map_dma }, [56 x i8] zeroinitializer }, align 32
@nvkm_mem_sgl = internal constant { %struct.nvkm_memory_func, [56 x i8] } { %struct.nvkm_memory_func { ptr @nvkm_mem_dtor, ptr @nvkm_mem_target, ptr @nvkm_mem_page, ptr null, ptr @nvkm_mem_addr, ptr @nvkm_mem_size, ptr null, ptr null, ptr null, ptr @nvkm_mem_map_sgl }, [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [13 x i8] c"nvkm_mem_dma\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 100, i32 1 }
@___asan_gen_.4 = private unnamed_addr constant [13 x i8] c"nvkm_mem_sgl\00", align 1
@___asan_gen_.5 = private constant [49 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/mem.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 123, i32 1 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @nvkm_mem_dma, ptr @nvkm_mem_sgl], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_mem_dma to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_mem_sgl to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_mem_map_host(ptr nocapture noundef readonly %memory, ptr nocapture noundef writeonly %pmap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mem1 = getelementptr inbounds %struct.nvkm_mem, ptr %memory, i32 0, i32 4
  %0 = ptrtoint ptr %mem1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pages = getelementptr inbounds %struct.nvkm_mem, ptr %memory, i32 0, i32 3
  %2 = ptrtoint ptr %pages to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pages, align 8
  %conv = trunc i64 %3 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %4 = load i32, ptr @pgprot_kernel, align 4
  %or = or i32 %4, 512
  %call = tail call ptr @vmap(ptr noundef nonnull %1, i32 noundef %conv, i32 noundef 4, i32 noundef %or) #9
  %5 = ptrtoint ptr %pmap to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %pmap, align 4
  %tobool3.not = icmp eq ptr %call, null
  %cond = select i1 %tobool3.not, i32 -14, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_mem_new_type(ptr noundef %mmu, i32 noundef %type, i8 noundef zeroext %page, i64 noundef %size, ptr noundef %argv, i32 noundef %argc, ptr nocapture noundef writeonly %pmemory) local_unnamed_addr #0 align 64 {
entry:
  %memory = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %memory) #9
  %0 = ptrtoint ptr %memory to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %memory, align 4
  %arrayidx = getelementptr %struct.nvkm_mmu, ptr %mmu, i32 0, i32 6, i32 %type
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 2
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.end

if.else:                                          ; preds = %entry
  %device.i = getelementptr inbounds %struct.nvkm_mmu, ptr %mmu, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device.i, align 4
  %dev1.i = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1.i, align 8
  %8 = and i8 %2, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %8)
  %9 = icmp eq i8 %8, 64
  %target.0.i = select i1 %9, i32 2, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %page)
  %cmp.not.i = icmp eq i8 %page, 12
  br i1 %cmp.not.i, label %if.end13.i, label %if.else.if.then5_crit_edge

if.else.if.then5_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

if.end13.i:                                       ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 40) #12
  %tobool14.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool14.not.i, label %if.end13.i.if.then5_crit_edge, label %if.end16.i

if.end13.i.if.then5_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

if.end16.i:                                       ; preds = %if.end13.i
  %target17.i = getelementptr inbounds %struct.nvkm_mem, ptr %call7.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %target17.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %target.0.i, ptr %target17.i, align 8
  %mmu18.i = getelementptr inbounds %struct.nvkm_mem, ptr %call7.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %mmu18.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %mmu, ptr %mmu18.i, align 4
  %13 = ptrtoint ptr %memory to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i.i, ptr %memory, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %argc)
  %cmp22.i = icmp ugt i32 %argc, 15
  br i1 %cmp22.i, label %land.lhs.true28.i, label %land.lhs.true58.i

land.lhs.true28.i:                                ; preds = %if.end16.i
  %14 = ptrtoint ptr %argv to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %argv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp31.i = icmp eq i8 %15, 0
  br i1 %cmp31.i, label %if.then33.i, label %land.lhs.true28.i.if.then65.i_crit_edge

land.lhs.true28.i.if.then65.i_crit_edge:          ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then65.i

if.then33.i:                                      ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %argc)
  %tobool35.not.i = icmp eq i32 %argc, 16
  br i1 %tobool35.not.i, label %if.then39.i, label %if.then33.i.if.then65.i_crit_edge

if.then33.i.if.then65.i_crit_edge:                ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then65.i

if.then39.i:                                      ; preds = %if.then33.i
  %dma.i = getelementptr inbounds %struct.nvif_mem_ram_v0, ptr %argv, i32 0, i32 2
  %16 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma.i, align 4
  %tobool40.not.i = icmp eq ptr %17, null
  br i1 %tobool40.not.i, label %if.else44.i, label %if.then41.i

if.then41.i:                                      ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nvkm_memory_ctor(ptr noundef nonnull @nvkm_mem_dma, ptr noundef nonnull %call7.i.i.i) #9
  br label %if.end46.i

if.else44.i:                                      ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nvkm_memory_ctor(ptr noundef nonnull @nvkm_mem_sgl, ptr noundef nonnull %call7.i.i.i) #9
  %sgl.i = getelementptr inbounds %struct.nvif_mem_ram_v0, ptr %argv, i32 0, i32 3
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.else44.i, %if.then41.i
  %.sink.in.i = phi ptr [ %sgl.i, %if.else44.i ], [ %dma.i, %if.then41.i ]
  %18 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.sink.i = load ptr, ptr %.sink.in.i, align 4
  %19 = getelementptr inbounds %struct.nvkm_mem, ptr %call7.i.i.i, i32 0, i32 5
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %.sink.i, ptr %19, align 4
  %and47.i = and i64 %size, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and47.i)
  %cmp48.i = icmp eq i64 %and47.i, 0
  br i1 %cmp48.i, label %if.end51.i, label %if.end46.i.if.then5_crit_edge

if.end46.i.if.then5_crit_edge:                    ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

if.end51.i:                                       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i = lshr i64 %size, 12
  %pages.i = getelementptr inbounds %struct.nvkm_mem, ptr %call7.i.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %pages.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %shr.i, ptr %pages.i, align 8
  br label %if.end6

land.lhs.true58.i:                                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc)
  %cmp59.i = icmp eq i32 %argc, 0
  br i1 %cmp59.i, label %if.end67.i, label %land.lhs.true58.i.if.then65.i_crit_edge

land.lhs.true58.i.if.then65.i_crit_edge:          ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then65.i

if.then65.i:                                      ; preds = %land.lhs.true58.i.if.then65.i_crit_edge, %if.then33.i.if.then65.i_crit_edge, %land.lhs.true28.i.if.then65.i_crit_edge
  %_ret55.0.ph.i = phi i32 [ -38, %land.lhs.true58.i.if.then65.i_crit_edge ], [ -38, %land.lhs.true28.i.if.then65.i_crit_edge ], [ -7, %if.then33.i.if.then65.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %if.then5

if.end67.i:                                       ; preds = %land.lhs.true58.i
  tail call void @nvkm_memory_ctor(ptr noundef nonnull @nvkm_mem_dma, ptr noundef nonnull %call7.i.i.i) #9
  %add.i = add i64 %size, 4095
  %shr70.i = lshr i64 %add.i, 12
  %conv71.i = trunc i64 %shr70.i to i32
  %22 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %conv71.i, i32 4) #9
  %23 = extractvalue { i32, i1 } %22, 1
  br i1 %23, label %kvmalloc_array.exit.thread.i, label %kvmalloc_array.exit.i, !prof !16

kvmalloc_array.exit.thread.i:                     ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #11
  %mem73191.i = getelementptr inbounds %struct.nvkm_mem, ptr %call7.i.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %mem73191.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %mem73191.i, align 8
  br label %if.then5

kvmalloc_array.exit.i:                            ; preds = %if.end67.i
  %25 = extractvalue { i32, i1 } %22, 0
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %25, i32 noundef 3264, i32 noundef -1) #13
  %mem73.i = getelementptr inbounds %struct.nvkm_mem, ptr %call7.i.i.i, i32 0, i32 4
  %26 = ptrtoint ptr %mem73.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i.i.i, ptr %mem73.i, align 8
  %tobool74.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool74.not.i, label %kvmalloc_array.exit.i.if.then5_crit_edge, label %kvmalloc_array.exit178.i

kvmalloc_array.exit.i.if.then5_crit_edge:         ; preds = %kvmalloc_array.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

kvmalloc_array.exit178.i:                         ; preds = %kvmalloc_array.exit.i
  %call.i.i175.i = tail call noalias ptr @kvmalloc_node(i32 noundef %25, i32 noundef 3264, i32 noundef -1) #13
  %27 = getelementptr inbounds %struct.nvkm_mem, ptr %call7.i.i.i, i32 0, i32 5
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i.i175.i, ptr %27, align 4
  %tobool79.not.i = icmp eq ptr %call.i.i175.i, null
  br i1 %tobool79.not.i, label %kvmalloc_array.exit178.i.if.then5_crit_edge, label %if.end81.i

kvmalloc_array.exit178.i.if.then5_crit_edge:      ; preds = %kvmalloc_array.exit178.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

if.end81.i:                                       ; preds = %kvmalloc_array.exit178.i
  %dma_bits.i = getelementptr inbounds %struct.nvkm_mmu, ptr %mmu, i32 0, i32 2
  %29 = ptrtoint ptr %dma_bits.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %dma_bits.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %30)
  %cmp83.i = icmp ugt i8 %30, 32
  %..i = select i1 %cmp83.i, i32 1052098, i32 1052100
  %pages89.i = getelementptr inbounds %struct.nvkm_mem, ptr %call7.i.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %pages89.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 0, ptr %pages89.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4096, i64 %add.i)
  %tobool90.not193.i = icmp ult i64 %add.i, 4096
  br i1 %tobool90.not193.i, label %if.end81.i.if.end6_crit_edge, label %if.end81.i.for.body.i_crit_edge

if.end81.i.for.body.i_crit_edge:                  ; preds = %if.end81.i
  br label %for.body.i

if.end81.i.if.end6_crit_edge:                     ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

for.body.i:                                       ; preds = %if.end107.i.for.body.i_crit_edge, %if.end81.i.for.body.i_crit_edge
  %size.addr.0194.i = phi i64 [ %dec.i, %if.end107.i.for.body.i_crit_edge ], [ %shr70.i, %if.end81.i.for.body.i_crit_edge ]
  %call38.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef %..i, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  %tobool92.not.i = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool92.not.i, label %for.body.i.if.then5_crit_edge, label %if.end94.i

for.body.i.if.then5_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

if.end94.i:                                       ; preds = %for.body.i
  %32 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device.i, align 4
  %dev97.i = getelementptr inbounds %struct.nvkm_device, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %dev97.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev97.i, align 8
  %call98.i = tail call i32 @dma_map_page_attrs(ptr noundef %35, ptr noundef nonnull %call38.i.i.i.i, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #9
  %36 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %27, align 4
  %38 = ptrtoint ptr %pages89.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %pages89.i, align 8
  %idxprom.i = trunc i64 %39 to i32
  %arrayidx100.i = getelementptr i32, ptr %37, i32 %idxprom.i
  %40 = ptrtoint ptr %arrayidx100.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call98.i, ptr %arrayidx100.i, align 4
  %41 = load ptr, ptr %27, align 4
  %42 = load i64, ptr %pages89.i, align 8
  %idxprom102.i = trunc i64 %42 to i32
  %arrayidx103.i = getelementptr i32, ptr %41, i32 %idxprom102.i
  %43 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx103.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %7, i32 noundef %44) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %cmp.i.not.i = icmp eq i32 %44, -1
  br i1 %cmp.i.not.i, label %if.then106.i, label %if.end107.i

if.then106.i:                                     ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i.i, i32 noundef 0) #9
  br label %if.then5

if.end107.i:                                      ; preds = %if.end94.i
  %45 = ptrtoint ptr %mem73.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mem73.i, align 8
  %47 = ptrtoint ptr %pages89.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %pages89.i, align 8
  %idxprom110.i = trunc i64 %48 to i32
  %arrayidx111.i = getelementptr ptr, ptr %46, i32 %idxprom110.i
  %49 = ptrtoint ptr %arrayidx111.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call38.i.i.i.i, ptr %arrayidx111.i, align 4
  %dec.i = add nsw i64 %size.addr.0194.i, -1
  %50 = load i64, ptr %pages89.i, align 8
  %inc.i = add i64 %50, 1
  store i64 %inc.i, ptr %pages89.i, align 8
  %tobool90.not.i = icmp eq i64 %dec.i, 0
  br i1 %tobool90.not.i, label %if.end107.i.if.end6_crit_edge, label %if.end107.i.for.body.i_crit_edge

if.end107.i.for.body.i_crit_edge:                 ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end107.i.if.end6_crit_edge:                    ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end:                                           ; preds = %entry
  %51 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mmu, align 8
  %vram = getelementptr inbounds %struct.nvkm_mmu_func, ptr %52, i32 0, i32 3, i32 1
  %53 = ptrtoint ptr %vram to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vram, align 4
  %call = call i32 %54(ptr noundef %mmu, i32 noundef %type, i8 noundef zeroext %page, i64 noundef %size, ptr noundef %argv, i32 noundef %argc, ptr noundef nonnull %memory) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.end.if.then5_crit_edge

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %if.end.if.then5_crit_edge, %if.then106.i, %for.body.i.if.then5_crit_edge, %kvmalloc_array.exit178.i.if.then5_crit_edge, %kvmalloc_array.exit.i.if.then5_crit_edge, %kvmalloc_array.exit.thread.i, %if.then65.i, %if.end46.i.if.then5_crit_edge, %if.end13.i.if.then5_crit_edge, %if.else.if.then5_crit_edge
  %ret.019 = phi i32 [ %call, %if.end.if.then5_crit_edge ], [ -12, %kvmalloc_array.exit.thread.i ], [ -12, %if.then106.i ], [ -12, %kvmalloc_array.exit178.i.if.then5_crit_edge ], [ -12, %kvmalloc_array.exit.i.if.then5_crit_edge ], [ -22, %if.end46.i.if.then5_crit_edge ], [ -12, %if.end13.i.if.then5_crit_edge ], [ -22, %if.else.if.then5_crit_edge ], [ %_ret55.0.ph.i, %if.then65.i ], [ -12, %for.body.i.if.then5_crit_edge ]
  call void @nvkm_memory_unref(ptr noundef nonnull %memory) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge, %if.end107.i.if.end6_crit_edge, %if.end81.i.if.end6_crit_edge, %if.end51.i
  %ret.020 = phi i32 [ %ret.019, %if.then5 ], [ 0, %if.end.if.end6_crit_edge ], [ 0, %if.end51.i ], [ 0, %if.end81.i.if.end6_crit_edge ], [ 0, %if.end107.i.if.end6_crit_edge ]
  %55 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %memory, align 4
  %57 = ptrtoint ptr %pmemory to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %pmemory, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %memory) #9
  ret i32 %ret.020
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_ctor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvkm_mem_dtor(ptr noundef returned %memory) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mem1 = getelementptr inbounds %struct.nvkm_mem, ptr %memory, i32 0, i32 4
  %0 = ptrtoint ptr %mem1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %while.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

while.cond.preheader:                             ; preds = %entry
  %pages = getelementptr inbounds %struct.nvkm_mem, ptr %memory, i32 0, i32 3
  %2 = ptrtoint ptr %pages to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pages, align 8
  %dec18 = add i64 %3, -1
  store i64 %dec18, ptr %pages, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool2.not19 = icmp eq i64 %3, 0
  br i1 %tobool2.not19, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %mmu = getelementptr inbounds %struct.nvkm_mem, ptr %memory, i32 0, i32 2
  %4 = getelementptr inbounds %struct.nvkm_mem, ptr %memory, i32 0, i32 5
  %extract.t = trunc i64 %dec18 to i32
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %dec20.off0 = phi i32 [ %extract.t, %while.body.lr.ph ], [ %extract.t21, %while.body.while.body_crit_edge ]
  %5 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmu, align 4
  %device = getelementptr inbounds %struct.nvkm_mmu, ptr %6, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %4, align 4
  %arrayidx = getelementptr i32, ptr %12, i32 %dec20.off0
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %10, i32 noundef %14, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #9
  %15 = ptrtoint ptr %mem1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mem1, align 8
  %17 = ptrtoint ptr %pages to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %pages, align 8
  %idxprom6 = trunc i64 %18 to i32
  %arrayidx7 = getelementptr ptr, ptr %16, i32 %idxprom6
  %19 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx7, align 4
  tail call void @__free_pages(ptr noundef %20, i32 noundef 0) #9
  %21 = ptrtoint ptr %pages to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %pages, align 8
  %dec = add i64 %22, -1
  store i64 %dec, ptr %pages, align 8
  %tobool2.not = icmp eq i64 %22, 0
  %extract.t21 = trunc i64 %dec to i32
  br i1 %tobool2.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %23 = getelementptr inbounds %struct.nvkm_mem, ptr %memory, i32 0, i32 5
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  tail call void @kvfree(ptr noundef %25) #9
  %26 = ptrtoint ptr %mem1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mem1, align 8
  tail call void @kvfree(ptr noundef %27) #9
  br label %if.end

if.end:                                           ; preds = %while.end, %entry.if.end_crit_edge
  ret ptr %memory
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nvkm_mem_target(ptr nocapture noundef readonly %memory) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %target = getelementptr inbounds %struct.nvkm_mem, ptr %memory, i32 0, i32 1
  %0 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %target, align 8
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @nvkm_mem_page(ptr nocapture noundef readnone %memory) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i8 12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @nvkm_mem_addr(ptr nocapture noundef readonly %memory) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pages = getelementptr inbounds %struct.nvkm_mem, ptr %memory, i32 0, i32 3
  %0 = ptrtoint ptr %pages to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pages, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %1)
  %cmp = icmp eq i64 %1, 1
  br i1 %cmp, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %mem1 = getelementptr inbounds %struct.nvkm_mem, ptr %memory, i32 0, i32 4
  %2 = ptrtoint ptr %mem1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem1, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %4 = getelementptr inbounds %struct.nvkm_mem, ptr %memory, i32 0, i32 5
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %conv = zext i32 %8 to i64
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %conv, %if.then ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @nvkm_mem_size(ptr nocapture noundef readonly %memory) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pages = getelementptr inbounds %struct.nvkm_mem, ptr %memory, i32 0, i32 3
  %0 = ptrtoint ptr %pages to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pages, align 8
  %shl = shl i64 %1, 12
  ret i64 %shl
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_mem_map_dma(ptr noundef %memory, i64 noundef %offset, ptr noundef %vmm, ptr noundef %vma, ptr noundef %argv, i32 noundef %argc) #0 align 64 {
entry:
  %map = alloca %struct.nvkm_vmm_map, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %map) #9
  %0 = call ptr @memset(ptr %map, i32 0, i32 72)
  %1 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %memory, ptr %map, align 8
  %offset3 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 1
  %2 = ptrtoint ptr %offset3 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %offset, ptr %offset3, align 8
  %dma = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 4
  %3 = getelementptr inbounds %struct.nvkm_mem, ptr %memory, i32 0, i32 5
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %dma, align 8
  %call = call i32 @nvkm_vmm_map(ptr noundef %vmm, ptr noundef %vma, ptr noundef %argv, i32 noundef %argc, ptr noundef nonnull %map) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %map) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_map(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_mem_map_sgl(ptr noundef %memory, i64 noundef %offset, ptr noundef %vmm, ptr noundef %vma, ptr noundef %argv, i32 noundef %argc) #0 align 64 {
entry:
  %map = alloca %struct.nvkm_vmm_map, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %map) #9
  %0 = call ptr @memset(ptr %map, i32 0, i32 72)
  %1 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %memory, ptr %map, align 8
  %offset3 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 1
  %2 = ptrtoint ptr %offset3 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %offset, ptr %offset3, align 8
  %sgl = getelementptr inbounds %struct.nvkm_vmm_map, ptr %map, i32 0, i32 3
  %3 = getelementptr inbounds %struct.nvkm_mem, ptr %memory, i32 0, i32 5
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %sgl to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %sgl, align 4
  %call = call i32 @nvkm_vmm_map(ptr noundef %vmm, ptr noundef %vma, ptr noundef %argv, i32 noundef %argc, ptr noundef nonnull %map) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %map) #9
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.named.register.sp = !{!6}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @nvkm_mem_dma, !1, !"nvkm_mem_dma", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/mem.c", i32 100, i32 1}
!2 = !{ptr @nvkm_mem_sgl, !3, !"nvkm_mem_sgl", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/mem.c", i32 123, i32 1}
!4 = distinct !{null, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!6 = !{!"sp"}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{!"branch_weights", i32 1, i32 2000}
