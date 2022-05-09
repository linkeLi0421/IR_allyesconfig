; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/fifo/nv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/nv50.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_fifo_chan_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_fifo = type { ptr, %struct.nvkm_engine, [128 x i32], i32, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.nvkm_event, %struct.nvkm_event, %struct.nvkm_event }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.136 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.136 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.nv50_fifo = type { %struct.nvkm_fifo, [2 x ptr], i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.134 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.nvkm_memory_ptrs = type { ptr, ptr }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nv50_fifo_gpfifo_oclass = external dso_local constant %struct.nvkm_fifo_chan_oclass, align 4
@nv50_fifo = internal constant { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }, [56 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] } { ptr @nv50_fifo_dtor, ptr @nv50_fifo_oneinit, ptr null, ptr @nv50_fifo_init, ptr null, ptr @nv04_fifo_intr, ptr null, ptr @nv04_fifo_engine_id, ptr @nv04_fifo_id_engine, ptr @nv04_fifo_pause, ptr @nv04_fifo_start, ptr null, ptr null, ptr null, ptr null, ptr null, [2 x ptr] [ptr @nv50_fifo_gpfifo_oclass, ptr null] }, [56 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [10 x i8] c"nv50_fifo\00", align 1
@___asan_gen_.3 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/nv50.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 129, i32 1 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @nv50_fifo], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_fifo to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_fifo_runlist_update(ptr noundef %fifo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  tail call fastcc void @nv50_fifo_runlist_update_locked(ptr noundef %fifo)
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nv50_fifo_runlist_update_locked(ptr nocapture noundef %fifo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %cur_runlist = getelementptr inbounds %struct.nv50_fifo, ptr %fifo, i32 0, i32 2
  %2 = ptrtoint ptr %cur_runlist to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_runlist, align 4
  %arrayidx = getelementptr %struct.nv50_fifo, ptr %fifo, i32 0, i32 1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %6 = ptrtoint ptr %cur_runlist to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %lnot.ext, ptr %cur_runlist, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %acquire, align 4
  %call = tail call ptr %10(ptr noundef %5) #3
  %nr = getelementptr inbounds %struct.nvkm_fifo, ptr %fifo, i32 0, i32 3
  %11 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp44 = icmp sgt i32 %12, 0
  br i1 %cmp44, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %5, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %p.047 = phi i32 [ 0, %for.body.lr.ph ], [ %p.1, %for.inc.for.body_crit_edge ]
  %i.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc8, %for.inc.for.body_crit_edge ]
  %13 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri, align 4
  %mul = shl i32 %i.045, 2
  %add = add i32 %mul, 9728
  %add.ptr = getelementptr i8, ptr %14, i32 %add
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %tobool6.not = icmp sgt i32 %15, -1
  br i1 %tobool6.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wr32, align 4
  %inc = add i32 %p.047, 1
  %mul7 = shl i32 %p.047, 2
  %conv = sext i32 %mul7 to i64
  tail call void %19(ptr noundef %5, i64 noundef %conv, i32 noundef %i.045) #3
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %p.1 = phi i32 [ %inc, %if.then ], [ %p.047, %for.body.for.inc_crit_edge ]
  %inc8 = add nuw nsw i32 %i.045, 1
  %20 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr, align 4
  %cmp = icmp slt i32 %inc8, %21
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %p.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %p.1, %for.inc.for.end_crit_edge ]
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %5, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %release, align 4
  tail call void %25(ptr noundef %5) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %5, align 4
  %addr = getelementptr inbounds %struct.nvkm_memory_func, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %addr, align 4
  %call11 = tail call i64 %29(ptr noundef %5) #3
  %shr = lshr i64 %call11, 12
  %conv12 = trunc i64 %shr to i32
  %pri13 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %30 = ptrtoint ptr %pri13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri13, align 4
  %add.ptr14 = getelementptr i8, ptr %31, i32 13044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %conv12) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %32 = ptrtoint ptr %pri13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pri13, align 4
  %add.ptr19 = getelementptr i8, ptr %33, i32 13036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %p.0.lcssa) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %34 = ptrtoint ptr %pri13 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pri13, align 4
  %add.ptr24 = getelementptr i8, ptr %35, i32 9472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 257) #3, !srcloc !14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_fifo_oneinit(ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %runlist = getelementptr inbounds %struct.nv50_fifo, ptr %base, i32 0, i32 1
  %call = tail call i32 @nvkm_memory_new(ptr noundef %1, i32 noundef 0, i64 noundef 512, i32 noundef 4096, i1 noundef zeroext false, ptr noundef %runlist) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx4 = getelementptr %struct.nv50_fifo, ptr %base, i32 0, i32 1, i32 1
  %call5 = tail call i32 @nvkm_memory_new(ptr noundef %1, i32 noundef 0, i64 noundef 512, i32 noundef 4096, i1 noundef zeroext false, ptr noundef %arrayidx4) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_fifo_init(ptr nocapture noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_fifo, ptr %base, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 512
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %and = and i32 %4, -257
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr6 = getelementptr i8, ptr %6, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %and) #3, !srcloc !14
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %8, i32 512
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #3, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !20
  tail call void @arm_heavy_mb() #3
  %or20 = or i32 %9, 256
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr22 = getelementptr i8, ptr %11, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %or20) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  tail call void @arm_heavy_mb() #3
  %12 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri, align 4
  %add.ptr28 = getelementptr i8, ptr %13, i32 9484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 1866267700) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  tail call void @arm_heavy_mb() #3
  %14 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri, align 4
  %add.ptr33 = getelementptr i8, ptr %15, i32 8260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 16793599) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %16 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pri, align 4
  %add.ptr38 = getelementptr i8, ptr %17, i32 8448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 -1) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  %18 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pri, align 4
  %add.ptr43 = getelementptr i8, ptr %19, i32 8512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 -1073741825) #3, !srcloc !14
  br label %do.body44

do.body44:                                        ; preds = %do.body44.do.body44_crit_edge, %entry
  %i.082 = phi i32 [ 0, %entry ], [ %inc, %do.body44.do.body44_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  tail call void @arm_heavy_mb() #3
  %20 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri, align 4
  %mul = shl i32 %i.082, 2
  %add = add nuw nsw i32 %mul, 9728
  %add.ptr48 = getelementptr i8, ptr %21, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 0) #3, !srcloc !14
  %inc = add nuw nsw i32 %i.082, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %do.body44.do.body44_crit_edge

do.body44.do.body44_crit_edge:                    ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body44

for.end:                                          ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @nv50_fifo_runlist_update_locked(ptr noundef %base)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  tail call void @arm_heavy_mb() #3
  %22 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri, align 4
  %add.ptr53 = getelementptr i8, ptr %23, i32 12800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 1) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %24 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pri, align 4
  %add.ptr58 = getelementptr i8, ptr %25, i32 12880
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 1) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  %26 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pri, align 4
  %add.ptr63 = getelementptr i8, ptr %27, i32 9472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 1) #3, !srcloc !14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nv50_fifo_dtor(ptr noundef returned %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %runlist = getelementptr inbounds %struct.nv50_fifo, ptr %base, i32 0, i32 1
  %arrayidx = getelementptr %struct.nv50_fifo, ptr %base, i32 0, i32 1, i32 1
  tail call void @nvkm_memory_unref(ptr noundef %arrayidx) #3
  tail call void @nvkm_memory_unref(ptr noundef %runlist) #3
  ret ptr %base
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_fifo_new_(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pfifo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1212) #6
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %pfifo to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pfifo, align 4
  %call2 = tail call i32 @nvkm_fifo_ctor(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i32 noundef 128, ptr noundef nonnull %call7.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %mask = getelementptr inbounds %struct.nvkm_fifo, ptr %call7.i.i, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %mask) #3
  tail call void @_set_bit(i32 noundef 127, ptr noundef %mask) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fifo_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_fifo_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pfifo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1212) #6
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.nv50_fifo_new_.exit_crit_edge, label %if.end.i

entry.nv50_fifo_new_.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %nv50_fifo_new_.exit

if.end.i:                                         ; preds = %entry
  %1 = ptrtoint ptr %pfifo to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %pfifo, align 4
  %call2.i = tail call i32 @nvkm_fifo_ctor(ptr noundef nonnull @nv50_fifo, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i32 noundef 128, ptr noundef nonnull %call7.i.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.nv50_fifo_new_.exit_crit_edge

if.end.i.nv50_fifo_new_.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %nv50_fifo_new_.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %mask.i = getelementptr inbounds %struct.nvkm_fifo, ptr %call7.i.i.i, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %mask.i) #3
  tail call void @_set_bit(i32 noundef 127, ptr noundef %mask.i) #3
  br label %nv50_fifo_new_.exit

nv50_fifo_new_.exit:                              ; preds = %if.end5.i, %if.end.i.nv50_fifo_new_.exit_crit_edge, %entry.nv50_fifo_new_.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end5.i ], [ -12, %entry.nv50_fifo_new_.exit_crit_edge ], [ %call2.i, %if.end.i.nv50_fifo_new_.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_fifo_intr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_fifo_engine_id(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nv04_fifo_id_engine(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_fifo_pause(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_fifo_start(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

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

!0 = !{ptr @nv50_fifo, !1, !"nv50_fifo", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/nv50.c", i32 129, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i64 5391917}
!12 = !{i64 2156246819}
!13 = !{i64 2156247311}
!14 = !{i64 5391499}
!15 = !{i64 2156247728}
!16 = !{i64 2156248132}
!17 = !{i64 2156251488}
!18 = !{i64 2156251890}
!19 = !{i64 2156252763}
!20 = !{i64 2156253165}
!21 = !{i64 2156253610}
!22 = !{i64 2156254023}
!23 = !{i64 2156254436}
!24 = !{i64 2156254849}
!25 = !{i64 2156255282}
!26 = !{i64 2156255695}
!27 = !{i64 2156256108}
!28 = !{i64 2156256521}
