; ModuleID = '/llk/IR_all_yes/lib/stmp_device.c_pt.bc'
source_filename = "../lib/stmp_device.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+stmp_reset_block\22, \22a\22\09"
module asm "\09.weak\09__crc_stmp_reset_block\09\09\09\09"
module asm "\09.long\09__crc_stmp_reset_block\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stmp_reset_block:\09\09\09\09\09"
module asm "\09.asciz \09\22stmp_reset_block\22\09\09\09\09\09"
module asm "__kstrtabns_stmp_reset_block:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@stmp_reset_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s(%p): module reset timeout\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stmp_reset_block\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lib/stmp_device.c\00", [46 x i8] zeroinitializer }, align 32
@stmp_reset_block._entry_ptr = internal global ptr @stmp_reset_block._entry, section ".printk_index", align 4
@__kstrtab_stmp_reset_block = external dso_local constant [0 x i8], align 1
@__kstrtabns_stmp_reset_block = external dso_local constant [0 x i8], align 1
@__ksymtab_stmp_reset_block = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stmp_reset_block to i32), ptr @__kstrtab_stmp_reset_block, ptr @__kstrtabns_stmp_reset_block }, section "___ksymtab+stmp_reset_block", align 4
@___asan_gen_.3 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [21 x i8] c"../lib/stmp_device.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 74, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_stmp_reset_block, ptr @stmp_reset_block._entry, ptr @stmp_reset_block._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmp_reset_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stmp_reset_block(ptr noundef %reset_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  %add.ptr.i = getelementptr i8, ptr %reset_addr, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 128) #5, !srcloc !17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748) #5
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %entry
  %timeout.0.i = phi i32 [ 1024, %entry ], [ %dec.i, %land.rhs.i.while.cond.i_crit_edge ]
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reset_addr) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !19
  %.mask = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool.not.i = icmp eq i32 %.mask, 0
  br i1 %tobool.not.i, label %stmp_clear_poll_bit.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %while.cond.i
  %dec.i = add nsw i32 %timeout.0.i, -1
  %tobool2.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool2.not.i, label %land.rhs.i.do.end44_crit_edge, label %land.rhs.i.while.cond.i_crit_edge

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.cond.i

land.rhs.i.do.end44_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end44

stmp_clear_poll_bit.exit:                         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i)
  %tobool3.not.i.not = icmp eq i32 %timeout.0.i, 0
  br i1 %tobool3.not.i.not, label %stmp_clear_poll_bit.exit.do.end44_crit_edge, label %do.body, !prof !20

stmp_clear_poll_bit.exit.do.end44_crit_edge:      ; preds = %stmp_clear_poll_bit.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end44

do.body:                                          ; preds = %stmp_clear_poll_bit.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 64) #5, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %add.ptr6 = getelementptr i8, ptr %reset_addr, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 128) #5, !srcloc !17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #5
  br label %while.cond

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %do.body
  %timeout.0 = phi i32 [ 1024, %do.body ], [ %dec, %land.rhs.while.cond_crit_edge ]
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reset_addr) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool9.not = icmp eq i32 %4, 0
  br i1 %tobool9.not, label %land.rhs, label %if.end21

land.rhs:                                         ; preds = %while.cond
  %dec = add nsw i32 %timeout.0, -1
  %tobool10.not = icmp eq i32 %dec, 0
  br i1 %tobool10.not, label %land.rhs.do.end44_crit_edge, label %land.rhs.while.cond_crit_edge

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.cond

land.rhs.do.end44_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end44

if.end21:                                         ; preds = %while.cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 128) #5, !srcloc !17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #5
  br label %while.cond.i61

while.cond.i61:                                   ; preds = %land.rhs.i64.while.cond.i61_crit_edge, %if.end21
  %timeout.0.i58 = phi i32 [ 1024, %if.end21 ], [ %dec.i62, %land.rhs.i64.while.cond.i61_crit_edge ]
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reset_addr) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !19
  %.mask95 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask95)
  %tobool.not.i60 = icmp eq i32 %.mask95, 0
  br i1 %tobool.not.i60, label %stmp_clear_poll_bit.exit68, label %land.rhs.i64

land.rhs.i64:                                     ; preds = %while.cond.i61
  %dec.i62 = add nsw i32 %timeout.0.i58, -1
  %tobool2.not.i63 = icmp eq i32 %dec.i62, 0
  br i1 %tobool2.not.i63, label %land.rhs.i64.do.end44_crit_edge, label %land.rhs.i64.while.cond.i61_crit_edge

land.rhs.i64.while.cond.i61_crit_edge:            ; preds = %land.rhs.i64
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.cond.i61

land.rhs.i64.do.end44_crit_edge:                  ; preds = %land.rhs.i64
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end44

stmp_clear_poll_bit.exit68:                       ; preds = %while.cond.i61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i58)
  %tobool3.not.i66.not = icmp eq i32 %timeout.0.i58, 0
  br i1 %tobool3.not.i66.not, label %stmp_clear_poll_bit.exit68.do.end44_crit_edge, label %if.end31, !prof !20

stmp_clear_poll_bit.exit68.do.end44_crit_edge:    ; preds = %stmp_clear_poll_bit.exit68
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end44

if.end31:                                         ; preds = %stmp_clear_poll_bit.exit68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 64) #5, !srcloc !17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #5
  br label %while.cond.i73

while.cond.i73:                                   ; preds = %land.rhs.i76.while.cond.i73_crit_edge, %if.end31
  %timeout.0.i70 = phi i32 [ 1024, %if.end31 ], [ %dec.i74, %land.rhs.i76.while.cond.i73_crit_edge ]
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reset_addr) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !19
  %9 = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i72 = icmp eq i32 %9, 0
  br i1 %tobool.not.i72, label %stmp_clear_poll_bit.exit80, label %land.rhs.i76

land.rhs.i76:                                     ; preds = %while.cond.i73
  %dec.i74 = add nsw i32 %timeout.0.i70, -1
  %tobool2.not.i75 = icmp eq i32 %dec.i74, 0
  br i1 %tobool2.not.i75, label %land.rhs.i76.do.end44_crit_edge, label %land.rhs.i76.while.cond.i73_crit_edge

land.rhs.i76.while.cond.i73_crit_edge:            ; preds = %land.rhs.i76
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.cond.i73

land.rhs.i76.do.end44_crit_edge:                  ; preds = %land.rhs.i76
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end44

stmp_clear_poll_bit.exit80:                       ; preds = %while.cond.i73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i70)
  %tobool3.not.i78.not = icmp eq i32 %timeout.0.i70, 0
  br i1 %tobool3.not.i78.not, label %stmp_clear_poll_bit.exit80.do.end44_crit_edge, label %stmp_clear_poll_bit.exit80.cleanup_crit_edge, !prof !20

stmp_clear_poll_bit.exit80.cleanup_crit_edge:     ; preds = %stmp_clear_poll_bit.exit80
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

stmp_clear_poll_bit.exit80.do.end44_crit_edge:    ; preds = %stmp_clear_poll_bit.exit80
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end44

do.end44:                                         ; preds = %stmp_clear_poll_bit.exit80.do.end44_crit_edge, %land.rhs.i76.do.end44_crit_edge, %stmp_clear_poll_bit.exit68.do.end44_crit_edge, %land.rhs.i64.do.end44_crit_edge, %land.rhs.do.end44_crit_edge, %stmp_clear_poll_bit.exit.do.end44_crit_edge, %land.rhs.i.do.end44_crit_edge
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %reset_addr) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %stmp_clear_poll_bit.exit80.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end44 ], [ 0, %stmp_clear_poll_bit.exit80.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind uwtable(sync) }
attributes #4 = { nomerge }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/stmp_device.c", i32 74, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @stmp_reset_block._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @stmp_reset_block._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_stmp_reset_block, !7, !"__ksymtab_stmp_reset_block", i1 false, i1 false}
!7 = !{!"../lib/stmp_device.c", i32 77, i32 1}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{i64 2150543209}
!17 = !{i64 685107}
!18 = !{i64 685525}
!19 = !{i64 2150544350}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i64 2150544624}
!22 = !{i64 2150545049}
!23 = !{i64 2150546235}
