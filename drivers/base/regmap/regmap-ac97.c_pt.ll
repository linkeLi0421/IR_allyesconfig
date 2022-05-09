; ModuleID = '/llk/IR_all_yes/drivers/base/regmap/regmap-ac97.c_pt.bc'
source_filename = "../drivers/base/regmap/regmap-ac97.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+regmap_ac97_default_volatile\22, \22a\22\09"
module asm "\09.weak\09__crc_regmap_ac97_default_volatile\09\09\09\09"
module asm "\09.long\09__crc_regmap_ac97_default_volatile\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_ac97_default_volatile:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_ac97_default_volatile\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_ac97_default_volatile:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__regmap_init_ac97\22, \22a\22\09"
module asm "\09.weak\09__crc___regmap_init_ac97\09\09\09\09"
module asm "\09.long\09__crc___regmap_init_ac97\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___regmap_init_ac97:\09\09\09\09\09"
module asm "\09.asciz \09\22__regmap_init_ac97\22\09\09\09\09\09"
module asm "__kstrtabns___regmap_init_ac97:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__devm_regmap_init_ac97\22, \22a\22\09"
module asm "\09.weak\09__crc___devm_regmap_init_ac97\09\09\09\09"
module asm "\09.long\09__crc___devm_regmap_init_ac97\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_regmap_init_ac97:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_regmap_init_ac97\22\09\09\09\09\09"
module asm "__kstrtabns___devm_regmap_init_ac97:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.74, i8, i8, i32, %struct.delayed_work, %struct.device, ptr, [2 x ptr] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.74 = type { i32, [28 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.snd_ac97_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_regmap_ac97_default_volatile = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_ac97_default_volatile = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_ac97_default_volatile = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_ac97_default_volatile to i32), ptr @__kstrtab_regmap_ac97_default_volatile, ptr @__kstrtabns_regmap_ac97_default_volatile }, section "___ksymtab_gpl+regmap_ac97_default_volatile", align 4
@ac97_regmap_bus = internal constant { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr null, ptr null, ptr null, ptr @regmap_ac97_reg_write, ptr null, ptr null, ptr @regmap_ac97_reg_read, ptr null, ptr null, i8 0, i32 0, i32 0, i32 0, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__kstrtab___regmap_init_ac97 = external dso_local constant [0 x i8], align 1
@__kstrtabns___regmap_init_ac97 = external dso_local constant [0 x i8], align 1
@__ksymtab___regmap_init_ac97 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__regmap_init_ac97 to i32), ptr @__kstrtab___regmap_init_ac97, ptr @__kstrtabns___regmap_init_ac97 }, section "___ksymtab_gpl+__regmap_init_ac97", align 4
@__kstrtab___devm_regmap_init_ac97 = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_regmap_init_ac97 = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_regmap_init_ac97 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_regmap_init_ac97 to i32), ptr @__kstrtab___devm_regmap_init_ac97, ptr @__kstrtabns___devm_regmap_init_ac97 }, section "___ksymtab_gpl+__devm_regmap_init_ac97", align 4
@__UNIQUE_ID_file234 = internal constant [49 x i8] c"regmap_ac97.file=drivers/base/regmap/regmap-ac97\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [27 x i8] c"regmap_ac97.license=GPL v2\00", section ".modinfo", align 1
@__sancov_gen_cov_switch_values = internal global [19 x i64] [i64 17, i64 32, i64 0, i64 36, i64 38, i64 40, i64 42, i64 60, i64 62, i64 84, i64 86, i64 96, i64 98, i64 100, i64 102, i64 104, i64 106, i64 124, i64 126]
@___asan_gen_.1 = private unnamed_addr constant [16 x i8] c"ac97_regmap_bus\00", align 1
@___asan_gen_.2 = private constant [37 x i8] c"../drivers/base/regmap/regmap-ac97.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 64, i32 32 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__ksymtab___devm_regmap_init_ac97, ptr @__ksymtab___regmap_init_ac97, ptr @__ksymtab_regmap_ac97_default_volatile, ptr @ac97_regmap_bus], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac97_regmap_bus to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @regmap_ac97_default_volatile(ptr nocapture readnone %dev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 38, label %entry.return_crit_edge1
    i32 36, label %entry.return_crit_edge2
    i32 40, label %entry.return_crit_edge3
    i32 42, label %entry.return_crit_edge4
    i32 60, label %entry.return_crit_edge5
    i32 62, label %entry.return_crit_edge6
    i32 84, label %entry.return_crit_edge7
    i32 86, label %entry.return_crit_edge8
    i32 124, label %entry.return_crit_edge9
    i32 126, label %entry.return_crit_edge10
    i32 96, label %entry.return_crit_edge11
    i32 98, label %entry.return_crit_edge12
    i32 100, label %entry.return_crit_edge13
    i32 102, label %entry.return_crit_edge14
    i32 104, label %entry.return_crit_edge15
    i32 106, label %entry.return_crit_edge16
  ]

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__regmap_init_ac97(ptr noundef %ac97, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 29
  %call = tail call ptr @__regmap_init(ptr noundef %dev, ptr noundef nonnull @ac97_regmap_bus, ptr noundef %ac97, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #3
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__devm_regmap_init_ac97(ptr noundef %ac97, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 29
  %call = tail call ptr @__devm_regmap_init(ptr noundef %dev, ptr noundef nonnull @ac97_regmap_bus, ptr noundef %ac97, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #3
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_ac97_reg_write(ptr noundef %context, i32 noundef %reg, i32 noundef %val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.snd_ac97, ptr %context, i32 0, i32 3
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %write = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write, align 4
  %conv = trunc i32 %reg to i16
  %conv1 = trunc i32 %val to i16
  tail call void %5(ptr noundef %context, i16 noundef zeroext %conv, i16 noundef zeroext %conv1) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_ac97_reg_read(ptr noundef %context, i32 noundef %reg, ptr nocapture noundef writeonly %val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.snd_ac97, ptr %context, i32 0, i32 3
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %read = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read, align 4
  %conv = trunc i32 %reg to i16
  %call = tail call zeroext i16 %5(ptr noundef %context, i16 noundef zeroext %conv) #3
  %conv1 = zext i16 %call to i32
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv1, ptr %val, align 4
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @__ksymtab_regmap_ac97_default_volatile, !1, !"__ksymtab_regmap_ac97_default_volatile", i1 false, i1 false}
!1 = !{!"../drivers/base/regmap/regmap-ac97.c", i32 42, i32 1}
!2 = !{ptr @__ksymtab___regmap_init_ac97, !3, !"__ksymtab___regmap_init_ac97", i1 false, i1 false}
!3 = !{!"../drivers/base/regmap/regmap-ac97.c", i32 77, i32 1}
!4 = !{ptr @__ksymtab___devm_regmap_init_ac97, !5, !"__ksymtab___devm_regmap_init_ac97", i1 false, i1 false}
!5 = !{!"../drivers/base/regmap/regmap-ac97.c", i32 87, i32 1}
!6 = !{ptr @__UNIQUE_ID_file234, !7, !"__UNIQUE_ID_file234", i1 false, i1 false}
!7 = !{!"../drivers/base/regmap/regmap-ac97.c", i32 89, i32 1}
!8 = !{ptr @__UNIQUE_ID_license235, !7, !"__UNIQUE_ID_license235", i1 false, i1 false}
!9 = !{ptr @ac97_regmap_bus, !10, !"ac97_regmap_bus", i1 false, i1 false}
!10 = !{!"../drivers/base/regmap/regmap-ac97.c", i32 64, i32 32}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
