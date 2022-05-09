; ModuleID = '/llk/IR_all_yes/drivers/iio/pressure/bmp280-regmap.c_pt.bc'
source_filename = "../drivers/iio/pressure/bmp280-regmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+bmp180_regmap_config\22, \22a\22\09"
module asm "\09.weak\09__crc_bmp180_regmap_config\09\09\09\09"
module asm "\09.long\09__crc_bmp180_regmap_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bmp180_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22bmp180_regmap_config\22\09\09\09\09\09"
module asm "__kstrtabns_bmp180_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bmp280_regmap_config\22, \22a\22\09"
module asm "\09.weak\09__crc_bmp280_regmap_config\09\09\09\09"
module asm "\09.long\09__crc_bmp280_regmap_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bmp280_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22bmp280_regmap_config\22\09\09\09\09\09"
module asm "__kstrtabns_bmp280_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }

@bmp180_regmap_config = dso_local constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @bmp180_is_writeable_reg, ptr null, ptr @bmp180_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 248, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_bmp180_regmap_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_bmp180_regmap_config = external dso_local constant [0 x i8], align 1
@__ksymtab_bmp180_regmap_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bmp180_regmap_config to i32), ptr @__kstrtab_bmp180_regmap_config, ptr @__kstrtabns_bmp180_regmap_config }, section "___ksymtab+bmp180_regmap_config", align 4
@bmp280_regmap_config = dso_local constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @bmp280_is_writeable_reg, ptr null, ptr @bmp280_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 254, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_bmp280_regmap_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_bmp280_regmap_config = external dso_local constant [0 x i8], align 1
@__ksymtab_bmp280_regmap_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bmp280_regmap_config to i32), ptr @__kstrtab_bmp280_regmap_config, ptr @__kstrtabns_bmp280_regmap_config }, section "___ksymtab+bmp280_regmap_config", align 4
@___asan_gen_.1 = private unnamed_addr constant [21 x i8] c"bmp180_regmap_config\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 32, i32 28 }
@___asan_gen_.4 = private unnamed_addr constant [21 x i8] c"bmp280_regmap_config\00", align 1
@___asan_gen_.5 = private constant [40 x i8] c"../drivers/iio/pressure/bmp280-regmap.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 75, i32 28 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_bmp180_regmap_config, ptr @__ksymtab_bmp280_regmap_config, ptr @bmp180_regmap_config, ptr @bmp280_regmap_config], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmp180_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmp280_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @bmp180_is_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 244, i32 %reg)
  %switch.selectcmp.case1 = icmp eq i32 %reg, 244
  call void @__sanitizer_cov_trace_const_cmp4(i32 224, i32 %reg)
  %switch.selectcmp.case2 = icmp eq i32 %reg, 224
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  ret i1 %switch.selectcmp
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @bmp180_is_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %reg, -244
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 5
  %switch.cast = trunc i32 %switch.tableidx to i5
  %switch.downshift = lshr i5 -3, %switch.cast
  %1 = and i5 %switch.downshift, 1
  %2 = sext i5 %1 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %switch.masked = icmp ne i5 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @bmp280_is_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %reg, -224
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 22
  %switch.cast = trunc i32 %switch.tableidx to i22
  %switch.downshift = lshr i22 -786431, %switch.cast
  %1 = and i22 %switch.downshift, 1
  %switch.masked = icmp ne i22 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @bmp280_is_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %reg, -243
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 12
  %switch.cast = trunc i32 %switch.tableidx to i12
  %switch.downshift = lshr i12 -15, %switch.cast
  %1 = and i12 %switch.downshift, 1
  %2 = sext i12 %1 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %switch.masked = icmp ne i12 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #2 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @bmp180_regmap_config, !1, !"bmp180_regmap_config", i1 false, i1 false}
!1 = !{!"../drivers/iio/pressure/bmp280-regmap.c", i32 32, i32 28}
!2 = !{ptr @__ksymtab_bmp180_regmap_config, !3, !"__ksymtab_bmp180_regmap_config", i1 false, i1 false}
!3 = !{!"../drivers/iio/pressure/bmp280-regmap.c", i32 42, i32 1}
!4 = !{ptr @bmp280_regmap_config, !5, !"bmp280_regmap_config", i1 false, i1 false}
!5 = !{!"../drivers/iio/pressure/bmp280-regmap.c", i32 75, i32 28}
!6 = !{ptr @__ksymtab_bmp280_regmap_config, !7, !"__ksymtab_bmp280_regmap_config", i1 false, i1 false}
!7 = !{!"../drivers/iio/pressure/bmp280-regmap.c", i32 85, i32 1}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
