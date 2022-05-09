; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/core/gpuobj.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/core/gpuobj.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_gpuobj = type { %union.anon, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_mm_node = type { %struct.list_head, %struct.list_head, ptr, i8, i8, i32, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nvkm_memory_ptrs = type { ptr, ptr }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nvkm_gpuobj_func = internal constant { %struct.nvkm_gpuobj_func, [44 x i8] } { %struct.nvkm_gpuobj_func { ptr @nvkm_gpuobj_acquire, ptr null, ptr null, ptr null, ptr @nvkm_gpuobj_map }, [44 x i8] zeroinitializer }, align 32
@nvkm_gpuobj_heap = internal constant { %struct.nvkm_gpuobj_func, [44 x i8] } { %struct.nvkm_gpuobj_func { ptr @nvkm_gpuobj_heap_acquire, ptr null, ptr null, ptr null, ptr @nvkm_gpuobj_heap_map }, [44 x i8] zeroinitializer }, align 32
@nvkm_gpuobj_fast = internal constant { %struct.nvkm_gpuobj_func, [44 x i8] } { %struct.nvkm_gpuobj_func { ptr null, ptr @nvkm_gpuobj_release, ptr @nvkm_gpuobj_rd32_fast, ptr @nvkm_gpuobj_wr32_fast, ptr @nvkm_gpuobj_map }, [44 x i8] zeroinitializer }, align 32
@nvkm_gpuobj_slow = internal constant { %struct.nvkm_gpuobj_func, [44 x i8] } { %struct.nvkm_gpuobj_func { ptr null, ptr @nvkm_gpuobj_release, ptr @nvkm_gpuobj_rd32, ptr @nvkm_gpuobj_wr32, ptr @nvkm_gpuobj_map }, [44 x i8] zeroinitializer }, align 32
@nvkm_gpuobj_heap_fast = internal constant { %struct.nvkm_gpuobj_func, [44 x i8] } { %struct.nvkm_gpuobj_func { ptr null, ptr @nvkm_gpuobj_heap_release, ptr @nvkm_gpuobj_rd32_fast, ptr @nvkm_gpuobj_wr32_fast, ptr @nvkm_gpuobj_heap_map }, [44 x i8] zeroinitializer }, align 32
@nvkm_gpuobj_heap_slow = internal constant { %struct.nvkm_gpuobj_func, [44 x i8] } { %struct.nvkm_gpuobj_func { ptr null, ptr @nvkm_gpuobj_heap_release, ptr @nvkm_gpuobj_heap_rd32, ptr @nvkm_gpuobj_heap_wr32, ptr @nvkm_gpuobj_heap_map }, [44 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"nvkm_gpuobj_func\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 166, i32 1 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"nvkm_gpuobj_heap\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 101, i32 1 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"nvkm_gpuobj_fast\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 137, i32 1 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"nvkm_gpuobj_slow\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 145, i32 1 }
@___asan_gen_.13 = private unnamed_addr constant [22 x i8] c"nvkm_gpuobj_heap_fast\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 74, i32 1 }
@___asan_gen_.16 = private unnamed_addr constant [22 x i8] c"nvkm_gpuobj_heap_slow\00", align 1
@___asan_gen_.17 = private constant [46 x i8] c"../drivers/gpu/drm/nouveau/nvkm/core/gpuobj.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 82, i32 1 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @nvkm_gpuobj_func, ptr @nvkm_gpuobj_heap, ptr @nvkm_gpuobj_fast, ptr @nvkm_gpuobj_slow, ptr @nvkm_gpuobj_heap_fast, ptr @nvkm_gpuobj_heap_slow], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_gpuobj_func to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_gpuobj_heap to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_gpuobj_fast to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_gpuobj_slow to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_gpuobj_heap_fast to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_gpuobj_heap_slow to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_gpuobj_del(ptr nocapture noundef %pgpuobj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pgpuobj, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then:                                          ; preds = %entry
  %parent = getelementptr inbounds %struct.nvkm_gpuobj, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %heap = getelementptr inbounds %struct.nvkm_gpuobj, ptr %3, i32 0, i32 6
  %node = getelementptr inbounds %struct.nvkm_gpuobj, ptr %1, i32 0, i32 3
  tail call void @nvkm_mm_free(ptr noundef %heap, ptr noundef %node) #4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %heap4 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %1, i32 0, i32 6
  %call = tail call i32 @nvkm_mm_fini(ptr noundef %heap4) #4
  %memory = getelementptr inbounds %struct.nvkm_gpuobj, ptr %1, i32 0, i32 2
  tail call void @nvkm_memory_unref(ptr noundef %memory) #4
  %4 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pgpuobj, align 4
  tail call void @kfree(ptr noundef %5) #4
  %6 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %pgpuobj, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mm_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_gpuobj_new(ptr noundef %device, i32 noundef %size, i32 noundef %align, i1 noundef zeroext %zero, ptr noundef %parent, ptr nocapture noundef %pgpuobj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 56) #7
  %1 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pgpuobj, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %parent, null
  br i1 %tobool.not.i, label %if.else23.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %align)
  %cmp.i = icmp sgt i32 %align, -1
  %heap.i = getelementptr inbounds %struct.nvkm_gpuobj, ptr %parent, i32 0, i32 6
  br i1 %cmp.i, label %if.then1.i, label %if.else.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %2 = tail call i32 @llvm.umax.i32(i32 %align, i32 1) #4
  %node.i = getelementptr inbounds %struct.nvkm_gpuobj, ptr %call7.i.i, i32 0, i32 3
  %call.i = tail call i32 @nvkm_mm_head(ptr noundef %heap.i, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef %size, i32 noundef %size, i32 noundef %2, ptr noundef %node.i) #4
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i = sub i32 0, %align
  %node4.i = getelementptr inbounds %struct.nvkm_gpuobj, ptr %call7.i.i, i32 0, i32 3
  %call5.i = tail call i32 @nvkm_mm_tail(ptr noundef %heap.i, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef %size, i32 noundef %size, i32 noundef %sub.i, ptr noundef %node4.i) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then1.i
  %ret.0.i = phi i32 [ %call.i, %if.then1.i ], [ %call5.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool6.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i.if.then4_crit_edge

if.end.i.if.then4_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4

if.end8.i:                                        ; preds = %if.end.i
  %parent9.i = getelementptr inbounds %struct.nvkm_gpuobj, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %parent9.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %parent, ptr %parent9.i, align 4
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @nvkm_gpuobj_func, ptr %call7.i.i, align 8
  %addr.i = getelementptr inbounds %struct.nvkm_gpuobj, ptr %parent, i32 0, i32 4
  %5 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %addr.i, align 8
  %node10.i = getelementptr inbounds %struct.nvkm_gpuobj, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %node10.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %node10.i, align 4
  %offset11.i = getelementptr inbounds %struct.nvkm_mm_node, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %offset11.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset11.i, align 4
  %conv.i = zext i32 %10 to i64
  %add.i = add i64 %6, %conv.i
  %addr12.i = getelementptr inbounds %struct.nvkm_gpuobj, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %addr12.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %add.i, ptr %addr12.i, align 8
  %length.i = getelementptr inbounds %struct.nvkm_mm_node, ptr %8, i32 0, i32 6
  %12 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length.i, align 4
  %size14.i = getelementptr inbounds %struct.nvkm_gpuobj, ptr %call7.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %size14.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %size14.i, align 8
  br i1 %zero, label %if.then16.i, label %if.end8.i.nvkm_gpuobj_ctor.exit_crit_edge

if.end8.i.nvkm_gpuobj_ctor.exit_crit_edge:        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvkm_gpuobj_ctor.exit

if.then16.i:                                      ; preds = %if.end8.i
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %call.i.i = tail call ptr %18(ptr noundef nonnull %parent) #4
  %map.i.i = getelementptr inbounds %struct.nvkm_gpuobj, ptr %call7.i.i, i32 0, i32 7
  %19 = ptrtoint ptr %map.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i.i, ptr %map.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then16.i.nvkm_gpuobj_acquire.exit.i_crit_edge, label %if.then.i.i, !prof !21

if.then16.i.nvkm_gpuobj_acquire.exit.i_crit_edge: ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvkm_gpuobj_acquire.exit.i

if.then.i.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %node10.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %node10.i, align 4
  %offset.i.i = getelementptr inbounds %struct.nvkm_mm_node, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 %23
  %24 = ptrtoint ptr %map.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr.i.i, ptr %map.i.i, align 4
  br label %nvkm_gpuobj_acquire.exit.i

nvkm_gpuobj_acquire.exit.i:                       ; preds = %if.then.i.i, %if.then16.i.nvkm_gpuobj_acquire.exit.i_crit_edge
  %storemerge.i.i = phi ptr [ @nvkm_gpuobj_fast, %if.then.i.i ], [ @nvkm_gpuobj_slow, %if.then16.i.nvkm_gpuobj_acquire.exit.i_crit_edge ]
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %storemerge.i.i, ptr %call7.i.i, align 8
  %26 = ptrtoint ptr %size14.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size14.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp19100.not.i = icmp eq i32 %27, 0
  br i1 %cmp19100.not.i, label %nvkm_gpuobj_acquire.exit.i.for.end.i_crit_edge, label %nvkm_gpuobj_acquire.exit.i.for.body.i_crit_edge

nvkm_gpuobj_acquire.exit.i.for.body.i_crit_edge:  ; preds = %nvkm_gpuobj_acquire.exit.i
  br label %for.body.i

nvkm_gpuobj_acquire.exit.i.for.end.i_crit_edge:   ; preds = %nvkm_gpuobj_acquire.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %nvkm_gpuobj_acquire.exit.i.for.body.i_crit_edge
  %offset.0101.i = phi i32 [ %add21.i, %for.body.i.for.body.i_crit_edge ], [ 0, %nvkm_gpuobj_acquire.exit.i.for.body.i_crit_edge ]
  %28 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call7.i.i, align 8
  %wr32.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %wr32.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wr32.i, align 4
  tail call void %31(ptr noundef nonnull %call7.i.i, i32 noundef %offset.0101.i, i32 noundef 0) #4
  %add21.i = add i32 %offset.0101.i, 4
  %32 = ptrtoint ptr %size14.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size14.i, align 8
  %cmp19.i = icmp ult i32 %add21.i, %33
  br i1 %cmp19.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %nvkm_gpuobj_acquire.exit.i.for.end.i_crit_edge
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call7.i.i, align 8
  %release.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %release.i, align 4
  tail call void %37(ptr noundef nonnull %call7.i.i) #4
  br label %nvkm_gpuobj_ctor.exit

if.else23.i:                                      ; preds = %if.end
  %conv24.i = zext i32 %size to i64
  %38 = tail call i32 @llvm.abs.i32(i32 %align, i1 false) #4
  %memory.i = getelementptr inbounds %struct.nvkm_gpuobj, ptr %call7.i.i, i32 0, i32 2
  %call34.i = tail call i32 @nvkm_memory_new(ptr noundef %device, i32 noundef 0, i64 noundef %conv24.i, i32 noundef %38, i1 noundef zeroext %zero, ptr noundef %memory.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end37.i, label %if.else23.i.if.then4_crit_edge

if.else23.i.if.then4_crit_edge:                   ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4

if.end37.i:                                       ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #6
  %39 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @nvkm_gpuobj_heap, ptr %call7.i.i, align 8
  %40 = ptrtoint ptr %memory.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %memory.i, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %addr39.i = getelementptr inbounds %struct.nvkm_memory_func, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %addr39.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %addr39.i, align 4
  %call41.i = tail call i64 %45(ptr noundef %41) #4
  %addr42.i = getelementptr inbounds %struct.nvkm_gpuobj, ptr %call7.i.i, i32 0, i32 4
  %46 = ptrtoint ptr %addr42.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %call41.i, ptr %addr42.i, align 8
  %47 = ptrtoint ptr %memory.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %memory.i, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %size45.i = getelementptr inbounds %struct.nvkm_memory_func, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %size45.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %size45.i, align 4
  %call47.i = tail call i64 %52(ptr noundef %48) #4
  %conv48.i = trunc i64 %call47.i to i32
  %size49.i = getelementptr inbounds %struct.nvkm_gpuobj, ptr %call7.i.i, i32 0, i32 5
  %53 = ptrtoint ptr %size49.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv48.i, ptr %size49.i, align 8
  br label %nvkm_gpuobj_ctor.exit

nvkm_gpuobj_ctor.exit:                            ; preds = %if.end37.i, %for.end.i, %if.end8.i.nvkm_gpuobj_ctor.exit_crit_edge
  %heap51.i = getelementptr inbounds %struct.nvkm_gpuobj, ptr %call7.i.i, i32 0, i32 6
  %size52.i = getelementptr inbounds %struct.nvkm_gpuobj, ptr %call7.i.i, i32 0, i32 5
  %54 = ptrtoint ptr %size52.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %size52.i, align 8
  %call53.i = tail call i32 @nvkm_mm_init(ptr noundef %heap51.i, i8 noundef zeroext 0, i32 noundef 0, i32 noundef %55, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool3.not = icmp eq i32 %call53.i, 0
  br i1 %tobool3.not, label %nvkm_gpuobj_ctor.exit.cleanup_crit_edge, label %nvkm_gpuobj_ctor.exit.if.then4_crit_edge

nvkm_gpuobj_ctor.exit.if.then4_crit_edge:         ; preds = %nvkm_gpuobj_ctor.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4

nvkm_gpuobj_ctor.exit.cleanup_crit_edge:          ; preds = %nvkm_gpuobj_ctor.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then4:                                         ; preds = %nvkm_gpuobj_ctor.exit.if.then4_crit_edge, %if.else23.i.if.then4_crit_edge, %if.end.i.if.then4_crit_edge
  %retval.0.i18 = phi i32 [ %call53.i, %nvkm_gpuobj_ctor.exit.if.then4_crit_edge ], [ %call34.i, %if.else23.i.if.then4_crit_edge ], [ %ret.0.i, %if.end.i.if.then4_crit_edge ]
  %56 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pgpuobj, align 4
  %tobool.not.i9 = icmp eq ptr %57, null
  br i1 %tobool.not.i9, label %if.then4.cleanup_crit_edge, label %if.then.i10

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i10:                                      ; preds = %if.then4
  %parent.i = getelementptr inbounds %struct.nvkm_gpuobj, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %parent.i, align 4
  %tobool1.not.i = icmp eq ptr %59, null
  br i1 %tobool1.not.i, label %if.then.i10.if.end.i15_crit_edge, label %if.then2.i

if.then.i10.if.end.i15_crit_edge:                 ; preds = %if.then.i10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i15

if.then2.i:                                       ; preds = %if.then.i10
  call void @__sanitizer_cov_trace_pc() #6
  %heap.i11 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %59, i32 0, i32 6
  %node.i12 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %57, i32 0, i32 3
  tail call void @nvkm_mm_free(ptr noundef %heap.i11, ptr noundef %node.i12) #4
  br label %if.end.i15

if.end.i15:                                       ; preds = %if.then2.i, %if.then.i10.if.end.i15_crit_edge
  %heap4.i = getelementptr inbounds %struct.nvkm_gpuobj, ptr %57, i32 0, i32 6
  %call.i13 = tail call i32 @nvkm_mm_fini(ptr noundef %heap4.i) #4
  %memory.i14 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %57, i32 0, i32 2
  tail call void @nvkm_memory_unref(ptr noundef %memory.i14) #4
  %60 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pgpuobj, align 4
  tail call void @kfree(ptr noundef %61) #4
  %62 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %pgpuobj, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i15, %if.then4.cleanup_crit_edge, %nvkm_gpuobj_ctor.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %nvkm_gpuobj_ctor.exit.cleanup_crit_edge ], [ %retval.0.i18, %if.then4.cleanup_crit_edge ], [ %retval.0.i18, %if.end.i15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_gpuobj_wrap(ptr noundef %memory, ptr nocapture noundef %pgpuobj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 56) #7
  %1 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pgpuobj, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %memory, align 4
  %addr = getelementptr inbounds %struct.nvkm_memory_func, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr, align 4
  %call1 = tail call i64 %5(ptr noundef %memory) #4
  %6 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pgpuobj, align 4
  %addr2 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %addr2 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %call1, ptr %addr2, align 8
  %9 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %memory, align 4
  %size = getelementptr inbounds %struct.nvkm_memory_func, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %size, align 4
  %call4 = tail call i64 %12(ptr noundef %memory) #4
  %conv = trunc i64 %call4 to i32
  %13 = ptrtoint ptr %pgpuobj to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pgpuobj, align 4
  %size5 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %size5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv, ptr %size5, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_gpuobj_memcpy_to(ptr noundef %dst, i32 noundef %dstoffset, ptr nocapture noundef readonly %src, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp6.not = icmp eq i32 %length, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.07 = phi i32 [ %add1, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %0 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst, align 8
  %wr32 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wr32, align 4
  %add = add i32 %i.07, %dstoffset
  %add.ptr = getelementptr i8, ptr %src, i32 %i.07
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  tail call void %3(ptr noundef %dst, i32 noundef %add, i32 noundef %5) #4
  %add1 = add i32 %i.07, 4
  %cmp = icmp ult i32 %add1, %length
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_gpuobj_memcpy_from(ptr nocapture noundef readnone %dst, ptr noundef %src, i32 noundef %srcoffset, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp7.not = icmp eq i32 %length, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.08 = phi i32 [ %add1, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src, align 8
  %rd32 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rd32 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rd32, align 4
  %add = add i32 %i.08, %srcoffset
  %call = tail call i32 %3(ptr noundef %src, i32 noundef %add) #4
  %div = sdiv i32 %i.08, 4
  %arrayidx = getelementptr i32, ptr %src, i32 %div
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %arrayidx, align 4
  %add1 = add i32 %i.08, 4
  %cmp = icmp ult i32 %add1, %length
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_head(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_tail(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_init(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvkm_gpuobj_acquire(ptr nocapture noundef %gpuobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.nvkm_gpuobj, ptr %gpuobj, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call ptr %5(ptr noundef %1) #4
  %map = getelementptr inbounds %struct.nvkm_gpuobj, ptr %gpuobj, i32 0, i32 7
  %6 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %map, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !21

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %node = getelementptr inbounds %struct.nvkm_gpuobj, ptr %gpuobj, i32 0, i32 3
  %7 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %node, align 4
  %offset = getelementptr inbounds %struct.nvkm_mm_node, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %call, i32 %10
  %11 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr, ptr %map, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %storemerge = phi ptr [ @nvkm_gpuobj_fast, %if.then ], [ @nvkm_gpuobj_slow, %entry.if.end_crit_edge ]
  %12 = ptrtoint ptr %gpuobj to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %storemerge, ptr %gpuobj, align 8
  %13 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map, align 4
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_gpuobj_map(ptr nocapture noundef readonly %gpuobj, i64 noundef %offset, ptr noundef %vmm, ptr noundef %vma, ptr noundef %argv, i32 noundef %argc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.nvkm_gpuobj, ptr %gpuobj, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %map = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %node = getelementptr inbounds %struct.nvkm_gpuobj, ptr %gpuobj, i32 0, i32 3
  %6 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %node, align 4
  %offset2 = getelementptr inbounds %struct.nvkm_mm_node, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %offset2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset2, align 4
  %conv = zext i32 %9 to i64
  %add = add i64 %conv, %offset
  %call = tail call i32 %5(ptr noundef %1, i64 noundef %add, ptr noundef %vmm, ptr noundef %vma, ptr noundef %argv, i32 noundef %argc) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_gpuobj_release(ptr nocapture noundef %gpuobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gpuobj to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @nvkm_gpuobj_func, ptr %gpuobj, align 8
  %parent = getelementptr inbounds %struct.nvkm_gpuobj, ptr %gpuobj, i32 0, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %release = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %release, align 4
  tail call void %6(ptr noundef %2) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_gpuobj_rd32_fast(ptr nocapture noundef readonly %gpuobj, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %map = getelementptr inbounds %struct.nvkm_gpuobj, ptr %gpuobj, i32 0, i32 7
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_gpuobj_wr32_fast(ptr nocapture noundef readonly %gpuobj, i32 noundef %offset, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %map = getelementptr inbounds %struct.nvkm_gpuobj, ptr %gpuobj, i32 0, i32 7
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %data) #4, !srcloc !25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_gpuobj_rd32(ptr nocapture noundef readonly %gpuobj, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.nvkm_gpuobj, ptr %gpuobj, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %rd32 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %rd32 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rd32, align 4
  %node = getelementptr inbounds %struct.nvkm_gpuobj, ptr %gpuobj, i32 0, i32 3
  %6 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %node, align 4
  %offset2 = getelementptr inbounds %struct.nvkm_mm_node, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %offset2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset2, align 4
  %add = add i32 %9, %offset
  %call = tail call i32 %5(ptr noundef %1, i32 noundef %add) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_gpuobj_wr32(ptr nocapture noundef readonly %gpuobj, i32 noundef %offset, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.nvkm_gpuobj, ptr %gpuobj, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %wr32 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wr32, align 4
  %node = getelementptr inbounds %struct.nvkm_gpuobj, ptr %gpuobj, i32 0, i32 3
  %6 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %node, align 4
  %offset2 = getelementptr inbounds %struct.nvkm_mm_node, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %offset2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset2, align 4
  %add = add i32 %9, %offset
  tail call void %5(ptr noundef %1, i32 noundef %add, i32 noundef %data) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvkm_gpuobj_heap_acquire(ptr nocapture noundef %gpuobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %memory = getelementptr inbounds %struct.nvkm_gpuobj, ptr %gpuobj, i32 0, i32 2
  %0 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memory, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %acquire, align 4
  %call = tail call ptr %5(ptr noundef %1) #4
  %map = getelementptr inbounds %struct.nvkm_gpuobj, ptr %gpuobj, i32 0, i32 7
  %6 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %map, align 4
  %tobool.not = icmp eq ptr %call, null
  %nvkm_gpuobj_heap_slow.nvkm_gpuobj_heap_fast = select i1 %tobool.not, ptr @nvkm_gpuobj_heap_slow, ptr @nvkm_gpuobj_heap_fast, !prof !21
  %7 = ptrtoint ptr %gpuobj to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %nvkm_gpuobj_heap_slow.nvkm_gpuobj_heap_fast, ptr %gpuobj, align 8
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_gpuobj_heap_map(ptr nocapture noundef readonly %gpuobj, i64 noundef %offset, ptr noundef %vmm, ptr noundef %vma, ptr noundef %argv, i32 noundef %argc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %memory = getelementptr inbounds %struct.nvkm_gpuobj, ptr %gpuobj, i32 0, i32 2
  %0 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memory, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %map = getelementptr inbounds %struct.nvkm_memory_func, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %call = tail call i32 %5(ptr noundef %1, i64 noundef %offset, ptr noundef %vmm, ptr noundef %vma, ptr noundef %argv, i32 noundef %argc) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_gpuobj_heap_release(ptr nocapture noundef %gpuobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gpuobj to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @nvkm_gpuobj_heap, ptr %gpuobj, align 8
  %memory = getelementptr inbounds %struct.nvkm_gpuobj, ptr %gpuobj, i32 0, i32 2
  %1 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %memory, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %release, align 4
  tail call void %6(ptr noundef %2) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_gpuobj_heap_rd32(ptr nocapture noundef readonly %gpuobj, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %memory = getelementptr inbounds %struct.nvkm_gpuobj, ptr %gpuobj, i32 0, i32 2
  %0 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memory, align 8
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptrs, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %conv = zext i32 %offset to i64
  %call = tail call i32 %5(ptr noundef %1, i64 noundef %conv) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_gpuobj_heap_wr32(ptr nocapture noundef readonly %gpuobj, i32 noundef %offset, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %memory = getelementptr inbounds %struct.nvkm_gpuobj, ptr %gpuobj, i32 0, i32 2
  %0 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memory, align 8
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wr32, align 4
  %conv = zext i32 %offset to i64
  tail call void %5(ptr noundef %1, i64 noundef %conv, i32 noundef %data) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @nvkm_gpuobj_func, !1, !"nvkm_gpuobj_func", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/gpuobj.c", i32 166, i32 1}
!2 = !{ptr @nvkm_gpuobj_fast, !3, !"nvkm_gpuobj_fast", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/gpuobj.c", i32 137, i32 1}
!4 = !{ptr @nvkm_gpuobj_slow, !5, !"nvkm_gpuobj_slow", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/gpuobj.c", i32 145, i32 1}
!6 = !{ptr @nvkm_gpuobj_heap, !7, !"nvkm_gpuobj_heap", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/gpuobj.c", i32 101, i32 1}
!8 = !{ptr @nvkm_gpuobj_heap_fast, !9, !"nvkm_gpuobj_heap_fast", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/gpuobj.c", i32 74, i32 1}
!10 = !{ptr @nvkm_gpuobj_heap_slow, !11, !"nvkm_gpuobj_heap_slow", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/gpuobj.c", i32 82, i32 1}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{i64 5386177}
!23 = !{i64 2156244786}
!24 = !{i64 2156245043}
!25 = !{i64 5385759}
