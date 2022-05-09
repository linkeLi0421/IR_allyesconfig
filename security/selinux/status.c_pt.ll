; ModuleID = '/llk/IR_all_yes/security/selinux/status.c_pt.bc'
source_filename = "../security/selinux/status.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.selinux_state = type { i8, i8, i8, i8, [7 x i8], ptr, %struct.mutex, ptr, ptr, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.selinux_kernel_status = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @selinux_kernel_status_page(ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %status_lock = getelementptr inbounds %struct.selinux_state, ptr %state, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %status_lock, i32 noundef 0) #2
  %status_page = getelementptr inbounds %struct.selinux_state, ptr %state, i32 0, i32 5
  %0 = ptrtoint ptr %status_page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %status_page, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end10

if.then:                                          ; preds = %entry
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3520, i32 noundef 0, i32 noundef 0, ptr noundef null) #2
  %2 = ptrtoint ptr %status_page to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call38.i.i.i, ptr %status_page, align 4
  %tobool3.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool3.not, label %if.then.if.end10_crit_edge, label %if.then4

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end10

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %call6 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #2
  %3 = ptrtoint ptr %call6 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 1, ptr %call6, align 1
  %sequence = getelementptr inbounds %struct.selinux_kernel_status, ptr %call6, i32 0, i32 1
  %4 = ptrtoint ptr %sequence to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 0, ptr %sequence, align 1
  %enforcing.i = getelementptr inbounds %struct.selinux_state, ptr %state, i32 0, i32 1
  %5 = ptrtoint ptr %enforcing.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load volatile i8, ptr %enforcing.i, align 1, !range !12
  %7 = zext i8 %6 to i32
  %enforcing = getelementptr inbounds %struct.selinux_kernel_status, ptr %call6, i32 0, i32 2
  %8 = ptrtoint ptr %enforcing to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %enforcing, align 1
  %policyload = getelementptr inbounds %struct.selinux_kernel_status, ptr %call6, i32 0, i32 3
  %9 = ptrtoint ptr %policyload to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 0, ptr %policyload, align 1
  %call8 = tail call i32 @security_get_allow_unknown(ptr noundef %state) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  %lnot.ext = zext i1 %tobool9.not to i32
  %deny_unknown = getelementptr inbounds %struct.selinux_kernel_status, ptr %call6, i32 0, i32 4
  %10 = ptrtoint ptr %deny_unknown to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %lnot.ext, ptr %deny_unknown, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then4, %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %11 = ptrtoint ptr %status_page to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %status_page, align 4
  tail call void @mutex_unlock(ptr noundef %status_lock) #2
  ret ptr %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_get_allow_unknown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @selinux_status_update_setenforce(ptr noundef %state, i32 noundef %enforcing) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %status_lock = getelementptr inbounds %struct.selinux_state, ptr %state, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %status_lock, i32 noundef 0) #2
  %status_page = getelementptr inbounds %struct.selinux_state, ptr %state, i32 0, i32 5
  %0 = ptrtoint ptr %status_page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %status_page, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call ptr @page_address(ptr noundef nonnull %1) #2
  %sequence = getelementptr inbounds %struct.selinux_kernel_status, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %sequence to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %sequence, align 1
  %inc = add i32 %3, 1
  store i32 %inc, ptr %sequence, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #2, !srcloc !13
  %enforcing5 = getelementptr inbounds %struct.selinux_kernel_status, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %enforcing5 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %enforcing, ptr %enforcing5, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #2, !srcloc !14
  %5 = ptrtoint ptr %sequence to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %sequence, align 1
  %inc13 = add i32 %6, 1
  store i32 %inc13, ptr %sequence, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %status_lock) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @selinux_status_update_policyload(ptr noundef %state, i32 noundef %seqno) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %status_lock = getelementptr inbounds %struct.selinux_state, ptr %state, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %status_lock, i32 noundef 0) #2
  %status_page = getelementptr inbounds %struct.selinux_state, ptr %state, i32 0, i32 5
  %0 = ptrtoint ptr %status_page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %status_page, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call ptr @page_address(ptr noundef nonnull %1) #2
  %sequence = getelementptr inbounds %struct.selinux_kernel_status, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %sequence to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %sequence, align 1
  %inc = add i32 %3, 1
  store i32 %inc, ptr %sequence, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #2, !srcloc !15
  %policyload = getelementptr inbounds %struct.selinux_kernel_status, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %policyload to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %seqno, ptr %policyload, align 1
  %call5 = tail call i32 @security_get_allow_unknown(ptr noundef %state) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  %lnot.ext = zext i1 %tobool6.not to i32
  %deny_unknown = getelementptr inbounds %struct.selinux_kernel_status, ptr %call, i32 0, i32 4
  %5 = ptrtoint ptr %deny_unknown to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %lnot.ext, ptr %deny_unknown, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #2, !srcloc !16
  %6 = ptrtoint ptr %sequence to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %sequence, align 1
  %inc14 = add i32 %7, 1
  store i32 %inc14, ptr %sequence, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %status_lock) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.named.register.sp = !{!2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!2 = !{!"sp"}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{i8 0, i8 2}
!13 = !{i64 2158046650}
!14 = !{i64 2158046806}
!15 = !{i64 2158047009}
!16 = !{i64 2158047165}
