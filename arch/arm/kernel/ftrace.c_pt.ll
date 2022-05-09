; ModuleID = '/llk/IR_all_yes/arch/arm/kernel/ftrace.c_pt.bc'
source_filename = "../arch/arm/kernel/ftrace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dyn_ftrace = type { i32, i32, %struct.dyn_arch_ftrace }
%struct.dyn_arch_ftrace = type { ptr }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arch_ftrace_update_code(i32 noundef %command) local_unnamed_addr #0 align 64 {
entry:
  %command.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %command.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %command, ptr %command.addr, align 4
  %call = call i32 @stop_machine(ptr noundef nonnull @__ftrace_modify_code, ptr noundef nonnull %command.addr, ptr noundef null) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stop_machine(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__ftrace_modify_code(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  tail call void @ftrace_modify_all_code(i32 noundef %1) #7
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ftrace_arch_code_modify_prepare() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ftrace_arch_code_modify_post_process() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @flush_tlb_all() #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_tlb_all() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ftrace_update_ftrace_func(ptr noundef %func) local_unnamed_addr #0 align 64 {
if.end:
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %func to i32
  %call.i.i = tail call i32 @__arm_gen_branch(i32 noundef ptrtoint (ptr @ftrace_call to i32), i32 noundef %0, i1 noundef zeroext true, i1 noundef zeroext true) #7
  tail call void @__patch_text_real(ptr noundef nonnull @ftrace_call, i32 noundef %call.i.i, i1 noundef zeroext true) #7
  %call.i.i10 = tail call i32 @__arm_gen_branch(i32 noundef ptrtoint (ptr @ftrace_regs_call to i32), i32 noundef %0, i1 noundef zeroext true, i1 noundef zeroext true) #7
  tail call void @__patch_text_real(ptr noundef nonnull @ftrace_regs_call, i32 noundef %call.i.i10, i1 noundef zeroext true) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ftrace_call() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ftrace_regs_call() #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ftrace_make_call(ptr nocapture noundef readonly %rec, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  %replaced.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rec, align 4
  %arch = getelementptr inbounds %struct.dyn_ftrace, ptr %rec, i32 0, i32 2
  %2 = ptrtoint ptr %arch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arch, align 4
  %tobool.not = icmp eq ptr %3, null
  %call.i.i = tail call i32 @__arm_gen_branch(i32 noundef %1, i32 noundef %addr, i1 noundef zeroext true, i1 noundef zeroext %tobool.not) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not = icmp ne i32 %call.i.i, 0
  %brmerge = or i1 %tobool.not, %tobool5.not
  br i1 %brmerge, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = tail call i32 @get_module_plt(ptr noundef nonnull %3, i32 noundef %1, i32 noundef %addr) #7
  %call.i.i22 = tail call i32 @__arm_gen_branch(i32 noundef %1, i32 noundef %call7, i1 noundef zeroext true, i1 noundef zeroext true) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %new.0 = phi i32 [ %call.i.i, %entry.if.end_crit_edge ], [ %call.i.i22, %if.then ]
  %4 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rec, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %replaced.i) #7
  %6 = ptrtoint ptr %replaced.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %replaced.i, align 4, !annotation !8
  %7 = inttoptr i32 %5 to ptr
  %call.i = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %replaced.i, ptr noundef %7, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.end.ftrace_modify_code.exit_crit_edge

if.end.ftrace_modify_code.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %ftrace_modify_code.exit

if.end.i:                                         ; preds = %if.end
  %8 = ptrtoint ptr %replaced.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %replaced.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4242920, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 4242920
  br i1 %cmp.not.i, label %if.end5.i, label %if.end.i.ftrace_modify_code.exit_crit_edge

if.end.i.ftrace_modify_code.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ftrace_modify_code.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__patch_text_real(ptr noundef %7, i32 noundef %new.0, i1 noundef zeroext true) #7
  br label %ftrace_modify_code.exit

ftrace_modify_code.exit:                          ; preds = %if.end5.i, %if.end.i.ftrace_modify_code.exit_crit_edge, %if.end.ftrace_modify_code.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end5.i ], [ -14, %if.end.ftrace_modify_code.exit_crit_edge ], [ -22, %if.end.i.ftrace_modify_code.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %replaced.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_module_plt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ftrace_modify_call(ptr nocapture noundef readonly %rec, i32 noundef %old_addr, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  %replaced.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rec, align 4
  %call.i.i = tail call i32 @__arm_gen_branch(i32 noundef %1, i32 noundef %old_addr, i1 noundef zeroext true, i1 noundef zeroext true) #7
  %call.i.i11 = tail call i32 @__arm_gen_branch(i32 noundef %1, i32 noundef %addr, i1 noundef zeroext true, i1 noundef zeroext true) #7
  %2 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rec, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %replaced.i) #7
  %4 = ptrtoint ptr %replaced.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %replaced.i, align 4, !annotation !8
  %5 = inttoptr i32 %3 to ptr
  %call.i = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %replaced.i, ptr noundef %5, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %entry.ftrace_modify_code.exit_crit_edge

entry.ftrace_modify_code.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %ftrace_modify_code.exit

if.end.i:                                         ; preds = %entry
  %6 = call i32 @llvm.bswap.i32(i32 %call.i.i) #7
  %7 = ptrtoint ptr %replaced.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %replaced.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %6)
  %cmp.not.i = icmp eq i32 %8, %6
  br i1 %cmp.not.i, label %if.end5.i, label %if.end.i.ftrace_modify_code.exit_crit_edge

if.end.i.ftrace_modify_code.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ftrace_modify_code.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__patch_text_real(ptr noundef %5, i32 noundef %call.i.i11, i1 noundef zeroext true) #7
  br label %ftrace_modify_code.exit

ftrace_modify_code.exit:                          ; preds = %if.end5.i, %if.end.i.ftrace_modify_code.exit_crit_edge, %entry.ftrace_modify_code.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end5.i ], [ -14, %entry.ftrace_modify_code.exit_crit_edge ], [ -22, %if.end.i.ftrace_modify_code.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %replaced.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ftrace_make_nop(ptr noundef %mod, ptr nocapture noundef %rec, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  %replaced.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rec, align 4
  %tobool.not = icmp eq ptr %mod, null
  %arch = getelementptr inbounds %struct.dyn_ftrace, ptr %rec, i32 0, i32 2
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %arch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arch, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %arch to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %mod, ptr %arch, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %mod.addr.0 = phi ptr [ %mod, %if.else ], [ %3, %if.then ]
  %tobool5.not = icmp eq ptr %mod.addr.0, null
  %call.i.i = tail call i32 @__arm_gen_branch(i32 noundef %1, i32 noundef %addr, i1 noundef zeroext true, i1 noundef zeroext %tobool5.not) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool7.not = icmp ne i32 %call.i.i, 0
  %brmerge = or i1 %tobool5.not, %tobool7.not
  br i1 %brmerge, label %if.end.if.end12_crit_edge, label %if.then9

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call10 = tail call i32 @get_module_plt(ptr noundef nonnull %mod.addr.0, i32 noundef %1, i32 noundef %addr) #7
  %call.i.i29 = tail call i32 @__arm_gen_branch(i32 noundef %1, i32 noundef %call10, i1 noundef zeroext true, i1 noundef zeroext true) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end.if.end12_crit_edge
  %old.0 = phi i32 [ %call.i.i, %if.end.if.end12_crit_edge ], [ %call.i.i29, %if.then9 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %replaced.i) #7
  %5 = ptrtoint ptr %replaced.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %replaced.i, align 4, !annotation !8
  %6 = inttoptr i32 %1 to ptr
  %call.i = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %replaced.i, ptr noundef %6, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.end12.ftrace_modify_code.exit_crit_edge

if.end12.ftrace_modify_code.exit_crit_edge:       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %ftrace_modify_code.exit

if.end.i:                                         ; preds = %if.end12
  %7 = call i32 @llvm.bswap.i32(i32 %old.0) #7
  %8 = ptrtoint ptr %replaced.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %replaced.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp.not.i = icmp eq i32 %9, %7
  br i1 %cmp.not.i, label %if.end5.i, label %if.end.i.ftrace_modify_code.exit_crit_edge

if.end.i.ftrace_modify_code.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ftrace_modify_code.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__patch_text_real(ptr noundef %6, i32 noundef -390250496, i1 noundef zeroext true) #7
  br label %ftrace_modify_code.exit

ftrace_modify_code.exit:                          ; preds = %if.end5.i, %if.end.i.ftrace_modify_code.exit_crit_edge, %if.end12.ftrace_modify_code.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end5.i ], [ -14, %if.end12.ftrace_modify_code.exit_crit_edge ], [ -22, %if.end.i.ftrace_modify_code.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %replaced.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ftrace_modify_all_code(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__arm_gen_branch(i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_from_kernel_nofault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__patch_text_real(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind uwtable(sync) }
attributes #6 = { nomerge }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!8 = !{!"auto-init"}
