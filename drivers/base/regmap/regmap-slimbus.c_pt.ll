; ModuleID = '/llk/IR_all_yes/drivers/base/regmap/regmap-slimbus.c_pt.bc'
source_filename = "../drivers/base/regmap/regmap-slimbus.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__regmap_init_slimbus\22, \22a\22\09"
module asm "\09.weak\09__crc___regmap_init_slimbus\09\09\09\09"
module asm "\09.long\09__crc___regmap_init_slimbus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___regmap_init_slimbus:\09\09\09\09\09"
module asm "\09.asciz \09\22__regmap_init_slimbus\22\09\09\09\09\09"
module asm "__kstrtabns___regmap_init_slimbus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__devm_regmap_init_slimbus\22, \22a\22\09"
module asm "\09.weak\09__crc___devm_regmap_init_slimbus\09\09\09\09"
module asm "\09.long\09__crc___devm_regmap_init_slimbus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_regmap_init_slimbus:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_regmap_init_slimbus\22\09\09\09\09\09"
module asm "__kstrtabns___devm_regmap_init_slimbus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }

@__kstrtab___regmap_init_slimbus = external dso_local constant [0 x i8], align 1
@__kstrtabns___regmap_init_slimbus = external dso_local constant [0 x i8], align 1
@__ksymtab___regmap_init_slimbus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__regmap_init_slimbus to i32), ptr @__kstrtab___regmap_init_slimbus, ptr @__kstrtabns___regmap_init_slimbus }, section "___ksymtab_gpl+__regmap_init_slimbus", align 4
@__kstrtab___devm_regmap_init_slimbus = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_regmap_init_slimbus = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_regmap_init_slimbus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_regmap_init_slimbus to i32), ptr @__kstrtab___devm_regmap_init_slimbus, ptr @__kstrtabns___devm_regmap_init_slimbus }, section "___ksymtab_gpl+__devm_regmap_init_slimbus", align 4
@__UNIQUE_ID_file210 = internal constant [55 x i8] c"regmap_slimbus.file=drivers/base/regmap/regmap-slimbus\00", section ".modinfo", align 1
@__UNIQUE_ID_license211 = internal constant [30 x i8] c"regmap_slimbus.license=GPL v2\00", section ".modinfo", align 1
@regmap_slimbus_bus = internal global { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr @regmap_slimbus_write, ptr null, ptr null, ptr null, ptr null, ptr @regmap_slimbus_read, ptr null, ptr null, ptr null, i8 0, i32 2, i32 2, i32 0, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [19 x i8] c"regmap_slimbus_bus\00", align 1
@___asan_gen_.2 = private constant [40 x i8] c"../drivers/base/regmap/regmap-slimbus.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 25, i32 26 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_file210, ptr @__UNIQUE_ID_license211, ptr @__ksymtab___devm_regmap_init_slimbus, ptr @__ksymtab___regmap_init_slimbus, ptr @regmap_slimbus_bus], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_slimbus_bus to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__regmap_init_slimbus(ptr noundef %slimbus, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %val_bits.i = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 4
  %0 = ptrtoint ptr %val_bits.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %val_bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp.i = icmp eq i32 %1, 8
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %reg_bits.i = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 1
  %2 = ptrtoint ptr %reg_bits.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp1.i = icmp ne i32 %3, 16
  %brmerge = or i1 %cmp1.i, icmp ult (ptr inttoptr (i32 -4096 to ptr), ptr @regmap_slimbus_bus)
  %.mux = select i1 %cmp1.i, ptr inttoptr (i32 -524 to ptr), ptr @regmap_slimbus_bus
  br i1 %brmerge, label %land.lhs.true.i.cleanup_crit_edge, label %if.end

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  %call4 = tail call ptr @__regmap_init(ptr noundef %slimbus, ptr noundef nonnull @regmap_slimbus_bus, ptr noundef %slimbus, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call4, %if.end ], [ inttoptr (i32 -524 to ptr), %entry.cleanup_crit_edge ], [ %.mux, %land.lhs.true.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__devm_regmap_init_slimbus(ptr noundef %slimbus, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #0 align 64 {
entry:
  %slimbus.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %slimbus.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %slimbus, ptr %slimbus.addr, align 4
  %val_bits.i = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 4
  %1 = ptrtoint ptr %val_bits.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val_bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %2)
  %cmp.i = icmp eq i32 %2, 8
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %reg_bits.i = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 1
  %3 = ptrtoint ptr %reg_bits.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg_bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %4)
  %cmp1.i = icmp ne i32 %4, 16
  %brmerge = or i1 %cmp1.i, icmp ult (ptr inttoptr (i32 -4096 to ptr), ptr @regmap_slimbus_bus)
  %.mux = select i1 %cmp1.i, ptr inttoptr (i32 -524 to ptr), ptr @regmap_slimbus_bus
  br i1 %brmerge, label %land.lhs.true.i.cleanup_crit_edge, label %if.end

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  %call3 = call ptr @__devm_regmap_init(ptr noundef %slimbus, ptr noundef nonnull @regmap_slimbus_bus, ptr noundef nonnull %slimbus.addr, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call3, %if.end ], [ inttoptr (i32 -524 to ptr), %entry.cleanup_crit_edge ], [ %.mux, %land.lhs.true.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_slimbus_write(ptr noundef %context, ptr noundef %data, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %data, align 2
  %conv = zext i16 %1 to i32
  %sub = add i32 %count, -2
  %add.ptr = getelementptr i8, ptr %data, i32 2
  %call = tail call i32 @slim_write(ptr noundef %context, i32 noundef %conv, i32 noundef %sub, ptr noundef %add.ptr) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_slimbus_read(ptr noundef %context, ptr nocapture noundef readonly %reg, i32 noundef %reg_size, ptr noundef %val, i32 noundef %val_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %reg, align 2
  %conv = zext i16 %1 to i32
  %call = tail call i32 @slim_read(ptr noundef %context, i32 noundef %conv, i32 noundef %val_size, ptr noundef %val) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @slim_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @slim_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !4, !6, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @__ksymtab___regmap_init_slimbus, !1, !"__ksymtab___regmap_init_slimbus", i1 false, i1 false}
!1 = !{!"../drivers/base/regmap/regmap-slimbus.c", i32 54, i32 1}
!2 = !{ptr @__ksymtab___devm_regmap_init_slimbus, !3, !"__ksymtab___devm_regmap_init_slimbus", i1 false, i1 false}
!3 = !{!"../drivers/base/regmap/regmap-slimbus.c", i32 69, i32 1}
!4 = !{ptr @__UNIQUE_ID_file210, !5, !"__UNIQUE_ID_file210", i1 false, i1 false}
!5 = !{!"../drivers/base/regmap/regmap-slimbus.c", i32 71, i32 1}
!6 = !{ptr @__UNIQUE_ID_license211, !5, !"__UNIQUE_ID_license211", i1 false, i1 false}
!7 = !{ptr @regmap_slimbus_bus, !8, !"regmap_slimbus_bus", i1 false, i1 false}
!8 = !{!"../drivers/base/regmap/regmap-slimbus.c", i32 25, i32 26}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
