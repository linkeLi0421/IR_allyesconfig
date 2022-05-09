; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/sw/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/sw/base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_engine_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.134, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr }
%struct.anon.134 = type { ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_sw = type { ptr, %struct.nvkm_engine, %struct.list_head }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.135 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.135 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_sw_func = type { ptr, [0 x %struct.nvkm_sw_chan_sclass] }
%struct.nvkm_sw_chan_sclass = type { ptr, %struct.nvkm_sclass }

@nvkm_sw = internal constant { %struct.nvkm_engine_func, [44 x i8] } { %struct.nvkm_engine_func { ptr @nvkm_sw_dtor, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.anon zeroinitializer, %struct.anon.134 { ptr @nvkm_sw_cclass_get, ptr @nvkm_sw_oclass_get }, ptr null, [0 x %struct.nvkm_sclass] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [8 x i8] c"nvkm_sw\00", align 1
@___asan_gen_.2 = private constant [49 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/sw/base.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 92, i32 1 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @nvkm_sw], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_sw to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nvkm_sw_mthd(ptr noundef %sw, i32 noundef %chid, i32 noundef %subc, i32 noundef %mthd, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.nvkm_sw, ptr %sw, i32 0, i32 1, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %chan5 = getelementptr inbounds %struct.nvkm_sw, ptr %sw, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %chan5, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp8.not = icmp eq ptr %.pn, %chan5
  br i1 %cmp8.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.cond
  %fifo = getelementptr i8, ptr %.pn, i32 -4
  %1 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fifo, align 4
  %chid10 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %chid10 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %chid10, align 8
  %conv11 = zext i16 %4 to i32
  %cmp12 = icmp eq i32 %conv11, %chid
  br i1 %cmp12, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

if.then:                                          ; preds = %for.body
  %chan.0.le = getelementptr i8, ptr %.pn, i32 -88
  %call14 = tail call zeroext i1 @nvkm_sw_chan_mthd(ptr noundef %chan.0.le, i32 noundef %subc, i32 noundef %mthd, i32 noundef %data) #5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %11 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %13 = ptrtoint ptr %chan5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chan5, align 4
  %call.i.i34 = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn, ptr noundef %chan5, ptr noundef %14) #5
  br i1 %call.i.i34, label %if.end.i.i35, label %list_del.exit.for.end_crit_edge

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.i.i35:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %.pn, ptr %prev1.i.i, align 4
  %16 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %.pn, align 4
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %chan5, ptr %prev.i, align 4
  %18 = ptrtoint ptr %chan5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %.pn, ptr %chan5, align 4
  br label %for.end

for.end:                                          ; preds = %if.end.i.i35, %list_del.exit.for.end_crit_edge, %for.cond.for.end_crit_edge
  %handled.0.off0 = phi i1 [ %call14, %list_del.exit.for.end_crit_edge ], [ %call14, %if.end.i.i35 ], [ false, %for.cond.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #5
  ret i1 %handled.0.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_sw_chan_mthd(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_sw_new_(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %psw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 212) #8
  %1 = ptrtoint ptr %psw to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %psw, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %chan = getelementptr inbounds %struct.nvkm_sw, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %chan, ptr %chan, align 4
  %prev.i = getelementptr inbounds %struct.nvkm_sw, ptr %call7.i.i, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %chan, ptr %prev.i, align 8
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %func, ptr %call7.i.i, align 8
  %engine = getelementptr inbounds %struct.nvkm_sw, ptr %call7.i.i, i32 0, i32 1
  %call2 = tail call i32 @nvkm_engine_ctor(ptr noundef nonnull @nvkm_sw, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext true, ptr noundef %engine) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_engine_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @nvkm_sw_dtor(ptr noundef readnone %engine) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %engine, i32 -4
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_sw_cclass_get(ptr noundef %fifoch, ptr noundef %oclass, ptr noundef %pobject) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %engine = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 10
  %0 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %engine, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call i32 %5(ptr noundef %add.ptr, ptr noundef %fifoch, ptr noundef %oclass, ptr noundef %pobject) #5
  ret i32 %call
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_sw_oclass_get(ptr nocapture noundef %oclass, i32 noundef %index) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %engine = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 10
  %0 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %engine, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %c.0 = phi i32 [ 0, %entry ], [ %inc, %while.body.while.cond_crit_edge ]
  %arrayidx = getelementptr %struct.nvkm_sw_func, ptr %3, i32 0, i32 1, i32 %c.0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %inc = add i32 %c.0, 1
  %cmp = icmp eq i32 %c.0, %index
  br i1 %cmp, label %if.then, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx3 = getelementptr %struct.nvkm_sw_func, ptr %3, i32 0, i32 1, i32 %index
  %engn = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 3
  %6 = ptrtoint ptr %engn to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx3, ptr %engn, align 4
  %base = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %base7 = getelementptr %struct.nvkm_sw_func, ptr %8, i32 0, i32 1, i32 %index, i32 1
  %9 = call ptr @memcpy(ptr %base, ptr %base7, i32 16)
  %ctor9 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %ctor9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @nvkm_sw_oclass_new, ptr %ctor9, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %index, %if.then ], [ %c.0, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_sw_oclass_new(ptr noundef %oclass, ptr noundef %data, i32 noundef %size, ptr noundef %pobject) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 9
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -8
  %engn = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 3
  %2 = ptrtoint ptr %engn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %engn, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call i32 %5(ptr noundef %add.ptr, ptr noundef %oclass, ptr noundef %data, i32 noundef %size, ptr noundef %pobject) #5
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @nvkm_sw, !1, !"nvkm_sw", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sw/base.c", i32 92, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
