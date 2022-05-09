; ModuleID = '/llk/IR_all_yes/drivers/base/regmap/regmap-w1.c_pt.bc'
source_filename = "../drivers/base/regmap/regmap-w1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__regmap_init_w1\22, \22a\22\09"
module asm "\09.weak\09__crc___regmap_init_w1\09\09\09\09"
module asm "\09.long\09__crc___regmap_init_w1\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___regmap_init_w1:\09\09\09\09\09"
module asm "\09.asciz \09\22__regmap_init_w1\22\09\09\09\09\09"
module asm "__kstrtabns___regmap_init_w1:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__devm_regmap_init_w1\22, \22a\22\09"
module asm "\09.weak\09__crc___devm_regmap_init_w1\09\09\09\09"
module asm "\09.long\09__crc___devm_regmap_init_w1\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_regmap_init_w1:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_regmap_init_w1\22\09\09\09\09\09"
module asm "__kstrtabns___devm_regmap_init_w1:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.w1_master = type { %struct.list_head, ptr, [32 x i8], %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i64, %struct.atomic_t, ptr, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, ptr, %struct.device, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }

@__kstrtab___regmap_init_w1 = external dso_local constant [0 x i8], align 1
@__kstrtabns___regmap_init_w1 = external dso_local constant [0 x i8], align 1
@__ksymtab___regmap_init_w1 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__regmap_init_w1 to i32), ptr @__kstrtab___regmap_init_w1, ptr @__kstrtabns___regmap_init_w1 }, section "___ksymtab_gpl+__regmap_init_w1", align 4
@__kstrtab___devm_regmap_init_w1 = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_regmap_init_w1 = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_regmap_init_w1 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_regmap_init_w1 to i32), ptr @__kstrtab___devm_regmap_init_w1, ptr @__kstrtabns___devm_regmap_init_w1 }, section "___ksymtab_gpl+__devm_regmap_init_w1", align 4
@__UNIQUE_ID_file210 = internal constant [45 x i8] c"regmap_w1.file=drivers/base/regmap/regmap-w1\00", section ".modinfo", align 1
@__UNIQUE_ID_license211 = internal constant [22 x i8] c"regmap_w1.license=GPL\00", section ".modinfo", align 1
@regmap_w1_bus_a8_v8 = internal global { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr null, ptr null, ptr null, ptr @w1_reg_a8_v8_write, ptr null, ptr null, ptr @w1_reg_a8_v8_read, ptr null, ptr null, i8 0, i32 0, i32 0, i32 0, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@regmap_w1_bus_a8_v16 = internal global { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr null, ptr null, ptr null, ptr @w1_reg_a8_v16_write, ptr null, ptr null, ptr @w1_reg_a8_v16_read, ptr null, ptr null, i8 0, i32 0, i32 0, i32 0, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@regmap_w1_bus_a16_v16 = internal global { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr null, ptr null, ptr null, ptr @w1_reg_a16_v16_write, ptr null, ptr null, ptr @w1_reg_a16_v16_read, ptr null, ptr null, i8 0, i32 0, i32 0, i32 0, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 16]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 16]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 16]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 16]
@___asan_gen_.4 = private unnamed_addr constant [20 x i8] c"regmap_w1_bus_a8_v8\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 175, i32 26 }
@___asan_gen_.7 = private unnamed_addr constant [21 x i8] c"regmap_w1_bus_a8_v16\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 180, i32 26 }
@___asan_gen_.10 = private unnamed_addr constant [22 x i8] c"regmap_w1_bus_a16_v16\00", align 1
@___asan_gen_.11 = private constant [35 x i8] c"../drivers/base/regmap/regmap-w1.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 185, i32 26 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_file210, ptr @__UNIQUE_ID_license211, ptr @__ksymtab___devm_regmap_init_w1, ptr @__ksymtab___regmap_init_w1, ptr @regmap_w1_bus_a8_v8, ptr @regmap_w1_bus_a8_v16, ptr @regmap_w1_bus_a16_v16], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_w1_bus_a8_v8 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_w1_bus_a8_v16 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_w1_bus_a16_v16 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__regmap_init_w1(ptr noundef %w1_dev, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_bits.i = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 1
  %0 = ptrtoint ptr %reg_bits.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_bits.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 8, label %land.lhs.true.i
    i32 16, label %land.lhs.true11.i
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %val_bits.i = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 4
  %3 = ptrtoint ptr %val_bits.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val_bits.i, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %4, label %land.lhs.true.i.cleanup_crit_edge [
    i32 8, label %land.lhs.true.i.regmap_get_w1_bus.exit_crit_edge
    i32 16, label %regmap_get_w1_bus.exit.fold.split
  ]

land.lhs.true.i.regmap_get_w1_bus.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %regmap_get_w1_bus.exit

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

land.lhs.true11.i:                                ; preds = %entry
  %val_bits12.i = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 4
  %6 = ptrtoint ptr %val_bits12.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val_bits12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp13.i = icmp eq i32 %7, 16
  br i1 %cmp13.i, label %land.lhs.true11.i.regmap_get_w1_bus.exit_crit_edge, label %land.lhs.true11.i.cleanup_crit_edge

land.lhs.true11.i.cleanup_crit_edge:              ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

land.lhs.true11.i.regmap_get_w1_bus.exit_crit_edge: ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %regmap_get_w1_bus.exit

regmap_get_w1_bus.exit.fold.split:                ; preds = %land.lhs.true.i
  br i1 icmp ult (ptr inttoptr (i32 -4096 to ptr), ptr @regmap_w1_bus_a8_v16), label %regmap_get_w1_bus.exit.fold.split.cleanup_crit_edge, label %regmap_get_w1_bus.exit.fold.split.if.end_crit_edge

regmap_get_w1_bus.exit.fold.split.if.end_crit_edge: ; preds = %regmap_get_w1_bus.exit.fold.split
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

regmap_get_w1_bus.exit.fold.split.cleanup_crit_edge: ; preds = %regmap_get_w1_bus.exit.fold.split
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

regmap_get_w1_bus.exit:                           ; preds = %land.lhs.true11.i.regmap_get_w1_bus.exit_crit_edge, %land.lhs.true.i.regmap_get_w1_bus.exit_crit_edge
  %cmp.i = phi i1 [ icmp ult (ptr inttoptr (i32 -4096 to ptr), ptr @regmap_w1_bus_a8_v8), %land.lhs.true.i.regmap_get_w1_bus.exit_crit_edge ], [ icmp ult (ptr inttoptr (i32 -4096 to ptr), ptr @regmap_w1_bus_a16_v16), %land.lhs.true11.i.regmap_get_w1_bus.exit_crit_edge ]
  %retval.0.i = phi ptr [ @regmap_w1_bus_a8_v8, %land.lhs.true.i.regmap_get_w1_bus.exit_crit_edge ], [ @regmap_w1_bus_a16_v16, %land.lhs.true11.i.regmap_get_w1_bus.exit_crit_edge ]
  br i1 %cmp.i, label %regmap_get_w1_bus.exit.cleanup_crit_edge, label %regmap_get_w1_bus.exit.if.end_crit_edge

regmap_get_w1_bus.exit.if.end_crit_edge:          ; preds = %regmap_get_w1_bus.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

regmap_get_w1_bus.exit.cleanup_crit_edge:         ; preds = %regmap_get_w1_bus.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %regmap_get_w1_bus.exit.if.end_crit_edge, %regmap_get_w1_bus.exit.fold.split.if.end_crit_edge
  %retval.0.i12 = phi ptr [ @regmap_w1_bus_a8_v16, %regmap_get_w1_bus.exit.fold.split.if.end_crit_edge ], [ %retval.0.i, %regmap_get_w1_bus.exit.if.end_crit_edge ]
  %call3 = tail call ptr @__regmap_init(ptr noundef %w1_dev, ptr noundef nonnull %retval.0.i12, ptr noundef %w1_dev, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %regmap_get_w1_bus.exit.cleanup_crit_edge, %regmap_get_w1_bus.exit.fold.split.cleanup_crit_edge, %land.lhs.true11.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call3, %if.end ], [ %retval.0.i, %regmap_get_w1_bus.exit.cleanup_crit_edge ], [ inttoptr (i32 -524 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -524 to ptr), %land.lhs.true11.i.cleanup_crit_edge ], [ inttoptr (i32 -524 to ptr), %land.lhs.true.i.cleanup_crit_edge ], [ @regmap_w1_bus_a8_v16, %regmap_get_w1_bus.exit.fold.split.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__devm_regmap_init_w1(ptr noundef %w1_dev, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_bits.i = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 1
  %0 = ptrtoint ptr %reg_bits.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_bits.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 8, label %land.lhs.true.i
    i32 16, label %land.lhs.true11.i
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %val_bits.i = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 4
  %3 = ptrtoint ptr %val_bits.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val_bits.i, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %4, label %land.lhs.true.i.cleanup_crit_edge [
    i32 8, label %land.lhs.true.i.regmap_get_w1_bus.exit_crit_edge
    i32 16, label %regmap_get_w1_bus.exit.fold.split
  ]

land.lhs.true.i.regmap_get_w1_bus.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %regmap_get_w1_bus.exit

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

land.lhs.true11.i:                                ; preds = %entry
  %val_bits12.i = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 4
  %6 = ptrtoint ptr %val_bits12.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val_bits12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp13.i = icmp eq i32 %7, 16
  br i1 %cmp13.i, label %land.lhs.true11.i.regmap_get_w1_bus.exit_crit_edge, label %land.lhs.true11.i.cleanup_crit_edge

land.lhs.true11.i.cleanup_crit_edge:              ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

land.lhs.true11.i.regmap_get_w1_bus.exit_crit_edge: ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %regmap_get_w1_bus.exit

regmap_get_w1_bus.exit.fold.split:                ; preds = %land.lhs.true.i
  br i1 icmp ult (ptr inttoptr (i32 -4096 to ptr), ptr @regmap_w1_bus_a8_v16), label %regmap_get_w1_bus.exit.fold.split.cleanup_crit_edge, label %regmap_get_w1_bus.exit.fold.split.if.end_crit_edge

regmap_get_w1_bus.exit.fold.split.if.end_crit_edge: ; preds = %regmap_get_w1_bus.exit.fold.split
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

regmap_get_w1_bus.exit.fold.split.cleanup_crit_edge: ; preds = %regmap_get_w1_bus.exit.fold.split
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

regmap_get_w1_bus.exit:                           ; preds = %land.lhs.true11.i.regmap_get_w1_bus.exit_crit_edge, %land.lhs.true.i.regmap_get_w1_bus.exit_crit_edge
  %cmp.i = phi i1 [ icmp ult (ptr inttoptr (i32 -4096 to ptr), ptr @regmap_w1_bus_a8_v8), %land.lhs.true.i.regmap_get_w1_bus.exit_crit_edge ], [ icmp ult (ptr inttoptr (i32 -4096 to ptr), ptr @regmap_w1_bus_a16_v16), %land.lhs.true11.i.regmap_get_w1_bus.exit_crit_edge ]
  %retval.0.i = phi ptr [ @regmap_w1_bus_a8_v8, %land.lhs.true.i.regmap_get_w1_bus.exit_crit_edge ], [ @regmap_w1_bus_a16_v16, %land.lhs.true11.i.regmap_get_w1_bus.exit_crit_edge ]
  br i1 %cmp.i, label %regmap_get_w1_bus.exit.cleanup_crit_edge, label %regmap_get_w1_bus.exit.if.end_crit_edge

regmap_get_w1_bus.exit.if.end_crit_edge:          ; preds = %regmap_get_w1_bus.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

regmap_get_w1_bus.exit.cleanup_crit_edge:         ; preds = %regmap_get_w1_bus.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %regmap_get_w1_bus.exit.if.end_crit_edge, %regmap_get_w1_bus.exit.fold.split.if.end_crit_edge
  %retval.0.i12 = phi ptr [ @regmap_w1_bus_a8_v16, %regmap_get_w1_bus.exit.fold.split.if.end_crit_edge ], [ %retval.0.i, %regmap_get_w1_bus.exit.if.end_crit_edge ]
  %call3 = tail call ptr @__devm_regmap_init(ptr noundef %w1_dev, ptr noundef nonnull %retval.0.i12, ptr noundef %w1_dev, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %regmap_get_w1_bus.exit.cleanup_crit_edge, %regmap_get_w1_bus.exit.fold.split.cleanup_crit_edge, %land.lhs.true11.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call3, %if.end ], [ %retval.0.i, %regmap_get_w1_bus.exit.cleanup_crit_edge ], [ inttoptr (i32 -524 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -524 to ptr), %land.lhs.true11.i.cleanup_crit_edge ], [ inttoptr (i32 -524 to ptr), %land.lhs.true.i.cleanup_crit_edge ], [ @regmap_w1_bus_a8_v16, %regmap_get_w1_bus.exit.fold.split.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_reg_a8_v8_write(ptr noundef %context, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %reg)
  %cmp = icmp ugt i32 %reg, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %context, i32 -80
  %master = getelementptr i8, ptr %context, i32 -12
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %1, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex, i32 noundef 0) #2
  %call = tail call i32 @w1_reset_select_slave(ptr noundef %add.ptr) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end6

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  tail call void @w1_write_8(ptr noundef %3, i8 noundef zeroext 108) #2
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %conv = trunc i32 %reg to i8
  tail call void @w1_write_8(ptr noundef %5, i8 noundef zeroext %conv) #2
  %6 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master, align 4
  %conv5 = trunc i32 %val to i8
  tail call void @w1_write_8(ptr noundef %7, i8 noundef zeroext %conv5) #2
  br label %if.end6

if.end6:                                          ; preds = %if.then1, %if.end.if.end6_crit_edge
  %ret.0 = phi i32 [ 0, %if.then1 ], [ -19, %if.end.if.end6_crit_edge ]
  %8 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %master, align 4
  %bus_mutex8 = getelementptr inbounds %struct.w1_master, ptr %9, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %bus_mutex8) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end6 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_reg_a8_v8_read(ptr noundef %context, i32 noundef %reg, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %reg)
  %cmp = icmp ugt i32 %reg, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %context, i32 -80
  %master = getelementptr i8, ptr %context, i32 -12
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %1, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex, i32 noundef 0) #2
  %call = tail call i32 @w1_reset_select_slave(ptr noundef %add.ptr) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  tail call void @w1_write_8(ptr noundef %3, i8 noundef zeroext 105) #2
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %conv = trunc i32 %reg to i8
  tail call void @w1_write_8(ptr noundef %5, i8 noundef zeroext %conv) #2
  %6 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master, align 4
  %call5 = tail call zeroext i8 @w1_read_8(ptr noundef %7) #2
  %conv6 = zext i8 %call5 to i32
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv6, ptr %val, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then1, %if.end.if.end7_crit_edge
  %ret.0 = phi i32 [ 0, %if.then1 ], [ -19, %if.end.if.end7_crit_edge ]
  %9 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %master, align 4
  %bus_mutex9 = getelementptr inbounds %struct.w1_master, ptr %10, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %bus_mutex9) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_reset_select_slave(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_write_8(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @w1_read_8(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_reg_a8_v16_write(ptr noundef %context, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %reg)
  %cmp = icmp ugt i32 %reg, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %context, i32 -80
  %master = getelementptr i8, ptr %context, i32 -12
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %1, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex, i32 noundef 0) #2
  %call = tail call i32 @w1_reset_select_slave(ptr noundef %add.ptr) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end9

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  tail call void @w1_write_8(ptr noundef %3, i8 noundef zeroext 108) #2
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %conv = trunc i32 %reg to i8
  tail call void @w1_write_8(ptr noundef %5, i8 noundef zeroext %conv) #2
  %6 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master, align 4
  %conv5 = trunc i32 %val to i8
  tail call void @w1_write_8(ptr noundef %7, i8 noundef zeroext %conv5) #2
  %8 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %master, align 4
  %shr = lshr i32 %val, 8
  %conv8 = trunc i32 %shr to i8
  tail call void @w1_write_8(ptr noundef %9, i8 noundef zeroext %conv8) #2
  br label %if.end9

if.end9:                                          ; preds = %if.then1, %if.end.if.end9_crit_edge
  %ret.0 = phi i32 [ 0, %if.then1 ], [ -19, %if.end.if.end9_crit_edge ]
  %10 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %master, align 4
  %bus_mutex11 = getelementptr inbounds %struct.w1_master, ptr %11, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %bus_mutex11) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end9 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_reg_a8_v16_read(ptr noundef %context, i32 noundef %reg, ptr nocapture noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %reg)
  %cmp = icmp ugt i32 %reg, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %context, i32 -80
  %master = getelementptr i8, ptr %context, i32 -12
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %1, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex, i32 noundef 0) #2
  %call = tail call i32 @w1_reset_select_slave(ptr noundef %add.ptr) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end10

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  tail call void @w1_write_8(ptr noundef %3, i8 noundef zeroext 105) #2
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %conv = trunc i32 %reg to i8
  tail call void @w1_write_8(ptr noundef %5, i8 noundef zeroext %conv) #2
  %6 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master, align 4
  %call5 = tail call zeroext i8 @w1_read_8(ptr noundef %7) #2
  %conv6 = zext i8 %call5 to i32
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv6, ptr %val, align 4
  %9 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %master, align 4
  %call8 = tail call zeroext i8 @w1_read_8(ptr noundef %10) #2
  %conv9 = zext i8 %call8 to i32
  %shl = shl nuw nsw i32 %conv9, 8
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %or = or i32 %shl, %12
  store i32 %or, ptr %val, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then1, %if.end.if.end10_crit_edge
  %ret.0 = phi i32 [ 0, %if.then1 ], [ -19, %if.end.if.end10_crit_edge ]
  %13 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %master, align 4
  %bus_mutex12 = getelementptr inbounds %struct.w1_master, ptr %14, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %bus_mutex12) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end10 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_reg_a16_v16_write(ptr noundef %context, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %reg)
  %cmp = icmp ugt i32 %reg, 65535
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %context, i32 -80
  %master = getelementptr i8, ptr %context, i32 -12
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %1, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex, i32 noundef 0) #2
  %call = tail call i32 @w1_reset_select_slave(ptr noundef %add.ptr) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  tail call void @w1_write_8(ptr noundef %3, i8 noundef zeroext 108) #2
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %conv = trunc i32 %reg to i8
  tail call void @w1_write_8(ptr noundef %5, i8 noundef zeroext %conv) #2
  %6 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master, align 4
  %shr = lshr i32 %reg, 8
  %conv6 = trunc i32 %shr to i8
  tail call void @w1_write_8(ptr noundef %7, i8 noundef zeroext %conv6) #2
  %8 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %master, align 4
  %conv9 = trunc i32 %val to i8
  tail call void @w1_write_8(ptr noundef %9, i8 noundef zeroext %conv9) #2
  %10 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %master, align 4
  %shr11 = lshr i32 %val, 8
  %conv13 = trunc i32 %shr11 to i8
  tail call void @w1_write_8(ptr noundef %11, i8 noundef zeroext %conv13) #2
  br label %if.end14

if.end14:                                         ; preds = %if.then1, %if.end.if.end14_crit_edge
  %ret.0 = phi i32 [ 0, %if.then1 ], [ -19, %if.end.if.end14_crit_edge ]
  %12 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master, align 4
  %bus_mutex16 = getelementptr inbounds %struct.w1_master, ptr %13, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %bus_mutex16) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end14 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_reg_a16_v16_read(ptr noundef %context, i32 noundef %reg, ptr nocapture noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %reg)
  %cmp = icmp ugt i32 %reg, 65535
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %context, i32 -80
  %master = getelementptr i8, ptr %context, i32 -12
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %1, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex, i32 noundef 0) #2
  %call = tail call i32 @w1_reset_select_slave(ptr noundef %add.ptr) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end13

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  tail call void @w1_write_8(ptr noundef %3, i8 noundef zeroext 105) #2
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %conv = trunc i32 %reg to i8
  tail call void @w1_write_8(ptr noundef %5, i8 noundef zeroext %conv) #2
  %6 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master, align 4
  %shr = lshr i32 %reg, 8
  %conv6 = trunc i32 %shr to i8
  tail call void @w1_write_8(ptr noundef %7, i8 noundef zeroext %conv6) #2
  %8 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %master, align 4
  %call8 = tail call zeroext i8 @w1_read_8(ptr noundef %9) #2
  %conv9 = zext i8 %call8 to i32
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv9, ptr %val, align 4
  %11 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %master, align 4
  %call11 = tail call zeroext i8 @w1_read_8(ptr noundef %12) #2
  %conv12 = zext i8 %call11 to i32
  %shl = shl nuw nsw i32 %conv12, 8
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %or = or i32 %shl, %14
  store i32 %or, ptr %val, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then1, %if.end.if.end13_crit_edge
  %ret.0 = phi i32 [ 0, %if.then1 ], [ -19, %if.end.if.end13_crit_edge ]
  %15 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %master, align 4
  %bus_mutex15 = getelementptr inbounds %struct.w1_master, ptr %16, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %bus_mutex15) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end13 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__ksymtab___regmap_init_w1, !1, !"__ksymtab___regmap_init_w1", i1 false, i1 false}
!1 = !{!"../drivers/base/regmap/regmap-w1.c", i32 219, i32 1}
!2 = !{ptr @__ksymtab___devm_regmap_init_w1, !3, !"__ksymtab___devm_regmap_init_w1", i1 false, i1 false}
!3 = !{!"../drivers/base/regmap/regmap-w1.c", i32 235, i32 1}
!4 = !{ptr @__UNIQUE_ID_file210, !5, !"__UNIQUE_ID_file210", i1 false, i1 false}
!5 = !{!"../drivers/base/regmap/regmap-w1.c", i32 237, i32 1}
!6 = !{ptr @__UNIQUE_ID_license211, !5, !"__UNIQUE_ID_license211", i1 false, i1 false}
!7 = !{ptr @regmap_w1_bus_a8_v8, !8, !"regmap_w1_bus_a8_v8", i1 false, i1 false}
!8 = !{!"../drivers/base/regmap/regmap-w1.c", i32 175, i32 26}
!9 = !{ptr @regmap_w1_bus_a8_v16, !10, !"regmap_w1_bus_a8_v16", i1 false, i1 false}
!10 = !{!"../drivers/base/regmap/regmap-w1.c", i32 180, i32 26}
!11 = !{ptr @regmap_w1_bus_a16_v16, !12, !"regmap_w1_bus_a16_v16", i1 false, i1 false}
!12 = !{!"../drivers/base/regmap/regmap-w1.c", i32 185, i32 26}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
