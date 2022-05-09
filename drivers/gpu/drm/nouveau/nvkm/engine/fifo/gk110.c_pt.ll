; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk110.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk110.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gk104_fifo_runlist_func = type { i8, ptr, ptr, ptr }
%struct.gk104_fifo_func = type { %struct.anon.145, ptr, %struct.anon.146, ptr, %struct.gk104_fifo_user_user, %struct.gk104_fifo_chan_user, i8 }
%struct.anon.145 = type { ptr }
%struct.anon.146 = type { ptr, ptr, ptr, ptr, ptr }
%struct.gk104_fifo_user_user = type { %struct.nvkm_sclass, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.gk104_fifo_chan_user = type { %struct.nvkm_sclass, ptr }
%struct.gk104_fifo_pbdma_func = type { ptr, ptr, ptr }
%struct.nvkm_enum = type { i32, ptr, ptr, i32, i32 }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_fifo_cgrp = type { i32, %struct.list_head, %struct.list_head, i32 }
%struct.list_head = type { ptr, ptr }

@gk110_fifo_runlist = dso_local constant { %struct.gk104_fifo_runlist_func, [16 x i8] } { %struct.gk104_fifo_runlist_func { i8 8, ptr @gk110_fifo_runlist_cgrp, ptr @gk104_fifo_runlist_chan, ptr @gk104_fifo_runlist_commit }, [16 x i8] zeroinitializer }, align 32
@gk110_fifo = internal constant { %struct.gk104_fifo_func, [44 x i8] } { %struct.gk104_fifo_func { %struct.anon.145 { ptr @gf100_fifo_intr_fault }, ptr @gk104_fifo_pbdma, %struct.anon.146 { ptr @gk104_fifo_fault_access, ptr @gk104_fifo_fault_engine, ptr @gk104_fifo_fault_reason, ptr @gk104_fifo_fault_hubclient, ptr @gk104_fifo_fault_gpcclient }, ptr @gk110_fifo_runlist, %struct.gk104_fifo_user_user zeroinitializer, %struct.gk104_fifo_chan_user { %struct.nvkm_sclass { i32 0, i32 0, i32 41327, ptr null, ptr null }, ptr @gk104_fifo_gpfifo_new }, i8 0 }, [44 x i8] zeroinitializer }, align 32
@gk104_fifo_pbdma = external dso_local constant %struct.gk104_fifo_pbdma_func, align 4
@gk104_fifo_fault_access = external dso_local constant [0 x %struct.nvkm_enum], align 4
@gk104_fifo_fault_engine = external dso_local constant [0 x %struct.nvkm_enum], align 4
@gk104_fifo_fault_reason = external dso_local constant [0 x %struct.nvkm_enum], align 4
@gk104_fifo_fault_hubclient = external dso_local constant [0 x %struct.nvkm_enum], align 4
@gk104_fifo_fault_gpcclient = external dso_local constant [0 x %struct.nvkm_enum], align 4
@___asan_gen_.1 = private unnamed_addr constant [19 x i8] c"gk110_fifo_runlist\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 42, i32 1 }
@___asan_gen_.4 = private unnamed_addr constant [11 x i8] c"gk110_fifo\00", align 1
@___asan_gen_.5 = private constant [52 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk110.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 50, i32 1 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @gk110_fifo_runlist, ptr @gk110_fifo], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_fifo_runlist to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk110_fifo to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gk110_fifo_runlist_cgrp(ptr nocapture noundef readonly %cgrp, ptr noundef %memory, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %memory, i32 0, i32 1
  %0 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wr32, align 4
  %conv = zext i32 %offset to i64
  %chan_nr = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %cgrp, i32 0, i32 3
  %4 = ptrtoint ptr %chan_nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chan_nr, align 4
  %shl = shl i32 %5, 26
  %6 = ptrtoint ptr %cgrp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cgrp, align 4
  %or2 = or i32 %7, %shl
  %or3 = or i32 %or2, 33611776
  tail call void %3(ptr noundef %memory, i64 noundef %conv, i32 noundef %or3) #2
  %8 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ptrs, align 4
  %wr325 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %wr325 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wr325, align 4
  %add6 = add i32 %offset, 4
  %conv7 = zext i32 %add6 to i64
  tail call void %11(ptr noundef %memory, i64 noundef %conv7, i32 noundef 0) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_runlist_chan(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_runlist_commit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk110_fifo_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pfifo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gk104_fifo_new_(ptr noundef nonnull @gk110_fifo, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i32 noundef 4096, ptr noundef %pfifo) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_fifo_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_fifo_intr_fault(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_fifo_gpfifo_new(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @gk110_fifo_runlist, !1, !"gk110_fifo_runlist", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk110.c", i32 42, i32 1}
!2 = !{ptr @gk110_fifo, !3, !"gk110_fifo", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk110.c", i32 50, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
