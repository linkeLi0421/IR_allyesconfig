; ModuleID = '/llk/IR_all_yes/arch/arm/mach-highbank/system.c_pt.bc'
source_filename = "../arch/arm/mach-highbank/system.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }

@cpu_vtable = external dso_local local_unnamed_addr global [0 x ptr], align 4
@sregs_base = external dso_local local_unnamed_addr global ptr, align 4
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@scu_base_addr = external dso_local local_unnamed_addr global ptr, align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @highbank_restart(i32 noundef %mode, ptr nocapture noundef readnone %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp = icmp eq i32 %mode, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3
  tail call void @arm_heavy_mb() #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sregs_base to i32))
  %0 = load ptr, ptr @sregs_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 3840
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554432) #3, !srcloc !10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scu_base_addr to i32))
  %1 = load ptr, ptr @scu_base_addr, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %call2.i.i = tail call i32 @scu_power_mode(ptr noundef nonnull %1, i32 noundef 3) #3
  br label %while.body.preheader

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #3
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %cpu1.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu1.i.i, align 4
  %arrayidx.i.i = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sregs_base to i32))
  %8 = load ptr, ptr @sregs_base, align 4
  %and.i.i = shl i32 %7, 2
  %mul.i.i = and i32 %and.i.i, 1020
  %add.i.i = add nuw nsw i32 %mul.i.i, 512
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #3, !srcloc !10
  br label %while.body.preheader

if.else:                                          ; preds = %entry
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #3, !srcloc !10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scu_base_addr to i32))
  %9 = load ptr, ptr @scu_base_addr, align 4
  %tobool.not.i.i3 = icmp eq ptr %9, null
  br i1 %tobool.not.i.i3, label %if.else.i.i13, label %if.then.i.i5

if.then.i.i5:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %call2.i.i4 = tail call i32 @scu_power_mode(ptr noundef nonnull %9, i32 noundef 3) #3
  br label %while.body.preheader

if.else.i.i13:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #3
  %and.i.i.i6 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i6 to ptr
  %cpu1.i.i7 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu1.i.i7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu1.i.i7, align 4
  %arrayidx.i.i8 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i8, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sregs_base to i32))
  %16 = load ptr, ptr @sregs_base, align 4
  %and.i.i9 = shl i32 %15, 2
  %mul.i.i10 = and i32 %and.i.i9, 1020
  %add.i.i11 = add nuw nsw i32 %mul.i.i10, 512
  %add.ptr.i.i12 = getelementptr i8, ptr %16, i32 %add.i.i11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i12, i32 16777216) #3, !srcloc !10
  br label %while.body.preheader

while.body.preheader:                             ; preds = %if.else.i.i13, %if.then.i.i5, %if.else.i.i, %if.then.i.i
  br label %while.body

while.body:                                       ; preds = %while.body, %while.body.preheader
  %17 = tail call i32 @llvm.read_register.i32(metadata !0) #3
  %and.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %_do_idle = getelementptr inbounds %struct.processor, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %_do_idle to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %_do_idle, align 4
  %call1 = tail call i32 %24() #3
  br label %while.body
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scu_power_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind readonly }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!10 = !{i64 683542}
