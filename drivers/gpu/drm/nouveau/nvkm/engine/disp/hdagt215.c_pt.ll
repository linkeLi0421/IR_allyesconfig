; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/disp/hdagt215.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/hdagt215.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_ior = type { ptr, ptr, i32, i32, [8 x i8], %struct.list_head, i8, %struct.nvkm_ior_state, %struct.nvkm_ior_state, %struct.anon.148, %struct.anon.149 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_ior_state = type { ptr, i32, i24 }
%struct.anon.148 = type { i8, i8, i8, i8 }
%struct.anon.149 = type { i8 }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.138 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.137 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.137 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.138 = type { %struct.spinlock, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.135, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.135 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gt215_hda_eld(ptr nocapture noundef readonly %ior, i32 noundef %head, ptr nocapture noundef readonly %data, i8 noundef zeroext %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %disp = getelementptr inbounds %struct.nvkm_ior, ptr %ior, i32 0, i32 1
  %0 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp, align 4
  %device1 = getelementptr inbounds %struct.nvkm_disp, ptr %1, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  %id = getelementptr inbounds %struct.nvkm_ior, ptr %ior, i32 0, i32 3
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %mul = shl i32 %5, 11
  %conv = zext i8 %size to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %size)
  %cmp42.not = icmp eq i8 %size, 0
  br i1 %cmp42.not, label %entry.do.body8.lr.ph_crit_edge, label %do.body.lr.ph

entry.do.body8.lr.ph_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body8.lr.ph

do.body.lr.ph:                                    ; preds = %entry
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %add = add i32 %mul, 6407232
  br label %do.body

for.cond4.preheader:                              ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %size)
  %cmp544 = icmp ult i8 %size, 96
  br i1 %cmp544, label %for.cond4.preheader.do.body8.lr.ph_crit_edge, label %for.cond4.preheader.for.end17_crit_edge

for.cond4.preheader.for.end17_crit_edge:          ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end17

for.cond4.preheader.do.body8.lr.ph_crit_edge:     ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body8.lr.ph

do.body8.lr.ph:                                   ; preds = %for.cond4.preheader.do.body8.lr.ph_crit_edge, %entry.do.body8.lr.ph_crit_edge
  %i.0.lcssa49 = phi i32 [ %conv, %for.cond4.preheader.do.body8.lr.ph_crit_edge ], [ 0, %entry.do.body8.lr.ph_crit_edge ]
  %pri12 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %add13 = add i32 %mul, 6407232
  br label %do.body8

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %i.043 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %do.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !9
  tail call void @arm_heavy_mb() #2
  %shl = shl i32 %i.043, 8
  %arrayidx = getelementptr i8, ptr %data, i32 %i.043
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv3 = zext i8 %7 to i32
  %or = or i32 %shl, %conv3
  %8 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %or) #2, !srcloc !10
  %inc = add nuw nsw i32 %i.043, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.cond4.preheader, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body

do.body8:                                         ; preds = %do.body8.do.body8_crit_edge, %do.body8.lr.ph
  %i.145 = phi i32 [ %i.0.lcssa49, %do.body8.lr.ph ], [ %inc16, %do.body8.do.body8_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  %shl11 = shl i32 %i.145, 8
  %10 = ptrtoint ptr %pri12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pri12, align 4
  %add.ptr14 = getelementptr i8, ptr %11, i32 %add13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %shl11) #2, !srcloc !10
  %inc16 = add nuw nsw i32 %i.145, 1
  %exitcond46.not = icmp eq i32 %inc16, 96
  br i1 %exitcond46.not, label %do.body8.for.end17_crit_edge, label %do.body8.do.body8_crit_edge

do.body8.do.body8_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body8

do.body8.for.end17_crit_edge:                     ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end17

for.end17:                                        ; preds = %do.body8.for.end17_crit_edge, %for.cond4.preheader.for.end17_crit_edge
  %add18 = add i32 %mul, 6407240
  %pri19 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %12 = ptrtoint ptr %pri19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pri19, align 4
  %add.ptr20 = getelementptr i8, ptr %13, i32 %add18
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #2, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !14
  tail call void @arm_heavy_mb() #2
  %or24 = or i32 %14, -2147483646
  %15 = ptrtoint ptr %pri19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pri19, align 4
  %add.ptr26 = getelementptr i8, ptr %16, i32 %add18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %or24) #2, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gt215_hda_hpd(ptr nocapture noundef readonly %ior, i32 noundef %head, i1 noundef zeroext %present) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %disp = getelementptr inbounds %struct.nvkm_ior, ptr %ior, i32 0, i32 1
  %0 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp, align 4
  %device1 = getelementptr inbounds %struct.nvkm_disp, ptr %1, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device1, align 4
  %. = select i1 %present, i32 2147483646, i32 2147483644
  %.13 = select i1 %present, i32 -2147483647, i32 -2147483648
  %id = getelementptr inbounds %struct.nvkm_ior, ptr %ior, i32 0, i32 3
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %mul = shl i32 %5, 11
  %add = add i32 %mul, 6407240
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #2, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !16
  tail call void @arm_heavy_mb() #2
  %and = and i32 %8, %.
  %or3 = or i32 %and, %.13
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr5 = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %or3) #2, !srcloc !10
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{i64 2156233710}
!10 = !{i64 5393353}
!11 = !{i64 2156234141}
!12 = !{i64 5393771}
!13 = !{i64 2156234987}
!14 = !{i64 2156235389}
!15 = !{i64 2156236268}
!16 = !{i64 2156236646}
