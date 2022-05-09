; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_irq.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_irq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+drm_legacy_irq_uninstall\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_legacy_irq_uninstall\09\09\09\09"
module asm "\09.long\09__crc_drm_legacy_irq_uninstall\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_legacy_irq_uninstall:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_legacy_irq_uninstall\22\09\09\09\09\09"
module asm "__kstrtabns_drm_legacy_irq_uninstall:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.67, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.73, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.67 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.73 = type { i32, ptr }
%struct.drm_vblank_crtc = type { ptr, %struct.wait_queue_head, %struct.timer_list, %struct.seqlock_t, %struct.atomic64_t, i64, %struct.atomic_t, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, i8, ptr, %struct.list_head, %struct.wait_queue_head }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.drm_control = type { i32, i32 }

@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/gpu/drm/drm_irq.c\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"irq=%d\0A\00", [24 x i8] zeroinitializer }, align 32
@__kstrtab_drm_legacy_irq_uninstall = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_legacy_irq_uninstall = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_legacy_irq_uninstall = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_legacy_irq_uninstall to i32), ptr @__kstrtab_drm_legacy_irq_uninstall, ptr @__kstrtabns_drm_legacy_irq_uninstall }, section "___ksymtab+drm_legacy_irq_uninstall", align 4
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 138, i32 4 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [29 x i8] c"../drivers/gpu/drm/drm_irq.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 149, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_drm_legacy_irq_uninstall, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_irq_uninstall(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_enabled1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 55
  %0 = ptrtoint ptr %irq_enabled1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %irq_enabled1, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %2 = ptrtoint ptr %irq_enabled1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %irq_enabled1, align 4
  %call = tail call zeroext i1 @drm_dev_has_vblank(ptr noundef %dev) #2
  br i1 %call, label %do.body3, label %entry.if.end40_crit_edge

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end40

do.body3:                                         ; preds = %entry
  %vbl_lock = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 25
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %vbl_lock) #2
  %num_crtcs = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 29
  %3 = ptrtoint ptr %num_crtcs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_crtcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp886.not = icmp eq i32 %4, 0
  br i1 %cmp886.not, label %do.body3.for.end_crit_edge, label %for.body.lr.ph

do.body3.for.end_crit_edge:                       ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body3
  %vblank10 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 23
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.087 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %5 = ptrtoint ptr %vblank10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vblank10, align 4
  %enabled = getelementptr %struct.drm_vblank_crtc, ptr %6, i32 %i.087, i32 14
  %7 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %enabled, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool11.not = icmp eq i8 %8, 0
  br i1 %tobool11.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %for.body
  %9 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %10, i32 0, i32 24
  %11 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %driver_features.i.i, align 4
  %13 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %12, 2
  %and2.i.i = and i32 %and.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and2.i.i)
  %cmp.i.i = icmp eq i32 %and2.i.i, 2
  br i1 %cmp.i.i, label %do.end25, label %if.end.if.end31_crit_edge, !prof !16

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end31

do.end25:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 138, i32 noundef 9, ptr noundef null) #2
  br label %if.end31

if.end31:                                         ; preds = %do.end25, %if.end.if.end31_crit_edge
  tail call void @drm_vblank_disable_and_save(ptr noundef %dev, i32 noundef %i.087) #2
  %queue = getelementptr %struct.drm_vblank_crtc, ptr %6, i32 %i.087, i32 1
  tail call void @__wake_up(ptr noundef %queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.087, 1
  %15 = ptrtoint ptr %num_crtcs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_crtcs, align 4
  %cmp8 = icmp ult i32 %inc, %16
  br i1 %cmp8, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %do.body3.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %vbl_lock, i32 noundef %call5) #2
  br label %if.end40

if.end40:                                         ; preds = %for.end, %entry.if.end40_crit_edge
  br i1 %tobool.not, label %if.end40.cleanup56_crit_edge, label %if.end43

if.end40.cleanup56_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup56

if.end43:                                         ; preds = %if.end40
  %irq = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 56
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %18) #2
  %driver.i.i80 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %19 = ptrtoint ptr %driver.i.i80 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver.i.i80, align 4
  %driver_features.i.i81 = getelementptr inbounds %struct.drm_driver, ptr %20, i32 0, i32 24
  %21 = ptrtoint ptr %driver_features.i.i81 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %driver_features.i.i81, align 4
  %driver_features1.i.i82 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  %23 = ptrtoint ptr %driver_features1.i.i82 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %driver_features1.i.i82, align 4
  %and.i.i83 = and i32 %22, 67108864
  %and2.i.i84 = and i32 %and.i.i83, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %and2.i.i84)
  %cmp.i.i85 = icmp eq i32 %and2.i.i84, 67108864
  br i1 %cmp.i.i85, label %if.then45, label %if.end43.if.end48_crit_edge

if.end43.if.end48_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end48

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #4
  %dev46 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %25 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev46, align 4
  %add.ptr = getelementptr i8, ptr %26, i32 -136
  %call.i = tail call i32 @vga_client_register(ptr noundef %add.ptr, ptr noundef null) #2
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.end43.if.end48_crit_edge
  %27 = ptrtoint ptr %driver.i.i80 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver.i.i80, align 4
  %irq_uninstall = getelementptr inbounds %struct.drm_driver, ptr %28, i32 0, i32 36
  %29 = ptrtoint ptr %irq_uninstall to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %irq_uninstall, align 4
  %tobool49.not = icmp eq ptr %30, null
  br i1 %tobool49.not, label %if.end48.if.end53_crit_edge, label %if.then50

if.end48.if.end53_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end53

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #4
  tail call void %30(ptr noundef %dev) #2
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end48.if.end53_crit_edge
  %31 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq, align 4
  %call55 = tail call ptr @free_irq(i32 noundef %32, ptr noundef %dev) #2
  br label %cleanup56

cleanup56:                                        ; preds = %if.end53, %if.end40.cleanup56_crit_edge
  %retval.0 = phi i32 [ 0, %if.end53 ], [ -22, %if.end40.cleanup56_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dev_has_vblank(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_vblank_disable_and_save(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_irq_control(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_features.i.i, align 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  %4 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %5, %3
  %6 = and i32 %and.i.i, 1140850688
  call void @__sanitizer_cov_trace_const_cmp4(i32 1140850688, i32 %6)
  %.not = icmp eq i32 %6, 1140850688
  br i1 %.not, label %if.end3, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end3:                                          ; preds = %entry
  %dev4 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %7 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev4, align 4
  %bus = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus, align 8
  %cmp.not = icmp eq ptr %10, @pci_bus_type
  br i1 %cmp.not, label %if.end28, label %do.end, !prof !17

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 179, i32 noundef 9, ptr noundef null) #2
  br label %cleanup

if.end28:                                         ; preds = %if.end3
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %if.end28.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb39
  ]

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb:                                            ; preds = %if.end28
  %irq31 = getelementptr i8, ptr %8, i32 932
  %14 = ptrtoint ptr %irq31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq31, align 4
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65538, i32 %17)
  %cmp32 = icmp slt i32 %17, 65538
  br i1 %cmp32, label %land.lhs.true, label %sw.bb.if.end36_crit_edge

sw.bb.if.end36_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end36

land.lhs.true:                                    ; preds = %sw.bb
  %irq33 = getelementptr inbounds %struct.drm_control, ptr %data, i32 0, i32 1
  %18 = ptrtoint ptr %irq33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %15)
  %cmp34.not = icmp eq i32 %19, %15
  br i1 %cmp34.not, label %land.lhs.true.if.end36_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end36

if.end36:                                         ; preds = %land.lhs.true.if.end36_crit_edge, %sw.bb.if.end36_crit_edge
  %struct_mutex = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %struct_mutex, i32 noundef 0) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp eq i32 %15, 0
  br i1 %cmp.i, label %if.end36.drm_legacy_irq_install.exit_crit_edge, label %if.end.i

if.end36.drm_legacy_irq_install.exit_crit_edge:   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #4
  br label %drm_legacy_irq_install.exit

if.end.i:                                         ; preds = %if.end36
  %irq_enabled.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 55
  %20 = ptrtoint ptr %irq_enabled.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %irq_enabled.i, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i, label %if.end2.i, label %if.end.i.drm_legacy_irq_install.exit_crit_edge

if.end.i.drm_legacy_irq_install.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %drm_legacy_irq_install.exit

if.end2.i:                                        ; preds = %if.end.i
  %22 = ptrtoint ptr %irq_enabled.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %irq_enabled.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %15) #2
  %23 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver.i.i, align 4
  %irq_preinstall.i = getelementptr inbounds %struct.drm_driver, ptr %24, i32 0, i32 34
  %25 = ptrtoint ptr %irq_preinstall.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %irq_preinstall.i, align 4
  %tobool4.not.i = icmp eq ptr %26, null
  br i1 %tobool4.not.i, label %if.end2.i.if.end8.i_crit_edge, label %if.then5.i

if.end2.i.if.end8.i_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void %26(ptr noundef %dev) #2
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end2.i.if.end8.i_crit_edge
  %27 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev4, align 4
  %bus.i = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bus.i, align 8
  %cmp10.i = icmp eq ptr %30, @pci_bus_type
  %spec.select.i = select i1 %cmp10.i, i32 128, i32 0
  %31 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %driver.i.i, align 4
  %irq_handler.i = getelementptr inbounds %struct.drm_driver, ptr %32, i32 0, i32 33
  %33 = ptrtoint ptr %irq_handler.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %irq_handler.i, align 4
  %name.i = getelementptr inbounds %struct.drm_driver, ptr %32, i32 0, i32 21
  %35 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name.i, align 4
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %15, ptr noundef %34, ptr noundef null, i32 noundef %spec.select.i, ptr noundef %36, ptr noundef %dev) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp15.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp15.i, label %if.then16.i, label %if.end18.i

if.then16.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #4
  %37 = ptrtoint ptr %irq_enabled.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %irq_enabled.i, align 4
  br label %drm_legacy_irq_install.exit

if.end18.i:                                       ; preds = %if.end8.i
  %38 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %driver.i.i, align 4
  %irq_postinstall.i = getelementptr inbounds %struct.drm_driver, ptr %39, i32 0, i32 35
  %40 = ptrtoint ptr %irq_postinstall.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %irq_postinstall.i, align 4
  %tobool20.not.i = icmp eq ptr %41, null
  br i1 %tobool20.not.i, label %if.end18.i.if.else.i_crit_edge, label %if.end25.i

if.end18.i.if.else.i_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else.i

if.end25.i:                                       ; preds = %if.end18.i
  %call24.i = tail call i32 %41(ptr noundef %dev) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp26.i = icmp slt i32 %call24.i, 0
  br i1 %cmp26.i, label %if.then27.i, label %if.end25.i.if.else.i_crit_edge

if.end25.i.if.else.i_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else.i

if.then27.i:                                      ; preds = %if.end25.i
  %42 = ptrtoint ptr %irq_enabled.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %irq_enabled.i, align 4
  %43 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i.i = getelementptr inbounds %struct.drm_driver, ptr %44, i32 0, i32 24
  %45 = ptrtoint ptr %driver_features.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %driver_features.i.i.i, align 4
  %47 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i.i = and i32 %46, 67108864
  %and2.i.i.i = and i32 %and.i.i.i, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %and2.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and2.i.i.i, 67108864
  br i1 %cmp.i.i.i, label %if.then30.i, label %if.then27.i.if.end32.i_crit_edge

if.then27.i.if.end32.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end32.i

if.then30.i:                                      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #4
  %49 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev4, align 4
  %add.ptr.i = getelementptr i8, ptr %50, i32 -136
  %call.i62.i = tail call i32 @vga_client_register(ptr noundef %add.ptr.i, ptr noundef null) #2
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then30.i, %if.then27.i.if.end32.i_crit_edge
  %call33.i = tail call ptr @free_irq(i32 noundef %15, ptr noundef %dev) #2
  br label %drm_legacy_irq_install.exit

if.else.i:                                        ; preds = %if.end25.i.if.else.i_crit_edge, %if.end18.i.if.else.i_crit_edge
  %ret.065.i = phi i32 [ %call24.i, %if.end25.i.if.else.i_crit_edge ], [ %call.i.i, %if.end18.i.if.else.i_crit_edge ]
  %irq34.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 56
  %51 = ptrtoint ptr %irq34.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %15, ptr %irq34.i, align 4
  br label %drm_legacy_irq_install.exit

drm_legacy_irq_install.exit:                      ; preds = %if.else.i, %if.end32.i, %if.then16.i, %if.end.i.drm_legacy_irq_install.exit_crit_edge, %if.end36.drm_legacy_irq_install.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %if.then16.i ], [ -22, %if.end36.drm_legacy_irq_install.exit_crit_edge ], [ -16, %if.end.i.drm_legacy_irq_install.exit_crit_edge ], [ %ret.065.i, %if.else.i ], [ %call24.i, %if.end32.i ]
  tail call void @mutex_unlock(ptr noundef %struct_mutex) #2
  br label %cleanup

sw.bb39:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #4
  %struct_mutex40 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %struct_mutex40, i32 noundef 0) #2
  %call41 = tail call i32 @drm_legacy_irq_uninstall(ptr noundef %dev)
  tail call void @mutex_unlock(ptr noundef %struct_mutex40) #2
  br label %cleanup

cleanup:                                          ; preds = %sw.bb39, %drm_legacy_irq_install.exit, %land.lhs.true.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call41, %sw.bb39 ], [ %retval.0.i, %drm_legacy_irq_install.exit ], [ 0, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vga_client_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_irq.c", i32 138, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/drm_irq.c", i32 149, i32 2}
!4 = !{ptr @__ksymtab_drm_legacy_irq_uninstall, !5, !"__ksymtab_drm_legacy_irq_uninstall", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/drm_irq.c", i32 161, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i8 0, i8 2}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{!"branch_weights", i32 2000, i32 1}
