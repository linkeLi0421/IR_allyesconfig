; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/disp/changf119.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/changf119.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_event_func = type { ptr, ptr, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.134 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nv50_disp_chan = type { ptr, ptr, ptr, %struct.anon.150, i32, %struct.nvkm_object, ptr, i64, i32 }
%struct.anon.150 = type { i32, i32 }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nv50_disp = type { ptr, %struct.nvkm_disp, ptr, %struct.work_struct, i32, %struct.nvkm_event, %struct.anon.147, %struct.anon.147, %struct.anon.147, %struct.anon.148, %struct.anon.149, ptr, ptr, [81 x ptr] }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.137 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.136 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.136 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.137 = type { %struct.spinlock, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.147 = type { i32, i32 }
%struct.anon.148 = type { i32, i32, i32 }
%struct.anon.149 = type { i32, i32, [3 x i8] }

@gf119_disp_chan_uevent = dso_local constant { %struct.nvkm_event_func, [16 x i8] } { %struct.nvkm_event_func { ptr @nv50_disp_chan_uevent_ctor, ptr null, ptr @gf119_disp_chan_uevent_init, ptr @gf119_disp_chan_uevent_fini }, [16 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [23 x i8] c"gf119_disp_chan_uevent\00", align 1
@___asan_gen_.2 = private constant [56 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/disp/changf119.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 45, i32 1 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @gf119_disp_chan_uevent], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf119_disp_chan_uevent to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_chan_uevent_ctor(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gf119_disp_chan_uevent_init(ptr nocapture noundef readonly %event, i32 noundef %types, i32 noundef %index) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr i8, ptr %event, i32 -548
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  %shl = shl nuw i32 1, %index
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 6357132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %shl) #2, !srcloc !12
  %4 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 6357136
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #2, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !15
  tail call void @arm_heavy_mb() #2
  %or = or i32 %6, %shl
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr12 = getelementptr i8, ptr %8, i32 6357136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %or) #2, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gf119_disp_chan_uevent_fini(ptr nocapture noundef readonly %event, i32 noundef %type, i32 noundef %index) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr i8, ptr %event, i32 -548
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 6357136
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #2, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !17
  tail call void @arm_heavy_mb() #2
  %shl = shl nuw i32 1, %index
  %neg = xor i32 %shl, -1
  %and = and i32 %4, %neg
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr6 = getelementptr i8, ptr %6, i32 6357136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %and) #2, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !18
  tail call void @arm_heavy_mb() #2
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %8, i32 6357132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %shl) #2, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gf119_disp_chan_intr(ptr nocapture noundef readonly %chan, i1 noundef zeroext %en) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %disp = getelementptr inbounds %struct.nv50_disp_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp, align 8
  %device1 = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 1, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  %user = getelementptr inbounds %struct.nv50_disp_chan, ptr %chan, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %user, align 4
  %shl = shl nuw i32 1, %5
  %pri26 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %pri26 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri26, align 4
  br i1 %en, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr = getelementptr i8, ptr %7, i32 6357136
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #2, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !20
  tail call void @arm_heavy_mb() #2
  %neg = xor i32 %shl, -1
  %and = and i32 %8, %neg
  %9 = ptrtoint ptr %pri26 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri26, align 4
  %add.ptr3 = getelementptr i8, ptr %10, i32 6357136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %and) #2, !srcloc !12
  %11 = ptrtoint ptr %pri26 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pri26, align 4
  %add.ptr10 = getelementptr i8, ptr %12, i32 6357152
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #2, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !22
  tail call void @arm_heavy_mb() #2
  %and17 = and i32 %13, %neg
  %14 = ptrtoint ptr %pri26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri26, align 4
  %add.ptr20 = getelementptr i8, ptr %15, i32 6357152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %and17) #2, !srcloc !12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr27 = getelementptr i8, ptr %7, i32 6357152
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #2, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !24
  tail call void @arm_heavy_mb() #2
  %or35 = or i32 %16, %shl
  %17 = ptrtoint ptr %pri26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pri26, align 4
  %add.ptr37 = getelementptr i8, ptr %18, i32 6357152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %or35) #2, !srcloc !12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

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

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @gf119_disp_chan_uevent, !1, !"gf119_disp_chan_uevent", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/changf119.c", i32 45, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i64 2156244943}
!12 = !{i64 5385557}
!13 = !{i64 5385975}
!14 = !{i64 2156245811}
!15 = !{i64 2156246249}
!16 = !{i64 2156242436}
!17 = !{i64 2156242874}
!18 = !{i64 2156243355}
!19 = !{i64 2156247134}
!20 = !{i64 2156247524}
!21 = !{i64 2156248385}
!22 = !{i64 2156248775}
!23 = !{i64 2156249630}
!24 = !{i64 2156250008}
