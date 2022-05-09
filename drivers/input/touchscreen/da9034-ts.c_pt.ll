; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/da9034-ts.c_pt.bc'
source_filename = "../drivers/input/touchscreen/da9034-ts.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.da9034_touch = type { ptr, ptr, %struct.delayed_work, %struct.notifier_block, i32, i32, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.da9034_touch_pdata = type { i32, i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_da9034_ts__223_360_da9034_touch_driver_init6 = internal global ptr @da9034_touch_driver_init, section ".initcall6.init", align 4
@da9034_touch_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @da9034_touch_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_da9034_touch_driver_exit = internal global ptr @da9034_touch_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description224 = internal constant [73 x i8] c"da9034_ts.description=Touchscreen driver for Dialog Semiconductor DA9034\00", section ".modinfo", align 1
@__UNIQUE_ID_author225 = internal constant [84 x i8] c"da9034_ts.author=Eric Miao <eric.miao@marvell.com>, Bin Yang <bin.yang@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file226 = internal constant [51 x i8] c"da9034_ts.file=drivers/input/touchscreen/da9034-ts\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [22 x i8] c"da9034_ts.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias228 = internal constant [38 x i8] c"da9034_ts.alias=platform:da9034-touch\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"da9034-touch\00", [19 x i8] zeroinitializer }, align 32
@da9034_touch_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 306, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to allocate driver data\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"da9034_touch_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/input/touchscreen/da9034-ts.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@da9034_touch_probe._entry_ptr = internal global ptr @da9034_touch_probe._entry, section ".printk_index", align 4
@da9034_touch_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&(&touch->tsi_work)->work)\00", [51 x i8] zeroinitializer }, align 32
@da9034_touch_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&touch->tsi_work)->timer\00", [37 x i8] zeroinitializer }, align 32
@da9034_touch_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 326, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate input device\0A\00", [63 x i8] zeroinitializer }, align 32
@da9034_touch_probe._entry_ptr.11 = internal global ptr @da9034_touch_probe._entry.9, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.13 = private unnamed_addr constant [20 x i8] c"da9034_touch_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 354, i32 31 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 356, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 306, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 321, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [41 x i8] c"../drivers/input/touchscreen/da9034-ts.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 326, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_alias228, ptr @__UNIQUE_ID_author225, ptr @__UNIQUE_ID_description224, ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_license227, ptr @__exitcall_da9034_touch_driver_exit, ptr @__initcall__kmod_da9034_ts__223_360_da9034_touch_driver_init6, ptr @da9034_touch_driver_exit, ptr @da9034_touch_probe._entry, ptr @da9034_touch_probe._entry.9, ptr @da9034_touch_probe._entry_ptr, ptr @da9034_touch_probe._entry_ptr.11, ptr @da9034_touch_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @da9034_touch_probe.__key, ptr @.str.6, ptr @da9034_touch_probe.__key.7, ptr @.str.8, ptr @.str.10], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9034_touch_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9034_touch_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9034_touch_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9034_touch_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9034_touch_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @da9034_touch_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @da9034_touch_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @da9034_touch_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @da9034_touch_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9034_touch_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 144, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %call.i, align 4
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %interval_ms7 = getelementptr inbounds %struct.da9034_touch, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %interval_ms7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %interval_ms7, align 4
  %x_inverted = getelementptr inbounds %struct.da9034_touch_pdata, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %x_inverted to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %x_inverted, align 4
  %x_inverted8 = getelementptr inbounds %struct.da9034_touch, ptr %call.i, i32 0, i32 6
  %10 = ptrtoint ptr %x_inverted8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %x_inverted8, align 4
  %y_inverted = getelementptr inbounds %struct.da9034_touch_pdata, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %y_inverted to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %y_inverted, align 4
  %y_inverted9 = getelementptr inbounds %struct.da9034_touch, ptr %call.i, i32 0, i32 7
  %13 = ptrtoint ptr %y_inverted9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %y_inverted9, align 4
  br label %do.body13

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %interval_ms10 = getelementptr inbounds %struct.da9034_touch, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %interval_ms10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 10, ptr %interval_ms10, align 4
  br label %do.body13

do.body13:                                        ; preds = %if.else, %if.then6
  %tsi_work = getelementptr inbounds %struct.da9034_touch, ptr %call.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %tsi_work, i32 noundef 0) #5
  %15 = ptrtoint ptr %tsi_work to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %tsi_work, align 4
  %lockdep_map = getelementptr inbounds %struct.da9034_touch, ptr %call.i, i32 0, i32 2, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @da9034_touch_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry20 = getelementptr inbounds %struct.da9034_touch, ptr %call.i, i32 0, i32 2, i32 0, i32 1
  %16 = ptrtoint ptr %entry20 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry20, ptr %entry20, align 4
  %prev.i = getelementptr inbounds %struct.da9034_touch, ptr %call.i, i32 0, i32 2, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry20, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.da9034_touch, ptr %call.i, i32 0, i32 2, i32 0, i32 2
  %18 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @da9034_tsi_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.da9034_touch, ptr %call.i, i32 0, i32 2, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.8, ptr noundef nonnull @da9034_touch_probe.__key.7) #5
  %notifier = getelementptr inbounds %struct.da9034_touch, ptr %call.i, i32 0, i32 3
  %19 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @da9034_touch_notifier, ptr %notifier, align 4
  %call32 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #5
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %do.end37, label %if.end39

do.end37:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #8
  br label %cleanup

if.end39:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 8
  %22 = ptrtoint ptr %call32 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %call32, align 8
  %open = getelementptr inbounds %struct.input_dev, ptr %call32, i32 0, i32 31
  %23 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @da9034_touch_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call32, i32 0, i32 32
  %24 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @da9034_touch_close, ptr %close, align 4
  %parent43 = getelementptr inbounds %struct.input_dev, ptr %call32, i32 0, i32 40, i32 1
  %25 = ptrtoint ptr %parent43 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev, ptr %parent43, align 8
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call32, i32 0, i32 5
  %26 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %evbit, align 4
  %or.i = or i32 %27, 8
  store i32 %or.i, ptr %evbit, align 4
  %absbit = getelementptr inbounds %struct.input_dev, ptr %call32, i32 0, i32 8
  %28 = ptrtoint ptr %absbit to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %absbit, align 4
  %or.i98 = or i32 %29, 3
  store i32 %or.i98, ptr %absbit, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call32, i32 noundef 0, i32 noundef 0, i32 noundef 1023, i32 noundef 0, i32 noundef 0) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %call32, i32 noundef 1, i32 noundef 0, i32 noundef 1023, i32 noundef 0, i32 noundef 0) #5
  %30 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %evbit, align 4
  %or.i99 = or i32 %31, 2
  store i32 %or.i99, ptr %evbit, align 4
  %add.ptr.i = getelementptr %struct.input_dev, ptr %call32, i32 0, i32 6, i32 10
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i, align 4
  %or.i100 = or i32 %33, 1024
  store i32 %or.i100, ptr %add.ptr.i, align 4
  %input_dev50 = getelementptr inbounds %struct.da9034_touch, ptr %call.i, i32 0, i32 1
  %34 = ptrtoint ptr %input_dev50 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call32, ptr %input_dev50, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call32, i32 0, i32 40, i32 8
  %35 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call51 = tail call i32 @input_register_device(ptr noundef nonnull %call32) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %do.end37, %do.end
  %retval.0 = phi i32 [ -12, %do.end37 ], [ -12, %do.end ], [ %call51, %if.end39 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @da9034_tsi_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  tail call fastcc void @da9034_event_handler(ptr noundef %add.ptr, i32 noundef 3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9034_touch_notifier(ptr noundef %nb, i32 noundef %event, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -108
  %and = and i32 %event, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @da9034_event_handler(ptr noundef %add.ptr, i32 noundef 2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and1 = and i32 %event, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %land.lhs.true

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %state = getelementptr i8, ptr %nb, i32 12
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then3, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @da9034_event_handler(ptr noundef %add.ptr, i32 noundef 0)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9034_touch_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %notifier = getelementptr inbounds %struct.da9034_touch, ptr %1, i32 0, i32 3
  %call1 = tail call i32 @da903x_register_notifier(ptr noundef %3, ptr noundef %notifier, i32 noundef 3145728) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call3 = tail call i32 @da903x_set_bits(ptr noundef %5, i32 noundef 80, i8 noundef zeroext 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call8 = tail call i32 @da903x_write(ptr noundef %7, i32 noundef 83, i8 noundef zeroext 27) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call13 = tail call i32 @da903x_write(ptr noundef %9, i32 noundef 84, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %state = getelementptr inbounds %struct.da9034_touch, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %state, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @da903x_set_bits(ptr noundef %12, i32 noundef 82, i8 noundef zeroext 16) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end11.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -16, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call8, %if.end6.cleanup_crit_edge ], [ %call13, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @da9034_touch_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %notifier = getelementptr inbounds %struct.da9034_touch, ptr %1, i32 0, i32 3
  %call1 = tail call i32 @da903x_unregister_notifier(ptr noundef %3, ptr noundef %notifier, i32 noundef 3145728) #5
  %tsi_work = getelementptr inbounds %struct.da9034_touch, ptr %1, i32 0, i32 2
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %tsi_work) #5
  %state = getelementptr inbounds %struct.da9034_touch, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %state, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @da903x_clr_bits(ptr noundef %6, i32 noundef 82, i8 noundef zeroext 8) #5
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call2.i = tail call i32 @da903x_clr_bits(ptr noundef %8, i32 noundef 82, i8 noundef zeroext 16) #5
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call6 = tail call i32 @da903x_clr_bits(ptr noundef %10, i32 noundef 80, i8 noundef zeroext 16) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @da9034_event_handler(ptr noundef %touch, i32 noundef %event) unnamed_addr #2 align 64 {
entry:
  %_x.i = alloca i8, align 1
  %_y.i = alloca i8, align 1
  %_v.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.da9034_touch, ptr %touch, i32 0, i32 4
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb19
    i32 3, label %sw.bb30
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %event)
  %cmp.not = icmp eq i32 %event, 0
  br i1 %cmp.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %3 = ptrtoint ptr %touch to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %touch, align 4
  %call.i = tail call i32 @da903x_set_bits(ptr noundef %4, i32 noundef 82, i8 noundef zeroext 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end2, label %if.end.err_reset_crit_edge

if.end.err_reset_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_reset

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %state, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cmp5.not = icmp eq i32 %event, 2
  br i1 %cmp5.not, label %if.end7, label %sw.bb4.cleanup_crit_edge

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %sw.bb4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %_x.i) #5
  %6 = ptrtoint ptr %_x.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %_x.i, align 1, !annotation !42
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %_y.i) #5
  %7 = ptrtoint ptr %_y.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %_y.i, align 1, !annotation !42
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %_v.i) #5
  %8 = ptrtoint ptr %_v.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %_v.i, align 1, !annotation !42
  %9 = ptrtoint ptr %touch to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %touch, align 4
  %call.i71 = call i32 @da903x_read(ptr noundef %10, i32 noundef 108, ptr noundef nonnull %_x.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %tobool.not.i = icmp eq i32 %call.i71, 0
  br i1 %tobool.not.i, label %if.end.i73, label %if.end7.read_tsi.exit.thread_crit_edge

if.end7.read_tsi.exit.thread_crit_edge:           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %read_tsi.exit.thread

if.end.i73:                                       ; preds = %if.end7
  %11 = ptrtoint ptr %touch to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %touch, align 4
  %call2.i72 = call i32 @da903x_read(ptr noundef %12, i32 noundef 109, ptr noundef nonnull %_y.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i72)
  %tobool3.not.i = icmp eq i32 %call2.i72, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i73.read_tsi.exit.thread_crit_edge

if.end.i73.read_tsi.exit.thread_crit_edge:        ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #7
  br label %read_tsi.exit.thread

if.end5.i:                                        ; preds = %if.end.i73
  %13 = ptrtoint ptr %touch to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %touch, align 4
  %call7.i = call i32 @da903x_read(ptr noundef %14, i32 noundef 110, ptr noundef nonnull %_v.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end11, label %if.end5.i.read_tsi.exit.thread_crit_edge

if.end5.i.read_tsi.exit.thread_crit_edge:         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %read_tsi.exit.thread

read_tsi.exit.thread:                             ; preds = %if.end5.i.read_tsi.exit.thread_crit_edge, %if.end.i73.read_tsi.exit.thread_crit_edge, %if.end7.read_tsi.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %_v.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %_y.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %_x.i) #5
  br label %err_reset

if.end11:                                         ; preds = %if.end5.i
  %15 = ptrtoint ptr %_x.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %_x.i, align 1
  %conv.i = zext i8 %16 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 2
  %17 = ptrtoint ptr %_v.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %_v.i, align 1
  %19 = and i8 %18, 3
  %and12.i = zext i8 %19 to i32
  %or.i = or i32 %shl.i, %and12.i
  %last_x.i = getelementptr inbounds %struct.da9034_touch, ptr %touch, i32 0, i32 8
  %20 = ptrtoint ptr %last_x.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i, ptr %last_x.i, align 4
  %21 = ptrtoint ptr %_y.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %_y.i, align 1
  %conv13.i = zext i8 %22 to i32
  %shl14.i = shl nuw nsw i32 %conv13.i, 2
  %23 = lshr i8 %18, 2
  %24 = and i8 %23, 3
  %25 = zext i8 %24 to i32
  %or18.i = or i32 %shl14.i, %25
  %last_y.i = getelementptr inbounds %struct.da9034_touch, ptr %touch, i32 0, i32 9
  %26 = ptrtoint ptr %last_y.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or18.i, ptr %last_y.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %_v.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %_y.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %_x.i) #5
  %27 = ptrtoint ptr %touch to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %touch, align 4
  %call.i75 = call i32 @da903x_clr_bits(ptr noundef %28, i32 noundef 82, i8 noundef zeroext 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool13.not = icmp eq i32 %call.i75, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.err_reset_crit_edge

if.end11.err_reset_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_reset

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %state, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %30(i32 noundef 214748000) #5
  %31 = ptrtoint ptr %touch to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %touch, align 4
  %call.i76 = call i32 @da903x_query_status(ptr noundef %32, i32 noundef 64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %tobool18.not = icmp eq i32 %call.i76, 0
  %cond = zext i1 %tobool18.not to i32
  call fastcc void @da9034_event_handler(ptr noundef %touch, i32 noundef %cond)
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  %33 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %event, label %sw.bb19.cleanup_crit_edge [
    i32 0, label %if.then21
    i32 1, label %if.then27
  ]

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then21:                                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #7
  %last_x.i77 = getelementptr inbounds %struct.da9034_touch, ptr %touch, i32 0, i32 8
  %34 = ptrtoint ptr %last_x.i77 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %last_x.i77, align 4
  %last_y.i78 = getelementptr inbounds %struct.da9034_touch, ptr %touch, i32 0, i32 9
  %36 = ptrtoint ptr %last_y.i78 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %last_y.i78, align 4
  %and.i = and i32 %35, 4095
  %x_inverted.i = getelementptr inbounds %struct.da9034_touch, ptr %touch, i32 0, i32 6
  %38 = ptrtoint ptr %x_inverted.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %x_inverted.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i79 = icmp eq i32 %39, 0
  %sub.i = sub nsw i32 1024, %and.i
  %spec.select.i = select i1 %tobool.not.i79, i32 %and.i, i32 %sub.i
  %and1.i = and i32 %37, 4095
  %y_inverted.i = getelementptr inbounds %struct.da9034_touch, ptr %touch, i32 0, i32 7
  %40 = ptrtoint ptr %y_inverted.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %y_inverted.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool2.not.i = icmp eq i32 %41, 0
  %sub4.i = sub nsw i32 1024, %and1.i
  %y.0.i = select i1 %tobool2.not.i, i32 %and1.i, i32 %sub4.i
  %input_dev.i = getelementptr inbounds %struct.da9034_touch, ptr %touch, i32 0, i32 1
  %42 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %input_dev.i, align 4
  tail call void @input_event(ptr noundef %43, i32 noundef 3, i32 noundef 0, i32 noundef %spec.select.i) #5
  %44 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %input_dev.i, align 4
  tail call void @input_event(ptr noundef %45, i32 noundef 3, i32 noundef 1, i32 noundef %y.0.i) #5
  %46 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %input_dev.i, align 4
  tail call void @input_event(ptr noundef %47, i32 noundef 1, i32 noundef 330, i32 noundef 1) #5
  %48 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %input_dev.i, align 4
  tail call void @input_event(ptr noundef %49, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %tsi_work = getelementptr inbounds %struct.da9034_touch, ptr %touch, i32 0, i32 2
  %interval_ms = getelementptr inbounds %struct.da9034_touch, ptr %touch, i32 0, i32 5
  %50 = ptrtoint ptr %interval_ms to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %interval_ms, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %51) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %52 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %52, ptr noundef %tsi_work, i32 noundef %call2.i) #5
  %53 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 3, ptr %state, align 4
  br label %cleanup

if.then27:                                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #7
  %input_dev.i80 = getelementptr inbounds %struct.da9034_touch, ptr %touch, i32 0, i32 1
  %54 = ptrtoint ptr %input_dev.i80 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %input_dev.i80, align 4
  tail call void @input_event(ptr noundef %55, i32 noundef 1, i32 noundef 330, i32 noundef 0) #5
  %56 = ptrtoint ptr %input_dev.i80 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %input_dev.i80, align 4
  tail call void @input_event(ptr noundef %57, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %58 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %state, align 4
  br label %cleanup

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %event)
  %cmp31.not = icmp eq i32 %event, 3
  br i1 %cmp31.not, label %if.end33, label %sw.bb30.cleanup_crit_edge

sw.bb30.cleanup_crit_edge:                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end33:                                         ; preds = %sw.bb30
  %59 = ptrtoint ptr %touch to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %touch, align 4
  %call.i81 = tail call i32 @da903x_query_status(ptr noundef %60, i32 noundef 64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool35.not = icmp eq i32 %call.i81, 0
  br i1 %tobool35.not, label %if.else, label %if.then36

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %touch to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %touch, align 4
  %call.i82 = tail call i32 @da903x_set_bits(ptr noundef %62, i32 noundef 82, i8 noundef zeroext 8) #5
  %63 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %state, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %input_dev.i83 = getelementptr inbounds %struct.da9034_touch, ptr %touch, i32 0, i32 1
  %64 = ptrtoint ptr %input_dev.i83 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %input_dev.i83, align 4
  tail call void @input_event(ptr noundef %65, i32 noundef 1, i32 noundef 330, i32 noundef 0) #5
  %66 = ptrtoint ptr %input_dev.i83 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %input_dev.i83, align 4
  tail call void @input_event(ptr noundef %67, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %68 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %state, align 4
  br label %cleanup

err_reset:                                        ; preds = %if.end11.err_reset_crit_edge, %read_tsi.exit.thread, %if.end.err_reset_crit_edge
  %69 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %state, align 4
  %70 = ptrtoint ptr %touch to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %touch, align 4
  %call.i84 = call i32 @da903x_clr_bits(ptr noundef %71, i32 noundef 82, i8 noundef zeroext 8) #5
  %72 = ptrtoint ptr %touch to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %touch, align 4
  %call.i85 = call i32 @da903x_set_bits(ptr noundef %73, i32 noundef 82, i8 noundef zeroext 16) #5
  br label %cleanup

cleanup:                                          ; preds = %err_reset, %if.else, %if.then36, %sw.bb30.cleanup_crit_edge, %if.then27, %if.then21, %sw.bb19.cleanup_crit_edge, %if.end15, %sw.bb4.cleanup_crit_edge, %if.end2, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @da903x_set_bits(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @da903x_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @da903x_clr_bits(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @da903x_query_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @da903x_register_notifier(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @da903x_write(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @da903x_unregister_notifier(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @__initcall__kmod_da9034_ts__223_360_da9034_touch_driver_init6, !1, !"__initcall__kmod_da9034_ts__223_360_da9034_touch_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/da9034-ts.c", i32 360, i32 1}
!2 = !{ptr @__exitcall_da9034_touch_driver_exit, !1, !"__exitcall_da9034_touch_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description224, !4, !"__UNIQUE_ID_description224", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/da9034-ts.c", i32 362, i32 1}
!5 = !{ptr @__UNIQUE_ID_author225, !6, !"__UNIQUE_ID_author225", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/da9034-ts.c", i32 363, i32 1}
!7 = !{ptr @__UNIQUE_ID_file226, !8, !"__UNIQUE_ID_file226", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/da9034-ts.c", i32 364, i32 1}
!9 = !{ptr @__UNIQUE_ID_license227, !8, !"__UNIQUE_ID_license227", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias228, !11, !"__UNIQUE_ID_alias228", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/da9034-ts.c", i32 365, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/da9034-ts.c", i32 356, i32 11}
!14 = !{ptr @da9034_touch_driver, !15, !"da9034_touch_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/da9034-ts.c", i32 354, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/touchscreen/da9034-ts.c", i32 306, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @da9034_touch_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @da9034_touch_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @da9034_touch_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/input/touchscreen/da9034-ts.c", i32 321, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @da9034_touch_probe.__key.7, !25, !"__key", i1 false, i1 false}
!28 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/touchscreen/da9034-ts.c", i32 326, i32 3}
!31 = !{ptr @da9034_touch_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @da9034_touch_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"auto-init"}
