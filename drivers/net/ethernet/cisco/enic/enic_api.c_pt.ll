; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/cisco/enic/enic_api.c_pt.bc'
source_filename = "../drivers/net/ethernet/cisco/enic/enic_api.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+enic_api_devcmd_proxy_by_index\22, \22a\22\09"
module asm "\09.weak\09__crc_enic_api_devcmd_proxy_by_index\09\09\09\09"
module asm "\09.long\09__crc_enic_api_devcmd_proxy_by_index\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_enic_api_devcmd_proxy_by_index:\09\09\09\09\09"
module asm "\09.asciz \09\22enic_api_devcmd_proxy_by_index\22\09\09\09\09\09"
module asm "__kstrtabns_enic_api_devcmd_proxy_by_index:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_enic_api_devcmd_proxy_by_index = external dso_local constant [0 x i8], align 1
@__kstrtabns_enic_api_devcmd_proxy_by_index = external dso_local constant [0 x i8], align 1
@__ksymtab_enic_api_devcmd_proxy_by_index = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @enic_api_devcmd_proxy_by_index to i32), ptr @__kstrtab_enic_api_devcmd_proxy_by_index, ptr @__kstrtabns_enic_api_devcmd_proxy_by_index }, section "___ksymtab+enic_api_devcmd_proxy_by_index", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_enic_api_devcmd_proxy_by_index], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enic_api_devcmd_proxy_by_index(ptr noundef %netdev, i32 noundef %vf, i32 noundef %cmd, ptr noundef %a0, ptr noundef %a1, i32 noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev1 = getelementptr i8, ptr %netdev, i32 2432
  %0 = ptrtoint ptr %vdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev1, align 128
  %enic_api_lock = getelementptr i8, ptr %netdev, i32 3584
  tail call void @_raw_spin_lock(ptr noundef %enic_api_lock) #2
  %enic_api_busy = getelementptr i8, ptr %netdev, i32 3628
  %2 = ptrtoint ptr %enic_api_busy to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enic_api_busy, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not22 = icmp eq i8 %3, 0
  br i1 %tobool.not22, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %enic_api_lock) #2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #2, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #2, !srcloc !13
  tail call void @_raw_spin_lock(ptr noundef %enic_api_lock) #2
  %4 = ptrtoint ptr %enic_api_busy to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enic_api_busy, align 4, !range !11
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %devcmd_lock = getelementptr i8, ptr %netdev, i32 3484
  tail call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock) #2
  %conv = trunc i32 %vf to i16
  tail call void @vnic_dev_cmd_proxy_by_index_start(ptr noundef %1, i16 noundef zeroext %conv) #2
  %call10 = tail call i32 @vnic_dev_cmd(ptr noundef %1, i32 noundef %cmd, ptr noundef %a0, ptr noundef %a1, i32 noundef %wait) #2
  tail call void @vnic_dev_cmd_proxy_end(ptr noundef %1) #2
  tail call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock) #2
  tail call void @_raw_spin_unlock(ptr noundef %enic_api_lock) #2
  ret i32 %call10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vnic_dev_cmd_proxy_by_index_start(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_cmd(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vnic_dev_cmd_proxy_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

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

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @__ksymtab_enic_api_devcmd_proxy_by_index, !1, !"__ksymtab_enic_api_devcmd_proxy_by_index", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/cisco/enic/enic_api.c", i32 54, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i8 0, i8 2}
!12 = !{i64 2156345704}
!13 = !{i64 2156345546}
