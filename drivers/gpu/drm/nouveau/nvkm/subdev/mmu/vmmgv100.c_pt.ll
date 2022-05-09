; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgv100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgv100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_vmm_desc = type { i32, i8, i8, i32, ptr }
%struct.nvkm_vmm_page = type { i8, ptr, i8 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nvkm_memory_ptrs = type { ptr, ptr }

@gp100_vmm_desc_16 = external dso_local constant [0 x %struct.nvkm_vmm_desc], align 4
@gp100_vmm_desc_12 = external dso_local constant [0 x %struct.nvkm_vmm_desc], align 4
@gv100_vmm = internal constant { <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, [7 x %struct.nvkm_vmm_page] }>, [36 x i8] } { <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, [7 x %struct.nvkm_vmm_page] }> <{ ptr @gv100_vmm_join, ptr @gf100_vmm_part, ptr @gf100_vmm_aper, ptr @gp100_vmm_valid, ptr @gp100_vmm_flush, ptr @gp100_vmm_mthd, ptr @gp100_vmm_invalidate_pdb, [4 x i8] undef, i64 0, [7 x %struct.nvkm_vmm_page] [%struct.nvkm_vmm_page { i8 47, ptr getelementptr (i8, ptr @gp100_vmm_desc_16, i64 64), i8 1 }, %struct.nvkm_vmm_page { i8 38, ptr getelementptr (i8, ptr @gp100_vmm_desc_16, i64 48), i8 1 }, %struct.nvkm_vmm_page { i8 29, ptr getelementptr (i8, ptr @gp100_vmm_desc_16, i64 32), i8 1 }, %struct.nvkm_vmm_page { i8 21, ptr getelementptr (i8, ptr @gp100_vmm_desc_16, i64 16), i8 11 }, %struct.nvkm_vmm_page { i8 16, ptr @gp100_vmm_desc_16, i8 11 }, %struct.nvkm_vmm_page { i8 12, ptr @gp100_vmm_desc_12, i8 7 }, %struct.nvkm_vmm_page zeroinitializer] }>, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [10 x i8] c"gv100_vmm\00", align 1
@___asan_gen_.3 = private constant [54 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgv100.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 63, i32 1 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @gv100_vmm], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gv100_vmm to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gv100_vmm_join(ptr noundef %vmm, ptr noundef %inst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gp100_vmm_join(ptr noundef %vmm, ptr noundef %inst) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.peel.next, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.body.peel.next:                               ; preds = %entry
  %0 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inst, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %acquire, align 4
  %call1 = tail call ptr %3(ptr noundef %inst) #2
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %inst, i32 0, i32 1
  %4 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ptrs, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call2 = tail call i32 %7(ptr noundef %inst, i64 noundef 512) #2
  %8 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ptrs, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call5 = tail call i32 %11(ptr noundef %inst, i64 noundef 516) #2
  %12 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wr32, align 4
  tail call void %15(ptr noundef %inst, i64 noundef 540, i32 noundef 0) #2
  %16 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ptrs, align 4
  %wr3213.peel = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %wr3213.peel to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wr3213.peel, align 4
  tail call void %19(ptr noundef %inst, i64 noundef 676, i32 noundef %call5) #2
  %20 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ptrs, align 4
  %wr3218.peel = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %wr3218.peel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wr3218.peel, align 4
  tail call void %23(ptr noundef %inst, i64 noundef 672, i32 noundef %call2) #2
  %24 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ptrs, align 4
  %wr3236.peel = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %wr3236.peel to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wr3236.peel, align 4
  tail call void %27(ptr noundef %inst, i64 noundef 680, i32 noundef 0) #2
  br label %if.end34

if.end34:                                         ; preds = %if.end34.if.end34_crit_edge, %for.body.peel.next
  %i.088 = phi i32 [ 1, %for.body.peel.next ], [ %inc, %if.end34.if.end34_crit_edge ]
  %28 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ptrs, align 4
  %wr3225 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %wr3225 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wr3225, align 4
  %mul26 = shl i32 %i.088, 4
  %add27 = add nuw nsw i32 %mul26, 676
  %conv28 = sext i32 %add27 to i64
  tail call void %31(ptr noundef %inst, i64 noundef %conv28, i32 noundef 1) #2
  %32 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ptrs, align 4
  %wr3230 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %wr3230 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wr3230, align 4
  %add32 = add nuw nsw i32 %mul26, 672
  %conv33 = sext i32 %add32 to i64
  tail call void %35(ptr noundef %inst, i64 noundef %conv33, i32 noundef 1) #2
  %36 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ptrs, align 4
  %wr3236 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %wr3236 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wr3236, align 4
  %add38 = add nuw nsw i32 %mul26, 680
  %conv39 = sext i32 %add38 to i64
  tail call void %39(ptr noundef %inst, i64 noundef %conv39, i32 noundef 0) #2
  %inc = add nuw nsw i32 %i.088, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %if.end34.if.end34_crit_edge, !llvm.loop !11

if.end34.if.end34_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end34

for.end:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #4
  %40 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ptrs, align 4
  %wr3241 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %wr3241 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wr3241, align 4
  tail call void %43(ptr noundef %inst, i64 noundef 664, i32 noundef 1) #2
  %44 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ptrs, align 4
  %wr3245 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %wr3245 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wr3245, align 4
  tail call void %47(ptr noundef %inst, i64 noundef 668, i32 noundef 0) #2
  %48 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %inst, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %release, align 4
  tail call void %51(ptr noundef %inst) #2
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp100_vmm_join(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gv100_vmm_new(ptr noundef %mmu, i1 noundef zeroext %managed, i64 noundef %addr, i64 noundef %size, ptr noundef %argv, i32 noundef %argc, ptr noundef %key, ptr noundef %name, ptr noundef %pvmm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gp100_vmm_new_(ptr noundef nonnull @gv100_vmm, ptr noundef %mmu, i1 noundef zeroext %managed, i64 noundef %addr, i64 noundef %size, ptr noundef %argv, i32 noundef %argc, ptr noundef %key, ptr noundef %name, ptr noundef %pvmm) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp100_vmm_new_(ptr noundef, ptr noundef, i1 noundef zeroext, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_vmm_part(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_vmm_aper(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp100_vmm_valid(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp100_vmm_flush(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp100_vmm_mthd(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp100_vmm_invalidate_pdb(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @gv100_vmm, !1, !"gv100_vmm", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgv100.c", i32 63, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.peeled.count", i32 1}
