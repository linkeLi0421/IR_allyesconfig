; ModuleID = '/llk/IR_all_yes/arch/arm/kernel/jump_label.c_pt.bc'
source_filename = "../arch/arm/kernel/jump_label.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.jump_entry = type { i32, i32, i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arch_jump_label_transform(ptr nocapture noundef readonly %entry1, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %entry1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.i = icmp eq i32 %type, 1
  br i1 %cmp.i, label %if.then.i, label %entry.__arch_jump_label_transform.exit_crit_edge

entry.__arch_jump_label_transform.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %__arch_jump_label_transform.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %target.i = getelementptr inbounds %struct.jump_entry, ptr %entry1, i32 0, i32 1
  %2 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %target.i, align 4
  %call.i.i = tail call i32 @__arm_gen_branch(i32 noundef %1, i32 noundef %3, i1 noundef zeroext false, i1 noundef zeroext true) #2
  br label %__arch_jump_label_transform.exit

__arch_jump_label_transform.exit:                 ; preds = %if.then.i, %entry.__arch_jump_label_transform.exit_crit_edge
  %insn.0.i = phi i32 [ %call.i.i, %if.then.i ], [ -509607936, %entry.__arch_jump_label_transform.exit_crit_edge ]
  %4 = inttoptr i32 %1 to ptr
  tail call void @patch_text(ptr noundef %4, i32 noundef %insn.0.i) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arch_jump_label_transform_static(ptr nocapture noundef readonly %entry1, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %entry1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.i = icmp eq i32 %type, 1
  br i1 %cmp.i, label %if.then.i, label %entry.__arch_jump_label_transform.exit_crit_edge

entry.__arch_jump_label_transform.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %__arch_jump_label_transform.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %target.i = getelementptr inbounds %struct.jump_entry, ptr %entry1, i32 0, i32 1
  %2 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %target.i, align 4
  %call.i.i = tail call i32 @__arm_gen_branch(i32 noundef %1, i32 noundef %3, i1 noundef zeroext false, i1 noundef zeroext true) #2
  br label %__arch_jump_label_transform.exit

__arch_jump_label_transform.exit:                 ; preds = %if.then.i, %entry.__arch_jump_label_transform.exit_crit_edge
  %insn.0.i = phi i32 [ %call.i.i, %if.then.i ], [ -509607936, %entry.__arch_jump_label_transform.exit_crit_edge ]
  %4 = inttoptr i32 %1 to ptr
  tail call void @__patch_text_real(ptr noundef %4, i32 noundef %insn.0.i, i1 noundef zeroext false) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @patch_text(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__arm_gen_branch(i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__patch_text_real(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

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
