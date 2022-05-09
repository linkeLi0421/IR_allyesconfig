; ModuleID = '/llk/IR_all_yes/drivers/video/backlight/pcf50633-backlight.c_pt.bc'
source_filename = "../drivers/video/backlight/pcf50633-backlight.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.pcf50633 = type { ptr, ptr, ptr, i32, [40 x %struct.pcf50633_irq], %struct.work_struct, ptr, %struct.mutex, [5 x i8], [5 x i8], [5 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, [11 x ptr] }
%struct.pcf50633_irq = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pcf50633_bl = type { ptr, ptr, i32, i32 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pcf50633_platform_data = type { [11 x %struct.regulator_init_data], ptr, i32, i32, ptr, ptr, ptr, ptr, [5 x i8], ptr }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.pcf50633_bl_platform_data = type { i32, i32, i8 }

@__initcall__kmod_pcf50633_backlight__301_150_pcf50633_bl_driver_init6 = internal global ptr @pcf50633_bl_driver_init, section ".initcall6.init", align 4
@pcf50633_bl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pcf50633_bl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pcf50633_bl_driver_exit = internal global ptr @pcf50633_bl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author302 = internal constant [63 x i8] c"pcf50633_backlight.author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description303 = internal constant [57 x i8] c"pcf50633_backlight.description=PCF50633 backlight driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [67 x i8] c"pcf50633_backlight.file=drivers/video/backlight/pcf50633-backlight\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [31 x i8] c"pcf50633_backlight.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias306 = internal constant [53 x i8] c"pcf50633_backlight.alias=platform:pcf50633-backlight\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pcf50633-backlight\00", [45 x i8] zeroinitializer }, align 32
@pcf50633_bl_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 1, ptr @pcf50633_bl_update_status, ptr @pcf50633_bl_get_brightness, ptr null }, [16 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [19 x i8] c"pcf50633_bl_driver\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 143, i32 31 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 146, i32 11 }
@___asan_gen_.7 = private unnamed_addr constant [16 x i8] c"pcf50633_bl_ops\00", align 1
@___asan_gen_.8 = private constant [48 x i8] c"../drivers/video/backlight/pcf50633-backlight.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 88, i32 35 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias306, ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_pcf50633_bl_driver_exit, ptr @__initcall__kmod_pcf50633_backlight__301_150_pcf50633_bl_driver_init6, ptr @pcf50633_bl_driver_exit, ptr @pcf50633_bl_driver, ptr @.str, ptr @pcf50633_bl_ops], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_bl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_bl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcf50633_bl_set_brightness_limit(ptr nocapture noundef readonly %pcf, i32 noundef %limit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bl_pdev = getelementptr inbounds %struct.pcf50633, ptr %pcf, i32 0, i32 17
  %0 = ptrtoint ptr %bl_pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bl_pdev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %limit, 63
  %brightness_limit = getelementptr inbounds %struct.pcf50633_bl, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %brightness_limit to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %brightness_limit, align 4
  %bl = getelementptr inbounds %struct.pcf50633_bl, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bl, align 4
  %update_lock.i = getelementptr inbounds %struct.backlight_device, ptr %6, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #6
  %ops.i = getelementptr inbounds %struct.backlight_device, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.backlight_update_status.exit_crit_edge, label %land.lhs.true.i

if.end.backlight_update_status.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_update_status.exit

land.lhs.true.i:                                  ; preds = %if.end
  %update_status.i = getelementptr inbounds %struct.backlight_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %update_status.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %update_status.i, align 4
  %tobool2.not.i = icmp eq ptr %10, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.backlight_update_status.exit_crit_edge, label %if.then.i

land.lhs.true.i.backlight_update_status.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_update_status.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %10(ptr noundef %6) #6
  br label %backlight_update_status.exit

backlight_update_status.exit:                     ; preds = %if.then.i, %land.lhs.true.i.backlight_update_status.exit_crit_edge, %if.end.backlight_update_status.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock.i) #6
  br label %cleanup

cleanup:                                          ; preds = %backlight_update_status.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %backlight_update_status.exit ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf50633_bl_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pcf50633_bl_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pcf50633_bl_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @pcf50633_bl_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf50633_bl_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %bl_props = alloca %struct.backlight_properties, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1, align 8
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %backlight_data = getelementptr inbounds %struct.pcf50633_platform_data, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %backlight_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %backlight_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %bl_props) #6
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = getelementptr inbounds %struct.backlight_properties, ptr %bl_props, i32 0, i32 4
  %7 = getelementptr inbounds %struct.backlight_properties, ptr %bl_props, i32 0, i32 1
  %8 = call ptr @memset(ptr %bl_props, i32 0, i32 28)
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %6, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 63, ptr %7, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %5, align 4
  %13 = ptrtoint ptr %bl_props to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %bl_props, align 4
  %default_brightness_limit = getelementptr inbounds %struct.pcf50633_bl_platform_data, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %default_brightness_limit to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %default_brightness_limit, align 4
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %bl_props to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 63, ptr %bl_props, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  %.sink = phi i32 [ 63, %if.else ], [ %15, %if.then5 ]
  %17 = getelementptr inbounds %struct.pcf50633_bl, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink, ptr %17, align 4
  %19 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent1, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver_data.i.i, align 4
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %call.i, align 4
  %24 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev, align 8
  %call14 = call ptr @devm_backlight_device_register(ptr noundef %dev, ptr noundef %25, ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull @pcf50633_bl_ops, ptr noundef nonnull %bl_props) #6
  %bl = getelementptr inbounds %struct.pcf50633_bl, ptr %call.i, i32 0, i32 1
  %26 = ptrtoint ptr %bl to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call14, ptr %bl, align 4
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %call14 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end8
  %driver_data.i.i53 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %28 = ptrtoint ptr %driver_data.i.i53 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %driver_data.i.i53, align 4
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 4
  %ramp_time = getelementptr inbounds %struct.pcf50633_bl_platform_data, ptr %5, i32 0, i32 2
  %31 = ptrtoint ptr %ramp_time to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ramp_time, align 4
  %call22 = call i32 @pcf50633_reg_write(ptr noundef %30, i8 noundef zeroext 43, i8 noundef zeroext %32) #6
  %33 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bl, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 8
  %add = add i32 %36, 1
  %brightness25 = getelementptr inbounds %struct.pcf50633_bl, ptr %call.i, i32 0, i32 2
  %37 = ptrtoint ptr %brightness25 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add, ptr %brightness25, align 4
  %update_lock.i = getelementptr inbounds %struct.backlight_device, ptr %34, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #6
  %ops.i = getelementptr inbounds %struct.backlight_device, ptr %34, i32 0, i32 3
  %38 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %39, null
  br i1 %tobool.not.i, label %if.end20.backlight_update_status.exit_crit_edge, label %land.lhs.true.i

if.end20.backlight_update_status.exit_crit_edge:  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_update_status.exit

land.lhs.true.i:                                  ; preds = %if.end20
  %update_status.i = getelementptr inbounds %struct.backlight_ops, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %update_status.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %update_status.i, align 4
  %tobool2.not.i = icmp eq ptr %41, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.backlight_update_status.exit_crit_edge, label %if.then.i

land.lhs.true.i.backlight_update_status.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_update_status.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i54 = call i32 %41(ptr noundef %34) #6
  br label %backlight_update_status.exit

backlight_update_status.exit:                     ; preds = %if.then.i, %land.lhs.true.i.backlight_update_status.exit_crit_edge, %if.end20.backlight_update_status.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock.i) #6
  br label %cleanup

cleanup:                                          ; preds = %backlight_update_status.exit, %if.then17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %27, %if.then17 ], [ 0, %backlight_update_status.exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %bl_props) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcf50633_reg_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf50633_bl_update_status(ptr nocapture noundef readonly %bl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %state = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %and = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

lor.lhs.false:                                    ; preds = %entry
  %power = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 2
  %4 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %power, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.else, label %lor.lhs.false.if.end9_crit_edge

lor.lhs.false.if.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bl, align 8
  %brightness_limit = getelementptr inbounds %struct.pcf50633_bl, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %brightness_limit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %brightness_limit, align 4
  %10 = tail call i32 @llvm.umin.i32(i32 %7, i32 %9)
  br label %if.end9

if.end9:                                          ; preds = %if.else, %lor.lhs.false.if.end9_crit_edge, %entry.if.end9_crit_edge
  %new_brightness.0 = phi i32 [ 0, %lor.lhs.false.if.end9_crit_edge ], [ 0, %entry.if.end9_crit_edge ], [ %10, %if.else ]
  %brightness10 = getelementptr inbounds %struct.pcf50633_bl, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %brightness10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %brightness10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %new_brightness.0)
  %cmp11 = icmp eq i32 %12, %new_brightness.0
  br i1 %cmp11, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_brightness.0)
  %tobool14.not = icmp eq i32 %new_brightness.0, 0
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  br i1 %tobool14.not, label %if.else23, label %if.then15

if.then15:                                        ; preds = %if.end13
  %conv = trunc i32 %new_brightness.0 to i8
  %call16 = tail call i32 @pcf50633_reg_write(ptr noundef %14, i8 noundef zeroext 40, i8 noundef zeroext %conv) #6
  %15 = ptrtoint ptr %brightness10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %brightness10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool18.not = icmp eq i32 %16, 0
  br i1 %tobool18.not, label %if.then19, label %if.then15.if.end26_crit_edge

if.then15.if.end26_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then19:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call21 = tail call i32 @pcf50633_reg_write(ptr noundef %18, i8 noundef zeroext 41, i8 noundef zeroext 1) #6
  br label %if.end26

if.else23:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %call25 = tail call i32 @pcf50633_reg_write(ptr noundef %14, i8 noundef zeroext 41, i8 noundef zeroext 0) #6
  br label %if.end26

if.end26:                                         ; preds = %if.else23, %if.then19, %if.then15.if.end26_crit_edge
  %19 = ptrtoint ptr %brightness10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %new_brightness.0, ptr %brightness10, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end9.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pcf50633_bl_get_brightness(ptr nocapture noundef readonly %bl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %brightness = getelementptr inbounds %struct.pcf50633_bl, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %brightness, align 4
  ret i32 %3
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__initcall__kmod_pcf50633_backlight__301_150_pcf50633_bl_driver_init6, !1, !"__initcall__kmod_pcf50633_backlight__301_150_pcf50633_bl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/backlight/pcf50633-backlight.c", i32 150, i32 1}
!2 = !{ptr @__exitcall_pcf50633_bl_driver_exit, !1, !"__exitcall_pcf50633_bl_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author302, !4, !"__UNIQUE_ID_author302", i1 false, i1 false}
!4 = !{!"../drivers/video/backlight/pcf50633-backlight.c", i32 152, i32 1}
!5 = !{ptr @__UNIQUE_ID_description303, !6, !"__UNIQUE_ID_description303", i1 false, i1 false}
!6 = !{!"../drivers/video/backlight/pcf50633-backlight.c", i32 153, i32 1}
!7 = !{ptr @__UNIQUE_ID_file304, !8, !"__UNIQUE_ID_file304", i1 false, i1 false}
!8 = !{!"../drivers/video/backlight/pcf50633-backlight.c", i32 154, i32 1}
!9 = !{ptr @__UNIQUE_ID_license305, !8, !"__UNIQUE_ID_license305", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias306, !11, !"__UNIQUE_ID_alias306", i1 false, i1 false}
!11 = !{!"../drivers/video/backlight/pcf50633-backlight.c", i32 155, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/video/backlight/pcf50633-backlight.c", i32 146, i32 11}
!14 = !{ptr @pcf50633_bl_driver, !15, !"pcf50633_bl_driver", i1 false, i1 false}
!15 = !{!"../drivers/video/backlight/pcf50633-backlight.c", i32 143, i32 31}
!16 = !{ptr @pcf50633_bl_ops, !17, !"pcf50633_bl_ops", i1 false, i1 false}
!17 = !{!"../drivers/video/backlight/pcf50633-backlight.c", i32 88, i32 35}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
