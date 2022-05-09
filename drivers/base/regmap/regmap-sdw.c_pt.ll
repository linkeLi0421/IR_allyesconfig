; ModuleID = '/llk/IR_all_yes/drivers/base/regmap/regmap-sdw.c_pt.bc'
source_filename = "../drivers/base/regmap/regmap-sdw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__regmap_init_sdw\22, \22a\22\09"
module asm "\09.weak\09__crc___regmap_init_sdw\09\09\09\09"
module asm "\09.long\09__crc___regmap_init_sdw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___regmap_init_sdw:\09\09\09\09\09"
module asm "\09.asciz \09\22__regmap_init_sdw\22\09\09\09\09\09"
module asm "__kstrtabns___regmap_init_sdw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__devm_regmap_init_sdw\22, \22a\22\09"
module asm "\09.weak\09__crc___devm_regmap_init_sdw\09\09\09\09"
module asm "\09.long\09__crc___devm_regmap_init_sdw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_regmap_init_sdw:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_regmap_init_sdw\22\09\09\09\09\09"
module asm "__kstrtabns___devm_regmap_init_sdw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.sdw_slave = type { %struct.sdw_slave_id, %struct.device, i32, ptr, ptr, %struct.sdw_slave_prop, ptr, %struct.list_head, [15 x %struct.completion], [15 x i32], i16, i16, i8, %struct.completion, %struct.completion, %struct.completion, i32, i8, i8 }
%struct.sdw_slave_id = type { i16, i16, i8, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.sdw_slave_prop = type { i32, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i32, i8, i32, i32, i32, ptr, ptr, ptr, i8, i32, i8 }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }

@regmap_sdw = internal global { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr null, ptr null, ptr null, ptr @regmap_sdw_write, ptr null, ptr null, ptr @regmap_sdw_read, ptr null, ptr null, i8 0, i32 2, i32 2, i32 0, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__kstrtab___regmap_init_sdw = external dso_local constant [0 x i8], align 1
@__kstrtabns___regmap_init_sdw = external dso_local constant [0 x i8], align 1
@__ksymtab___regmap_init_sdw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__regmap_init_sdw to i32), ptr @__kstrtab___regmap_init_sdw, ptr @__kstrtabns___regmap_init_sdw }, section "___ksymtab_gpl+__regmap_init_sdw", align 4
@__kstrtab___devm_regmap_init_sdw = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_regmap_init_sdw = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_regmap_init_sdw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_regmap_init_sdw to i32), ptr @__kstrtab___devm_regmap_init_sdw, ptr @__kstrtabns___devm_regmap_init_sdw }, section "___ksymtab_gpl+__devm_regmap_init_sdw", align 4
@__UNIQUE_ID_description210 = internal constant [47 x i8] c"regmap_sdw.description=Regmap SoundWire Module\00", section ".modinfo", align 1
@__UNIQUE_ID_file211 = internal constant [47 x i8] c"regmap_sdw.file=drivers/base/regmap/regmap-sdw\00", section ".modinfo", align 1
@__UNIQUE_ID_license212 = internal constant [26 x i8] c"regmap_sdw.license=GPL v2\00", section ".modinfo", align 1
@___asan_gen_.1 = private unnamed_addr constant [11 x i8] c"regmap_sdw\00", align 1
@___asan_gen_.2 = private constant [36 x i8] c"../drivers/base/regmap/regmap-sdw.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 33, i32 26 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description210, ptr @__UNIQUE_ID_file211, ptr @__UNIQUE_ID_license212, ptr @__ksymtab___devm_regmap_init_sdw, ptr @__ksymtab___regmap_init_sdw, ptr @regmap_sdw], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_sdw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__regmap_init_sdw(ptr noundef %sdw, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %val_bits.i = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 4
  %0 = ptrtoint ptr %val_bits.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %val_bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 8
  br i1 %cmp.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %reg_bits.i = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 1
  %2 = ptrtoint ptr %reg_bits.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp1.not.i = icmp eq i32 %3, 32
  br i1 %cmp1.not.i, label %if.end3.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %pad_bits.i = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 3
  %4 = ptrtoint ptr %pad_bits.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad_bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4.not.i = icmp eq i32 %5, 0
  br i1 %cmp4.not.i, label %if.end, label %if.end3.i.cleanup_crit_edge

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #4
  %dev = getelementptr inbounds %struct.sdw_slave, ptr %sdw, i32 0, i32 1
  %call3 = tail call ptr @__regmap_init(ptr noundef %dev, ptr noundef nonnull @regmap_sdw, ptr noundef %dev, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end3.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call3, %if.end ], [ inttoptr (i32 -524 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -524 to ptr), %if.end.i.cleanup_crit_edge ], [ inttoptr (i32 -524 to ptr), %if.end3.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__devm_regmap_init_sdw(ptr noundef %sdw, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %val_bits.i = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 4
  %0 = ptrtoint ptr %val_bits.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %val_bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 8
  br i1 %cmp.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %reg_bits.i = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 1
  %2 = ptrtoint ptr %reg_bits.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp1.not.i = icmp eq i32 %3, 32
  br i1 %cmp1.not.i, label %if.end3.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %pad_bits.i = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 3
  %4 = ptrtoint ptr %pad_bits.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad_bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4.not.i = icmp eq i32 %5, 0
  br i1 %cmp4.not.i, label %if.end, label %if.end3.i.cleanup_crit_edge

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #4
  %dev = getelementptr inbounds %struct.sdw_slave, ptr %sdw, i32 0, i32 1
  %call3 = tail call ptr @__devm_regmap_init(ptr noundef %dev, ptr noundef nonnull @regmap_sdw, ptr noundef %dev, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end3.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call3, %if.end ], [ inttoptr (i32 -524 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -524 to ptr), %if.end.i.cleanup_crit_edge ], [ inttoptr (i32 -524 to ptr), %if.end3.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_sdw_write(ptr noundef %context, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %context, i32 -8
  %conv = trunc i32 %val to i8
  %call = tail call i32 @sdw_write_no_pm(ptr noundef %add.ptr, i32 noundef %reg, i8 noundef zeroext %conv) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_sdw_read(ptr noundef %context, i32 noundef %reg, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %context, i32 -8
  %call = tail call i32 @sdw_read_no_pm(ptr noundef %add.ptr, i32 noundef %reg) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_write_no_pm(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_read_no_pm(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @__ksymtab___regmap_init_sdw, !1, !"__ksymtab___regmap_init_sdw", i1 false, i1 false}
!1 = !{!"../drivers/base/regmap/regmap-sdw.c", i32 70, i32 1}
!2 = !{ptr @__ksymtab___devm_regmap_init_sdw, !3, !"__ksymtab___devm_regmap_init_sdw", i1 false, i1 false}
!3 = !{!"../drivers/base/regmap/regmap-sdw.c", i32 86, i32 1}
!4 = !{ptr @__UNIQUE_ID_description210, !5, !"__UNIQUE_ID_description210", i1 false, i1 false}
!5 = !{!"../drivers/base/regmap/regmap-sdw.c", i32 88, i32 1}
!6 = !{ptr @__UNIQUE_ID_file211, !7, !"__UNIQUE_ID_file211", i1 false, i1 false}
!7 = !{!"../drivers/base/regmap/regmap-sdw.c", i32 89, i32 1}
!8 = !{ptr @__UNIQUE_ID_license212, !7, !"__UNIQUE_ID_license212", i1 false, i1 false}
!9 = !{ptr @regmap_sdw, !10, !"regmap_sdw", i1 false, i1 false}
!10 = !{!"../drivers/base/regmap/regmap-sdw.c", i32 33, i32 26}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
