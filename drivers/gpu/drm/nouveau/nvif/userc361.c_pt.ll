; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvif/userc361.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvif/userc361.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvif_user_func = type { ptr, ptr }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }

@nvif_userc361 = dso_local constant { %struct.nvif_user_func, [24 x i8] } { %struct.nvif_user_func { ptr @nvif_userc361_doorbell, ptr @nvif_userc361_time }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [14 x i8] c"nvif_userc361\00", align 1
@___asan_gen_.2 = private constant [43 x i8] c"../drivers/gpu/drm/nouveau/nvif/userc361.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 44, i32 1 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @nvif_userc361], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvif_userc361 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvif_userc361_doorbell(ptr noundef %user, i32 noundef %token) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %map = getelementptr inbounds %struct.nvif_user, ptr %user, i32 0, i32 1, i32 6
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %do.body, !prof !11

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !12
  tail call void @arm_heavy_mb() #2
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %token) #2, !srcloc !13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %object = getelementptr inbounds %struct.nvif_user, ptr %user, i32 0, i32 1
  tail call void @nvif_object_wr(ptr noundef %object, i32 noundef 4, i64 noundef 144, i32 noundef %token) #2
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @nvif_userc361_time(ptr noundef %user) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %object = getelementptr inbounds %struct.nvif_user, ptr %user, i32 0, i32 1
  %map = getelementptr inbounds %struct.nvif_user, ptr %user, i32 0, i32 1, i32 6
  br label %do.body

do.body:                                          ; preds = %if.end54.do.body_crit_edge, %entry
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then, !prof !11

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr = getelementptr i8, ptr %1, i32 132
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #2, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !15
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #4
  %call6 = tail call i32 @nvif_object_rd(ptr noundef %object, i32 noundef 4, i64 noundef 132) #2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %_data.0 = phi i32 [ %2, %if.then ], [ %call6, %if.else ]
  %3 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map, align 8
  %tobool14.not = icmp eq ptr %4, null
  br i1 %tobool14.not, label %if.else28, label %if.then21, !prof !11

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr25 = getelementptr i8, ptr %4, i32 128
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #2, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !16
  br label %if.end30

if.else28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %call29 = tail call i32 @nvif_object_rd(ptr noundef %object, i32 noundef 4, i64 noundef 128) #2
  br label %if.end30

if.end30:                                         ; preds = %if.else28, %if.then21
  %_data11.0 = phi i32 [ %5, %if.then21 ], [ %call29, %if.else28 ]
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 8
  %tobool38.not = icmp eq ptr %7, null
  br i1 %tobool38.not, label %if.else52, label %if.then45, !prof !11

if.then45:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr49 = getelementptr i8, ptr %7, i32 132
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #2, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !17
  br label %if.end54

if.else52:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #4
  %call53 = tail call i32 @nvif_object_rd(ptr noundef %object, i32 noundef 4, i64 noundef 132) #2
  br label %if.end54

if.end54:                                         ; preds = %if.else52, %if.then45
  %_data35.0 = phi i32 [ %8, %if.then45 ], [ %call53, %if.else52 ]
  %cmp.not = icmp eq i32 %_data.0, %_data35.0
  br i1 %cmp.not, label %do.end, label %if.end54.do.body_crit_edge

if.end54.do.body_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body

do.end:                                           ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #4
  %conv = zext i32 %_data.0 to i64
  %shl = shl nuw i64 %conv, 32
  %conv56 = zext i32 %_data11.0 to i64
  %or = or i64 %shl, %conv56
  ret i64 %or
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_wr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_rd(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

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

!0 = !{ptr @nvif_userc361, !1, !"nvif_userc361", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvif/userc361.c", i32 44, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2156194825}
!13 = !{i64 5379888}
!14 = !{i64 5380306}
!15 = !{i64 2156191720}
!16 = !{i64 2156192819}
!17 = !{i64 2156193918}
