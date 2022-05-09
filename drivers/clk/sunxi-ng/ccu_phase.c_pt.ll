; ModuleID = '/llk/IR_all_yes/drivers/clk/sunxi-ng/ccu_phase.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu_phase.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ccu_phase_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_ccu_phase_ops\09\09\09\09"
module asm "\09.long\09__crc_ccu_phase_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_phase_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_phase_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_phase_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }

@ccu_phase_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ccu_phase_get_phase, ptr @ccu_phase_set_phase, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_ccu_phase_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_phase_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_phase_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_phase_ops to i32), ptr @__kstrtab_ccu_phase_ops, ptr @__kstrtabns_ccu_phase_ops }, section "___ksymtab_gpl+ccu_phase_ops", align 4
@___asan_gen_.1 = private unnamed_addr constant [14 x i8] c"ccu_phase_ops\00", align 1
@___asan_gen_.2 = private constant [36 x i8] c"../drivers/clk/sunxi-ng/ccu_phase.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 120, i32 22 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_ccu_phase_ops, ptr @ccu_phase_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_phase_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_phase_get_phase(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -24
  %common = getelementptr i8, ptr %hw, i32 -20
  %0 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common, align 4
  %reg2 = getelementptr i8, ptr %hw, i32 -16
  %2 = ptrtoint ptr %reg2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %reg2, align 4
  %conv = zext i16 %3 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr.i, align 4
  %conv5 = zext i8 %7 to i32
  %shr = lshr i32 %5, %conv5
  %width = getelementptr i8, ptr %hw, i32 -23
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %width, align 1
  %conv7 = zext i8 %9 to i32
  %notmask = shl nsw i32 -1, %conv7
  %sub = xor i32 %notmask, -1
  %and = and i32 %shr, %sub
  %conv9 = trunc i32 %and to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv9)
  %tobool.not = icmp eq i8 %conv9, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call10 = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #3
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %call14 = tail call i32 @clk_hw_get_rate(ptr noundef nonnull %call10) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %call18 = tail call ptr @clk_hw_get_parent(ptr noundef nonnull %call10) #3
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %if.end21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %call22 = tail call i32 @clk_hw_get_rate(ptr noundef nonnull %call18) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end21.cleanup_crit_edge, label %if.end25

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  %div = udiv i32 %call22, %call14
  %10 = trunc i32 %div to i16
  %11 = lshr i16 %10, 1
  %div31.lhs.trunc = add nuw i16 %11, 360
  %div3156 = udiv i16 %div31.lhs.trunc, %10
  %div31.zext = zext i16 %div3156 to i32
  %conv33 = and i32 %and, 255
  %mul = mul nuw nsw i32 %conv33, %div31.zext
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end21.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul, %if.end25 ], [ 180, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ], [ -22, %if.end17.cleanup_crit_edge ], [ -22, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_phase_set_phase(ptr noundef %hw, i32 noundef %degrees) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -24
  %call1 = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #3
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @clk_hw_get_rate(ptr noundef nonnull %call1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @clk_hw_get_parent(ptr noundef nonnull %call1) #3
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call10 = tail call i32 @clk_hw_get_rate(ptr noundef nonnull %call6) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 180, i32 %degrees)
  %cmp.not = icmp eq i32 %degrees, 180
  br i1 %cmp.not, label %if.end13.do.body30_crit_edge, label %if.then14

if.end13.do.body30_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body30

if.then14:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  %div = udiv i32 %call10, %call2
  %0 = trunc i32 %div to i16
  %1 = lshr i16 %0, 1
  %div18.lhs.trunc = add nuw i16 %1, 360
  %div1898 = udiv i16 %div18.lhs.trunc, %0
  %div18.zext = zext i16 %div1898 to i32
  %div2497 = lshr i32 %div18.zext, 1
  %add25 = add i32 %div2497, %degrees
  %div27 = sdiv i32 %add25, %div18.zext
  %phi.cast = and i32 %div27, 255
  br label %do.body30

do.body30:                                        ; preds = %if.then14, %if.end13.do.body30_crit_edge
  %delay.0 = phi i32 [ %phi.cast, %if.then14 ], [ 0, %if.end13.do.body30_crit_edge ]
  %common = getelementptr i8, ptr %hw, i32 -20
  %lock = getelementptr i8, ptr %hw, i32 -4
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %call35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #3
  %4 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %common, align 4
  %reg40 = getelementptr i8, ptr %hw, i32 -16
  %6 = ptrtoint ptr %reg40 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %reg40, align 4
  %conv41 = zext i16 %7 to i32
  %add.ptr = getelementptr i8, ptr %5, i32 %conv41
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr.i, align 4
  %conv45 = zext i8 %11 to i32
  %shl.neg = shl nsw i32 -1, %conv45
  %width = getelementptr i8, ptr %hw, i32 -23
  %12 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %width, align 1
  %conv47 = zext i8 %13 to i32
  %14 = add nuw nsw i32 %conv45, %conv47
  %sub52 = sub nsw i32 32, %14
  %shr = lshr i32 -1, %sub52
  %and = and i32 %shr, %shl.neg
  %neg = xor i32 %and, -1
  %and54 = and i32 %9, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %add.ptr.i, align 4
  %conv60 = zext i8 %16 to i32
  %shl61 = shl i32 %delay.0, %conv60
  %or = or i32 %and54, %shl61
  %17 = tail call i32 @llvm.bswap.i32(i32 %or)
  %18 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %common, align 4
  %20 = ptrtoint ptr %reg40 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %reg40, align 4
  %conv66 = zext i16 %21 to i32
  %add.ptr67 = getelementptr i8, ptr %19, i32 %conv66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %17) #3, !srcloc !17
  %22 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %call35) #3
  br label %cleanup

cleanup:                                          ; preds = %do.body30, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body30 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @ccu_phase_ops, !1, !"ccu_phase_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/sunxi-ng/ccu_phase.c", i32 120, i32 22}
!2 = !{ptr @__ksymtab_ccu_phase_ops, !3, !"__ksymtab_ccu_phase_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/sunxi-ng/ccu_phase.c", i32 124, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 4028226}
!14 = !{i64 2151592708}
!15 = !{i64 2151594597}
!16 = !{i64 2151595846}
!17 = !{i64 4027808}
