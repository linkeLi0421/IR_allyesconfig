; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/umem.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/umem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_umem = type { %struct.nvkm_object, ptr, i16, ptr, %struct.list_head, %union.anon.145 }
%union.anon.145 = type { ptr }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_ummu = type { %struct.nvkm_object, ptr }
%struct.nvif_mem_v0 = type { i8, i8, i8, [5 x i8], i64, i64, [0 x i8] }
%struct.nvkm_mmu = type { ptr, %struct.nvkm_subdev, i8, i32, [4 x %struct.anon.136], i32, [16 x %struct.anon.137], ptr, %struct.anon.138, %struct.anon.138, %struct.mutex, %struct.nvkm_device_oclass }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.136 = type { i8, i64 }
%struct.anon.137 = type { i8, i8 }
%struct.anon.138 = type { %struct.mutex, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_mmu_func = type { ptr, i8, %struct.anon, %struct.anon.3, %struct.anon.4, ptr, i8 }
%struct.anon = type { %struct.nvkm_sclass }
%struct.anon.3 = type { %struct.nvkm_sclass, ptr, ptr }
%struct.anon.4 = type { %struct.nvkm_sclass, ptr, i8, i32 }

@nvkm_umem = internal constant { %struct.nvkm_object_func, [36 x i8] } { %struct.nvkm_object_func { ptr @nvkm_umem_dtor, ptr null, ptr null, ptr null, ptr null, ptr @nvkm_umem_map, ptr @nvkm_umem_unmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [10 x i8] c"nvkm_umem\00", align 1
@___asan_gen_.2 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/umem.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 135, i32 1 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @nvkm_umem], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_umem to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvkm_umem_search(ptr noundef %client, i64 noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.nvkm_object, ptr %client, i32 0, i32 1
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  %call = tail call ptr @nvkm_object_search(ptr noundef %client, i64 noundef %handle, ptr noundef nonnull @nvkm_umem) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %cmp.not = icmp eq ptr %1, %client
  br i1 %cmp.not, label %if.then.cond.false_crit_edge, label %if.then4

if.then.cond.false_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

if.then4:                                         ; preds = %if.then
  %lock = getelementptr inbounds %struct.nvkm_client, ptr %1, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock) #4
  %umem5 = getelementptr inbounds %struct.nvkm_client, ptr %1, i32 0, i32 8
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.then4
  %.pn.in = phi ptr [ %umem5, %if.then4 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp7.not = icmp eq ptr %.pn, %umem5
  br i1 %cmp7.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.cond
  %object9 = getelementptr i8, ptr %.pn, i32 -36
  %3 = ptrtoint ptr %object9 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %object9, align 8
  %cmp10 = icmp eq i64 %4, %handle
  br i1 %cmp10, label %if.then11, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %memory12 = getelementptr i8, ptr %.pn, i32 -4
  %5 = ptrtoint ptr %memory12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %memory12, align 8
  %call13 = tail call ptr @nvkm_memory_ref(ptr noundef %6) #4
  br label %for.end

for.end:                                          ; preds = %if.then11, %for.cond.for.end_crit_edge
  %memory.0 = phi ptr [ %call13, %if.then11 ], [ null, %for.cond.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #4
  br label %if.end26

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %memory24 = getelementptr inbounds %struct.nvkm_umem, ptr %call, i32 0, i32 3
  %7 = ptrtoint ptr %memory24 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %memory24, align 8
  %call25 = tail call ptr @nvkm_memory_ref(ptr noundef %8) #4
  br label %if.end26

if.end26:                                         ; preds = %if.else, %for.end
  %memory.1 = phi ptr [ %memory.0, %for.end ], [ %call25, %if.else ]
  %tobool.not = icmp eq ptr %memory.1, null
  br i1 %tobool.not, label %if.end26.cond.false_crit_edge, label %if.end26.cond.end_crit_edge

if.end26.cond.end_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

if.end26.cond.false_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

cond.false:                                       ; preds = %if.end26.cond.false_crit_edge, %if.then.cond.false_crit_edge
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end26.cond.end_crit_edge
  %cond = phi ptr [ inttoptr (i32 -2 to ptr), %cond.false ], [ %memory.1, %if.end26.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_object_search(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_memory_ref(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_umem_new(ptr noundef %oclass, ptr noundef %argv, i32 noundef %argc, ptr nocapture noundef writeonly %pobject) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 9
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %mmu1 = getelementptr inbounds %struct.nvkm_ummu, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mmu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmu1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %argc)
  %cmp2 = icmp ugt i32 %argc, 23
  br i1 %cmp2, label %land.lhs.true6, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true6:                                   ; preds = %entry
  %4 = ptrtoint ptr %argv to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %argv, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp9 = icmp eq i8 %5, 0
  br i1 %cmp9, label %if.then16, label %land.lhs.true6.cleanup_crit_edge

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then16:                                        ; preds = %land.lhs.true6
  %add.ptr11 = getelementptr i8, ptr %argv, i32 24
  %sub = add i32 %argc, -24
  %type17 = getelementptr inbounds %struct.nvif_mem_v0, ptr %argv, i32 0, i32 1
  %6 = ptrtoint ptr %type17 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %type17, align 1
  %conv18 = zext i8 %7 to i32
  %page19 = getelementptr inbounds %struct.nvif_mem_v0, ptr %argv, i32 0, i32 2
  %8 = ptrtoint ptr %page19 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %page19, align 2
  %size20 = getelementptr inbounds %struct.nvif_mem_v0, ptr %argv, i32 0, i32 4
  %10 = ptrtoint ptr %size20 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %size20, align 8
  %type_nr = getelementptr inbounds %struct.nvkm_mmu, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %type_nr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type_nr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv18)
  %cmp22.not = icmp sgt i32 %13, %conv18
  br i1 %cmp22.not, label %if.end25, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end25:                                         ; preds = %if.then16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 96) #7
  %tobool26.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool26.not, label %if.end25.cleanup_crit_edge, label %if.end28

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end28:                                         ; preds = %if.end25
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nvkm_umem, ptr noundef %oclass, ptr noundef nonnull %call7.i.i) #4
  %mmu29 = getelementptr inbounds %struct.nvkm_umem, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %mmu29 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %3, ptr %mmu29, align 8
  %arrayidx = getelementptr %struct.nvkm_mmu, ptr %3, i32 0, i32 6, i32 %conv18
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 2
  %type32 = getelementptr inbounds %struct.nvkm_umem, ptr %call7.i.i, i32 0, i32 2
  %18 = zext i8 %17 to i16
  %19 = ptrtoint ptr %type32 to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load = load i16, ptr %type32, align 4
  %bf.shl = shl nuw i16 %18, 8
  %bf.clear = and i16 %bf.load, 255
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %type32, align 4
  %head = getelementptr inbounds %struct.nvkm_umem, ptr %call7.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %head, ptr %head, align 4
  %prev.i = getelementptr inbounds %struct.nvkm_umem, ptr %call7.i.i, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %head, ptr %prev.i, align 8
  %22 = ptrtoint ptr %pobject to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %pobject, align 4
  %23 = load i8, ptr %arrayidx, align 2
  %24 = and i8 %23, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool38.not = icmp eq i8 %24, 0
  br i1 %tobool38.not, label %if.end28.if.end52_crit_edge, label %if.then39

if.end28.if.end52_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52

if.then39:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  %25 = tail call i8 @llvm.umax.i8(i8 %9, i8 12)
  %bf.set51 = or i16 %bf.set, 128
  %26 = ptrtoint ptr %type32 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %bf.set51, ptr %type32, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then39, %if.end28.if.end52_crit_edge
  %page.0 = phi i8 [ %25, %if.then39 ], [ %9, %if.end28.if.end52_crit_edge ]
  %memory = getelementptr inbounds %struct.nvkm_umem, ptr %call7.i.i, i32 0, i32 3
  %call53 = tail call i32 @nvkm_mem_new_type(ptr noundef %3, i32 noundef %conv18, i8 noundef zeroext %page.0, i64 noundef %11, ptr noundef %add.ptr11, i32 noundef %sub, ptr noundef %memory) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end56:                                         ; preds = %if.end52
  %client = getelementptr inbounds %struct.nvkm_object, ptr %call7.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %client, align 4
  %lock = getelementptr inbounds %struct.nvkm_client, ptr %28, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock) #4
  %29 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %client, align 4
  %umem61 = getelementptr inbounds %struct.nvkm_client, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %umem61 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %umem61, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %head, ptr noundef %umem61, ptr noundef %32) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end56.list_add.exit_crit_edge

if.end56.list_add.exit_crit_edge:                 ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %head, ptr %prev1.i.i, align 4
  %34 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %32, ptr %head, align 4
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %umem61, ptr %prev.i, align 8
  %36 = ptrtoint ptr %umem61 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %head, ptr %umem61, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end56.list_add.exit_crit_edge
  %37 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %client, align 4
  %lock64 = getelementptr inbounds %struct.nvkm_client, ptr %38, i32 0, i32 9
  tail call void @_raw_spin_unlock(ptr noundef %lock64) #4
  %39 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %memory, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %page66 = getelementptr inbounds %struct.nvkm_memory_func, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %page66 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %page66, align 4
  %call68 = tail call zeroext i8 %44(ptr noundef %40) #4
  %45 = ptrtoint ptr %page19 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %call68, ptr %page19, align 2
  %46 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %memory, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %addr = getelementptr inbounds %struct.nvkm_memory_func, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %addr, align 4
  %call73 = tail call i64 %51(ptr noundef %47) #4
  %addr74 = getelementptr inbounds %struct.nvif_mem_v0, ptr %argv, i32 0, i32 5
  %52 = ptrtoint ptr %addr74 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %call73, ptr %addr74, align 8
  %53 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %memory, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %size77 = getelementptr inbounds %struct.nvkm_memory_func, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %size77 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %size77, align 4
  %call79 = tail call i64 %58(ptr noundef %54) #4
  %59 = ptrtoint ptr %size20 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %call79, ptr %size20, align 8
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %if.end52.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %land.lhs.true6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add.exit ], [ -22, %if.then16.cleanup_crit_edge ], [ -12, %if.end25.cleanup_crit_edge ], [ %call53, %if.end52.cleanup_crit_edge ], [ -38, %land.lhs.true6.cleanup_crit_edge ], [ -38, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mem_new_type(ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvkm_umem_dtor(ptr noundef returned %object) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %lock = getelementptr inbounds %struct.nvkm_client, ptr %1, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock) #4
  %head = getelementptr inbounds %struct.nvkm_umem, ptr %object, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %head) #4
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.nvkm_umem, ptr %object, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %head, ptr %head, align 4
  %prev.i3.i = getelementptr inbounds %struct.nvkm_umem, ptr %object, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %head, ptr %prev.i3.i, align 4
  %10 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client, align 4
  %lock4 = getelementptr inbounds %struct.nvkm_client, ptr %11, i32 0, i32 9
  tail call void @_raw_spin_unlock(ptr noundef %lock4) #4
  %memory = getelementptr inbounds %struct.nvkm_umem, ptr %object, i32 0, i32 3
  tail call void @nvkm_memory_unref(ptr noundef %memory) #4
  ret ptr %object
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_umem_map(ptr noundef %object, ptr noundef %argv, i32 noundef %argc, ptr nocapture noundef %type, ptr noundef %handle, ptr noundef %length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mmu1 = getelementptr inbounds %struct.nvkm_umem, ptr %object, i32 0, i32 1
  %0 = ptrtoint ptr %mmu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmu1, align 8
  %mappable = getelementptr inbounds %struct.nvkm_umem, ptr %object, i32 0, i32 2
  %2 = ptrtoint ptr %mappable to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %mappable, align 4
  %3 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %bf.cast.not = icmp eq i16 %3, 0
  br i1 %bf.cast.not, label %entry.cleanup48_crit_edge, label %if.end

entry.cleanup48_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup48

if.end:                                           ; preds = %entry
  %4 = getelementptr inbounds %struct.nvkm_umem, ptr %object, i32 0, i32 5
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup48_crit_edge

if.end.cleanup48_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup48

if.end3:                                          ; preds = %if.end
  %7 = and i16 %bf.load, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool8.not = icmp ne i16 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc)
  %tobool9.not = icmp eq i32 %argc, 0
  %or.cond = and i1 %tobool9.not, %tobool8.not
  br i1 %or.cond, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end3
  %memory = getelementptr inbounds %struct.nvkm_umem, ptr %object, i32 0, i32 3
  %8 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %memory, align 8
  %call = tail call i32 @nvkm_mem_map_host(ptr noundef %9, ptr noundef %4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %if.end13, label %if.then10.cleanup48_crit_edge

if.then10.cleanup48_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup48

if.end13:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %4, align 4
  %12 = ptrtoint ptr %11 to i32
  %conv14 = zext i32 %12 to i64
  %13 = ptrtoint ptr %handle to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv14, ptr %handle, align 8
  %14 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %memory, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %size = getelementptr inbounds %struct.nvkm_memory_func, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %size, align 4
  %call17 = tail call i64 %19(ptr noundef %15) #4
  %20 = ptrtoint ptr %length to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %call17, ptr %length, align 8
  %21 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %type, align 4
  br label %cleanup48

if.else:                                          ; preds = %if.end3
  %22 = and i16 %bf.load, 4352
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %if.else.cleanup48_crit_edge, label %if.then32

if.else.cleanup48_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup48

if.then32:                                        ; preds = %if.else
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %umap = getelementptr inbounds %struct.nvkm_mmu_func, ptr %25, i32 0, i32 3, i32 2
  %26 = ptrtoint ptr %umap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %umap, align 4
  %memory35 = getelementptr inbounds %struct.nvkm_umem, ptr %object, i32 0, i32 3
  %28 = ptrtoint ptr %memory35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %memory35, align 8
  %call36 = tail call i32 %27(ptr noundef %1, ptr noundef %29, ptr noundef %argv, i32 noundef %argc, ptr noundef %handle, ptr noundef %length, ptr noundef %4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.then32.cleanup48_crit_edge

if.then32.cleanup48_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup48

if.end39:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %type, align 4
  %31 = ptrtoint ptr %mappable to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load45 = load i16, ptr %mappable, align 4
  %bf.set = or i16 %bf.load45, 64
  store i16 %bf.set, ptr %mappable, align 4
  br label %cleanup48

cleanup48:                                        ; preds = %if.end39, %if.then32.cleanup48_crit_edge, %if.else.cleanup48_crit_edge, %if.end13, %if.then10.cleanup48_crit_edge, %if.end.cleanup48_crit_edge, %entry.cleanup48_crit_edge
  %retval.2 = phi i32 [ 0, %if.end39 ], [ -22, %entry.cleanup48_crit_edge ], [ -17, %if.end.cleanup48_crit_edge ], [ 0, %if.end13 ], [ %call, %if.then10.cleanup48_crit_edge ], [ -22, %if.else.cleanup48_crit_edge ], [ %call36, %if.then32.cleanup48_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_umem_unmap(ptr noundef %object) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.nvkm_umem, ptr %object, i32 0, i32 5
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %io = getelementptr inbounds %struct.nvkm_umem, ptr %object, i32 0, i32 2
  %3 = ptrtoint ptr %io to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load = load i16, ptr %io, align 4
  %4 = and i16 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %bf.cast.not = icmp eq i16 %4, 0
  br i1 %bf.cast.not, label %if.else6, label %if.then1

if.then1:                                         ; preds = %if.end
  %cmp.i = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #6
  %mmu = getelementptr inbounds %struct.nvkm_umem, ptr %object, i32 0, i32 1
  %5 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmu, align 8
  %device3 = getelementptr inbounds %struct.nvkm_mmu, ptr %6, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device3, align 4
  %call4 = tail call ptr @nvkm_bar_bar1_vmm(ptr noundef %8) #4
  tail call void @nvkm_vmm_put(ptr noundef %call4, ptr noundef %0) #4
  br label %cleanup

if.else:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %0, align 4
  br label %cleanup

if.else6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @vunmap(ptr noundef nonnull %2) #4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %0, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else6, %if.else, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -17, %entry.cleanup_crit_edge ], [ 0, %if.then2 ], [ 0, %if.else ], [ 0, %if.else6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mem_map_host(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_put(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_bar_bar1_vmm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
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

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @nvkm_umem, !1, !"nvkm_umem", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/umem.c", i32 135, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
