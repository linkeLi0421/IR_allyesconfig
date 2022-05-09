; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/sw/nv04.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/sw/nv04.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_sw_chan_sclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_sw_chan_func = type { ptr, ptr }
%struct.nvkm_nvsw_func = type { ptr }
%struct.nv04_sw_chan = type { %struct.nvkm_sw_chan, %struct.atomic_t }
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
%struct.atomic_t = type { i32 }
%struct.nvkm_nvsw = type { %struct.nvkm_object, ptr, ptr }
%struct.nv04_nvsw_get_ref_v0 = type { i8, [3 x i8], i32 }

@nv04_sw = internal constant { { ptr, [2 x %struct.nvkm_sw_chan_sclass] }, [44 x i8] } { { ptr, [2 x %struct.nvkm_sw_chan_sclass] } { ptr @nv04_sw_chan_new, [2 x %struct.nvkm_sw_chan_sclass] [%struct.nvkm_sw_chan_sclass { ptr @nv04_nvsw_new, %struct.nvkm_sclass { i32 -1, i32 -1, i32 -4, ptr null, ptr null } }, %struct.nvkm_sw_chan_sclass zeroinitializer] }, [44 x i8] zeroinitializer }, align 32
@nv04_sw_chan = internal constant { %struct.nvkm_sw_chan_func, [24 x i8] } { %struct.nvkm_sw_chan_func { ptr null, ptr @nv04_sw_chan_mthd }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nv04_nvsw = internal constant { %struct.nvkm_nvsw_func, [28 x i8] } { %struct.nvkm_nvsw_func { ptr @nv04_nvsw_mthd }, [28 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [8 x i8] c"nv04_sw\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 127, i32 1 }
@___asan_gen_.5 = private unnamed_addr constant [13 x i8] c"nv04_sw_chan\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 104, i32 1 }
@___asan_gen_.8 = private unnamed_addr constant [10 x i8] c"nv04_nvsw\00", align 1
@___asan_gen_.9 = private constant [49 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/sw/nv04.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 72, i32 1 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @nv04_sw, ptr @nv04_sw_chan, ptr @nv04_nvsw], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_sw to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_sw_chan to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_nvsw to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv04_sw_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %psw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_sw_new_(ptr noundef nonnull @nv04_sw, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %psw) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_sw_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv04_sw_chan_new(ptr noundef %sw, ptr noundef %fifo, ptr noundef %oclass, ptr nocapture noundef writeonly %pobject) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 216) #6
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ref = getelementptr inbounds %struct.nv04_sw_chan, ptr %call7.i.i, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #3
  %1 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 0, ptr %ref, align 8
  %object = getelementptr inbounds %struct.nvkm_sw_chan, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %pobject to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %object, ptr %pobject, align 4
  %call2 = tail call i32 @nvkm_sw_chan_ctor(ptr noundef nonnull @nv04_sw_chan, ptr noundef %sw, ptr noundef %fifo, ptr noundef %oclass, ptr noundef nonnull %call7.i.i) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv04_nvsw_new(ptr noundef %chan, ptr noundef %oclass, ptr noundef %data, i32 noundef %size, ptr noundef %pobject) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_nvsw_new_(ptr noundef nonnull @nv04_nvsw, ptr noundef %chan, ptr noundef %oclass, ptr noundef %data, i32 noundef %size, ptr noundef %pobject) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_sw_chan_ctor(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nv04_sw_chan_mthd(ptr noundef %base, i32 noundef %subc, i32 noundef %mthd, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 336, i32 %mthd)
  %cond = icmp eq i32 %mthd, 336
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ref = getelementptr inbounds %struct.nv04_sw_chan, ptr %base, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #3
  %0 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 %data, ptr %ref, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  ret i1 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_nvsw_new_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv04_nvsw_mthd(ptr nocapture noundef readonly %nvsw, i32 noundef %mthd, ptr nocapture noundef %data, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mthd)
  %cond = icmp eq i32 %mthd, 0
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb:                                            ; preds = %entry
  %chan1.i = getelementptr inbounds %struct.nvkm_nvsw, ptr %nvsw, i32 0, i32 2
  %0 = ptrtoint ptr %chan1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size)
  %cmp2.i = icmp ugt i32 %size, 7
  br i1 %cmp2.i, label %land.lhs.true6.i, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

land.lhs.true6.i:                                 ; preds = %sw.bb
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp9.i = icmp eq i8 %3, 0
  br i1 %cmp9.i, label %if.then.i, label %land.lhs.true6.i.return_crit_edge

land.lhs.true6.i.return_crit_edge:                ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %tobool.not.i = icmp eq i32 %size, 8
  br i1 %tobool.not.i, label %if.then16.i, label %if.then.i.return_crit_edge

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then16.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %ref.i = getelementptr inbounds %struct.nv04_sw_chan, ptr %1, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref.i, i32 noundef 4) #3
  %4 = ptrtoint ptr %ref.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %ref.i, align 4
  %ref17.i = getelementptr inbounds %struct.nv04_nvsw_get_ref_v0, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %ref17.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %ref17.i, align 4
  br label %return

return:                                           ; preds = %if.then16.i, %if.then.i.return_crit_edge, %land.lhs.true6.i.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %if.then16.i ], [ -38, %sw.bb.return_crit_edge ], [ -38, %land.lhs.true6.i.return_crit_edge ], [ -7, %if.then.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @nv04_sw, !1, !"nv04_sw", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sw/nv04.c", i32 127, i32 1}
!2 = !{ptr @nv04_sw_chan, !3, !"nv04_sw_chan", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sw/nv04.c", i32 104, i32 1}
!4 = !{ptr @nv04_nvsw, !5, !"nv04_nvsw", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sw/nv04.c", i32 72, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
