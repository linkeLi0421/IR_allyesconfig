; ModuleID = '/llk/IR_all_yes/drivers/video/backlight/da903x_bl.c_pt.bc'
source_filename = "../drivers/video/backlight/da903x_bl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.da903x_backlight_data = type { ptr, i32, i32 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_da903x_bl__301_155_da903x_backlight_driver_init6 = internal global ptr @da903x_backlight_driver_init, section ".initcall6.init", align 4
@da903x_backlight_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @da903x_backlight_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_da903x_backlight_driver_exit = internal global ptr @da903x_backlight_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description302 = internal constant [78 x i8] c"da903x_bl.description=Backlight Driver for Dialog Semiconductor DA9030/DA9034\00", section ".modinfo", align 1
@__UNIQUE_ID_author303 = internal constant [51 x i8] c"da903x_bl.author=Eric Miao <eric.miao@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author304 = internal constant [53 x i8] c"da903x_bl.author=Mike Rapoport <mike@compulab.co.il>\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [49 x i8] c"da903x_bl.file=drivers/video/backlight/da903x_bl\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [22 x i8] c"da903x_bl.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias307 = internal constant [42 x i8] c"da903x_bl.alias=platform:da903x-backlight\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"da903x-backlight\00", [47 x i8] zeroinitializer }, align 32
@da903x_backlight_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 117, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"invalid backlight device ID(%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"da903x_backlight_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/video/backlight/da903x_bl.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@da903x_backlight_probe._entry_ptr = internal global ptr @da903x_backlight_probe._entry, section ".printk_index", align 4
@da903x_backlight_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 1, ptr @da903x_backlight_update_status, ptr @da903x_backlight_get_brightness, ptr null }, [16 x i8] zeroinitializer }, align 32
@da903x_backlight_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 137, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to register backlight\0A\00", [34 x i8] zeroinitializer }, align 32
@da903x_backlight_probe._entry_ptr.8 = internal global ptr @da903x_backlight_probe._entry.6, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 33]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 33]
@___asan_gen_.10 = private unnamed_addr constant [24 x i8] c"da903x_backlight_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 148, i32 31 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 150, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 116, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant [21 x i8] c"da903x_backlight_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 90, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [39 x i8] c"../drivers/video/backlight/da903x_bl.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 137, i32 3 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_alias307, ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_da903x_backlight_driver_exit, ptr @__initcall__kmod_da903x_bl__301_155_da903x_backlight_driver_init6, ptr @da903x_backlight_driver_exit, ptr @da903x_backlight_probe._entry, ptr @da903x_backlight_probe._entry.6, ptr @da903x_backlight_probe._entry_ptr, ptr @da903x_backlight_probe._entry_ptr.8, ptr @da903x_backlight_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @da903x_backlight_ops, ptr @.str.7], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da903x_backlight_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da903x_backlight_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da903x_backlight_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da903x_backlight_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @da903x_backlight_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @da903x_backlight_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @da903x_backlight_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @da903x_backlight_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da903x_backlight_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %props = alloca %struct.backlight_properties, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props) #6
  %2 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 1
  %3 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #6
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.end [
    i32 6, label %if.end.sw.epilog_crit_edge
    i32 33, label %sw.bb3
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %5) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb3, %if.end.sw.epilog_crit_edge
  %max_brightness.0 = phi i32 [ 127, %sw.bb3 ], [ 7, %if.end.sw.epilog_crit_edge ]
  %id7 = getelementptr inbounds %struct.da903x_backlight_data, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %id7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %5, ptr %id7, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %call.i, align 4
  %current_brightness = getelementptr inbounds %struct.da903x_backlight_data, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %current_brightness to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %current_brightness, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %sw.epilog.if.end12_crit_edge, label %if.then9

sw.epilog.if.end12_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then9:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %14 = trunc i32 %13 to i8
  %conv = and i8 %14, 31
  %call11 = tail call i32 @da903x_write(ptr noundef %9, i32 noundef 61, i8 noundef zeroext %conv) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %sw.epilog.if.end12_crit_edge
  %15 = call ptr @memset(ptr %props, i32 0, i32 28)
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %3, align 4
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %max_brightness.0, ptr %2, align 4
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 8
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  %call16 = call ptr @devm_backlight_device_register(ptr noundef %dev, ptr noundef %19, ptr noundef %21, ptr noundef nonnull %call.i, ptr noundef nonnull @da903x_backlight_ops, ptr noundef nonnull %props) #6
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end21, label %if.end24

do.end21:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  %22 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end12
  %23 = ptrtoint ptr %call16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %max_brightness.0, ptr %call16, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call16, ptr %driver_data.i.i, align 4
  %update_lock.i = getelementptr inbounds %struct.backlight_device, ptr %call16, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #6
  %ops.i = getelementptr inbounds %struct.backlight_device, ptr %call16, i32 0, i32 3
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.end24.backlight_update_status.exit_crit_edge, label %land.lhs.true.i

if.end24.backlight_update_status.exit_crit_edge:  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_update_status.exit

land.lhs.true.i:                                  ; preds = %if.end24
  %update_status.i = getelementptr inbounds %struct.backlight_ops, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %update_status.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %update_status.i, align 4
  %tobool2.not.i = icmp eq ptr %28, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.backlight_update_status.exit_crit_edge, label %if.then.i

land.lhs.true.i.backlight_update_status.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_update_status.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i53 = call i32 %28(ptr noundef %call16) #6
  br label %backlight_update_status.exit

backlight_update_status.exit:                     ; preds = %if.then.i, %land.lhs.true.i.backlight_update_status.exit_crit_edge, %if.end24.backlight_update_status.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock.i) #6
  br label %cleanup

cleanup:                                          ; preds = %backlight_update_status.exit, %do.end21, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %22, %do.end21 ], [ 0, %backlight_update_status.exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @da903x_write(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da903x_backlight_update_status(ptr nocapture noundef readonly %bl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %power.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 2
  %0 = ptrtoint ptr %power.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %entry.backlight_get_brightness.exit_crit_edge

entry.backlight_get_brightness.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_get_brightness.exit

lor.lhs.false.i.i:                                ; preds = %entry
  %fb_blank.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 3
  %2 = ptrtoint ptr %fb_blank.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fb_blank.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2.not.i.i = icmp eq i32 %3, 0
  br i1 %cmp2.not.i.i, label %backlight_is_blank.exit.i, label %lor.lhs.false.i.i.backlight_get_brightness.exit_crit_edge

lor.lhs.false.i.i.backlight_get_brightness.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_get_brightness.exit

backlight_is_blank.exit.i:                        ; preds = %lor.lhs.false.i.i
  %state.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 5
  %4 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i.i, align 4
  %and.i.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %backlight_is_blank.exit.i.backlight_get_brightness.exit_crit_edge

backlight_is_blank.exit.i.backlight_get_brightness.exit_crit_edge: ; preds = %backlight_is_blank.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_get_brightness.exit

if.else.i:                                        ; preds = %backlight_is_blank.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bl, align 8
  br label %backlight_get_brightness.exit

backlight_get_brightness.exit:                    ; preds = %if.else.i, %backlight_is_blank.exit.i.backlight_get_brightness.exit_crit_edge, %lor.lhs.false.i.i.backlight_get_brightness.exit_crit_edge, %entry.backlight_get_brightness.exit_crit_edge
  %retval.0.i = phi i32 [ %7, %if.else.i ], [ 0, %backlight_is_blank.exit.i.backlight_get_brightness.exit_crit_edge ], [ 0, %lor.lhs.false.i.i.backlight_get_brightness.exit_crit_edge ], [ 0, %entry.backlight_get_brightness.exit_crit_edge ]
  %driver_data.i.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %id.i = getelementptr inbounds %struct.da903x_backlight_data, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %13, label %backlight_get_brightness.exit.if.end23.i_crit_edge [
    i32 33, label %sw.bb.i
    i32 6, label %sw.bb15.i
  ]

backlight_get_brightness.exit.if.end23.i_crit_edge: ; preds = %backlight_get_brightness.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

sw.bb.i:                                          ; preds = %backlight_get_brightness.exit
  %conv.i = trunc i32 %retval.0.i to i8
  %call1.i = tail call i32 @da903x_update(ptr noundef %11, i32 noundef 60, i8 noundef zeroext %conv.i, i8 noundef zeroext 127) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.i.da903x_backlight_set.exit_crit_edge

sw.bb.i.da903x_backlight_set.exit_crit_edge:      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %da903x_backlight_set.exit

if.end.i:                                         ; preds = %sw.bb.i
  %current_brightness.i = getelementptr inbounds %struct.da903x_backlight_data, ptr %9, i32 0, i32 2
  %15 = ptrtoint ptr %current_brightness.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %current_brightness.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool2.not.i = icmp ne i32 %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, 0
  %or.cond.i = and i1 %cmp.i, %tobool2.not.i
  br i1 %or.cond.i, label %if.then4.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = tail call i32 @da903x_clr_bits(ptr noundef %11, i32 noundef 61, i8 noundef zeroext 32) #6
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i.if.end6.i_crit_edge
  %ret.0.i = phi i32 [ %call5.i, %if.then4.i ], [ 0, %if.end.i.if.end6.i_crit_edge ]
  %17 = ptrtoint ptr %current_brightness.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %current_brightness.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp8.i = icmp ne i32 %18, 0
  %or.cond44.i = or i1 %cmp.i, %cmp8.i
  br i1 %or.cond44.i, label %if.end6.i.sw.epilog.i_crit_edge, label %if.then12.i

if.end6.i.sw.epilog.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.then12.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %call13.i = tail call i32 @da903x_set_bits(ptr noundef %11, i32 noundef 61, i8 noundef zeroext 32) #6
  br label %sw.epilog.i

sw.bb15.i:                                        ; preds = %backlight_get_brightness.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv16.i = and i32 %retval.0.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool17.not.i = icmp eq i32 %retval.0.i, 0
  %cond.i = select i1 %tobool17.not.i, i32 0, i32 64
  %or.i = or i32 %cond.i, %conv16.i
  %conv19.i = trunc i32 %or.i to i8
  %call20.i = tail call i32 @da903x_write(ptr noundef %11, i32 noundef 37, i8 noundef zeroext %conv19.i) #6
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb15.i, %if.then12.i, %if.end6.i.sw.epilog.i_crit_edge
  %ret.1.i = phi i32 [ %call20.i, %sw.bb15.i ], [ %call13.i, %if.then12.i ], [ %ret.0.i, %if.end6.i.sw.epilog.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool21.not.i = icmp eq i32 %ret.1.i, 0
  br i1 %tobool21.not.i, label %sw.epilog.i.if.end23.i_crit_edge, label %sw.epilog.i.da903x_backlight_set.exit_crit_edge

sw.epilog.i.da903x_backlight_set.exit_crit_edge:  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %da903x_backlight_set.exit

sw.epilog.i.if.end23.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

if.end23.i:                                       ; preds = %sw.epilog.i.if.end23.i_crit_edge, %backlight_get_brightness.exit.if.end23.i_crit_edge
  %current_brightness24.i = getelementptr inbounds %struct.da903x_backlight_data, ptr %9, i32 0, i32 2
  %19 = ptrtoint ptr %current_brightness24.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %retval.0.i, ptr %current_brightness24.i, align 4
  br label %da903x_backlight_set.exit

da903x_backlight_set.exit:                        ; preds = %if.end23.i, %sw.epilog.i.da903x_backlight_set.exit_crit_edge, %sw.bb.i.da903x_backlight_set.exit_crit_edge
  %retval.0.i3 = phi i32 [ 0, %if.end23.i ], [ %call1.i, %sw.bb.i.da903x_backlight_set.exit_crit_edge ], [ %ret.1.i, %sw.epilog.i.da903x_backlight_set.exit_crit_edge ]
  ret i32 %retval.0.i3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @da903x_backlight_get_brightness(ptr nocapture noundef readonly %bl) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %current_brightness = getelementptr inbounds %struct.da903x_backlight_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %current_brightness to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_brightness, align 4
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @da903x_update(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @da903x_clr_bits(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @da903x_set_bits(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__initcall__kmod_da903x_bl__301_155_da903x_backlight_driver_init6, !1, !"__initcall__kmod_da903x_bl__301_155_da903x_backlight_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/backlight/da903x_bl.c", i32 155, i32 1}
!2 = !{ptr @__exitcall_da903x_backlight_driver_exit, !1, !"__exitcall_da903x_backlight_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description302, !4, !"__UNIQUE_ID_description302", i1 false, i1 false}
!4 = !{!"../drivers/video/backlight/da903x_bl.c", i32 157, i32 1}
!5 = !{ptr @__UNIQUE_ID_author303, !6, !"__UNIQUE_ID_author303", i1 false, i1 false}
!6 = !{!"../drivers/video/backlight/da903x_bl.c", i32 158, i32 1}
!7 = !{ptr @__UNIQUE_ID_author304, !8, !"__UNIQUE_ID_author304", i1 false, i1 false}
!8 = !{!"../drivers/video/backlight/da903x_bl.c", i32 159, i32 1}
!9 = !{ptr @__UNIQUE_ID_file305, !10, !"__UNIQUE_ID_file305", i1 false, i1 false}
!10 = !{!"../drivers/video/backlight/da903x_bl.c", i32 160, i32 1}
!11 = !{ptr @__UNIQUE_ID_license306, !10, !"__UNIQUE_ID_license306", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_alias307, !13, !"__UNIQUE_ID_alias307", i1 false, i1 false}
!13 = !{!"../drivers/video/backlight/da903x_bl.c", i32 161, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/video/backlight/da903x_bl.c", i32 150, i32 11}
!16 = !{ptr @da903x_backlight_driver, !17, !"da903x_backlight_driver", i1 false, i1 false}
!17 = !{!"../drivers/video/backlight/da903x_bl.c", i32 148, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/video/backlight/da903x_bl.c", i32 116, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @da903x_backlight_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @da903x_backlight_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/video/backlight/da903x_bl.c", i32 137, i32 3}
!28 = !{ptr @da903x_backlight_probe._entry.6, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @da903x_backlight_probe._entry_ptr.8, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @da903x_backlight_ops, !31, !"da903x_backlight_ops", i1 false, i1 false}
!31 = !{!"../drivers/video/backlight/da903x_bl.c", i32 90, i32 35}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
