; ModuleID = '/llk/IR_all_yes/drivers/fpga/dfl-afu-region.c_pt.bc'
source_filename = "../drivers/fpga/dfl-afu-region.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dfl_feature_platform_data = type { %struct.list_head, %struct.mutex, %struct.cdev, ptr, ptr, i32, i32, i8, i32, ptr, i32, [0 x %struct.dfl_feature] }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dfl_feature = type { ptr, i16, i8, i32, ptr, ptr, i32, ptr, ptr, ptr }
%struct.dfl_afu = type { i64, i32, i8, %struct.list_head, %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dfl_afu_mmio_region = type { i32, i32, i64, i64, i64, %struct.list_head }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afu_mmio_region_init(ptr nocapture noundef readonly %pdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %pdata, i32 0, i32 9
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %regions = getelementptr inbounds %struct.dfl_afu, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regions to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %regions, ptr %regions, align 4
  %prev.i = getelementptr inbounds %struct.dfl_afu, ptr %1, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %regions, ptr %prev.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afu_mmio_region_add(ptr noundef %pdata, i32 noundef %region_index, i64 noundef %region_size, i64 noundef %phys, i32 noundef %flags) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %pdata, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 40, i32 noundef 3520) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %region_index, ptr %call.i, align 8
  %size = getelementptr inbounds %struct.dfl_afu_mmio_region, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %region_size, ptr %size, align 8
  %phys2 = getelementptr inbounds %struct.dfl_afu_mmio_region, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %phys2 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %phys, ptr %phys2, align 8
  %flags3 = getelementptr inbounds %struct.dfl_afu_mmio_region, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %flags, ptr %flags3, align 4
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %pdata, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #3
  %private.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %pdata, i32 0, i32 9
  %6 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private.i, align 4
  %regions.i = getelementptr inbounds %struct.dfl_afu, ptr %7, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %.pn.in.i = phi ptr [ %regions.i, %if.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %8 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %.pn.in.i, align 8
  %cmp.not.i = icmp eq ptr %.pn.i, %regions.i
  br i1 %cmp.not.i, label %for.cond.i.if.end9_crit_edge, label %for.body.i

for.cond.i.if.end9_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9

for.body.i:                                       ; preds = %for.cond.i
  %region.0.i = getelementptr i8, ptr %.pn.i, i32 -32
  %9 = ptrtoint ptr %region.0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %region.0.i, align 8
  %cmp2.i = icmp eq i32 %10, %region_index
  br i1 %cmp2.i, label %get_region_by_index.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.i

get_region_by_index.exit:                         ; preds = %for.body.i
  %region.0.i.le = getelementptr i8, ptr %.pn.i, i32 -32
  %tobool6.not = icmp eq ptr %region.0.i.le, null
  br i1 %tobool6.not, label %get_region_by_index.exit.if.end9_crit_edge, label %if.then7

get_region_by_index.exit.if.end9_crit_edge:       ; preds = %get_region_by_index.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9

if.then7:                                         ; preds = %get_region_by_index.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mutex_unlock(ptr noundef %lock) #3
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %dev14 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  tail call void @devm_kfree(ptr noundef %dev14, ptr noundef nonnull %call.i) #3
  br label %cleanup

if.end9:                                          ; preds = %get_region_by_index.exit.if.end9_crit_edge, %for.cond.i.if.end9_crit_edge
  %add = add i64 %region_size, 4095
  %and = and i64 %add, -4096
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %7, align 8
  %offset = getelementptr inbounds %struct.dfl_afu_mmio_region, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %offset, align 8
  %node = getelementptr inbounds %struct.dfl_afu_mmio_region, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %regions.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regions.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %regions.i, ptr noundef %17) #3
  br i1 %call.i.i, label %if.end.i.i, label %if.end9.list_add.exit_crit_edge

if.end9.list_add.exit_crit_edge:                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %node, ptr %prev1.i.i, align 4
  %19 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.dfl_afu_mmio_region, ptr %call.i, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %regions.i, ptr %prev3.i.i, align 4
  %21 = ptrtoint ptr %regions.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %node, ptr %regions.i, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end9.list_add.exit_crit_edge
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %7, align 8
  %add11 = add i64 %23, %and
  store i64 %add11, ptr %7, align 8
  %num_regions = getelementptr inbounds %struct.dfl_afu, ptr %7, i32 0, i32 1
  %24 = ptrtoint ptr %num_regions to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_regions, align 8
  %inc = add i32 %25, 1
  store i32 %inc, ptr %num_regions, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #3
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -17, %if.then7 ], [ 0, %list_add.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @afu_mmio_region_destroy(ptr nocapture noundef readonly %pdata) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %pdata, i32 0, i32 9
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %regions = getelementptr inbounds %struct.dfl_afu, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regions, align 8
  %cmp.not20 = icmp eq ptr %3, %regions
  br i1 %cmp.not20, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %pdata, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %.pn.in21 = phi ptr [ %3, %for.body.lr.ph ], [ %.pn, %for.body.for.body_crit_edge ]
  %region.0 = getelementptr i8, ptr %.pn.in21, i32 -32
  %4 = ptrtoint ptr %.pn.in21 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in21, align 8
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %dev8 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  tail call void @devm_kfree(ptr noundef %dev8, ptr noundef %region.0) #3
  %cmp.not = icmp eq ptr %.pn, %regions
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afu_mmio_region_get_by_index(ptr noundef %pdata, i32 noundef %region_index, ptr nocapture noundef writeonly %pregion) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %pdata, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #3
  %private.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %pdata, i32 0, i32 9
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %regions.i = getelementptr inbounds %struct.dfl_afu, ptr %1, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %regions.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 8
  %cmp.not.i = icmp eq ptr %.pn.i, %regions.i
  br i1 %cmp.not.i, label %for.cond.i.exit_crit_edge, label %for.body.i

for.cond.i.exit_crit_edge:                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %exit

for.body.i:                                       ; preds = %for.cond.i
  %region.0.i = getelementptr i8, ptr %.pn.i, i32 -32
  %3 = ptrtoint ptr %region.0.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %region.0.i, align 8
  %cmp2.i = icmp eq i32 %4, %region_index
  br i1 %cmp2.i, label %get_region_by_index.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.i

get_region_by_index.exit:                         ; preds = %for.body.i
  %region.0.i.le = getelementptr i8, ptr %.pn.i, i32 -32
  %tobool.not = icmp eq ptr %region.0.i.le, null
  br i1 %tobool.not, label %get_region_by_index.exit.exit_crit_edge, label %if.end

get_region_by_index.exit.exit_crit_edge:          ; preds = %get_region_by_index.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %exit

if.end:                                           ; preds = %get_region_by_index.exit
  call void @__sanitizer_cov_trace_pc() #5
  %5 = call ptr @memcpy(ptr %pregion, ptr %region.0.i.le, i32 40)
  br label %exit

exit:                                             ; preds = %if.end, %get_region_by_index.exit.exit_crit_edge, %for.cond.i.exit_crit_edge
  %ret.0 = phi i32 [ 0, %if.end ], [ -22, %get_region_by_index.exit.exit_crit_edge ], [ -22, %for.cond.i.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #3
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @afu_mmio_region_get_by_offset(ptr noundef %pdata, i64 noundef %offset, i64 noundef %size, ptr nocapture noundef writeonly %pregion) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %pdata, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #3
  %private.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %pdata, i32 0, i32 9
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %regions = getelementptr inbounds %struct.dfl_afu, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn24 = load ptr, ptr %regions, align 8
  %cmp.not25 = icmp eq ptr %.pn24, %regions
  br i1 %cmp.not25, label %entry.exit_crit_edge, label %for.body.lr.ph

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %exit

for.body.lr.ph:                                   ; preds = %entry
  %add6 = add i64 %size, %offset
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn26 = phi ptr [ %.pn24, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %offset2 = getelementptr i8, ptr %.pn26, i32 -16
  %3 = ptrtoint ptr %offset2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %offset2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %offset)
  %cmp3.not = icmp ugt i64 %4, %offset
  br i1 %cmp3.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %size5 = getelementptr i8, ptr %.pn26, i32 -24
  %5 = ptrtoint ptr %size5 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %size5, align 8
  %add = add i64 %6, %4
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %add6)
  %cmp7.not = icmp ult i64 %add, %add6
  br i1 %cmp7.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %region.0.le = getelementptr i8, ptr %.pn26, i32 -32
  %7 = call ptr @memcpy(ptr %pregion, ptr %region.0.le, i32 40)
  br label %exit

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %8 = ptrtoint ptr %.pn26 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn26, align 8
  %cmp.not = icmp eq ptr %.pn, %regions
  br i1 %cmp.not, label %for.inc.exit_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.exit_crit_edge:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %exit

exit:                                             ; preds = %for.inc.exit_crit_edge, %if.then, %entry.exit_crit_edge
  %ret.0 = phi i32 [ 0, %if.then ], [ -22, %entry.exit_crit_edge ], [ -22, %for.inc.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #3
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
