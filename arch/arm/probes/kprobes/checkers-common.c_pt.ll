; ModuleID = '/llk/IR_all_yes/arch/arm/probes/kprobes/checkers-common.c_pt.bc'
source_filename = "../arch/arm/probes/kprobes/checkers-common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%union.decode_action = type { ptr }
%struct.arch_probes_insn = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }

@stack_check_actions = dso_local constant { [5 x %union.decode_action], [44 x i8] } { [5 x %union.decode_action] [%union.decode_action { ptr @checker_stack_use_none }, %union.decode_action { ptr @checker_stack_use_unknown }, %union.decode_action { ptr @checker_stack_use_imm_x0x }, %union.decode_action { ptr @checker_stack_use_imm_xxx }, %union.decode_action { ptr @checker_stack_use_stmdx }], [44 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [20 x i8] c"stack_check_actions\00", align 1
@___asan_gen_.2 = private constant [45 x i8] c"../arch/arm/probes/kprobes/checkers-common.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 82, i32 27 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @stack_check_actions], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stack_check_actions to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @checker_stack_use_none(i32 %insn, ptr nocapture noundef writeonly %asi, ptr nocapture readnone %h) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %stack_space = getelementptr inbounds %struct.arch_probes_insn, ptr %asi, i32 0, i32 5
  %0 = ptrtoint ptr %stack_space to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %stack_space, align 4
  ret i32 2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @checker_stack_use_unknown(i32 %insn, ptr nocapture noundef writeonly %asi, ptr nocapture readnone %h) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %stack_space = getelementptr inbounds %struct.arch_probes_insn, ptr %asi, i32 0, i32 5
  %0 = ptrtoint ptr %stack_space to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %stack_space, align 4
  ret i32 2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @checker_stack_use_imm_x0x(i32 noundef %insn, ptr nocapture noundef writeonly %asi, ptr nocapture readnone %h) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i32 %insn, 4
  %shr = and i32 %and, 240
  %and1 = and i32 %insn, 15
  %add = or i32 %shr, %and1
  %stack_space = getelementptr inbounds %struct.arch_probes_insn, ptr %asi, i32 0, i32 5
  %0 = ptrtoint ptr %stack_space to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %add, ptr %stack_space, align 4
  ret i32 2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @checker_stack_use_imm_xxx(i32 noundef %insn, ptr nocapture noundef writeonly %asi, ptr nocapture readnone %h) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %insn, 4095
  %stack_space = getelementptr inbounds %struct.arch_probes_insn, ptr %asi, i32 0, i32 5
  %0 = ptrtoint ptr %stack_space to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %and, ptr %stack_space, align 4
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @checker_stack_use_stmdx(i32 noundef %insn, ptr nocapture noundef writeonly %asi, ptr nocapture readnone %h) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %insn, 65535
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %and) #3
  %and1 = lshr i32 %insn, 24
  %0 = or i32 %and1, 1073741822
  %.neg = add nuw nsw i32 %0, 1
  %sub = add i32 %.neg, %call.i
  %mul = shl i32 %sub, 2
  %stack_space = getelementptr inbounds %struct.arch_probes_insn, ptr %asi, i32 0, i32 5
  %1 = ptrtoint ptr %stack_space to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %mul, ptr %stack_space, align 4
  ret i32 2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @stack_check_actions, !1, !"stack_check_actions", i1 false, i1 false}
!1 = !{!"../arch/arm/probes/kprobes/checkers-common.c", i32 82, i32 27}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
