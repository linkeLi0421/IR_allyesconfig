; ModuleID = '/llk/IR_all_yes/drivers/clk/visconti/reset.c_pt.bc'
source_filename = "../drivers/clk/visconti/reset.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.visconti_reset = type { %struct.reset_controller_dev, ptr, ptr, ptr }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.visconti_reset_data = type { i32, i32, i8 }
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

@visconti_reset_ops = dso_local constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr @visconti_reset_reset, ptr @visconti_reset_assert, ptr @visconti_reset_deassert, ptr @visconti_reset_status }, [16 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.1 = private unnamed_addr constant [19 x i8] c"visconti_reset_ops\00", align 1
@___asan_gen_.2 = private constant [32 x i8] c"../drivers/clk/visconti/reset.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 79, i32 32 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @visconti_reset_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @visconti_reset_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @visconti_reset_reset(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %resets.i = getelementptr inbounds %struct.visconti_reset, ptr %rcdev, i32 0, i32 2
  %0 = ptrtoint ptr %resets.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resets.i, align 4
  %arrayidx.i = getelementptr %struct.visconti_reset_data, ptr %1, i32 %id
  %rs_idx.i = getelementptr %struct.visconti_reset_data, ptr %1, i32 %id, i32 2
  %2 = ptrtoint ptr %rs_idx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rs_idx.i, align 4
  %conv.i = zext i8 %3 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %lock.i = getelementptr inbounds %struct.visconti_reset, ptr %rcdev, i32 0, i32 3
  %4 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock.i, align 4
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #3
  %regmap.i = getelementptr inbounds %struct.visconti_reset, ptr %rcdev, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %9, i32 noundef %shl.i, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %10 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lock.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %call4.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #3
  %13 = ptrtoint ptr %resets.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %resets.i, align 4
  %rs_idx.i5 = getelementptr %struct.visconti_reset_data, ptr %14, i32 %id, i32 2
  %15 = ptrtoint ptr %rs_idx.i5 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %rs_idx.i5, align 4
  %conv.i6 = zext i8 %16 to i32
  %shl.i7 = shl nuw i32 1, %conv.i6
  %17 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lock.i, align 4
  %call4.i9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #3
  %19 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i, align 4
  %rsoff_offset.i = getelementptr %struct.visconti_reset_data, ptr %14, i32 %id, i32 1
  %21 = ptrtoint ptr %rsoff_offset.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rsoff_offset.i, align 4
  %call.i.i11 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef %22, i32 noundef %shl.i7, i32 noundef %shl.i7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %23 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lock.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %call4.i9) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @visconti_reset_assert(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %resets = getelementptr inbounds %struct.visconti_reset, ptr %rcdev, i32 0, i32 2
  %0 = ptrtoint ptr %resets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resets, align 4
  %arrayidx = getelementptr %struct.visconti_reset_data, ptr %1, i32 %id
  %rs_idx = getelementptr %struct.visconti_reset_data, ptr %1, i32 %id, i32 2
  %2 = ptrtoint ptr %rs_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rs_idx, align 4
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
  %lock = getelementptr inbounds %struct.visconti_reset, ptr %rcdev, i32 0, i32 3
  %4 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #3
  %regmap = getelementptr inbounds %struct.visconti_reset, ptr %rcdev, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %9, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %10 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %call4) #3
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @visconti_reset_deassert(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %resets = getelementptr inbounds %struct.visconti_reset, ptr %rcdev, i32 0, i32 2
  %0 = ptrtoint ptr %resets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resets, align 4
  %rs_idx = getelementptr %struct.visconti_reset_data, ptr %1, i32 %id, i32 2
  %2 = ptrtoint ptr %rs_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rs_idx, align 4
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
  %lock = getelementptr inbounds %struct.visconti_reset, ptr %rcdev, i32 0, i32 3
  %4 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #3
  %regmap = getelementptr inbounds %struct.visconti_reset, ptr %rcdev, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %rsoff_offset = getelementptr %struct.visconti_reset_data, ptr %1, i32 %id, i32 1
  %8 = ptrtoint ptr %rsoff_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rsoff_offset, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %9, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %10 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %call4) #3
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @visconti_reset_status(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %resets = getelementptr inbounds %struct.visconti_reset, ptr %rcdev, i32 0, i32 2
  %0 = ptrtoint ptr %resets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resets, align 4
  %arrayidx = getelementptr %struct.visconti_reset_data, ptr %1, i32 %id
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #3
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !11
  %lock = getelementptr inbounds %struct.visconti_reset, ptr %rcdev, i32 0, i32 3
  %3 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #3
  %regmap = getelementptr inbounds %struct.visconti_reset, ptr %rcdev, i32 0, i32 1
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %call6 = call i32 @regmap_read(ptr noundef %6, i32 noundef %8, ptr noundef nonnull %reg) #3
  %9 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %call3) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg, align 4
  %rs_idx = getelementptr %struct.visconti_reset_data, ptr %1, i32 %id, i32 2
  %13 = ptrtoint ptr %rs_idx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rs_idx, align 4
  %conv8 = zext i8 %14 to i32
  %and = and i32 %12, %conv8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  %lnot.ext = zext i1 %tobool9.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %lnot.ext, %if.end ], [ %call6, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @visconti_register_reset_controller(ptr noundef %dev, ptr noundef %regmap, ptr noundef %resets, i32 noundef %num_resets, ptr noundef %reset_ops, ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 56, i32 noundef 3520) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %regmap1 = getelementptr inbounds %struct.visconti_reset, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %regmap, ptr %regmap1, align 4
  %resets2 = getelementptr inbounds %struct.visconti_reset, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %resets2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %resets, ptr %resets2, align 4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %reset_ops, ptr %call.i, align 4
  %nr_resets = getelementptr inbounds %struct.reset_controller_dev, ptr %call.i, i32 0, i32 8
  %3 = ptrtoint ptr %nr_resets to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %num_resets, ptr %nr_resets, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %of_node5 = getelementptr inbounds %struct.reset_controller_dev, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %of_node5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %of_node5, align 4
  %lock6 = getelementptr inbounds %struct.visconti_reset, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %lock6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %lock, ptr %lock6, align 4
  %call8 = tail call i32 @devm_reset_controller_register(ptr noundef %dev, ptr noundef nonnull %call.i) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @visconti_reset_ops, !1, !"visconti_reset_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/visconti/reset.c", i32 79, i32 32}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"auto-init"}
