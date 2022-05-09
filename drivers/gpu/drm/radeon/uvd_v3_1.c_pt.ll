; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/uvd_v3_1.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/uvd_v3_1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.radeon_semaphore = type { ptr, i32, i64 }
%struct.radeon_ring = type { ptr, ptr, ptr, i32, i32, i64, ptr, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic64_t, i64, i32, i32, i8, i32, i32, i64, i64, i32, i32, i32, ptr, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.atomic64_t = type { i64 }

@.str = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"radeon: writing more dwords to the ring than expected!\0A\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [37 x i8] c"../drivers/gpu/drm/radeon/uvd_v3_1.c\00", align 1
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private unnamed_addr constant [35 x i8] c"../drivers/gpu/drm/radeon/radeon.h\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 2721, i32 3 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @uvd_v3_1_semaphore_emit(ptr nocapture noundef readnone %rdev, ptr noundef %ring, ptr nocapture noundef readonly %semaphore, i1 noundef zeroext %emit_wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %gpu_addr = getelementptr inbounds %struct.radeon_semaphore, ptr %semaphore, i32 0, i32 2
  %0 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %gpu_addr, align 8
  %count_dw.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 11
  %2 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count_dw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp slt i32 %3, 1
  br i1 %cmp.i, label %if.then.i, label %entry.radeon_ring_write.exit_crit_edge

entry.radeon_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %radeon_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #2
  br label %radeon_ring_write.exit

radeon_ring_write.exit:                           ; preds = %if.then.i, %entry.radeon_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 2
  %4 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ring1.i, align 8
  %wptr.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 7
  %6 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wptr.i, align 4
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %wptr.i, align 4
  %arrayidx.i = getelementptr i32, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 15296, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 16
  %9 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ptr_mask.i, align 4
  %11 = load i32, ptr %wptr.i, align 4
  %and.i = and i32 %11, %10
  store i32 %and.i, ptr %wptr.i, align 4
  %12 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count_dw.i, align 4
  %dec.i = add i32 %13, -1
  store i32 %dec.i, ptr %count_dw.i, align 4
  %ring_free_dw.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 10
  %14 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i = add i32 %15, -1
  store i32 %dec4.i, ptr %ring_free_dw.i, align 8
  %16 = trunc i64 %1 to i32
  %17 = lshr i32 %16, 3
  %conv = and i32 %17, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i12 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i12, label %if.then.i13, label %radeon_ring_write.exit.radeon_ring_write.exit23_crit_edge

radeon_ring_write.exit.radeon_ring_write.exit23_crit_edge: ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %radeon_ring_write.exit23

if.then.i13:                                      ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #2
  br label %radeon_ring_write.exit23

radeon_ring_write.exit23:                         ; preds = %if.then.i13, %radeon_ring_write.exit.radeon_ring_write.exit23_crit_edge
  %18 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ring1.i, align 8
  %20 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wptr.i, align 4
  %inc.i16 = add i32 %21, 1
  store i32 %inc.i16, ptr %wptr.i, align 4
  %arrayidx.i17 = getelementptr i32, ptr %19, i32 %21
  %22 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %conv, ptr %arrayidx.i17, align 4
  %23 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ptr_mask.i, align 4
  %25 = load i32, ptr %wptr.i, align 4
  %and.i19 = and i32 %25, %24
  store i32 %and.i19, ptr %wptr.i, align 4
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 4
  %dec.i20 = add i32 %27, -1
  store i32 %dec.i20, ptr %count_dw.i, align 4
  %28 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i22 = add i32 %29, -1
  store i32 %dec4.i22, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i20)
  %cmp.i25 = icmp slt i32 %dec.i20, 1
  br i1 %cmp.i25, label %if.then.i26, label %radeon_ring_write.exit23.radeon_ring_write.exit36_crit_edge

radeon_ring_write.exit23.radeon_ring_write.exit36_crit_edge: ; preds = %radeon_ring_write.exit23
  call void @__sanitizer_cov_trace_pc() #4
  br label %radeon_ring_write.exit36

if.then.i26:                                      ; preds = %radeon_ring_write.exit23
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #2
  br label %radeon_ring_write.exit36

radeon_ring_write.exit36:                         ; preds = %if.then.i26, %radeon_ring_write.exit23.radeon_ring_write.exit36_crit_edge
  %30 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ring1.i, align 8
  %32 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %wptr.i, align 4
  %inc.i29 = add i32 %33, 1
  store i32 %inc.i29, ptr %wptr.i, align 4
  %arrayidx.i30 = getelementptr i32, ptr %31, i32 %33
  %34 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 15297, ptr %arrayidx.i30, align 4
  %35 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ptr_mask.i, align 4
  %37 = load i32, ptr %wptr.i, align 4
  %and.i32 = and i32 %37, %36
  store i32 %and.i32, ptr %wptr.i, align 4
  %38 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %count_dw.i, align 4
  %dec.i33 = add i32 %39, -1
  store i32 %dec.i33, ptr %count_dw.i, align 4
  %40 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i35 = add i32 %41, -1
  store i32 %dec4.i35, ptr %ring_free_dw.i, align 8
  %shr1 = lshr i64 %1, 23
  %42 = trunc i64 %shr1 to i32
  %conv3 = and i32 %42, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i33)
  %cmp.i38 = icmp slt i32 %dec.i33, 1
  br i1 %cmp.i38, label %if.then.i39, label %radeon_ring_write.exit36.radeon_ring_write.exit49_crit_edge

radeon_ring_write.exit36.radeon_ring_write.exit49_crit_edge: ; preds = %radeon_ring_write.exit36
  call void @__sanitizer_cov_trace_pc() #4
  br label %radeon_ring_write.exit49

if.then.i39:                                      ; preds = %radeon_ring_write.exit36
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #2
  br label %radeon_ring_write.exit49

radeon_ring_write.exit49:                         ; preds = %if.then.i39, %radeon_ring_write.exit36.radeon_ring_write.exit49_crit_edge
  %43 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ring1.i, align 8
  %45 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %wptr.i, align 4
  %inc.i42 = add i32 %46, 1
  store i32 %inc.i42, ptr %wptr.i, align 4
  %arrayidx.i43 = getelementptr i32, ptr %44, i32 %46
  %47 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 %conv3, ptr %arrayidx.i43, align 4
  %48 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ptr_mask.i, align 4
  %50 = load i32, ptr %wptr.i, align 4
  %and.i45 = and i32 %50, %49
  store i32 %and.i45, ptr %wptr.i, align 4
  %51 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %count_dw.i, align 4
  %dec.i46 = add i32 %52, -1
  store i32 %dec.i46, ptr %count_dw.i, align 4
  %53 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i48 = add i32 %54, -1
  store i32 %dec4.i48, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i46)
  %cmp.i51 = icmp slt i32 %dec.i46, 1
  br i1 %cmp.i51, label %if.then.i52, label %radeon_ring_write.exit49.radeon_ring_write.exit62_crit_edge

radeon_ring_write.exit49.radeon_ring_write.exit62_crit_edge: ; preds = %radeon_ring_write.exit49
  call void @__sanitizer_cov_trace_pc() #4
  br label %radeon_ring_write.exit62

if.then.i52:                                      ; preds = %radeon_ring_write.exit49
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #2
  br label %radeon_ring_write.exit62

radeon_ring_write.exit62:                         ; preds = %if.then.i52, %radeon_ring_write.exit49.radeon_ring_write.exit62_crit_edge
  %55 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ring1.i, align 8
  %57 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %wptr.i, align 4
  %inc.i55 = add i32 %58, 1
  store i32 %inc.i55, ptr %wptr.i, align 4
  %arrayidx.i56 = getelementptr i32, ptr %56, i32 %58
  %59 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile i32 15298, ptr %arrayidx.i56, align 4
  %60 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ptr_mask.i, align 4
  %62 = load i32, ptr %wptr.i, align 4
  %and.i58 = and i32 %62, %61
  store i32 %and.i58, ptr %wptr.i, align 4
  %63 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %count_dw.i, align 4
  %dec.i59 = add i32 %64, -1
  store i32 %dec.i59, ptr %count_dw.i, align 4
  %65 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i61 = add i32 %66, -1
  store i32 %dec4.i61, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i59)
  %cmp.i64 = icmp slt i32 %dec.i59, 1
  br i1 %cmp.i64, label %if.then.i65, label %radeon_ring_write.exit62.radeon_ring_write.exit75_crit_edge

radeon_ring_write.exit62.radeon_ring_write.exit75_crit_edge: ; preds = %radeon_ring_write.exit62
  call void @__sanitizer_cov_trace_pc() #4
  br label %radeon_ring_write.exit75

if.then.i65:                                      ; preds = %radeon_ring_write.exit62
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #2
  br label %radeon_ring_write.exit75

radeon_ring_write.exit75:                         ; preds = %if.then.i65, %radeon_ring_write.exit62.radeon_ring_write.exit75_crit_edge
  %cond = zext i1 %emit_wait to i32
  %or = or i32 %cond, 128
  %67 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ring1.i, align 8
  %69 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %wptr.i, align 4
  %inc.i68 = add i32 %70, 1
  store i32 %inc.i68, ptr %wptr.i, align 4
  %arrayidx.i69 = getelementptr i32, ptr %68, i32 %70
  %71 = ptrtoint ptr %arrayidx.i69 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile i32 %or, ptr %arrayidx.i69, align 4
  %72 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ptr_mask.i, align 4
  %74 = load i32, ptr %wptr.i, align 4
  %and.i71 = and i32 %74, %73
  store i32 %and.i71, ptr %wptr.i, align 4
  %75 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %count_dw.i, align 4
  %dec.i72 = add i32 %76, -1
  store i32 %dec.i72, ptr %count_dw.i, align 4
  %77 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i74 = add i32 %78, -1
  store i32 %dec4.i74, ptr %ring_free_dw.i, align 8
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon.h", i32 2721, i32 3}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
