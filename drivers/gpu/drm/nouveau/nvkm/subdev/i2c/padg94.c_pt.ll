; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/padg94.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/padg94.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_i2c_pad_func = type { ptr, ptr, ptr, ptr }
%struct.nvkm_i2c_pad = type { ptr, ptr, i32, i32, %struct.mutex, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_i2c = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/i2c/padg94.c\00", [47 x i8] zeroinitializer }, align 32
@g94_i2c_pad_s_func = internal constant { %struct.nvkm_i2c_pad_func, [16 x i8] } { %struct.nvkm_i2c_pad_func { ptr null, ptr @nv50_i2c_bus_new, ptr @g94_i2c_aux_new, ptr @g94_i2c_pad_mode }, [16 x i8] zeroinitializer }, align 32
@g94_i2c_pad_x_func = internal constant { %struct.nvkm_i2c_pad_func, [16 x i8] } { %struct.nvkm_i2c_pad_func { ptr null, ptr @nv50_i2c_bus_new, ptr @g94_i2c_aux_new, ptr null }, [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 48, i32 3 }
@___asan_gen_.4 = private unnamed_addr constant [19 x i8] c"g94_i2c_pad_s_func\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 54, i32 1 }
@___asan_gen_.7 = private unnamed_addr constant [19 x i8] c"g94_i2c_pad_x_func\00", align 1
@___asan_gen_.8 = private constant [52 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/padg94.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 67, i32 1 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @g94_i2c_pad_s_func, ptr @g94_i2c_pad_x_func], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g94_i2c_pad_s_func to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g94_i2c_pad_x_func to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @g94_i2c_pad_mode(ptr nocapture noundef readonly %pad, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %pad, i32 0, i32 1
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 4
  %device2 = getelementptr inbounds %struct.nvkm_i2c, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device2, align 4
  %id = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %pad, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %mul = mul i32 %5, 80
  %6 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %do.end81 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb41
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %add = add i32 %mul, 58636
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %add
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #2, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !17
  tail call void @arm_heavy_mb() #2
  %or = or i32 %9, 1
  %10 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %11, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %or) #2, !srcloc !18
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %add9 = add i32 %mul, 58624
  %pri12 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %12 = ptrtoint ptr %pri12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri12, align 4
  %add.ptr13 = getelementptr i8, ptr %13, i32 %add9
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #2, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !20
  tail call void @arm_heavy_mb() #2
  %and19 = and i32 %14, -49156
  %or20 = or i32 %and19, 49153
  %15 = ptrtoint ptr %pri12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri12, align 4
  %add.ptr22 = getelementptr i8, ptr %16, i32 %add9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %or20) #2, !srcloc !18
  %add26 = add i32 %mul, 58636
  %17 = ptrtoint ptr %pri12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri12, align 4
  %add.ptr30 = getelementptr i8, ptr %18, i32 %add26
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #2, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !22
  tail call void @arm_heavy_mb() #2
  %and36 = and i32 %19, -2
  %20 = ptrtoint ptr %pri12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri12, align 4
  %add.ptr39 = getelementptr i8, ptr %21, i32 %add26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %and36) #2, !srcloc !18
  br label %sw.epilog

sw.bb41:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %add44 = add i32 %mul, 58624
  %pri47 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %22 = ptrtoint ptr %pri47 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri47, align 4
  %add.ptr48 = getelementptr i8, ptr %23, i32 %add44
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48) #2, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !24
  tail call void @arm_heavy_mb() #2
  %and54 = and i32 %24, -49156
  %or55 = or i32 %and54, 2
  %25 = ptrtoint ptr %pri47 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pri47, align 4
  %add.ptr57 = getelementptr i8, ptr %26, i32 %add44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 %or55) #2, !srcloc !18
  %add61 = add i32 %mul, 58636
  %27 = ptrtoint ptr %pri47 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pri47, align 4
  %add.ptr65 = getelementptr i8, ptr %28, i32 %add61
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65) #2, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !26
  tail call void @arm_heavy_mb() #2
  %and71 = and i32 %29, -2
  %30 = ptrtoint ptr %pri47 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri47, align 4
  %add.ptr74 = getelementptr i8, ptr %31, i32 %add61
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 %and71) #2, !srcloc !18
  br label %sw.epilog

do.end81:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 9, ptr noundef null) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end81, %sw.bb41, %sw.bb6, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @g94_i2c_pad_s_new(ptr noundef %i2c, i32 noundef %id, ptr noundef %ppad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_i2c_pad_new_(ptr noundef nonnull @g94_i2c_pad_s_func, ptr noundef %i2c, i32 noundef %id, ptr noundef %ppad) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_i2c_pad_new_(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @g94_i2c_pad_x_new(ptr noundef %i2c, i32 noundef %id, ptr noundef %ppad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_i2c_pad_new_(ptr noundef nonnull @g94_i2c_pad_x_func, ptr noundef %i2c, i32 noundef %id, ptr noundef %ppad) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_i2c_bus_new(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g94_i2c_aux_new(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/padg94.c", i32 48, i32 3}
!2 = !{ptr @g94_i2c_pad_s_func, !3, !"g94_i2c_pad_s_func", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/padg94.c", i32 54, i32 1}
!4 = !{ptr @g94_i2c_pad_x_func, !5, !"g94_i2c_pad_x_func", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/padg94.c", i32 67, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 5391855}
!16 = !{i64 2156235849}
!17 = !{i64 2156236251}
!18 = !{i64 5391437}
!19 = !{i64 2156237131}
!20 = !{i64 2156237533}
!21 = !{i64 2156238413}
!22 = !{i64 2156238815}
!23 = !{i64 2156239695}
!24 = !{i64 2156240097}
!25 = !{i64 2156240977}
!26 = !{i64 2156241379}
