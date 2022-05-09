; ModuleID = '/llk/IR_all_yes/drivers/clk/qcom/clk-regmap.c_pt.bc'
source_filename = "../drivers/clk/qcom/clk-regmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+clk_is_enabled_regmap\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_is_enabled_regmap\09\09\09\09"
module asm "\09.long\09__crc_clk_is_enabled_regmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_is_enabled_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_is_enabled_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_clk_is_enabled_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+clk_enable_regmap\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_enable_regmap\09\09\09\09"
module asm "\09.long\09__crc_clk_enable_regmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_enable_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_enable_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_clk_enable_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+clk_disable_regmap\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_disable_regmap\09\09\09\09"
module asm "\09.long\09__crc_clk_disable_regmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_disable_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_disable_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_clk_disable_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_clk_register_regmap\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_clk_register_regmap\09\09\09\09"
module asm "\09.long\09__crc_devm_clk_register_regmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_clk_register_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_clk_register_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_devm_clk_register_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_regmap = type { %struct.clk_hw, ptr, i32, i32, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
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
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }

@__kstrtab_clk_is_enabled_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_is_enabled_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_is_enabled_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_is_enabled_regmap to i32), ptr @__kstrtab_clk_is_enabled_regmap, ptr @__kstrtabns_clk_is_enabled_regmap }, section "___ksymtab_gpl+clk_is_enabled_regmap", align 4
@__kstrtab_clk_enable_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_enable_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_enable_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_enable_regmap to i32), ptr @__kstrtab_clk_enable_regmap, ptr @__kstrtabns_clk_enable_regmap }, section "___ksymtab_gpl+clk_enable_regmap", align 4
@__kstrtab_clk_disable_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_disable_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_disable_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_disable_regmap to i32), ptr @__kstrtab_clk_disable_regmap, ptr @__kstrtabns_clk_disable_regmap }, section "___ksymtab_gpl+clk_disable_regmap", align 4
@__kstrtab_devm_clk_register_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_clk_register_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_clk_register_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_clk_register_regmap to i32), ptr @__kstrtab_devm_clk_register_regmap, ptr @__kstrtabns_devm_clk_register_regmap }, section "___ksymtab_gpl+devm_clk_register_regmap", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_clk_disable_regmap, ptr @__ksymtab_clk_enable_regmap, ptr @__ksymtab_clk_is_enabled_regmap, ptr @__ksymtab_devm_clk_register_regmap], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @clk_is_enabled_regmap(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #3
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !17
  %regmap = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %enable_reg = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 2
  %3 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %enable_reg, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %val) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %enable_is_inverted = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 4
  %5 = ptrtoint ptr %enable_is_inverted to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enable_is_inverted, align 4, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %enable_mask4 = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 3
  %9 = ptrtoint ptr %enable_mask4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %enable_mask4, align 4
  %and5 = and i32 %10, %8
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %cmp3 = icmp eq i32 %and5, 0
  %conv = zext i1 %cmp3 to i32
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %cmp6 = icmp ne i32 %and5, 0
  %conv7 = zext i1 %cmp6 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.then2 ], [ %conv7, %if.else ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @clk_enable_regmap(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_is_inverted = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %enable_is_inverted to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enable_is_inverted, align 4, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %enable_mask = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enable_mask, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %3, %if.else ], [ 0, %entry.if.end_crit_edge ]
  %regmap = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %enable_reg = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enable_reg, align 4
  %enable_mask1 = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 3
  %8 = ptrtoint ptr %enable_mask1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %enable_mask1, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clk_disable_regmap(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_is_inverted = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %enable_is_inverted to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enable_is_inverted, align 4, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %enable_mask = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enable_mask, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %val.0 = phi i32 [ %3, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %regmap = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %enable_reg = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enable_reg, align 4
  %enable_mask1 = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 3
  %8 = ptrtoint ptr %enable_mask1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %enable_mask1, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devm_clk_register_regmap(ptr noundef %dev, ptr noundef %rclk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %land.lhs.true

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

land.lhs.true:                                    ; preds = %entry
  %call = tail call ptr @dev_get_regmap(ptr noundef nonnull %dev, ptr noundef null) #3
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %land.lhs.true4.critedge, label %land.lhs.true.if.end10.sink.split_crit_edge

land.lhs.true.if.end10.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10.sink.split

land.lhs.true4.critedge:                          ; preds = %land.lhs.true
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %land.lhs.true4.critedge.if.end10_crit_edge, label %land.lhs.true4.critedge.if.end10.sink.split_crit_edge

land.lhs.true4.critedge.if.end10.sink.split_crit_edge: ; preds = %land.lhs.true4.critedge
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10.sink.split

land.lhs.true4.critedge.if.end10_crit_edge:       ; preds = %land.lhs.true4.critedge
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

if.end10.sink.split:                              ; preds = %land.lhs.true4.critedge.if.end10.sink.split_crit_edge, %land.lhs.true.if.end10.sink.split_crit_edge
  %.sink = phi ptr [ %dev, %land.lhs.true.if.end10.sink.split_crit_edge ], [ %1, %land.lhs.true4.critedge.if.end10.sink.split_crit_edge ]
  %call8 = tail call ptr @dev_get_regmap(ptr noundef nonnull %.sink, ptr noundef null) #3
  %regmap9 = getelementptr inbounds %struct.clk_regmap, ptr %rclk, i32 0, i32 1
  %2 = ptrtoint ptr %regmap9 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call8, ptr %regmap9, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end10.sink.split, %land.lhs.true4.critedge.if.end10_crit_edge, %entry.if.end10_crit_edge
  %call11 = tail call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef %rclk) #3
  ret i32 %call11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @__ksymtab_clk_is_enabled_regmap, !1, !"__ksymtab_clk_is_enabled_regmap", i1 false, i1 false}
!1 = !{!"../drivers/clk/qcom/clk-regmap.c", i32 37, i32 1}
!2 = !{ptr @__ksymtab_clk_enable_regmap, !3, !"__ksymtab_clk_enable_regmap", i1 false, i1 false}
!3 = !{!"../drivers/clk/qcom/clk-regmap.c", i32 61, i32 1}
!4 = !{ptr @__ksymtab_clk_disable_regmap, !5, !"__ksymtab_clk_disable_regmap", i1 false, i1 false}
!5 = !{!"../drivers/clk/qcom/clk-regmap.c", i32 85, i32 1}
!6 = !{ptr @__ksymtab_devm_clk_register_regmap, !7, !"__ksymtab_devm_clk_register_regmap", i1 false, i1 false}
!7 = !{!"../drivers/clk/qcom/clk-regmap.c", i32 106, i32 1}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"auto-init"}
!18 = !{i8 0, i8 2}
