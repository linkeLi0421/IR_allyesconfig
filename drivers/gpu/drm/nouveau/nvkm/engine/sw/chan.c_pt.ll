; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/sw/chan.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/sw/chan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_event_func = type { ptr, ptr, ptr, ptr }
%struct.nvkm_sw_chan = type { ptr, %struct.nvkm_object, ptr, ptr, %struct.list_head, %struct.nvkm_event }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_sw_chan_func = type { ptr, ptr }
%struct.nvkm_sw = type { ptr, %struct.nvkm_engine, %struct.list_head }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.135 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.135 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }

@nvkm_sw_chan = internal constant { %struct.nvkm_object_func, [36 x i8] } { %struct.nvkm_object_func { ptr @nvkm_sw_chan_dtor, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@nvkm_sw_chan_event = internal constant { %struct.nvkm_event_func, [16 x i8] } { %struct.nvkm_event_func { ptr @nvkm_sw_chan_event_ctor, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1280]
@___asan_gen_.1 = private unnamed_addr constant [13 x i8] c"nvkm_sw_chan\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 91, i32 1 }
@___asan_gen_.4 = private unnamed_addr constant [19 x i8] c"nvkm_sw_chan_event\00", align 1
@___asan_gen_.5 = private constant [49 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/sw/chan.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 68, i32 1 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @nvkm_sw_chan, ptr @nvkm_sw_chan_event], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_sw_chan to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_sw_chan_event to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nvkm_sw_chan_mthd(ptr noundef %chan, i32 noundef %subc, i32 noundef %mthd, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mthd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mthd, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 1280, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %event = getelementptr inbounds %struct.nvkm_sw_chan, ptr %chan, i32 0, i32 5
  tail call void @nvkm_event_send(ptr noundef %event, i32 noundef 1, i32 noundef 0, ptr noundef null, i32 noundef 0) #3
  br label %return

sw.default:                                       ; preds = %entry
  %1 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chan, align 8
  %mthd2 = getelementptr inbounds %struct.nvkm_sw_chan_func, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %mthd2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mthd2, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %sw.default.return_crit_edge, label %if.then

sw.default.return_crit_edge:                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call zeroext i1 %4(ptr noundef %chan, i32 noundef %subc, i32 noundef %mthd, i32 noundef %data) #3
  br label %return

return:                                           ; preds = %if.then, %sw.default.return_crit_edge, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i1 [ %call, %if.then ], [ true, %sw.bb1 ], [ true, %entry.return_crit_edge ], [ false, %sw.default.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_event_send(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_sw_chan_ctor(ptr noundef %func, ptr noundef %sw, ptr noundef %fifo, ptr noundef %oclass, ptr noundef %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %object = getelementptr inbounds %struct.nvkm_sw_chan, ptr %chan, i32 0, i32 1
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nvkm_sw_chan, ptr noundef %oclass, ptr noundef %object) #3
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %func, ptr %chan, align 8
  %sw2 = getelementptr inbounds %struct.nvkm_sw_chan, ptr %chan, i32 0, i32 2
  %1 = ptrtoint ptr %sw2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %sw, ptr %sw2, align 8
  %fifo3 = getelementptr inbounds %struct.nvkm_sw_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %fifo3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fifo, ptr %fifo3, align 4
  %lock = getelementptr inbounds %struct.nvkm_sw, ptr %sw, i32 0, i32 1, i32 2
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #3
  %head = getelementptr inbounds %struct.nvkm_sw_chan, ptr %chan, i32 0, i32 4
  %chan8 = getelementptr inbounds %struct.nvkm_sw, ptr %sw, i32 0, i32 2
  %3 = ptrtoint ptr %chan8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chan8, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %head, ptr noundef %chan8, ptr noundef %4) #3
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %head, ptr %prev1.i.i, align 4
  %6 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %head, align 4
  %prev3.i.i = getelementptr inbounds %struct.nvkm_sw_chan, ptr %chan, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %chan8, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %chan8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %head, ptr %chan8, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #3
  %event = getelementptr inbounds %struct.nvkm_sw_chan, ptr %chan, i32 0, i32 5
  %call11 = tail call i32 @nvkm_event_init(ptr noundef nonnull @nvkm_sw_chan_event, i32 noundef 1, i32 noundef 1, ptr noundef %event) #3
  ret i32 %call11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_event_init(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvkm_sw_chan_dtor(ptr noundef %object) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %object, i32 -8
  %sw1 = getelementptr i8, ptr %object, i32 72
  %0 = ptrtoint ptr %sw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sw1, align 8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call ptr %5(ptr noundef %add.ptr) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %data.0 = phi ptr [ %call, %if.then ], [ %add.ptr, %entry.if.end_crit_edge ]
  %event = getelementptr i8, ptr %object, i32 88
  tail call void @nvkm_event_fini(ptr noundef %event) #3
  %lock = getelementptr inbounds %struct.nvkm_sw, ptr %1, i32 0, i32 1, i32 2
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #3
  %head = getelementptr i8, ptr %object, i32 80
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %head) #3
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i = getelementptr i8, ptr %object, i32 84
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %12 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %head, align 4
  %prev.i = getelementptr i8, ptr %object, i32 84
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #3
  ret ptr %data.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_event_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @nvkm_sw_chan_event_ctor(ptr nocapture noundef readnone %object, ptr nocapture noundef readnone %data, i32 noundef %size, ptr nocapture noundef writeonly %notify) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp1 = icmp eq i32 %size, 0
  br i1 %cmp1, label %if.then2, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %size3 = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 7
  %0 = ptrtoint ptr %size3 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %size3, align 4
  %types = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 5
  %1 = ptrtoint ptr %types to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %types, align 4
  %index = getelementptr inbounds %struct.nvkm_notify, ptr %notify, i32 0, i32 6
  %2 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %index, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %entry.if.end4_crit_edge
  %_ret.0 = phi i32 [ 0, %if.then2 ], [ -38, %entry.if.end4_crit_edge ]
  ret i32 %_ret.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @nvkm_sw_chan, !1, !"nvkm_sw_chan", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sw/chan.c", i32 91, i32 1}
!2 = !{ptr @nvkm_sw_chan_event, !3, !"nvkm_sw_chan_event", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sw/chan.c", i32 68, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
