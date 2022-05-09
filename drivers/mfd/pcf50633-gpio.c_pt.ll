; ModuleID = '/llk/IR_all_yes/drivers/mfd/pcf50633-gpio.c_pt.bc'
source_filename = "../drivers/mfd/pcf50633-gpio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pcf50633_gpio_set\22, \22a\22\09"
module asm "\09.weak\09__crc_pcf50633_gpio_set\09\09\09\09"
module asm "\09.long\09__crc_pcf50633_gpio_set\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcf50633_gpio_set:\09\09\09\09\09"
module asm "\09.asciz \09\22pcf50633_gpio_set\22\09\09\09\09\09"
module asm "__kstrtabns_pcf50633_gpio_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pcf50633_gpio_get\22, \22a\22\09"
module asm "\09.weak\09__crc_pcf50633_gpio_get\09\09\09\09"
module asm "\09.long\09__crc_pcf50633_gpio_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcf50633_gpio_get:\09\09\09\09\09"
module asm "\09.asciz \09\22pcf50633_gpio_get\22\09\09\09\09\09"
module asm "__kstrtabns_pcf50633_gpio_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pcf50633_gpio_invert_set\22, \22a\22\09"
module asm "\09.weak\09__crc_pcf50633_gpio_invert_set\09\09\09\09"
module asm "\09.long\09__crc_pcf50633_gpio_invert_set\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcf50633_gpio_invert_set:\09\09\09\09\09"
module asm "\09.asciz \09\22pcf50633_gpio_invert_set\22\09\09\09\09\09"
module asm "__kstrtabns_pcf50633_gpio_invert_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pcf50633_gpio_invert_get\22, \22a\22\09"
module asm "\09.weak\09__crc_pcf50633_gpio_invert_get\09\09\09\09"
module asm "\09.long\09__crc_pcf50633_gpio_invert_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcf50633_gpio_invert_get:\09\09\09\09\09"
module asm "\09.asciz \09\22pcf50633_gpio_invert_get\22\09\09\09\09\09"
module asm "__kstrtabns_pcf50633_gpio_invert_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pcf50633_gpio_power_supply_set\22, \22a\22\09"
module asm "\09.weak\09__crc_pcf50633_gpio_power_supply_set\09\09\09\09"
module asm "\09.long\09__crc_pcf50633_gpio_power_supply_set\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcf50633_gpio_power_supply_set:\09\09\09\09\09"
module asm "\09.asciz \09\22pcf50633_gpio_power_supply_set\22\09\09\09\09\09"
module asm "__kstrtabns_pcf50633_gpio_power_supply_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_pcf50633_gpio_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcf50633_gpio_set = external dso_local constant [0 x i8], align 1
@__ksymtab_pcf50633_gpio_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcf50633_gpio_set to i32), ptr @__kstrtab_pcf50633_gpio_set, ptr @__kstrtabns_pcf50633_gpio_set }, section "___ksymtab_gpl+pcf50633_gpio_set", align 4
@__kstrtab_pcf50633_gpio_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcf50633_gpio_get = external dso_local constant [0 x i8], align 1
@__ksymtab_pcf50633_gpio_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcf50633_gpio_get to i32), ptr @__kstrtab_pcf50633_gpio_get, ptr @__kstrtabns_pcf50633_gpio_get }, section "___ksymtab_gpl+pcf50633_gpio_get", align 4
@__kstrtab_pcf50633_gpio_invert_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcf50633_gpio_invert_set = external dso_local constant [0 x i8], align 1
@__ksymtab_pcf50633_gpio_invert_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcf50633_gpio_invert_set to i32), ptr @__kstrtab_pcf50633_gpio_invert_set, ptr @__kstrtabns_pcf50633_gpio_invert_set }, section "___ksymtab_gpl+pcf50633_gpio_invert_set", align 4
@__kstrtab_pcf50633_gpio_invert_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcf50633_gpio_invert_get = external dso_local constant [0 x i8], align 1
@__ksymtab_pcf50633_gpio_invert_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcf50633_gpio_invert_get to i32), ptr @__kstrtab_pcf50633_gpio_invert_get, ptr @__kstrtabns_pcf50633_gpio_invert_get }, section "___ksymtab_gpl+pcf50633_gpio_invert_get", align 4
@pcf50633_regulator_registers = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\1A\1E\22-/13579&", [21 x i8] zeroinitializer }, align 32
@__kstrtab_pcf50633_gpio_power_supply_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcf50633_gpio_power_supply_set = external dso_local constant [0 x i8], align 1
@__ksymtab_pcf50633_gpio_power_supply_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcf50633_gpio_power_supply_set to i32), ptr @__kstrtab_pcf50633_gpio_power_supply_set, ptr @__kstrtabns_pcf50633_gpio_power_supply_set }, section "___ksymtab_gpl+pcf50633_gpio_power_supply_set", align 4
@__UNIQUE_ID_file288 = internal constant [45 x i8] c"pcf50633_gpio.file=drivers/mfd/pcf50633-gpio\00", section ".modinfo", align 1
@__UNIQUE_ID_license289 = internal constant [26 x i8] c"pcf50633_gpio.license=GPL\00", section ".modinfo", align 1
@___asan_gen_.1 = private unnamed_addr constant [29 x i8] c"pcf50633_regulator_registers\00", align 1
@___asan_gen_.2 = private constant [31 x i8] c"../drivers/mfd/pcf50633-gpio.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 19, i32 17 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_file288, ptr @__UNIQUE_ID_license289, ptr @__ksymtab_pcf50633_gpio_get, ptr @__ksymtab_pcf50633_gpio_invert_get, ptr @__ksymtab_pcf50633_gpio_invert_set, ptr @__ksymtab_pcf50633_gpio_power_supply_set, ptr @__ksymtab_pcf50633_gpio_set, ptr @pcf50633_regulator_registers], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_regulator_registers to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcf50633_gpio_set(ptr noundef %pcf, i32 noundef %gpio, i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i32 %gpio to i8
  %conv = add i8 %0, 19
  %call = tail call i32 @pcf50633_reg_set_bit_mask(ptr noundef %pcf, i8 noundef zeroext %conv, i8 noundef zeroext 7, i8 noundef zeroext %val) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcf50633_reg_set_bit_mask(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @pcf50633_gpio_get(ptr noundef %pcf, i32 noundef %gpio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i32 %gpio to i8
  %conv = add i8 %0, 19
  %call = tail call zeroext i8 @pcf50633_reg_read(ptr noundef %pcf, i8 noundef zeroext %conv) #2
  %1 = and i8 %call, 7
  ret i8 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pcf50633_reg_read(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcf50633_gpio_invert_set(ptr noundef %pcf, i32 noundef %gpio, i32 noundef %invert) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i32 %gpio to i8
  %conv = add i8 %0, 19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %invert)
  %tobool.not = icmp eq i32 %invert, 0
  %conv2 = select i1 %tobool.not, i8 0, i8 8
  %call = tail call i32 @pcf50633_reg_set_bit_mask(ptr noundef %pcf, i8 noundef zeroext %conv, i8 noundef zeroext 8, i8 noundef zeroext %conv2) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcf50633_gpio_invert_get(ptr noundef %pcf, i32 noundef %gpio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i32 %gpio to i8
  %conv = add i8 %0, 19
  %call = tail call zeroext i8 @pcf50633_reg_read(ptr noundef %pcf, i8 noundef zeroext %conv) #2
  %1 = and i8 %call, 8
  %and = zext i8 %1 to i32
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcf50633_gpio_power_supply_set(ptr noundef %pcf, i32 noundef %gpio, i32 noundef %regulator, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [11 x i8], ptr @pcf50633_regulator_registers, i32 0, i32 %regulator
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %add = add i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool = icmp ne i32 %on, 0
  %lnot.ext = zext i1 %tobool to i32
  %sub = add i32 %gpio, -1
  %shl = shl nuw i32 %lnot.ext, %sub
  %conv3 = trunc i32 %shl to i8
  %shl5 = shl nuw i32 1, %sub
  %conv6 = trunc i32 %shl5 to i8
  %call = tail call i32 @pcf50633_reg_set_bit_mask(ptr noundef %pcf, i8 noundef zeroext %add, i8 noundef zeroext %conv6, i8 noundef zeroext %conv3) #2
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @__ksymtab_pcf50633_gpio_set, !1, !"__ksymtab_pcf50633_gpio_set", i1 false, i1 false}
!1 = !{!"../drivers/mfd/pcf50633-gpio.c", i32 41, i32 1}
!2 = !{ptr @__ksymtab_pcf50633_gpio_get, !3, !"__ksymtab_pcf50633_gpio_get", i1 false, i1 false}
!3 = !{!"../drivers/mfd/pcf50633-gpio.c", i32 52, i32 1}
!4 = !{ptr @__ksymtab_pcf50633_gpio_invert_set, !5, !"__ksymtab_pcf50633_gpio_invert_set", i1 false, i1 false}
!5 = !{!"../drivers/mfd/pcf50633-gpio.c", i32 63, i32 1}
!6 = !{ptr @__ksymtab_pcf50633_gpio_invert_get, !7, !"__ksymtab_pcf50633_gpio_invert_get", i1 false, i1 false}
!7 = !{!"../drivers/mfd/pcf50633-gpio.c", i32 74, i32 1}
!8 = !{ptr @__ksymtab_pcf50633_gpio_power_supply_set, !9, !"__ksymtab_pcf50633_gpio_power_supply_set", i1 false, i1 false}
!9 = !{!"../drivers/mfd/pcf50633-gpio.c", i32 89, i32 1}
!10 = !{ptr @__UNIQUE_ID_file288, !11, !"__UNIQUE_ID_file288", i1 false, i1 false}
!11 = !{!"../drivers/mfd/pcf50633-gpio.c", i32 91, i32 1}
!12 = !{ptr @__UNIQUE_ID_license289, !11, !"__UNIQUE_ID_license289", i1 false, i1 false}
!13 = !{ptr @pcf50633_regulator_registers, !14, !"pcf50633_regulator_registers", i1 false, i1 false}
!14 = !{!"../drivers/mfd/pcf50633-gpio.c", i32 19, i32 17}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
