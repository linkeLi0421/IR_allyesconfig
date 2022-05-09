; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/instmem/nv04.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/nv04.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_instmem_func = type { ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_instmem = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.list_head, %struct.list_head, i32, %struct.mutex, ptr, ptr, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nv04_instmem = type { %struct.nvkm_instmem, %struct.nvkm_mm }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nv04_instobj = type { %struct.nvkm_instobj, ptr, ptr }
%struct.nvkm_instobj = type { %struct.nvkm_memory, %struct.list_head, ptr }
%struct.nvkm_mm_node = type { %struct.list_head, %struct.list_head, ptr, i8, i8, i32, i32 }

@nv04_instmem = internal constant { %struct.nvkm_instmem_func, [36 x i8] } { %struct.nvkm_instmem_func { ptr @nv04_instmem_dtor, ptr @nv04_instmem_oneinit, ptr null, ptr @nv04_instmem_rd32, ptr @nv04_instmem_wr32, ptr @nv04_instobj_new, i8 0 }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nv04_instobj_func = internal constant { %struct.nvkm_memory_func, [56 x i8] } { %struct.nvkm_memory_func { ptr @nv04_instobj_dtor, ptr @nv04_instobj_target, ptr null, ptr null, ptr @nv04_instobj_addr, ptr @nv04_instobj_size, ptr null, ptr @nv04_instobj_acquire, ptr @nv04_instobj_release, ptr null }, [56 x i8] zeroinitializer }, align 32
@nv04_instobj_ptrs = internal constant { %struct.nvkm_memory_ptrs, [24 x i8] } { %struct.nvkm_memory_ptrs { ptr @nv04_instobj_rd32, ptr @nv04_instobj_wr32 }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [13 x i8] c"nv04_instmem\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 210, i32 1 }
@___asan_gen_.4 = private unnamed_addr constant [18 x i8] c"nv04_instobj_func\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 110, i32 1 }
@___asan_gen_.7 = private unnamed_addr constant [18 x i8] c"nv04_instobj_ptrs\00", align 1
@___asan_gen_.8 = private constant [54 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/nv04.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 62, i32 1 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @nv04_instmem, ptr @nv04_instobj_func, ptr @nv04_instobj_ptrs], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_instmem to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_instobj_func to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_instobj_ptrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv04_instmem_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pimem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 252) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @nvkm_instmem_ctor(ptr noundef nonnull @nv04_instmem, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef nonnull %call7.i.i) #5
  %1 = ptrtoint ptr %pimem to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pimem, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_instmem_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nv04_instmem_dtor(ptr noundef returned %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ramfc = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 10
  tail call void @nvkm_memory_unref(ptr noundef %ramfc) #5
  %ramro = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 9
  tail call void @nvkm_memory_unref(ptr noundef %ramro) #5
  %ramht = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 8
  tail call void @nvkm_ramht_del(ptr noundef %ramht) #5
  %vbios = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 7
  tail call void @nvkm_memory_unref(ptr noundef %vbios) #5
  %heap = getelementptr inbounds %struct.nv04_instmem, ptr %base, i32 0, i32 1
  %call = tail call i32 @nvkm_mm_fini(ptr noundef %heap) #5
  ret ptr %base
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv04_instmem_oneinit(ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %reserved = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 5
  %2 = ptrtoint ptr %reserved to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 524288, ptr %reserved, align 4
  %heap = getelementptr inbounds %struct.nv04_instmem, ptr %base, i32 0, i32 1
  %call = tail call i32 @nvkm_mm_init(ptr noundef %heap, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 524288, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %vbios = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 7
  %call7 = tail call i32 @nvkm_memory_new(ptr noundef %1, i32 noundef 0, i64 noundef 65536, i32 noundef 0, i1 noundef zeroext false, ptr noundef %vbios) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %ramht = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 8
  %call12 = tail call i32 @nvkm_ramht_new(ptr noundef %1, i32 noundef 32768, i32 noundef 0, ptr noundef null, ptr noundef %ramht) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %ramfc = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 10
  %call17 = tail call i32 @nvkm_memory_new(ptr noundef %1, i32 noundef 0, i64 noundef 2048, i32 noundef 0, i1 noundef zeroext true, ptr noundef %ramfc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %ramro = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 9
  %call22 = tail call i32 @nvkm_memory_new(ptr noundef %1, i32 noundef 0, i64 noundef 512, i32 noundef 0, i1 noundef zeroext false, ptr noundef %ramro) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end15.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call7, %if.end.cleanup_crit_edge ], [ %call12, %if.end10.cleanup_crit_edge ], [ %call17, %if.end15.cleanup_crit_edge ], [ %call22, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv04_instmem_rd32(ptr nocapture noundef readonly %imem, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_instmem, ptr %imem, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add = add i32 %addr, 7340032
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv04_instmem_wr32(ptr nocapture noundef readonly %imem, i32 noundef %addr, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %device = getelementptr inbounds %struct.nvkm_instmem, ptr %imem, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add = add i32 %addr, 7340032
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %data) #5, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv04_instobj_new(ptr noundef %base, i32 noundef %size, i32 noundef %align, i1 noundef zeroext %zero, ptr nocapture noundef writeonly %pmemory) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 36) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %pmemory to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pmemory, align 4
  tail call void @nvkm_instobj_ctor(ptr noundef nonnull @nv04_instobj_func, ptr noundef %base, ptr noundef nonnull %call7.i.i) #5
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %ptrs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @nv04_instobj_ptrs, ptr %ptrs, align 4
  %imem6 = getelementptr inbounds %struct.nv04_instobj, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %imem6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %base, ptr %imem6, align 4
  %mutex = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %heap = getelementptr inbounds %struct.nv04_instmem, ptr %base, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %align)
  %tobool8.not = icmp eq i32 %align, 0
  %spec.select = select i1 %tobool8.not, i32 1, i32 %align
  %node = getelementptr inbounds %struct.nv04_instobj, ptr %call7.i.i, i32 0, i32 2
  %call9 = tail call i32 @nvkm_mm_head(ptr noundef %heap, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef %size, i32 noundef %size, i32 noundef %spec.select, ptr noundef %node) #5
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_ramht_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_init(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ramht_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_instobj_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_head(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nv04_instobj_dtor(ptr noundef returned %memory) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %imem = getelementptr inbounds %struct.nv04_instobj, ptr %memory, i32 0, i32 1
  %0 = ptrtoint ptr %imem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imem, align 4
  %mutex = getelementptr inbounds %struct.nvkm_instmem, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %2 = ptrtoint ptr %imem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %imem, align 4
  %heap = getelementptr inbounds %struct.nv04_instmem, ptr %3, i32 0, i32 1
  %node = getelementptr inbounds %struct.nv04_instobj, ptr %memory, i32 0, i32 2
  tail call void @nvkm_mm_free(ptr noundef %heap, ptr noundef %node) #5
  %4 = ptrtoint ptr %imem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %imem, align 4
  %mutex4 = getelementptr inbounds %struct.nvkm_instmem, ptr %5, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %mutex4) #5
  %6 = ptrtoint ptr %imem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %imem, align 4
  tail call void @nvkm_instobj_dtor(ptr noundef %7, ptr noundef %memory) #5
  ret ptr %memory
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nv04_instobj_target(ptr nocapture noundef readnone %memory) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @nv04_instobj_addr(ptr nocapture noundef readonly %memory) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %node = getelementptr inbounds %struct.nv04_instobj, ptr %memory, i32 0, i32 2
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 4
  %offset = getelementptr inbounds %struct.nvkm_mm_node, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %conv = zext i32 %3 to i64
  ret i64 %conv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @nv04_instobj_size(ptr nocapture noundef readonly %memory) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %node = getelementptr inbounds %struct.nv04_instobj, ptr %memory, i32 0, i32 2
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 4
  %length = getelementptr inbounds %struct.nvkm_mm_node, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 4
  %conv = zext i32 %3 to i64
  ret i64 %conv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @nv04_instobj_acquire(ptr nocapture noundef readonly %memory) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %imem = getelementptr inbounds %struct.nv04_instobj, ptr %memory, i32 0, i32 1
  %0 = ptrtoint ptr %imem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imem, align 4
  %device1 = getelementptr inbounds %struct.nvkm_instmem, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 7340032
  %node = getelementptr inbounds %struct.nv04_instobj, ptr %memory, i32 0, i32 2
  %6 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %node, align 4
  %offset = getelementptr inbounds %struct.nvkm_mm_node, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  %add.ptr3 = getelementptr i8, ptr %add.ptr2, i32 %9
  ret ptr %add.ptr3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nv04_instobj_release(ptr nocapture noundef %memory) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mm_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_instobj_dtor(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv04_instobj_rd32(ptr nocapture noundef readonly %memory, i64 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %imem = getelementptr inbounds %struct.nv04_instobj, ptr %memory, i32 0, i32 1
  %0 = ptrtoint ptr %imem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imem, align 4
  %device1 = getelementptr inbounds %struct.nvkm_instmem, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %node = getelementptr inbounds %struct.nv04_instobj, ptr %memory, i32 0, i32 2
  %6 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %node, align 4
  %offset2 = getelementptr inbounds %struct.nvkm_mm_node, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %offset2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset2, align 4
  %10 = trunc i64 %offset to i32
  %add = add i32 %10, 7340032
  %idx.ext = add i32 %add, %9
  %add.ptr4 = getelementptr i8, ptr %5, i32 %idx.ext
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #5, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !19
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv04_instobj_wr32(ptr nocapture noundef readonly %memory, i64 noundef %offset, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %imem = getelementptr inbounds %struct.nv04_instobj, ptr %memory, i32 0, i32 1
  %0 = ptrtoint ptr %imem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imem, align 4
  %device1 = getelementptr inbounds %struct.nvkm_instmem, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %node = getelementptr inbounds %struct.nv04_instobj, ptr %memory, i32 0, i32 2
  %6 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %node, align 4
  %offset2 = getelementptr inbounds %struct.nvkm_mm_node, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %offset2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset2, align 4
  %10 = trunc i64 %offset to i32
  %add = add i32 %10, 7340032
  %idx.ext = add i32 %add, %9
  %add.ptr4 = getelementptr i8, ptr %5, i32 %idx.ext
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %data) #5, !srcloc !18
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @nv04_instmem, !1, !"nv04_instmem", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/nv04.c", i32 210, i32 1}
!2 = !{ptr @nv04_instobj_func, !3, !"nv04_instobj_func", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/nv04.c", i32 110, i32 1}
!4 = !{ptr @nv04_instobj_ptrs, !5, !"nv04_instobj_ptrs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/nv04.c", i32 62, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 5388689}
!16 = !{i64 2156248612}
!17 = !{i64 2156248982}
!18 = !{i64 5388271}
!19 = !{i64 2156241214}
!20 = !{i64 2156239322}
