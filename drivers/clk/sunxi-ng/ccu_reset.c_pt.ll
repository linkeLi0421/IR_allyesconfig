; ModuleID = '/llk/IR_all_yes/drivers/clk/sunxi-ng/ccu_reset.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu_reset.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ccu_reset_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_ccu_reset_ops\09\09\09\09"
module asm "\09.long\09__crc_ccu_reset_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_reset_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_reset_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_reset_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ccu_reset_map = type { i16, i32 }

@ccu_reset_ops = dso_local constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr @ccu_reset_reset, ptr @ccu_reset_assert, ptr @ccu_reset_deassert, ptr @ccu_reset_status }, [16 x i8] zeroinitializer }, align 32
@__kstrtab_ccu_reset_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_reset_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_reset_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_reset_ops to i32), ptr @__kstrtab_ccu_reset_ops, ptr @__kstrtabns_ccu_reset_ops }, section "___ksymtab_gpl+ccu_reset_ops", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.1 = private unnamed_addr constant [14 x i8] c"ccu_reset_ops\00", align 1
@___asan_gen_.2 = private constant [36 x i8] c"../drivers/clk/sunxi-ng/ccu_reset.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 72, i32 32 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_ccu_reset_ops, ptr @ccu_reset_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_reset_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_reset_reset(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %rcdev, i32 -12
  %reset_map.i = getelementptr i8, ptr %rcdev, i32 -8
  %0 = ptrtoint ptr %reset_map.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset_map.i, align 4
  %arrayidx.i = getelementptr %struct.ccu_reset_map, ptr %1, i32 %id
  %lock.i = getelementptr i8, ptr %rcdev, i32 -4
  %2 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock.i, align 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #3
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i, align 4
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i, align 4
  %conv7.i = zext i16 %7 to i32
  %add.ptr.i = getelementptr i8, ptr %5, i32 %conv7.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !13
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %bit.i = getelementptr %struct.ccu_reset_map, ptr %1, i32 %id, i32 1
  %10 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bit.i, align 4
  %neg.i = xor i32 %11, -1
  %and.i = and i32 %9, %neg.i
  %12 = tail call i32 @llvm.bswap.i32(i32 %and.i) #3
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i.i, align 4
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx.i, align 4
  %conv16.i = zext i16 %16 to i32
  %add.ptr17.i = getelementptr i8, ptr %14, i32 %conv16.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %12) #3, !srcloc !16
  %17 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lock.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %call3.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 2147480) #3
  %20 = ptrtoint ptr %reset_map.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reset_map.i, align 4
  %arrayidx.i6 = getelementptr %struct.ccu_reset_map, ptr %21, i32 %id
  %22 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lock.i, align 4
  %call3.i8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %23) #3
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i.i, align 4
  %26 = ptrtoint ptr %arrayidx.i6 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.i6, align 4
  %conv7.i9 = zext i16 %27 to i32
  %add.ptr.i10 = getelementptr i8, ptr %25, i32 %conv7.i9
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #3, !srcloc !13
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %bit.i11 = getelementptr %struct.ccu_reset_map, ptr %21, i32 %id, i32 1
  %30 = ptrtoint ptr %bit.i11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bit.i11, align 4
  %or.i = or i32 %31, %29
  %32 = tail call i32 @llvm.bswap.i32(i32 %or.i) #3
  %33 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i.i, align 4
  %35 = ptrtoint ptr %arrayidx.i6 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx.i6, align 4
  %conv16.i12 = zext i16 %36 to i32
  %add.ptr17.i13 = getelementptr i8, ptr %34, i32 %conv16.i12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i13, i32 %32) #3, !srcloc !16
  %37 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lock.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %call3.i8) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_reset_assert(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rcdev, i32 -12
  %reset_map = getelementptr i8, ptr %rcdev, i32 -8
  %0 = ptrtoint ptr %reset_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset_map, align 4
  %arrayidx = getelementptr %struct.ccu_reset_map, ptr %1, i32 %id
  %lock = getelementptr i8, ptr %rcdev, i32 -4
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #3
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 4
  %conv7 = zext i16 %7 to i32
  %add.ptr = getelementptr i8, ptr %5, i32 %conv7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %bit = getelementptr %struct.ccu_reset_map, ptr %1, i32 %id, i32 1
  %10 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bit, align 4
  %neg = xor i32 %11, -1
  %and = and i32 %9, %neg
  %12 = tail call i32 @llvm.bswap.i32(i32 %and)
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx, align 4
  %conv16 = zext i16 %16 to i32
  %add.ptr17 = getelementptr i8, ptr %14, i32 %conv16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %12) #3, !srcloc !16
  %17 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %call3) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_reset_deassert(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rcdev, i32 -12
  %reset_map = getelementptr i8, ptr %rcdev, i32 -8
  %0 = ptrtoint ptr %reset_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset_map, align 4
  %arrayidx = getelementptr %struct.ccu_reset_map, ptr %1, i32 %id
  %lock = getelementptr i8, ptr %rcdev, i32 -4
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #3
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 4
  %conv7 = zext i16 %7 to i32
  %add.ptr = getelementptr i8, ptr %5, i32 %conv7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %bit = getelementptr %struct.ccu_reset_map, ptr %1, i32 %id, i32 1
  %10 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bit, align 4
  %or = or i32 %11, %9
  %12 = tail call i32 @llvm.bswap.i32(i32 %or)
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx, align 4
  %conv16 = zext i16 %16 to i32
  %add.ptr17 = getelementptr i8, ptr %14, i32 %conv16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %12) #3, !srcloc !16
  %17 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %call3) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_reset_status(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rcdev, i32 -12
  %reset_map = getelementptr i8, ptr %rcdev, i32 -8
  %0 = ptrtoint ptr %reset_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset_map, align 4
  %arrayidx = getelementptr %struct.ccu_reset_map, ptr %1, i32 %id
  %bit = getelementptr %struct.ccu_reset_map, ptr %1, i32 %id, i32 1
  %2 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bit, align 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 4
  %conv = zext i16 %7 to i32
  %add.ptr = getelementptr i8, ptr %5, i32 %conv
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !13
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  %and = and i32 %9, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @ccu_reset_ops, !1, !"ccu_reset_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/sunxi-ng/ccu_reset.c", i32 72, i32 32}
!2 = !{ptr @__ksymtab_ccu_reset_ops, !3, !"__ksymtab_ccu_reset_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/sunxi-ng/ccu_reset.c", i32 78, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 2976267}
!14 = !{i64 2150549513}
!15 = !{i64 2150549742}
!16 = !{i64 2975849}
!17 = !{i64 2150550804}
!18 = !{i64 2150551032}
!19 = !{i64 2150552283}
