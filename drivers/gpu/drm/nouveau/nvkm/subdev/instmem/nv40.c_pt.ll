; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/instmem/nv40.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/nv40.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_instmem_func = type { ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nv40_instmem = type { %struct.nvkm_instmem, %struct.nvkm_mm, ptr }
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
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.137, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.137 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nv40_instobj = type { %struct.nvkm_instobj, ptr, ptr }
%struct.nvkm_instobj = type { %struct.nvkm_memory, %struct.list_head, ptr }
%struct.nvkm_mm_node = type { %struct.list_head, %struct.list_head, ptr, i8, i8, i32, i32 }

@nv40_instmem = internal constant { %struct.nvkm_instmem_func, [36 x i8] } { %struct.nvkm_instmem_func { ptr @nv40_instmem_dtor, ptr @nv40_instmem_oneinit, ptr null, ptr @nv40_instmem_rd32, ptr @nv40_instmem_wr32, ptr @nv40_instobj_new, i8 0 }, [36 x i8] zeroinitializer }, align 32
@nv40_instmem_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 258, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: unable to map PRAMIN BAR\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nv40_instmem_new\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/instmem/nv40.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv40_instmem_new._entry_ptr = internal global ptr @nv40_instmem_new._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nv40_instobj_func = internal constant { %struct.nvkm_memory_func, [56 x i8] } { %struct.nvkm_memory_func { ptr @nv40_instobj_dtor, ptr @nv40_instobj_target, ptr null, ptr null, ptr @nv40_instobj_addr, ptr @nv40_instobj_size, ptr null, ptr @nv40_instobj_acquire, ptr @nv40_instobj_release, ptr null }, [56 x i8] zeroinitializer }, align 32
@nv40_instobj_ptrs = internal constant { %struct.nvkm_memory_ptrs, [24 x i8] } { %struct.nvkm_memory_ptrs { ptr @nv40_instobj_rd32, ptr @nv40_instobj_wr32 }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [13 x i8] c"nv40_instmem\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 228, i32 1 }
@___asan_gen_.8 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 258, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [18 x i8] c"nv40_instobj_func\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 110, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant [18 x i8] c"nv40_instobj_ptrs\00", align 1
@___asan_gen_.30 = private constant [54 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/nv40.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 62, i32 1 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @nv40_instmem_new._entry, ptr @nv40_instmem_new._entry_ptr, ptr @nv40_instmem, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @nv40_instobj_func, ptr @nv40_instobj_ptrs], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv40_instmem to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv40_instmem_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv40_instobj_func to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv40_instobj_ptrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv40_instmem_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pimem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 256) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @nvkm_instmem_ctor(ptr noundef nonnull @nv40_instmem, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef nonnull %call7.i.i) #6
  %1 = ptrtoint ptr %pimem to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pimem, align 4
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 8
  %resource_size = getelementptr inbounds %struct.nvkm_device_func, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %resource_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resource_size, align 4
  %call2 = tail call i32 %5(ptr noundef %device, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  %. = select i1 %tobool3.not, i32 3, i32 2
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 8
  %resource_addr = getelementptr inbounds %struct.nvkm_device_func, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %resource_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resource_addr, align 4
  %call7 = tail call i32 %9(ptr noundef %device, i32 noundef %.) #6
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 8
  %resource_size9 = getelementptr inbounds %struct.nvkm_device_func, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %resource_size9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %resource_size9, align 4
  %call10 = tail call i32 %13(ptr noundef %device, i32 noundef %.) #6
  %call11 = tail call ptr @ioremap_wc(i32 noundef %call7, i32 noundef %call10) #6
  %iomem = getelementptr inbounds %struct.nv40_instmem, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %iomem to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call11, ptr %iomem, align 4
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end
  %debug = getelementptr inbounds %struct.nvkm_instmem, ptr %call7.i.i, i32 0, i32 1, i32 5
  %15 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not = icmp eq i32 %16, 0
  br i1 %cmp.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %device18 = getelementptr inbounds %struct.nvkm_instmem, ptr %call7.i.i, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %device18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device18, align 8
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_instmem, ptr %call7.i.i, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str, ptr noundef %name) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -14, %do.end ], [ -14, %do.body.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_instmem_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nv40_instmem_dtor(ptr noundef returned %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ramfc = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 10
  tail call void @nvkm_memory_unref(ptr noundef %ramfc) #6
  %ramro = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 9
  tail call void @nvkm_memory_unref(ptr noundef %ramro) #6
  %ramht = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 8
  tail call void @nvkm_ramht_del(ptr noundef %ramht) #6
  %vbios = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 7
  tail call void @nvkm_memory_unref(ptr noundef %vbios) #6
  %heap = getelementptr inbounds %struct.nv40_instmem, ptr %base, i32 0, i32 1
  %call = tail call i32 @nvkm_mm_fini(ptr noundef %heap) #6
  %iomem = getelementptr inbounds %struct.nv40_instmem, ptr %base, i32 0, i32 2
  %0 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomem, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iounmap(ptr noundef nonnull %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %base
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv40_instmem_oneinit(ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 5440
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  %and = lshr i32 %4, 8
  %shr = and i32 %and, 255
  %call.i = tail call i32 @__sw_hweight8(i32 noundef %shr) #6
  %chipset = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 16
  %5 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chipset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %6)
  %cmp = icmp eq i32 %6, 64
  br i1 %cmp, label %entry.if.end24_crit_edge, label %if.else

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 67, i32 %6)
  %cmp8 = icmp ult i32 %6, 67
  br i1 %cmp8, label %if.else.if.end24_crit_edge, label %if.else13

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %and.i = and i32 %6, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 96
  %and2.i = and i32 %6, 15
  %7 = lshr i32 -2736, %and2.i
  %8 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not105 = icmp eq i32 %8, 0
  %tobool.not = select i1 %cmp.i, i1 %tobool.not105, i1 false
  %. = select i1 %tobool.not, i32 19008, i32 18816
  br label %if.end24

if.end24:                                         ; preds = %if.else13, %if.else.if.end24_crit_edge, %entry.if.end24_crit_edge
  %.sink = phi i32 [ 27296, %entry.if.end24_crit_edge ], [ 20224, %if.else.if.end24_crit_edge ], [ %., %if.else13 ]
  %mul10 = mul i32 %call.i, %.sink
  %reserved26 = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 5
  %add = shl i32 %mul10, 5
  %sub = add i32 %add, 1572863
  %or = or i32 %sub, 4095
  %add38 = add i32 %or, 1
  %9 = ptrtoint ptr %reserved26 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add38, ptr %reserved26, align 4
  %heap = getelementptr inbounds %struct.nv40_instmem, ptr %base, i32 0, i32 1
  %call43 = tail call i32 @nvkm_mm_init(ptr noundef %heap, i8 noundef zeroext 0, i32 noundef 0, i32 noundef %add38, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end46:                                         ; preds = %if.end24
  %vbios = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 7
  %call48 = tail call i32 @nvkm_memory_new(ptr noundef %1, i32 noundef 0, i64 noundef 65536, i32 noundef 0, i1 noundef zeroext false, ptr noundef %vbios) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end51:                                         ; preds = %if.end46
  %ramht = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 8
  %call53 = tail call i32 @nvkm_ramht_new(ptr noundef %1, i32 noundef 32768, i32 noundef 0, ptr noundef null, ptr noundef %ramht) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end56:                                         ; preds = %if.end51
  %ramro = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 9
  %call58 = tail call i32 @nvkm_memory_new(ptr noundef %1, i32 noundef 0, i64 noundef 32768, i32 noundef 0, i1 noundef zeroext false, ptr noundef %ramro) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end61:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  %ramfc = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 10
  %call63 = tail call i32 @nvkm_memory_new(ptr noundef %1, i32 noundef 0, i64 noundef 131072, i32 noundef 0, i1 noundef zeroext true, ptr noundef %ramfc) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.end56.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %if.end24.cleanup_crit_edge
  %retval.0 = phi i32 [ %call43, %if.end24.cleanup_crit_edge ], [ %call48, %if.end46.cleanup_crit_edge ], [ %call53, %if.end51.cleanup_crit_edge ], [ %call58, %if.end56.cleanup_crit_edge ], [ %call63, %if.end61 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv40_instmem_rd32(ptr nocapture noundef readonly %base, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iomem = getelementptr inbounds %struct.nv40_instmem, ptr %base, i32 0, i32 2
  %0 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomem, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 %addr
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !25
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv40_instmem_wr32(ptr nocapture noundef readonly %base, i32 noundef %addr, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !26
  tail call void @arm_heavy_mb() #6
  %iomem = getelementptr inbounds %struct.nv40_instmem, ptr %base, i32 0, i32 2
  %0 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomem, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 %addr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %data) #6, !srcloc !27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv40_instobj_new(ptr noundef %base, i32 noundef %size, i32 noundef %align, i1 noundef zeroext %zero, ptr nocapture noundef writeonly %pmemory) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 36) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %pmemory to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pmemory, align 4
  tail call void @nvkm_instobj_ctor(ptr noundef nonnull @nv40_instobj_func, ptr noundef %base, ptr noundef nonnull %call7.i.i) #6
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %ptrs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @nv40_instobj_ptrs, ptr %ptrs, align 4
  %imem6 = getelementptr inbounds %struct.nv40_instobj, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %imem6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %base, ptr %imem6, align 4
  %mutex = getelementptr inbounds %struct.nvkm_instmem, ptr %base, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %heap = getelementptr inbounds %struct.nv40_instmem, ptr %base, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %align)
  %tobool8.not = icmp eq i32 %align, 0
  %spec.select = select i1 %tobool8.not, i32 1, i32 %align
  %node = getelementptr inbounds %struct.nv40_instobj, ptr %call7.i.i, i32 0, i32 2
  %call9 = tail call i32 @nvkm_mm_head(ptr noundef %heap, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef %size, i32 noundef %size, i32 noundef %spec.select, ptr noundef %node) #6
  tail call void @mutex_unlock(ptr noundef %mutex) #6
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
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_init(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ramht_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #1

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
define internal ptr @nv40_instobj_dtor(ptr noundef returned %memory) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %imem = getelementptr inbounds %struct.nv40_instobj, ptr %memory, i32 0, i32 1
  %0 = ptrtoint ptr %imem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imem, align 4
  %mutex = getelementptr inbounds %struct.nvkm_instmem, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %2 = ptrtoint ptr %imem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %imem, align 4
  %heap = getelementptr inbounds %struct.nv40_instmem, ptr %3, i32 0, i32 1
  %node = getelementptr inbounds %struct.nv40_instobj, ptr %memory, i32 0, i32 2
  tail call void @nvkm_mm_free(ptr noundef %heap, ptr noundef %node) #6
  %4 = ptrtoint ptr %imem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %imem, align 4
  %mutex4 = getelementptr inbounds %struct.nvkm_instmem, ptr %5, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %mutex4) #6
  %6 = ptrtoint ptr %imem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %imem, align 4
  tail call void @nvkm_instobj_dtor(ptr noundef %7, ptr noundef %memory) #6
  ret ptr %memory
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nv40_instobj_target(ptr nocapture noundef readnone %memory) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @nv40_instobj_addr(ptr nocapture noundef readonly %memory) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %node = getelementptr inbounds %struct.nv40_instobj, ptr %memory, i32 0, i32 2
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
define internal i64 @nv40_instobj_size(ptr nocapture noundef readonly %memory) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %node = getelementptr inbounds %struct.nv40_instobj, ptr %memory, i32 0, i32 2
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
define internal ptr @nv40_instobj_acquire(ptr nocapture noundef readonly %memory) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %imem = getelementptr inbounds %struct.nv40_instobj, ptr %memory, i32 0, i32 1
  %0 = ptrtoint ptr %imem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imem, align 4
  %iomem = getelementptr inbounds %struct.nv40_instmem, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomem, align 4
  %node = getelementptr inbounds %struct.nv40_instobj, ptr %memory, i32 0, i32 2
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node, align 4
  %offset = getelementptr inbounds %struct.nvkm_mm_node, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 %7
  ret ptr %add.ptr1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv40_instobj_release(ptr nocapture noundef readnone %memory) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mm_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_instobj_dtor(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv40_instobj_rd32(ptr nocapture noundef readonly %memory, i64 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %imem = getelementptr inbounds %struct.nv40_instobj, ptr %memory, i32 0, i32 1
  %0 = ptrtoint ptr %imem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imem, align 4
  %iomem = getelementptr inbounds %struct.nv40_instmem, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomem, align 4
  %node = getelementptr inbounds %struct.nv40_instobj, ptr %memory, i32 0, i32 2
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node, align 4
  %offset1 = getelementptr inbounds %struct.nvkm_mm_node, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %offset1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset1, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 %7
  %idx.ext = trunc i64 %offset to i32
  %add.ptr3 = getelementptr i8, ptr %add.ptr2, i32 %idx.ext
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv40_instobj_wr32(ptr nocapture noundef readonly %memory, i64 noundef %offset, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  %imem = getelementptr inbounds %struct.nv40_instobj, ptr %memory, i32 0, i32 1
  %0 = ptrtoint ptr %imem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imem, align 4
  %iomem = getelementptr inbounds %struct.nv40_instmem, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomem, align 4
  %node = getelementptr inbounds %struct.nv40_instobj, ptr %memory, i32 0, i32 2
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node, align 4
  %offset1 = getelementptr inbounds %struct.nvkm_mm_node, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %offset1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset1, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 %7
  %idx.ext = trunc i64 %offset to i32
  %add.ptr3 = getelementptr i8, ptr %add.ptr2, i32 %idx.ext
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %data) #6, !srcloc !27
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/nv40.c", i32 258, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nv40_instmem_new._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nv40_instmem_new._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @nv40_instmem, !9, !"nv40_instmem", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/nv40.c", i32 228, i32 1}
!10 = !{ptr @nv40_instobj_func, !11, !"nv40_instobj_func", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/nv40.c", i32 110, i32 1}
!12 = !{ptr @nv40_instobj_ptrs, !13, !"nv40_instobj_ptrs", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/nv40.c", i32 62, i32 1}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i64 5389645}
!24 = !{i64 2156267949}
!25 = !{i64 2156263626}
!26 = !{i64 2156265519}
!27 = !{i64 5389227}
!28 = !{i64 2156254349}
!29 = !{i64 2156254201}
!30 = !{i64 2156252417}
