; ModuleID = '/llk/IR_all_yes/drivers/base/regmap/regmap-i3c.c_pt.bc'
source_filename = "../drivers/base/regmap/regmap-i3c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__devm_regmap_init_i3c\22, \22a\22\09"
module asm "\09.weak\09__crc___devm_regmap_init_i3c\09\09\09\09"
module asm "\09.long\09__crc___devm_regmap_init_i3c\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_regmap_init_i3c:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_regmap_init_i3c\22\09\09\09\09\09"
module asm "__kstrtabns___devm_regmap_init_i3c:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i3c_priv_xfer = type { i8, i16, %union.anon.78, i32 }
%union.anon.78 = type { ptr }

@regmap_i3c = internal global { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr @regmap_i3c_write, ptr null, ptr null, ptr null, ptr null, ptr @regmap_i3c_read, ptr null, ptr null, ptr null, i8 0, i32 0, i32 0, i32 0, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__kstrtab___devm_regmap_init_i3c = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_regmap_init_i3c = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_regmap_init_i3c = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_regmap_init_i3c to i32), ptr @__kstrtab___devm_regmap_init_i3c, ptr @__kstrtabns___devm_regmap_init_i3c }, section "___ksymtab_gpl+__devm_regmap_init_i3c", align 4
@__UNIQUE_ID_author288 = internal constant [59 x i8] c"regmap_i3c.author=Vitor Soares <vitor.soares@synopsys.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description289 = internal constant [41 x i8] c"regmap_i3c.description=Regmap I3C Module\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [47 x i8] c"regmap_i3c.file=drivers/base/regmap/regmap-i3c\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [26 x i8] c"regmap_i3c.license=GPL v2\00", section ".modinfo", align 1
@___asan_gen_.1 = private unnamed_addr constant [11 x i8] c"regmap_i3c\00", align 1
@___asan_gen_.2 = private constant [36 x i8] c"../drivers/base/regmap/regmap-i3c.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 43, i32 26 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author288, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__ksymtab___devm_regmap_init_i3c, ptr @regmap_i3c], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_i3c to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__devm_regmap_init_i3c(ptr noundef %i3c, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__devm_regmap_init(ptr noundef %i3c, ptr noundef nonnull @regmap_i3c, ptr noundef %i3c, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #3
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_i3c_write(ptr noundef %context, ptr noundef %data, i32 noundef %count) #0 align 64 {
entry:
  %xfers = alloca [1 x %struct.i3c_priv_xfer], align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dev_to_i3cdev(ptr noundef %context) #3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %xfers) #3
  %0 = ptrtoint ptr %xfers to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %xfers, align 4
  store i8 0, ptr %xfers, align 4
  %len = getelementptr inbounds %struct.i3c_priv_xfer, ptr %xfers, i32 0, i32 1
  %conv = trunc i32 %count to i16
  %1 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv, ptr %len, align 2
  %data1 = getelementptr inbounds %struct.i3c_priv_xfer, ptr %xfers, i32 0, i32 2
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data, ptr %data1, align 4
  %err = getelementptr inbounds %struct.i3c_priv_xfer, ptr %xfers, i32 0, i32 3
  %3 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %err, align 4
  %call2 = call i32 @i3c_device_do_priv_xfers(ptr noundef %call, ptr noundef nonnull %xfers, i32 noundef 1) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %xfers) #3
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_i3c_read(ptr noundef %context, ptr noundef %reg, i32 noundef %reg_size, ptr noundef %val, i32 noundef %val_size) #0 align 64 {
entry:
  %xfers = alloca [2 x %struct.i3c_priv_xfer], align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dev_to_i3cdev(ptr noundef %context) #3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xfers) #3
  %0 = call ptr @memset(ptr %xfers, i32 255, i32 24)
  %1 = ptrtoint ptr %xfers to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %xfers, align 4
  %conv = trunc i32 %reg_size to i16
  %len = getelementptr inbounds %struct.i3c_priv_xfer, ptr %xfers, i32 0, i32 1
  %2 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %len, align 2
  %data = getelementptr inbounds %struct.i3c_priv_xfer, ptr %xfers, i32 0, i32 2
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %reg, ptr %data, align 4
  %arrayidx3 = getelementptr inbounds [2 x %struct.i3c_priv_xfer], ptr %xfers, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %arrayidx3, align 4
  %conv5 = trunc i32 %val_size to i16
  %len7 = getelementptr inbounds [2 x %struct.i3c_priv_xfer], ptr %xfers, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %len7 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv5, ptr %len7, align 2
  %data9 = getelementptr inbounds [2 x %struct.i3c_priv_xfer], ptr %xfers, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %data9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %val, ptr %data9, align 4
  %call10 = call i32 @i3c_device_do_priv_xfers(ptr noundef %call, ptr noundef nonnull %xfers, i32 noundef 2) #3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xfers) #3
  ret i32 %call10
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_to_i3cdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i3c_device_do_priv_xfers(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @__ksymtab___devm_regmap_init_i3c, !1, !"__ksymtab___devm_regmap_init_i3c", i1 false, i1 false}
!1 = !{!"../drivers/base/regmap/regmap-i3c.c", i32 56, i32 1}
!2 = !{ptr @__UNIQUE_ID_author288, !3, !"__UNIQUE_ID_author288", i1 false, i1 false}
!3 = !{!"../drivers/base/regmap/regmap-i3c.c", i32 58, i32 1}
!4 = !{ptr @__UNIQUE_ID_description289, !5, !"__UNIQUE_ID_description289", i1 false, i1 false}
!5 = !{!"../drivers/base/regmap/regmap-i3c.c", i32 59, i32 1}
!6 = !{ptr @__UNIQUE_ID_file290, !7, !"__UNIQUE_ID_file290", i1 false, i1 false}
!7 = !{!"../drivers/base/regmap/regmap-i3c.c", i32 60, i32 1}
!8 = !{ptr @__UNIQUE_ID_license291, !7, !"__UNIQUE_ID_license291", i1 false, i1 false}
!9 = !{ptr @regmap_i3c, !10, !"regmap_i3c", i1 false, i1 false}
!10 = !{!"../drivers/base/regmap/regmap-i3c.c", i32 43, i32 26}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
