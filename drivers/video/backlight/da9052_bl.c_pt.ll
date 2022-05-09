; ModuleID = '/llk/IR_all_yes/drivers/video/backlight/da9052_bl.c_pt.bc'
source_filename = "../drivers/video/backlight/da9052_bl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.da9052_bl = type { ptr, i32, i32, i32 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.da9052 = type { ptr, ptr, %struct.mutex, %struct.completion, i32, ptr, i8, i32, ptr }

@__initcall__kmod_da9052_bl__301_176_da9052_wled_driver_init6 = internal global ptr @da9052_wled_driver_init, section ".initcall6.init", align 4
@da9052_wled_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @da9052_backlight_probe, ptr @da9052_backlight_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @da9052_wled_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_da9052_wled_driver_exit = internal global ptr @da9052_wled_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author302 = internal constant [54 x i8] c"da9052_bl.author=David Dajun Chen <dchen@diasemi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description303 = internal constant [55 x i8] c"da9052_bl.description=Backlight driver for DA9052 PMIC\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [49 x i8] c"da9052_bl.file=drivers/video/backlight/da9052_bl\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [22 x i8] c"da9052_bl.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"da9052-wled\00", [20 x i8] zeroinitializer }, align 32
@da9052_wled_ids = internal constant { [4 x %struct.platform_device_id], [32 x i8] } { [4 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"da9052-wled1\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"da9052-wled2\00\00\00\00\00\00\00\00", i32 1 }, %struct.platform_device_id { [20 x i8] c"da9052-wled3\00\00\00\00\00\00\00\00", i32 2 }, %struct.platform_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@da9052_backlight_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @da9052_backlight_update_status, ptr @da9052_backlight_get_brightness, ptr null }, [16 x i8] zeroinitializer }, align 32
@da9052_backlight_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 127, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register backlight\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"da9052_backlight_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/video/backlight/da9052_bl.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@da9052_backlight_probe._entry_ptr = internal global ptr @da9052_backlight_probe._entry, section ".printk_index", align 4
@wled_bank = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IJK", [29 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [19 x i8] c"da9052_wled_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 167, i32 31 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 172, i32 11 }
@___asan_gen_.12 = private unnamed_addr constant [16 x i8] c"da9052_wled_ids\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 150, i32 40 }
@___asan_gen_.15 = private unnamed_addr constant [21 x i8] c"da9052_backlight_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 100, i32 35 }
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 127, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [10 x i8] c"wled_bank\00", align 1
@___asan_gen_.37 = private constant [39 x i8] c"../drivers/video/backlight/da9052_bl.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 32, i32 28 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_da9052_wled_driver_exit, ptr @__initcall__kmod_da9052_bl__301_176_da9052_wled_driver_init6, ptr @da9052_backlight_probe._entry, ptr @da9052_backlight_probe._entry_ptr, ptr @da9052_wled_driver_exit, ptr @da9052_wled_driver, ptr @.str, ptr @da9052_wled_ids, ptr @da9052_backlight_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @wled_bank], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_wled_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_wled_ids to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_backlight_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_backlight_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_bank to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_wled_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @da9052_wled_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @da9052_wled_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @da9052_wled_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_backlight_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %props = alloca %struct.backlight_properties, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props) #6
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %0 = call ptr @memset(ptr %props, i32 255, i32 28)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 4
  %2 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 1
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %call.i, align 4
  %brightness = getelementptr inbounds %struct.da9052_bl, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %brightness, align 4
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %9 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %id_entry, align 4
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %driver_data, align 4
  %led_reg = getelementptr inbounds %struct.da9052_bl, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %led_reg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %led_reg, align 4
  %state = getelementptr inbounds %struct.da9052_bl, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %state, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %1, align 4
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 255, ptr %2, align 4
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 8
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %6, align 4
  %call6 = call ptr @devm_backlight_device_register(ptr noundef %dev, ptr noundef %18, ptr noundef %20, ptr noundef nonnull %call.i, ptr noundef nonnull @da9052_backlight_ops, ptr noundef nonnull %props) #6
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  %21 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %max_brightness13 = getelementptr inbounds %struct.backlight_properties, ptr %call6, i32 0, i32 1
  %22 = ptrtoint ptr %max_brightness13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 255, ptr %max_brightness13, align 4
  %23 = ptrtoint ptr %call6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %call6, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call6, ptr %driver_data.i.i, align 4
  %call16 = call fastcc i32 @da9052_adjust_wled_brightness(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %21, %do.end ], [ %call16, %if.end11 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_backlight_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i5 = getelementptr inbounds %struct.backlight_device, ptr %1, i32 0, i32 6, i32 8
  %2 = ptrtoint ptr %driver_data.i.i5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i5, align 4
  %brightness = getelementptr inbounds %struct.da9052_bl, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %brightness, align 4
  %state = getelementptr inbounds %struct.da9052_bl, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %state, align 4
  %call2 = tail call fastcc i32 @da9052_adjust_wled_brightness(ptr noundef %3)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @da9052_adjust_wled_brightness(ptr nocapture noundef readonly %wleds) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.da9052_bl, ptr %wleds, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %2 = ptrtoint ptr %wleds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wleds, align 4
  %regmap.i = getelementptr inbounds %struct.da9052, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %conv1.i = select i1 %cmp, i32 0, i32 63
  %call.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 70, i32 noundef %conv1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %fix_io.i = getelementptr inbounds %struct.da9052, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %fix_io.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fix_io.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i.if.end3_crit_edge, label %da9052_reg_write.exit

if.end.i.if.end3_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

da9052_reg_write.exit:                            ; preds = %if.end.i
  %call5.i = tail call i32 %7(ptr noundef %3, i8 noundef zeroext 70) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp1 = icmp slt i32 %call5.i, 0
  br i1 %cmp1, label %da9052_reg_write.exit.cleanup_crit_edge, label %da9052_reg_write.exit.if.end3_crit_edge

da9052_reg_write.exit.if.end3_crit_edge:          ; preds = %da9052_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

da9052_reg_write.exit.cleanup_crit_edge:          ; preds = %da9052_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %da9052_reg_write.exit.if.end3_crit_edge, %if.end.i.if.end3_crit_edge
  %8 = ptrtoint ptr %wleds to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wleds, align 4
  %regmap.i43 = getelementptr inbounds %struct.da9052, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %regmap.i43 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i43, align 4
  %conv1.i44 = select i1 %cmp, i32 0, i32 255
  %call.i45 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 71, i32 noundef %conv1.i44) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %cmp.i46 = icmp slt i32 %call.i45, 0
  br i1 %cmp.i46, label %if.end3.cleanup_crit_edge, label %if.end.i49

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i49:                                       ; preds = %if.end3
  %fix_io.i47 = getelementptr inbounds %struct.da9052, ptr %9, i32 0, i32 8
  %12 = ptrtoint ptr %fix_io.i47 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fix_io.i47, align 4
  %tobool.not.i48 = icmp eq ptr %13, null
  br i1 %tobool.not.i48, label %if.end.i49.if.end8_crit_edge, label %da9052_reg_write.exit53

if.end.i49.if.end8_crit_edge:                     ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

da9052_reg_write.exit53:                          ; preds = %if.end.i49
  %call5.i50 = tail call i32 %13(ptr noundef %9, i8 noundef zeroext 71) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i50)
  %cmp6 = icmp slt i32 %call5.i50, 0
  br i1 %cmp6, label %da9052_reg_write.exit53.cleanup_crit_edge, label %da9052_reg_write.exit53.if.end8_crit_edge

da9052_reg_write.exit53.if.end8_crit_edge:        ; preds = %da9052_reg_write.exit53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

da9052_reg_write.exit53.cleanup_crit_edge:        ; preds = %da9052_reg_write.exit53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %da9052_reg_write.exit53.if.end8_crit_edge, %if.end.i49.if.end8_crit_edge
  %14 = ptrtoint ptr %wleds to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wleds, align 4
  %led_reg = getelementptr inbounds %struct.da9052_bl, ptr %wleds, i32 0, i32 3
  %16 = ptrtoint ptr %led_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %led_reg, align 4
  %arrayidx = getelementptr [3 x i8], ptr @wled_bank, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  %regmap.i54 = getelementptr inbounds %struct.da9052, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %regmap.i54 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i54, align 4
  %conv.i = zext i8 %19 to i32
  %call.i55 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef %conv.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %cmp.i56 = icmp slt i32 %call.i55, 0
  br i1 %cmp.i56, label %if.end8.cleanup_crit_edge, label %if.end.i59

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i59:                                       ; preds = %if.end8
  %fix_io.i57 = getelementptr inbounds %struct.da9052, ptr %15, i32 0, i32 8
  %22 = ptrtoint ptr %fix_io.i57 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fix_io.i57, align 4
  %tobool.not.i58 = icmp eq ptr %23, null
  br i1 %tobool.not.i58, label %if.end.i59.if.end13_crit_edge, label %da9052_reg_write.exit63

if.end.i59.if.end13_crit_edge:                    ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

da9052_reg_write.exit63:                          ; preds = %if.end.i59
  %call5.i60 = tail call i32 %23(ptr noundef %15, i8 noundef zeroext %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i60)
  %cmp11 = icmp slt i32 %call5.i60, 0
  br i1 %cmp11, label %da9052_reg_write.exit63.cleanup_crit_edge, label %da9052_reg_write.exit63.if.end13_crit_edge

da9052_reg_write.exit63.if.end13_crit_edge:       ; preds = %da9052_reg_write.exit63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

da9052_reg_write.exit63.cleanup_crit_edge:        ; preds = %da9052_reg_write.exit63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %da9052_reg_write.exit63.if.end13_crit_edge, %if.end.i59.if.end13_crit_edge
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #6
  %brightness = getelementptr inbounds %struct.da9052_bl, ptr %wleds, i32 0, i32 1
  %24 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %brightness, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not = icmp eq i32 %25, 0
  br i1 %tobool.not, label %if.end13.if.end24_crit_edge, label %if.then14

if.end13.if.end24_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then14:                                        ; preds = %if.end13
  %26 = ptrtoint ptr %wleds to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wleds, align 4
  %28 = ptrtoint ptr %led_reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %led_reg, align 4
  %arrayidx17 = getelementptr [3 x i8], ptr @wled_bank, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx17, align 1
  %regmap.i64 = getelementptr inbounds %struct.da9052, ptr %27, i32 0, i32 1
  %32 = ptrtoint ptr %regmap.i64 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap.i64, align 4
  %conv.i65 = zext i8 %31 to i32
  %conv1.i66 = and i32 %25, 255
  %call.i67 = tail call i32 @regmap_write(ptr noundef %33, i32 noundef %conv.i65, i32 noundef %conv1.i66) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %cmp.i68 = icmp slt i32 %call.i67, 0
  br i1 %cmp.i68, label %if.then14.cleanup_crit_edge, label %if.end.i71

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i71:                                       ; preds = %if.then14
  %fix_io.i69 = getelementptr inbounds %struct.da9052, ptr %27, i32 0, i32 8
  %34 = ptrtoint ptr %fix_io.i69 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fix_io.i69, align 4
  %tobool.not.i70 = icmp eq ptr %35, null
  br i1 %tobool.not.i70, label %if.end.i71.if.end24_crit_edge, label %da9052_reg_write.exit75

if.end.i71.if.end24_crit_edge:                    ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

da9052_reg_write.exit75:                          ; preds = %if.end.i71
  %call5.i72 = tail call i32 %35(ptr noundef %27, i8 noundef zeroext %31) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i72)
  %cmp20 = icmp slt i32 %call5.i72, 0
  br i1 %cmp20, label %da9052_reg_write.exit75.cleanup_crit_edge, label %da9052_reg_write.exit75.if.end24_crit_edge

da9052_reg_write.exit75.if.end24_crit_edge:       ; preds = %da9052_reg_write.exit75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

da9052_reg_write.exit75.cleanup_crit_edge:        ; preds = %da9052_reg_write.exit75
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %da9052_reg_write.exit75.if.end24_crit_edge, %if.end.i71.if.end24_crit_edge, %if.end13.if.end24_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %da9052_reg_write.exit75.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %da9052_reg_write.exit63.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %da9052_reg_write.exit53.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %da9052_reg_write.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ %call5.i, %da9052_reg_write.exit.cleanup_crit_edge ], [ %call5.i50, %da9052_reg_write.exit53.cleanup_crit_edge ], [ %call5.i60, %da9052_reg_write.exit63.cleanup_crit_edge ], [ %call5.i72, %da9052_reg_write.exit75.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i45, %if.end3.cleanup_crit_edge ], [ %call.i55, %if.end8.cleanup_crit_edge ], [ %call.i67, %if.then14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_backlight_update_status(ptr nocapture noundef readonly %bl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bl, align 8
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %brightness2 = getelementptr inbounds %struct.da9052_bl, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %brightness2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %1, ptr %brightness2, align 4
  %state = getelementptr inbounds %struct.da9052_bl, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %state, align 4
  %call3 = tail call fastcc i32 @da9052_adjust_wled_brightness(ptr noundef %3)
  ret i32 %call3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @da9052_backlight_get_brightness(ptr nocapture noundef readonly %bl) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %brightness = getelementptr inbounds %struct.da9052_bl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %brightness, align 4
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__initcall__kmod_da9052_bl__301_176_da9052_wled_driver_init6, !1, !"__initcall__kmod_da9052_bl__301_176_da9052_wled_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/backlight/da9052_bl.c", i32 176, i32 1}
!2 = !{ptr @__exitcall_da9052_wled_driver_exit, !1, !"__exitcall_da9052_wled_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author302, !4, !"__UNIQUE_ID_author302", i1 false, i1 false}
!4 = !{!"../drivers/video/backlight/da9052_bl.c", i32 178, i32 1}
!5 = !{ptr @__UNIQUE_ID_description303, !6, !"__UNIQUE_ID_description303", i1 false, i1 false}
!6 = !{!"../drivers/video/backlight/da9052_bl.c", i32 179, i32 1}
!7 = !{ptr @__UNIQUE_ID_file304, !8, !"__UNIQUE_ID_file304", i1 false, i1 false}
!8 = !{!"../drivers/video/backlight/da9052_bl.c", i32 180, i32 1}
!9 = !{ptr @__UNIQUE_ID_license305, !8, !"__UNIQUE_ID_license305", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/video/backlight/da9052_bl.c", i32 172, i32 11}
!12 = !{ptr @da9052_wled_driver, !13, !"da9052_wled_driver", i1 false, i1 false}
!13 = !{!"../drivers/video/backlight/da9052_bl.c", i32 167, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/video/backlight/da9052_bl.c", i32 127, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @da9052_backlight_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @da9052_backlight_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @da9052_backlight_ops, !23, !"da9052_backlight_ops", i1 false, i1 false}
!23 = !{!"../drivers/video/backlight/da9052_bl.c", i32 100, i32 35}
!24 = !{ptr @wled_bank, !25, !"wled_bank", i1 false, i1 false}
!25 = !{!"../drivers/video/backlight/da9052_bl.c", i32 32, i32 28}
!26 = !{ptr @da9052_wled_ids, !27, !"da9052_wled_ids", i1 false, i1 false}
!27 = !{!"../drivers/video/backlight/da9052_bl.c", i32 150, i32 40}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
