; ModuleID = '/llk/IR_all_yes/arch/arm/kernel/insn.c_pt.bc'
source_filename = "../arch/arm/kernel/insn.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@__arm_gen_branch_arm.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"arch/arm/kernel/insn.c\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [26 x i8] c"../arch/arm/kernel/insn.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 48, i32 3 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__arm_gen_branch(i32 noundef %pc, i32 noundef %addr, i1 noundef zeroext %link, i1 noundef zeroext %warn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  %add.neg.i = sub i32 -8, %pc
  %sub.i = add i32 %add.neg.i, %addr
  %0 = add i32 %sub.i, -33554429
  call void @__sanitizer_cov_trace_const_cmp4(i32 -67108861, i32 %0)
  %1 = icmp ult i32 %0, -67108861
  br i1 %1, label %if.then5.i, label %if.end52.i, !prof !11

if.then5.i:                                       ; preds = %entry
  br i1 %warn, label %land.rhs.i, label %if.then5.i.__arm_gen_branch_arm.exit_crit_edge

if.then5.i.__arm_gen_branch_arm.exit_crit_edge:   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %__arm_gen_branch_arm.exit

land.rhs.i:                                       ; preds = %if.then5.i
  %.b61.i = load i1, ptr @__arm_gen_branch_arm.__already_done, align 1
  br i1 %.b61.i, label %land.rhs.i.__arm_gen_branch_arm.exit_crit_edge, label %if.then22.i, !prof !12

land.rhs.i.__arm_gen_branch_arm.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %__arm_gen_branch_arm.exit

if.then22.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #3
  store i1 true, ptr @__arm_gen_branch_arm.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 9, ptr noundef null) #4
  br label %__arm_gen_branch_arm.exit

if.end52.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %spec.select.i = select i1 %link, i32 -352321536, i32 -369098752
  %2 = lshr i32 %sub.i, 2
  %and.i = and i32 %2, 16777215
  %or53.i = or i32 %and.i, %spec.select.i
  br label %__arm_gen_branch_arm.exit

__arm_gen_branch_arm.exit:                        ; preds = %if.end52.i, %if.then22.i, %land.rhs.i.__arm_gen_branch_arm.exit_crit_edge, %if.then5.i.__arm_gen_branch_arm.exit_crit_edge
  %retval.0.i = phi i32 [ %or53.i, %if.end52.i ], [ 0, %if.then5.i.__arm_gen_branch_arm.exit_crit_edge ], [ 0, %if.then22.i ], [ 0, %land.rhs.i.__arm_gen_branch_arm.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #2 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind uwtable(sync) }
attributes #3 = { nomerge }
attributes #4 = { nounwind }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../arch/arm/kernel/insn.c", i32 48, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{!"branch_weights", i32 2000, i32 1}
