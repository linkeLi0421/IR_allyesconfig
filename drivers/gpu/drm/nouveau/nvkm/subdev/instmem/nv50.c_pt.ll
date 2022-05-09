; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/instmem/nv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/nv50.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_instmem_func = type { ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nv50_instmem = type { %struct.nvkm_instmem, i64, %struct.list_head }
%struct.nvkm_instmem = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.list_head, %struct.list_head, i32, %struct.mutex, ptr, ptr, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.nv50_instobj = type { %struct.nvkm_instobj, ptr, ptr, ptr, %struct.refcount_struct, ptr, %struct.list_head }
%struct.nvkm_instobj = type { %struct.nvkm_memory, %struct.list_head, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nvkm_vma = type { %struct.list_head, %struct.rb_node, i64, [7 x i8], i8, ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.149, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.149 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }

@nv50_instmem = internal constant { %struct.nvkm_instmem_func, [36 x i8] } { %struct.nvkm_instmem_func { ptr null, ptr null, ptr @nv50_instmem_fini, ptr null, ptr null, ptr @nv50_instobj_new, i8 0 }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nv50_instobj_func = internal constant { %struct.nvkm_memory_func, [56 x i8] } { %struct.nvkm_memory_func { ptr @nv50_instobj_dtor, ptr @nv50_instobj_target, ptr null, ptr @nv50_instobj_bar2, ptr @nv50_instobj_addr, ptr @nv50_instobj_size, ptr @nv50_instobj_boot, ptr @nv50_instobj_acquire, ptr @nv50_instobj_release, ptr @nv50_instobj_map }, [56 x i8] zeroinitializer }, align 32
@nv50_instobj_kmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 147, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: evict %016llx %016llx @ %016llx\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nv50_instobj_kmap\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/instmem/nv50.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv50_instobj_kmap._entry_ptr = internal global ptr @nv50_instobj_kmap._entry, section ".printk_index", align 4
@nv50_instobj_kmap._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 177, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: PRAMIN ioremap failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@nv50_instobj_kmap._entry_ptr.8 = internal global ptr @nv50_instobj_kmap._entry.5, section ".printk_index", align 4
@nv50_instobj_fast = internal constant { %struct.nvkm_memory_ptrs, [24 x i8] } { %struct.nvkm_memory_ptrs { ptr @nv50_instobj_rd32, ptr @nv50_instobj_wr32 }, [24 x i8] zeroinitializer }, align 32
@nv50_instobj_slow = internal constant { %struct.nvkm_memory_ptrs, [24 x i8] } { %struct.nvkm_memory_ptrs { ptr @nv50_instobj_rd32_slow, ptr @nv50_instobj_wr32_slow }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [13 x i8] c"nv50_instmem\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 382, i32 1 }
@___asan_gen_.12 = private unnamed_addr constant [18 x i8] c"nv50_instobj_func\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 338, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 144, i32 4 }
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 177, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [18 x i8] c"nv50_instobj_fast\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 114, i32 1 }
@___asan_gen_.45 = private unnamed_addr constant [18 x i8] c"nv50_instobj_slow\00", align 1
@___asan_gen_.46 = private constant [54 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/nv50.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 96, i32 1 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @nv50_instobj_kmap._entry, ptr @nv50_instobj_kmap._entry.5, ptr @nv50_instobj_kmap._entry_ptr, ptr @nv50_instobj_kmap._entry_ptr.8, ptr @nv50_instmem, ptr @nv50_instobj_func, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @nv50_instobj_fast, ptr @nv50_instobj_slow], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_instmem to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_instobj_func to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_instobj_kmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_instobj_kmap._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_instobj_fast to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_instobj_slow to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_instmem_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pimem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 248) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @nvkm_instmem_ctor(ptr noundef nonnull @nv50_instmem, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef nonnull %call7.i.i) #8
  %lru = getelementptr inbounds %struct.nv50_instmem, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %lru to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %lru, ptr %lru, align 8
  %prev.i = getelementptr inbounds %struct.nv50_instmem, ptr %call7.i.i, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %lru, ptr %prev.i, align 4
  %3 = ptrtoint ptr %pimem to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %pimem, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_instmem_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @nv50_instmem_fini(ptr nocapture noundef writeonly %base) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.nv50_instmem, ptr %base, i32 0, i32 1
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %addr, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_instobj_new(ptr noundef %base, i32 noundef %size, i32 noundef %align, i1 noundef zeroext %zero, ptr nocapture noundef writeonly %pmemory) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %align)
  %cmp.i = icmp ugt i32 %align, 1
  br i1 %cmp.i, label %cond.end20, label %entry.cond.end20.thread_crit_edge

entry.cond.end20.thread_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end20.thread

cond.end20:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i56 = add i32 %align, -1
  %2 = tail call i32 @llvm.ctlz.i32(i32 %sub.i56, i1 false) #8, !range !30
  %sub.i.i = sub nsw i32 31, %2
  %3 = tail call i32 @llvm.smax.i32(i32 %sub.i.i, i32 11)
  %4 = trunc i32 %3 to i8
  %phi.cast = add i8 %4, 1
  br label %cond.end20.thread

cond.end20.thread:                                ; preds = %cond.end20, %entry.cond.end20.thread_crit_edge
  %5 = phi i8 [ 12, %entry.cond.end20.thread_crit_edge ], [ %phi.cast, %cond.end20 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 56) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %cond.end20.thread.cleanup_crit_edge, label %if.end

cond.end20.thread.cleanup_crit_edge:              ; preds = %cond.end20.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %cond.end20.thread
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %pmemory to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %pmemory, align 4
  tail call void @nvkm_instobj_ctor(ptr noundef nonnull @nv50_instobj_func, ptr noundef %base, ptr noundef nonnull %call7.i.i) #8
  %imem34 = getelementptr inbounds %struct.nv50_instobj, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %imem34 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %base, ptr %imem34, align 4
  %maps = getelementptr inbounds %struct.nv50_instobj, ptr %call7.i.i, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %maps, i32 noundef 4) #8
  %9 = ptrtoint ptr %maps to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %maps, align 8
  %lru = getelementptr inbounds %struct.nv50_instobj, ptr %call7.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %lru to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %lru, ptr %lru, align 8
  %prev.i = getelementptr inbounds %struct.nv50_instobj, ptr %call7.i.i, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %lru, ptr %prev.i, align 4
  %conv35 = zext i32 %size to i64
  %ram = getelementptr inbounds %struct.nv50_instobj, ptr %call7.i.i, i32 0, i32 2
  %call36 = tail call i32 @nvkm_ram_get(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext %5, i64 noundef %conv35, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %ram) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end20.thread.cleanup_crit_edge
  %retval.0 = phi i32 [ %call36, %if.end ], [ -12, %cond.end20.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_instobj_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ram_get(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nv50_instobj_dtor(ptr noundef returned %memory) #0 align 64 {
entry:
  %bar = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %imem1 = getelementptr inbounds %struct.nv50_instobj, ptr %memory, i32 0, i32 1
  %0 = ptrtoint ptr %imem1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imem1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bar) #8
  %mutex = getelementptr inbounds %struct.nvkm_instmem, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %lru = getelementptr inbounds %struct.nv50_instobj, ptr %memory, i32 0, i32 6
  %2 = ptrtoint ptr %lru to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lru, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !31

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lru) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.nv50_instobj, ptr %memory, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %lru to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lru, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %10 = ptrtoint ptr %lru to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %lru, align 4
  %prev.i = getelementptr inbounds %struct.nv50_instobj, ptr %memory, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %entry.if.end_crit_edge
  %map5 = getelementptr inbounds %struct.nv50_instobj, ptr %memory, i32 0, i32 5
  %12 = ptrtoint ptr %map5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map5, align 4
  %bar6 = getelementptr inbounds %struct.nv50_instobj, ptr %memory, i32 0, i32 3
  %14 = ptrtoint ptr %bar6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bar6, align 4
  %16 = ptrtoint ptr %bar to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %bar, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  %tobool8.not = icmp eq ptr %13, null
  br i1 %tobool8.not, label %if.end.if.end19_crit_edge, label %if.then9

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then9:                                         ; preds = %if.end
  %device = getelementptr inbounds %struct.nvkm_instmem, ptr %1, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device, align 4
  %call = tail call ptr @nvkm_bar_bar2_vmm(ptr noundef %18) #8
  tail call void @iounmap(ptr noundef nonnull %13) #8
  %tobool10.not = icmp eq ptr %call, null
  br i1 %tobool10.not, label %if.then9.if.end19_crit_edge, label %if.then17, !prof !31

if.then9.if.end19_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then17:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  call void @nvkm_vmm_put(ptr noundef nonnull %call, ptr noundef nonnull %bar) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.then9.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %ram = getelementptr inbounds %struct.nv50_instobj, ptr %memory, i32 0, i32 2
  call void @nvkm_memory_unref(ptr noundef %ram) #8
  call void @nvkm_instobj_dtor(ptr noundef %1, ptr noundef %memory) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bar) #8
  ret ptr %memory
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_instobj_target(ptr nocapture noundef readonly %memory) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ram = getelementptr inbounds %struct.nv50_instobj, ptr %memory, i32 0, i32 2
  %0 = ptrtoint ptr %ram to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ram, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %target = getelementptr inbounds %struct.nvkm_memory_func, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %target, align 4
  %call = tail call i32 %5(ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @nv50_instobj_bar2(ptr noundef %memory) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nv50_instobj_acquire(ptr noundef %memory)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lru = getelementptr inbounds %struct.nv50_instobj, ptr %memory, i32 0, i32 6
  %0 = ptrtoint ptr %lru to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %lru, align 4
  %bar = getelementptr inbounds %struct.nv50_instobj, ptr %memory, i32 0, i32 3
  %1 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bar, align 4
  %addr2 = getelementptr inbounds %struct.nvkm_vma, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %addr2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %addr2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %addr.0 = phi i64 [ %4, %if.then ], [ -1, %entry.if.end_crit_edge ]
  tail call void @nv50_instobj_release(ptr noundef %memory)
  ret i64 %addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @nv50_instobj_addr(ptr nocapture noundef readonly %memory) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ram = getelementptr inbounds %struct.nv50_instobj, ptr %memory, i32 0, i32 2
  %0 = ptrtoint ptr %ram to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ram, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %addr = getelementptr inbounds %struct.nvkm_memory_func, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr, align 4
  %call = tail call i64 %5(ptr noundef %1) #8
  ret i64 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @nv50_instobj_size(ptr nocapture noundef readonly %memory) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ram = getelementptr inbounds %struct.nv50_instobj, ptr %memory, i32 0, i32 2
  %0 = ptrtoint ptr %ram to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ram, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %size = getelementptr inbounds %struct.nvkm_memory_func, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %size, align 4
  %call = tail call i64 %5(ptr noundef %1) #8
  ret i64 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_instobj_boot(ptr noundef %memory, ptr noundef %vmm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %imem1 = getelementptr inbounds %struct.nv50_instobj, ptr %memory, i32 0, i32 1
  %0 = ptrtoint ptr %imem1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imem1, align 4
  %mutex = getelementptr inbounds %struct.nvkm_instmem, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %lru = getelementptr inbounds %struct.nv50_instobj, ptr %memory, i32 0, i32 6
  %2 = ptrtoint ptr %lru to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lru, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !31

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lru) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.nv50_instobj, ptr %memory, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %lru to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lru, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %lru to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %lru, ptr %lru, align 4
  %prev.i3.i = getelementptr inbounds %struct.nv50_instobj, ptr %memory, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %lru, ptr %prev.i3.i, align 4
  store ptr null, ptr %lru, align 4
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit, %entry.if.end_crit_edge
  tail call fastcc void @nv50_instobj_kmap(ptr noundef %memory, ptr noundef %vmm)
  tail call void @nvkm_instmem_boot(ptr noundef %1) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nv50_instobj_acquire(ptr noundef %memory) #0 align 64 {
entry:
  %old.i.i.i77 = alloca i32, align 4
  %old.i.i.i57 = alloca i32, align 4
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %imem1 = getelementptr inbounds %struct.nv50_instobj, ptr %memory, i32 0, i32 1
  %0 = ptrtoint ptr %imem1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imem1, align 4
  %maps = getelementptr inbounds %struct.nv50_instobj, ptr %memory, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %maps, i32 noundef 4) #8
  %2 = ptrtoint ptr %maps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %maps, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %entry
  %4 = phi i32 [ %3, %entry ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %5 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %4, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %maps, i32 noundef 4) #8
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #8
  %6 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %maps, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %8 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %maps, ptr %maps, i32 %7, i32 %add.i.i.i, ptr elementtype(i32) %maps) #8, !srcloc !32
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %7
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !33

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %9 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %10, 1
  %11 = or i32 %add5.i.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !33

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %maps, i32 noundef 0) #8
  %12 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %13 = phi i32 [ %10, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.i.i.i.not = icmp eq i32 %13, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #8
  br i1 %tobool12.i.i.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #10
  %map2 = getelementptr inbounds %struct.nv50_instobj, ptr %memory, i32 0, i32 5
  %14 = ptrtoint ptr %map2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map2, align 4
  br label %cleanup

if.end:                                           ; preds = %refcount_inc_not_zero.exit
  %mutex = getelementptr inbounds %struct.nvkm_instmem, ptr %1, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i57) #8
  %call.i.i.i.i.i.i58 = call zeroext i1 @__kasan_check_read(ptr noundef %maps, i32 noundef 4) #8
  %16 = ptrtoint ptr %maps to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %maps, align 4
  br label %do.body.i.i.i60

do.body.i.i.i60:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i70.do.body.i.i.i60_crit_edge, %if.end
  %18 = phi i32 [ %17, %if.end ], [ %asmresult3.i.i.i.i.i.i68, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i70.do.body.i.i.i60_crit_edge ]
  %19 = ptrtoint ptr %old.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %old.i.i.i57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i.i59 = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i.i59, label %do.body.i.i.i60.if.end4.i.i.i73_crit_edge, label %do.cond.i.i.i64

do.body.i.i.i60.if.end4.i.i.i73_crit_edge:        ; preds = %do.body.i.i.i60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i73

do.cond.i.i.i64:                                  ; preds = %do.body.i.i.i60
  %add.i.i.i61 = add i32 %18, 1
  %call.i.i.i.i.i62 = call zeroext i1 @__kasan_check_write(ptr noundef %maps, i32 noundef 4) #8
  %call.i3.i.i.i.i63 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i57, i32 noundef 4) #8
  %20 = ptrtoint ptr %old.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %old.i.i.i57, align 4
  call void @llvm.prefetch.p0(ptr %maps, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i.i67

do.body.i.i.i.i.i.i67:                            ; preds = %do.body.i.i.i.i.i.i67.do.body.i.i.i.i.i.i67_crit_edge, %do.cond.i.i.i64
  %22 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %maps, ptr %maps, i32 %21, i32 %add.i.i.i61, ptr elementtype(i32) %maps) #8, !srcloc !32
  %asmresult.i.i.i.i.i.i65 = extractvalue { i32, i32 } %22, 0
  %tobool.not.i.i.i.i.i.i66 = icmp eq i32 %asmresult.i.i.i.i.i.i65, 0
  br i1 %tobool.not.i.i.i.i.i.i66, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i70, label %do.body.i.i.i.i.i.i67.do.body.i.i.i.i.i.i67_crit_edge

do.body.i.i.i.i.i.i67.do.body.i.i.i.i.i.i67_crit_edge: ; preds = %do.body.i.i.i.i.i.i67
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i67

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i70:     ; preds = %do.body.i.i.i.i.i.i67
  %asmresult3.i.i.i.i.i.i68 = extractvalue { i32, i32 } %22, 1
  %cmp.not.i.i.i.i.i69 = icmp eq i32 %asmresult3.i.i.i.i.i.i68, %21
  br i1 %cmp.not.i.i.i.i.i69, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i70.if.end4.i.i.i73_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i70.do.body.i.i.i60_crit_edge, !prof !33

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i70.do.body.i.i.i60_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i70
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i60

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i70.if.end4.i.i.i73_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i73

if.end4.i.i.i73:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i70.if.end4.i.i.i73_crit_edge, %do.body.i.i.i60.if.end4.i.i.i73_crit_edge
  %23 = ptrtoint ptr %old.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %old.i.i.i57, align 4
  %add5.i.i.i71 = add i32 %24, 1
  %25 = or i32 %add5.i.i.i71, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %.not.i.i.i72 = icmp sgt i32 %25, -1
  br i1 %.not.i.i.i72, label %if.end4.i.i.i73.refcount_inc_not_zero.exit76_crit_edge, label %if.then10.i.i.i74, !prof !33

if.end4.i.i.i73.refcount_inc_not_zero.exit76_crit_edge: ; preds = %if.end4.i.i.i73
  call void @__sanitizer_cov_trace_pc() #10
  br label %refcount_inc_not_zero.exit76

if.then10.i.i.i74:                                ; preds = %if.end4.i.i.i73
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %maps, i32 noundef 0) #8
  %26 = ptrtoint ptr %old.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr97 = load i32, ptr %old.i.i.i57, align 4
  br label %refcount_inc_not_zero.exit76

refcount_inc_not_zero.exit76:                     ; preds = %if.then10.i.i.i74, %if.end4.i.i.i73.refcount_inc_not_zero.exit76_crit_edge
  %27 = phi i32 [ %24, %if.end4.i.i.i73.refcount_inc_not_zero.exit76_crit_edge ], [ %.pr97, %if.then10.i.i.i74 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool12.i.i.i75.not = icmp eq i32 %27, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i57) #8
  br i1 %tobool12.i.i.i75.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %refcount_inc_not_zero.exit76
  call void @__sanitizer_cov_trace_pc() #10
  call void @mutex_unlock(ptr noundef %mutex) #8
  %map7 = getelementptr inbounds %struct.nv50_instobj, ptr %memory, i32 0, i32 5
  %28 = ptrtoint ptr %map7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %map7, align 4
  br label %cleanup

if.end8:                                          ; preds = %refcount_inc_not_zero.exit76
  %device = getelementptr inbounds %struct.nvkm_instmem, ptr %1, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device, align 4
  %call9 = call ptr @nvkm_bar_bar2_vmm(ptr noundef %31) #8
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %if.end8.if.end16_crit_edge, label %if.then10

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then10:                                        ; preds = %if.end8
  %map11 = getelementptr inbounds %struct.nv50_instobj, ptr %memory, i32 0, i32 5
  %32 = ptrtoint ptr %map11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %map11, align 4
  %tobool12.not = icmp eq ptr %33, null
  br i1 %tobool12.not, label %if.then13, label %if.then10.if.end14_crit_edge

if.then10.if.end14_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @nv50_instobj_kmap(ptr noundef %memory, ptr noundef nonnull %call9)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.then10.if.end14_crit_edge
  %34 = ptrtoint ptr %map11 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %map11, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end14, %if.end8.if.end16_crit_edge
  %map.0 = phi ptr [ %35, %if.end14 ], [ null, %if.end8.if.end16_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i77) #8
  %call.i.i.i.i.i.i78 = call zeroext i1 @__kasan_check_read(ptr noundef %maps, i32 noundef 4) #8
  %36 = ptrtoint ptr %maps to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %maps, align 4
  br label %do.body.i.i.i80

do.body.i.i.i80:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i90.do.body.i.i.i80_crit_edge, %if.end16
  %38 = phi i32 [ %37, %if.end16 ], [ %asmresult3.i.i.i.i.i.i88, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i90.do.body.i.i.i80_crit_edge ]
  %39 = ptrtoint ptr %old.i.i.i77 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %old.i.i.i77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i.i.i79 = icmp eq i32 %38, 0
  br i1 %tobool.not.i.i.i79, label %do.body.i.i.i80.if.end4.i.i.i93_crit_edge, label %do.cond.i.i.i84

do.body.i.i.i80.if.end4.i.i.i93_crit_edge:        ; preds = %do.body.i.i.i80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i93

do.cond.i.i.i84:                                  ; preds = %do.body.i.i.i80
  %add.i.i.i81 = add i32 %38, 1
  %call.i.i.i.i.i82 = call zeroext i1 @__kasan_check_write(ptr noundef %maps, i32 noundef 4) #8
  %call.i3.i.i.i.i83 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i77, i32 noundef 4) #8
  %40 = ptrtoint ptr %old.i.i.i77 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %old.i.i.i77, align 4
  call void @llvm.prefetch.p0(ptr %maps, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i.i87

do.body.i.i.i.i.i.i87:                            ; preds = %do.body.i.i.i.i.i.i87.do.body.i.i.i.i.i.i87_crit_edge, %do.cond.i.i.i84
  %42 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %maps, ptr %maps, i32 %41, i32 %add.i.i.i81, ptr elementtype(i32) %maps) #8, !srcloc !32
  %asmresult.i.i.i.i.i.i85 = extractvalue { i32, i32 } %42, 0
  %tobool.not.i.i.i.i.i.i86 = icmp eq i32 %asmresult.i.i.i.i.i.i85, 0
  br i1 %tobool.not.i.i.i.i.i.i86, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i90, label %do.body.i.i.i.i.i.i87.do.body.i.i.i.i.i.i87_crit_edge

do.body.i.i.i.i.i.i87.do.body.i.i.i.i.i.i87_crit_edge: ; preds = %do.body.i.i.i.i.i.i87
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i87

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i90:     ; preds = %do.body.i.i.i.i.i.i87
  %asmresult3.i.i.i.i.i.i88 = extractvalue { i32, i32 } %42, 1
  %cmp.not.i.i.i.i.i89 = icmp eq i32 %asmresult3.i.i.i.i.i.i88, %41
  br i1 %cmp.not.i.i.i.i.i89, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i90.if.end4.i.i.i93_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i90.do.body.i.i.i80_crit_edge, !prof !33

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i90.do.body.i.i.i80_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i90
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i80

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i90.if.end4.i.i.i93_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i93

if.end4.i.i.i93:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i90.if.end4.i.i.i93_crit_edge, %do.body.i.i.i80.if.end4.i.i.i93_crit_edge
  %43 = ptrtoint ptr %old.i.i.i77 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %old.i.i.i77, align 4
  %add5.i.i.i91 = add i32 %44, 1
  %45 = or i32 %add5.i.i.i91, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %.not.i.i.i92 = icmp sgt i32 %45, -1
  br i1 %.not.i.i.i92, label %if.end4.i.i.i93.refcount_inc_not_zero.exit96_crit_edge, label %if.then10.i.i.i94, !prof !33

if.end4.i.i.i93.refcount_inc_not_zero.exit96_crit_edge: ; preds = %if.end4.i.i.i93
  call void @__sanitizer_cov_trace_pc() #10
  br label %refcount_inc_not_zero.exit96

if.then10.i.i.i94:                                ; preds = %if.end4.i.i.i93
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %maps, i32 noundef 0) #8
  %46 = ptrtoint ptr %old.i.i.i77 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr98 = load i32, ptr %old.i.i.i77, align 4
  br label %refcount_inc_not_zero.exit96

refcount_inc_not_zero.exit96:                     ; preds = %if.then10.i.i.i94, %if.end4.i.i.i93.refcount_inc_not_zero.exit96_crit_edge
  %47 = phi i32 [ %44, %if.end4.i.i.i93.refcount_inc_not_zero.exit96_crit_edge ], [ %.pr98, %if.then10.i.i.i94 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool12.i.i.i95.not = icmp eq i32 %47, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i77) #8
  br i1 %tobool12.i.i.i95.not, label %if.then19, label %refcount_inc_not_zero.exit96.if.end35_crit_edge

refcount_inc_not_zero.exit96.if.end35_crit_edge:  ; preds = %refcount_inc_not_zero.exit96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then19:                                        ; preds = %refcount_inc_not_zero.exit96
  %lru = getelementptr inbounds %struct.nv50_instobj, ptr %memory, i32 0, i32 6
  %48 = ptrtoint ptr %lru to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %lru, align 4
  %tobool20.not = icmp eq ptr %49, null
  br i1 %tobool20.not, label %if.then19.if.end25_crit_edge, label %if.then23, !prof !31

if.then19.if.end25_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then23:                                        ; preds = %if.then19
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %lru) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then23.list_del_init.exit_crit_edge

if.then23.list_del_init.exit_crit_edge:           ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.nv50_instobj, ptr %memory, i32 0, i32 6, i32 1
  %50 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i.i, align 4
  %52 = ptrtoint ptr %lru to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %lru, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev1.i.i.i, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %53, ptr %51, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then23.list_del_init.exit_crit_edge
  %56 = ptrtoint ptr %lru to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %lru, ptr %lru, align 4
  %prev.i3.i = getelementptr inbounds %struct.nv50_instobj, ptr %memory, i32 0, i32 6, i32 1
  %57 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %lru, ptr %prev.i3.i, align 4
  br label %if.end25

if.end25:                                         ; preds = %list_del_init.exit, %if.then19.if.end25_crit_edge
  %tobool26.not = icmp eq ptr %map.0, null
  %spec.select = select i1 %tobool26.not, ptr @nv50_instobj_slow, ptr @nv50_instobj_fast
  %58 = getelementptr inbounds %struct.nvkm_memory, ptr %memory, i32 0, i32 1
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %spec.select, ptr %58, align 4
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %maps, i32 noundef 4) #8
  %60 = ptrtoint ptr %maps to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 1, ptr %maps, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end25, %refcount_inc_not_zero.exit96.if.end35_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then5, %if.then
  %retval.0 = phi ptr [ %15, %if.then ], [ %29, %if.then5 ], [ %map.0, %if.end35 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_instobj_release(ptr noundef %memory) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %imem1 = getelementptr inbounds %struct.nv50_instobj, ptr %memory, i32 0, i32 1
  %0 = ptrtoint ptr %imem1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imem1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !34
  tail call void @arm_heavy_mb() #8
  %device = getelementptr inbounds %struct.nvkm_instmem, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %bar = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 36
  %4 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bar, align 4
  tail call void @nvkm_bar_flush(ptr noundef %5) #8
  %maps = getelementptr inbounds %struct.nv50_instobj, ptr %memory, i32 0, i32 4
  %mutex = getelementptr inbounds %struct.nvkm_instmem, ptr %1, i32 0, i32 6
  %call = tail call zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef %maps, ptr noundef %mutex) #8
  br i1 %call, label %if.then, label %entry.if.end36_crit_edge

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then:                                          ; preds = %entry
  %lru = getelementptr inbounds %struct.nv50_instobj, ptr %memory, i32 0, i32 6
  %6 = ptrtoint ptr %lru to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lru, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then.if.end31_crit_edge, label %land.lhs.true, !prof !31

if.then.if.end31_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

land.lhs.true:                                    ; preds = %if.then
  %map = getelementptr inbounds %struct.nv50_instobj, ptr %memory, i32 0, i32 5
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %land.lhs.true.if.end31_crit_edge, label %do.body8

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

do.body8:                                         ; preds = %land.lhs.true
  %10 = ptrtoint ptr %lru to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %lru, align 4
  %cmp.i.not = icmp eq ptr %11, %lru
  br i1 %cmp.i.not, label %do.end28, label %do.body21, !prof !33

do.body21:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/subdev/instmem/nv50.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 205, 0\0A.popsection", ""() #8, !srcloc !35
  unreachable

do.end28:                                         ; preds = %do.body8
  %lru30 = getelementptr inbounds %struct.nv50_instmem, ptr %1, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.nv50_instmem, ptr %1, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %lru, ptr noundef %13, ptr noundef %lru30) #8
  br i1 %call.i.i, label %if.end.i.i, label %do.end28.if.end31_crit_edge

do.end28.if.end31_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.end.i.i:                                       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %lru, ptr %prev.i, align 4
  %15 = ptrtoint ptr %lru to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %lru30, ptr %lru, align 4
  %prev3.i.i = getelementptr inbounds %struct.nv50_instobj, ptr %memory, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %lru, ptr %13, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.end.i.i, %do.end28.if.end31_crit_edge, %land.lhs.true.if.end31_crit_edge, %if.then.if.end31_crit_edge
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %memory, i32 0, i32 1
  %18 = ptrtoint ptr %ptrs to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %ptrs, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %if.end36

if.end36:                                         ; preds = %if.end31, %entry.if.end36_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_instobj_map(ptr nocapture noundef readonly %memory, i64 noundef %offset, ptr noundef %vmm, ptr noundef %vma, ptr noundef %argv, i32 noundef %argc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ram = getelementptr inbounds %struct.nv50_instobj, ptr %memory, i32 0, i32 2
  %0 = ptrtoint ptr %ram to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ram, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %map = getelementptr inbounds %struct.nvkm_memory_func, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %call = tail call i32 %5(ptr noundef %1, i64 noundef %offset, ptr noundef %vmm, ptr noundef %vma, ptr noundef %argv, i32 noundef %argc) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_bar_bar2_vmm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_instobj_dtor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nv50_instobj_kmap(ptr noundef %iobj, ptr noundef %vmm) unnamed_addr #0 align 64 {
entry:
  %bar = alloca ptr, align 4
  %ebar = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %imem1 = getelementptr inbounds %struct.nv50_instobj, ptr %iobj, i32 0, i32 1
  %0 = ptrtoint ptr %imem1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imem1, align 4
  %device5 = getelementptr inbounds %struct.nvkm_instmem, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bar) #8
  %4 = ptrtoint ptr %bar to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %bar, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ebar) #8
  %5 = ptrtoint ptr %ebar to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %ebar, align 4, !annotation !36
  %6 = ptrtoint ptr %iobj to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iobj, align 4
  %size6 = getelementptr inbounds %struct.nvkm_memory_func, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %size6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %size6, align 4
  %call = tail call i64 %9(ptr noundef %iobj) #8
  %mutex = getelementptr inbounds %struct.nvkm_instmem, ptr %1, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  %call8150 = call i32 @nvkm_vmm_get(ptr noundef %vmm, i8 noundef zeroext 12, i64 noundef %call, ptr noundef nonnull %bar) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8150)
  %cond151 = icmp eq i32 %call8150, 0
  br i1 %cond151, label %entry.if.end53_crit_edge, label %while.body.lr.ph

entry.if.end53_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

while.body.lr.ph:                                 ; preds = %entry
  %lru = getelementptr inbounds %struct.nv50_instmem, ptr %1, i32 0, i32 2
  %debug = getelementptr inbounds %struct.nvkm_instmem, ptr %1, i32 0, i32 1, i32 5
  %name = getelementptr inbounds %struct.nvkm_instmem, ptr %1, i32 0, i32 1, i32 4
  br label %while.body

while.body:                                       ; preds = %if.end47.while.body_crit_edge, %while.body.lr.ph
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %10 = ptrtoint ptr %lru to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %lru, align 4
  %cmp.not = icmp eq ptr %11, %lru
  %add.ptr = getelementptr i8, ptr %11, i32 -48
  %tobool13.not149 = icmp eq ptr %add.ptr, null
  %tobool13.not = or i1 %cmp.not, %tobool13.not149
  br i1 %tobool13.not, label %if.end53.thread, label %do.body14

do.body14:                                        ; preds = %while.body
  %12 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp15 = icmp ugt i32 %13, 3
  br i1 %cmp15, label %do.end19, label %do.body14.if.end_crit_edge

do.body14.if.end_crit_edge:                       ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end19:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %device5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device5, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  %addr = getelementptr inbounds %struct.nvkm_memory_func, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %addr, align 4
  %call26 = call i64 %21(ptr noundef nonnull %add.ptr) #8
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 4
  %size30 = getelementptr inbounds %struct.nvkm_memory_func, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %size30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %size30, align 4
  %call33 = call i64 %25(ptr noundef nonnull %add.ptr) #8
  %bar34 = getelementptr i8, ptr %11, i32 -12
  %26 = ptrtoint ptr %bar34 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bar34, align 4
  %addr35 = getelementptr inbounds %struct.nvkm_vma, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %addr35 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %addr35, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef %name, i64 noundef %call26, i64 noundef %call33, i64 noundef %29) #12
  br label %if.end

if.end:                                           ; preds = %do.end19, %do.body14.if.end_crit_edge
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %11) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.if.end47_crit_edge

if.end.if.end47_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i, align 4
  %32 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %11, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.end.i.i, %if.end.if.end47_crit_edge
  %36 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %11, ptr %11, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %11, ptr %prev.i3.i, align 4
  %bar39 = getelementptr i8, ptr %11, i32 -12
  %38 = ptrtoint ptr %bar39 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bar39, align 4
  %40 = ptrtoint ptr %ebar to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %ebar, align 4
  store ptr null, ptr %bar39, align 4
  %map = getelementptr i8, ptr %11, i32 -4
  %41 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %map, align 4
  store ptr null, ptr %map, align 4
  call void @mutex_unlock(ptr noundef %mutex) #8
  call void @iounmap(ptr noundef %42) #8
  call void @nvkm_vmm_put(ptr noundef %vmm, ptr noundef nonnull %ebar) #8
  %call8 = call i32 @nvkm_vmm_get(ptr noundef %vmm, i8 noundef zeroext 12, i64 noundef %call, ptr noundef nonnull %bar) #8
  %cond = icmp eq i32 %call8, 0
  br i1 %cond, label %if.end47.if.end53_crit_edge, label %if.end47.while.body_crit_edge

if.end47.while.body_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end47.if.end53_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.end53.thread:                                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @mutex_unlock(ptr noundef %mutex) #8
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  br label %if.then59

if.end53:                                         ; preds = %if.end47.if.end53_crit_edge, %entry.if.end53_crit_edge
  %43 = ptrtoint ptr %iobj to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %iobj, align 4
  %map51 = getelementptr inbounds %struct.nvkm_memory_func, ptr %44, i32 0, i32 9
  %45 = ptrtoint ptr %map51 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %map51, align 4
  %47 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bar, align 4
  %call52 = call i32 %46(ptr noundef %iobj, i64 noundef 0, ptr noundef %vmm, ptr noundef %48, ptr noundef null, i32 noundef 0) #8
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool56.not = icmp eq i32 %call52, 0
  br i1 %tobool56.not, label %lor.lhs.false, label %if.end53.if.then59_crit_edge

if.end53.if.then59_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then59

lor.lhs.false:                                    ; preds = %if.end53
  %bar57 = getelementptr inbounds %struct.nv50_instobj, ptr %iobj, i32 0, i32 3
  %49 = ptrtoint ptr %bar57 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bar57, align 4
  %tobool58.not = icmp eq ptr %50, null
  br i1 %tobool58.not, label %if.end64, label %lor.lhs.false.if.then59_crit_edge

lor.lhs.false.if.then59_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then59

if.then59:                                        ; preds = %lor.lhs.false.if.then59_crit_edge, %if.end53.if.then59_crit_edge, %if.end53.thread
  call void @mutex_unlock(ptr noundef %mutex) #8
  call void @nvkm_vmm_put(ptr noundef %vmm, ptr noundef nonnull %bar) #8
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  br label %cleanup

if.end64:                                         ; preds = %lor.lhs.false
  %51 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bar, align 4
  %53 = ptrtoint ptr %bar57 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %bar57, align 4
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %3, align 8
  %resource_addr = getelementptr inbounds %struct.nvkm_device_func, ptr %55, i32 0, i32 6
  %56 = ptrtoint ptr %resource_addr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %resource_addr, align 4
  %call67 = call i32 %57(ptr noundef %3, i32 noundef 3) #8
  %58 = ptrtoint ptr %bar57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bar57, align 4
  %addr69 = getelementptr inbounds %struct.nvkm_vma, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %addr69 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %addr69, align 8
  %conv = trunc i64 %61 to i32
  %add = add i32 %call67, %conv
  %conv70 = trunc i64 %call to i32
  %call71 = call ptr @ioremap_wc(i32 noundef %add, i32 noundef %conv70) #8
  %map72 = getelementptr inbounds %struct.nv50_instobj, ptr %iobj, i32 0, i32 5
  %62 = ptrtoint ptr %map72 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call71, ptr %map72, align 4
  %tobool74.not = icmp eq ptr %call71, null
  br i1 %tobool74.not, label %do.body76, label %if.end64.cleanup_crit_edge

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body76:                                        ; preds = %if.end64
  %debug78 = getelementptr inbounds %struct.nvkm_instmem, ptr %1, i32 0, i32 1, i32 5
  %63 = ptrtoint ptr %debug78 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %debug78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %64)
  %cmp79 = icmp ugt i32 %64, 1
  br i1 %cmp79, label %do.end84, label %do.body76.if.end89_crit_edge

do.body76.if.end89_crit_edge:                     ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

do.end84:                                         ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %device5 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %device5, align 4
  %dev86 = getelementptr inbounds %struct.nvkm_device, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev86, align 8
  %name87 = getelementptr inbounds %struct.nvkm_instmem, ptr %1, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %68, ptr noundef nonnull @.str.6, ptr noundef %name87) #12
  br label %if.end89

if.end89:                                         ; preds = %do.end84, %do.body76.if.end89_crit_edge
  call void @nvkm_vmm_put(ptr noundef %vmm, ptr noundef %bar57) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end89, %if.end64.cleanup_crit_edge, %if.then59
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ebar) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bar) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_instmem_boot(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_get(ptr noundef, i8 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_instobj_rd32(ptr nocapture noundef readonly %memory, i64 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %map = getelementptr inbounds %struct.nv50_instobj, ptr %memory, i32 0, i32 5
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 4
  %idx.ext = trunc i64 %offset to i32
  %add.ptr1 = getelementptr i8, ptr %1, i32 %idx.ext
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #8, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !38
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_instobj_wr32(ptr nocapture noundef readonly %memory, i64 noundef %offset, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !39
  tail call void @arm_heavy_mb() #8
  %map = getelementptr inbounds %struct.nv50_instobj, ptr %memory, i32 0, i32 5
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 4
  %idx.ext = trunc i64 %offset to i32
  %add.ptr1 = getelementptr i8, ptr %1, i32 %idx.ext
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %data) #8, !srcloc !40
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_instobj_rd32_slow(ptr nocapture noundef readonly %memory, i64 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %imem1 = getelementptr inbounds %struct.nv50_instobj, ptr %memory, i32 0, i32 1
  %0 = ptrtoint ptr %imem1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imem1, align 4
  %device2 = getelementptr inbounds %struct.nvkm_instmem, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device2, align 4
  %ram = getelementptr inbounds %struct.nv50_instobj, ptr %memory, i32 0, i32 2
  %4 = ptrtoint ptr %ram to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ram, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %addr = getelementptr inbounds %struct.nvkm_memory_func, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addr, align 4
  %call = tail call i64 %9(ptr noundef %5) #8
  %add = add i64 %call, %offset
  %and = and i64 %add, 17592184995840
  %10 = ptrtoint ptr %ram to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ram, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %addr8 = getelementptr inbounds %struct.nvkm_memory_func, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %addr8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %addr8, align 4
  %call10 = tail call i64 %15(ptr noundef %11) #8
  %lock = getelementptr inbounds %struct.nvkm_instmem, ptr %1, i32 0, i32 2
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %addr20 = getelementptr inbounds %struct.nv50_instmem, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %addr20 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %addr20, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %and)
  %cmp21.not = icmp eq i64 %17, %and
  br i1 %cmp21.not, label %entry.if.end_crit_edge, label %do.body24, !prof !33

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body24:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  tail call void @arm_heavy_mb() #8
  %shr = lshr exact i64 %and, 16
  %conv27 = trunc i64 %shr to i32
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %add.ptr28 = getelementptr i8, ptr %19, i32 5888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %conv27) #8, !srcloc !40
  %20 = ptrtoint ptr %addr20 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %and, ptr %addr20, align 8
  br label %if.end

if.end:                                           ; preds = %do.body24, %entry.if.end_crit_edge
  %add11 = add i64 %call10, %offset
  %pri30 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %21 = ptrtoint ptr %pri30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri30, align 4
  %23 = trunc i64 %add11 to i32
  %24 = and i32 %23, 1048575
  %idx.ext = or i32 %24, 7340032
  %add.ptr32 = getelementptr i8, ptr %22, i32 %idx.ext
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #8, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !42
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call17) #8
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_instobj_wr32_slow(ptr nocapture noundef readonly %memory, i64 noundef %offset, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %imem1 = getelementptr inbounds %struct.nv50_instobj, ptr %memory, i32 0, i32 1
  %0 = ptrtoint ptr %imem1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imem1, align 4
  %device2 = getelementptr inbounds %struct.nvkm_instmem, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device2, align 4
  %ram = getelementptr inbounds %struct.nv50_instobj, ptr %memory, i32 0, i32 2
  %4 = ptrtoint ptr %ram to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ram, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %addr = getelementptr inbounds %struct.nvkm_memory_func, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addr, align 4
  %call = tail call i64 %9(ptr noundef %5) #8
  %add = add i64 %call, %offset
  %and = and i64 %add, 17592184995840
  %10 = ptrtoint ptr %ram to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ram, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %addr8 = getelementptr inbounds %struct.nvkm_memory_func, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %addr8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %addr8, align 4
  %call10 = tail call i64 %15(ptr noundef %11) #8
  %lock = getelementptr inbounds %struct.nvkm_instmem, ptr %1, i32 0, i32 2
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %addr20 = getelementptr inbounds %struct.nv50_instmem, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %addr20 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %addr20, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %and)
  %cmp21.not = icmp eq i64 %17, %and
  br i1 %cmp21.not, label %entry.do.body30_crit_edge, label %do.body24, !prof !33

entry.do.body30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body30

do.body24:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void @arm_heavy_mb() #8
  %shr = lshr exact i64 %and, 16
  %conv27 = trunc i64 %shr to i32
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %add.ptr28 = getelementptr i8, ptr %19, i32 5888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %conv27) #8, !srcloc !40
  %20 = ptrtoint ptr %addr20 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %and, ptr %addr20, align 8
  br label %do.body30

do.body30:                                        ; preds = %do.body24, %entry.do.body30_crit_edge
  %add11 = add i64 %call10, %offset
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  tail call void @arm_heavy_mb() #8
  %pri33 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %21 = ptrtoint ptr %pri33 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pri33, align 4
  %23 = trunc i64 %add11 to i32
  %24 = and i32 %23, 1048575
  %idx.ext = or i32 %24, 7340032
  %add.ptr35 = getelementptr i8, ptr %22, i32 %idx.ext
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %data) #8, !srcloc !40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call17) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_bar_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @nv50_instmem, !1, !"nv50_instmem", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/nv50.c", i32 382, i32 1}
!2 = !{ptr @nv50_instobj_func, !3, !"nv50_instobj_func", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/nv50.c", i32 338, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/nv50.c", i32 144, i32 4}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @nv50_instobj_kmap._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @nv50_instobj_kmap._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/nv50.c", i32 177, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @nv50_instobj_kmap._entry.5, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @nv50_instobj_kmap._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @nv50_instobj_fast, !18, !"nv50_instobj_fast", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/nv50.c", i32 114, i32 1}
!19 = !{ptr @nv50_instobj_slow, !20, !"nv50_instobj_slow", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/nv50.c", i32 96, i32 1}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i32 0, i32 33}
!31 = !{!"branch_weights", i32 1, i32 2000}
!32 = !{i64 1086961, i64 1086985, i64 1087006, i64 1087023, i64 1087040}
!33 = !{!"branch_weights", i32 2000, i32 1}
!34 = !{i64 2156280195}
!35 = !{i64 2156280657, i64 2156281172, i64 2156280694, i64 2156280750, i64 2156280784, i64 2156280808, i64 2156280849, i64 2156280870, i64 2156280898, i64 2156280932}
!36 = !{!"auto-init"}
!37 = !{i64 5393401}
!38 = !{i64 2156267498}
!39 = !{i64 2156264986}
!40 = !{i64 5392983}
!41 = !{i64 2156262509}
!42 = !{i64 2156262986}
!43 = !{i64 2156259847}
!44 = !{i64 2156260262}
