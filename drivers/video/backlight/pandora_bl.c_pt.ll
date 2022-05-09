; ModuleID = '/llk/IR_all_yes/drivers/video/backlight/pandora_bl.c_pt.bc'
source_filename = "../drivers/video/backlight/pandora_bl.c"
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
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_pandora_bl__301_157_pandora_backlight_driver_init6 = internal global ptr @pandora_backlight_driver_init, section ".initcall6.init", align 4
@pandora_backlight_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pandora_backlight_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pandora_backlight_driver_exit = internal global ptr @pandora_backlight_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author302 = internal constant [57 x i8] c"pandora_bl.author=Gra\C5\BEvydas Ignotas <notasas@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description303 = internal constant [48 x i8] c"pandora_bl.description=Pandora Backlight Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [51 x i8] c"pandora_bl.file=drivers/video/backlight/pandora_bl\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [23 x i8] c"pandora_bl.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias306 = internal constant [44 x i8] c"pandora_bl.alias=platform:pandora-backlight\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pandora-backlight\00", [46 x i8] zeroinitializer }, align 32
@pandora_backlight_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 118, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to allocate driver private data\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pandora_backlight_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/video/backlight/pandora_bl.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pandora_backlight_probe._entry_ptr = internal global ptr @pandora_backlight_probe._entry, section ".printk_index", align 4
@pandora_backlight_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 1, ptr @pandora_backlight_update_status, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@pandora_backlight_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 128, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to register backlight\0A\00", [34 x i8] zeroinitializer }, align 32
@pandora_backlight_probe._entry_ptr.8 = internal global ptr @pandora_backlight_probe._entry.6, section ".printk_index", align 4
@___asan_gen_.9 = private unnamed_addr constant [25 x i8] c"pandora_backlight_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 150, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 152, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 118, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant [22 x i8] c"pandora_backlight_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 104, i32 35 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private constant [40 x i8] c"../drivers/video/backlight/pandora_bl.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 128, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_alias306, ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_pandora_backlight_driver_exit, ptr @__initcall__kmod_pandora_bl__301_157_pandora_backlight_driver_init6, ptr @pandora_backlight_driver_exit, ptr @pandora_backlight_probe._entry, ptr @pandora_backlight_probe._entry.6, ptr @pandora_backlight_probe._entry_ptr, ptr @pandora_backlight_probe._entry_ptr.8, ptr @pandora_backlight_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @pandora_backlight_ops, ptr @.str.7], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pandora_backlight_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pandora_backlight_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pandora_backlight_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pandora_backlight_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pandora_backlight_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pandora_backlight_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pandora_backlight_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @pandora_backlight_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pandora_backlight_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.addr.i38 = alloca i8, align 1
  %val.addr.i = alloca i8, align 1
  %props = alloca %struct.backlight_properties, align 4
  %r = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %r) #6
  %0 = ptrtoint ptr %r to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %r, align 1, !annotation !39
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 4, i32 noundef 3264) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 4
  %2 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 1
  %3 = call ptr @memset(ptr %props, i32 0, i32 28)
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 54, ptr %2, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %1, align 4
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %call4 = call ptr @devm_backlight_device_register(ptr noundef %dev, ptr noundef %7, ptr noundef %dev, ptr noundef nonnull %call, ptr noundef nonnull @pandora_backlight_ops, ptr noundef nonnull %props) #6
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end9, label %if.end12

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  %8 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call4, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %10 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -128, ptr %val.addr.i, align 1
  %call.i = call i32 @twl_i2c_write(i8 noundef zeroext 6, ptr noundef nonnull %val.addr.i, i8 noundef zeroext 0, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  %11 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %call, align 4
  %12 = ptrtoint ptr %call4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 54, ptr %call4, align 8
  %update_lock.i = getelementptr inbounds %struct.backlight_device, ptr %call4, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #6
  %ops.i = getelementptr inbounds %struct.backlight_device, ptr %call4, i32 0, i32 3
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end12.backlight_update_status.exit_crit_edge, label %land.lhs.true.i

if.end12.backlight_update_status.exit_crit_edge:  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_update_status.exit

land.lhs.true.i:                                  ; preds = %if.end12
  %update_status.i = getelementptr inbounds %struct.backlight_ops, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %update_status.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %update_status.i, align 4
  %tobool2.not.i = icmp eq ptr %16, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.backlight_update_status.exit_crit_edge, label %if.then.i

land.lhs.true.i.backlight_update_status.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_update_status.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i36 = call i32 %16(ptr noundef %call4) #6
  br label %backlight_update_status.exit

backlight_update_status.exit:                     ; preds = %if.then.i, %land.lhs.true.i.backlight_update_status.exit_crit_edge, %if.end12.backlight_update_status.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock.i) #6
  %call.i37 = call i32 @twl_i2c_read(i8 noundef zeroext 11, ptr noundef nonnull %r, i8 noundef zeroext 13, i32 noundef 1) #6
  %17 = ptrtoint ptr %r to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %r, align 1
  %19 = and i8 %18, -13
  %20 = or i8 %19, 4
  store i8 %20, ptr %r, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i38)
  %21 = ptrtoint ptr %val.addr.i38 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %val.addr.i38, align 1
  %call.i39 = call i32 @twl_i2c_write(i8 noundef zeroext 11, ptr noundef nonnull %val.addr.i38, i8 noundef zeroext 13, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i38)
  br label %cleanup

cleanup:                                          ; preds = %backlight_update_status.exit, %do.end9, %do.end
  %retval.0 = phi i32 [ %8, %do.end9 ], [ 0, %backlight_update_status.exit ], [ -12, %do.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %r) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pandora_backlight_update_status(ptr nocapture noundef readonly %bl) #2 align 64 {
entry:
  %val.addr.i74 = alloca i8, align 1
  %val.addr.i72 = alloca i8, align 1
  %val.addr.i70 = alloca i8, align 1
  %val.addr.i67 = alloca i8, align 1
  %val.addr.i65 = alloca i8, align 1
  %val.addr.i = alloca i8, align 1
  %r = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bl, align 8
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %r) #6
  %4 = ptrtoint ptr %r to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %r, align 1, !annotation !39
  %power = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 2
  %5 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %power, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp ne i32 %6, 0
  %state = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 5
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  %9 = and i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %10 = icmp ne i32 %9, 0
  %11 = select i1 %10, i1 true, i1 %cmp.not
  %12 = tail call i32 @llvm.umin.i32(i32 %1, i32 54)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1576 = icmp eq i32 %12, 0
  %cmp15 = select i1 %11, i1 true, i1 %cmp1576
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp17 = icmp eq i32 %14, 1
  br i1 %cmp15, label %if.then16, label %if.end28

if.then16:                                        ; preds = %entry
  br i1 %cmp17, label %if.then16.done_crit_edge, label %if.end19

if.then16.done_crit_edge:                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end19:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 @twl_i2c_read(i8 noundef zeroext 11, ptr noundef nonnull %r, i8 noundef zeroext 12, i32 noundef 1) #6
  %15 = ptrtoint ptr %r to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %r, align 1
  %17 = and i8 %16, -5
  store i8 %17, ptr %r, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %18 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %val.addr.i, align 1
  %call.i64 = call i32 @twl_i2c_write(i8 noundef zeroext 11, ptr noundef nonnull %val.addr.i, i8 noundef zeroext 12, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  %19 = ptrtoint ptr %r to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %r, align 1
  %21 = and i8 %20, -2
  store i8 %21, ptr %r, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i65)
  %22 = ptrtoint ptr %val.addr.i65 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %val.addr.i65, align 1
  %call.i66 = call i32 @twl_i2c_write(i8 noundef zeroext 11, ptr noundef nonnull %val.addr.i65, i8 noundef zeroext 12, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i65)
  br label %done

if.end28:                                         ; preds = %entry
  br i1 %cmp17, label %if.then32, label %if.end28.if.end45_crit_edge

if.end28.if.end45_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i67)
  %23 = ptrtoint ptr %val.addr.i67 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 63, ptr %val.addr.i67, align 1
  %call.i68 = call i32 @twl_i2c_write(i8 noundef zeroext 6, ptr noundef nonnull %val.addr.i67, i8 noundef zeroext 1, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i67)
  %call.i69 = call i32 @twl_i2c_read(i8 noundef zeroext 11, ptr noundef nonnull %r, i8 noundef zeroext 12, i32 noundef 1) #6
  %24 = ptrtoint ptr %r to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %r, align 1
  %26 = and i8 %25, -6
  %27 = or i8 %26, 1
  store i8 %27, ptr %r, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i70)
  %28 = ptrtoint ptr %val.addr.i70 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %val.addr.i70, align 1
  %call.i71 = call i32 @twl_i2c_write(i8 noundef zeroext 11, ptr noundef nonnull %val.addr.i70, i8 noundef zeroext 12, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i70)
  %29 = ptrtoint ptr %r to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %r, align 1
  %31 = or i8 %30, 4
  store i8 %31, ptr %r, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i72)
  %32 = ptrtoint ptr %val.addr.i72 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %val.addr.i72, align 1
  %call.i73 = call i32 @twl_i2c_write(i8 noundef zeroext 11, ptr noundef nonnull %val.addr.i72, i8 noundef zeroext 12, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i72)
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 10000, i32 noundef 2) #6
  br label %if.end45

if.end45:                                         ; preds = %if.then32, %if.end28.if.end45_crit_edge
  %33 = trunc i32 %12 to i8
  %conv46 = add nuw nsw i8 %33, 9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i74)
  %34 = ptrtoint ptr %val.addr.i74 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv46, ptr %val.addr.i74, align 1
  %call.i75 = call i32 @twl_i2c_write(i8 noundef zeroext 6, ptr noundef nonnull %val.addr.i74, i8 noundef zeroext 1, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i74)
  br label %done

done:                                             ; preds = %if.end45, %if.end19, %if.then16.done_crit_edge
  %. = zext i1 %cmp15 to i32
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %., ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %r) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_write(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_read(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

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
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__initcall__kmod_pandora_bl__301_157_pandora_backlight_driver_init6, !1, !"__initcall__kmod_pandora_bl__301_157_pandora_backlight_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/backlight/pandora_bl.c", i32 157, i32 1}
!2 = !{ptr @__exitcall_pandora_backlight_driver_exit, !1, !"__exitcall_pandora_backlight_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author302, !4, !"__UNIQUE_ID_author302", i1 false, i1 false}
!4 = !{!"../drivers/video/backlight/pandora_bl.c", i32 159, i32 1}
!5 = !{ptr @__UNIQUE_ID_description303, !6, !"__UNIQUE_ID_description303", i1 false, i1 false}
!6 = !{!"../drivers/video/backlight/pandora_bl.c", i32 160, i32 1}
!7 = !{ptr @__UNIQUE_ID_file304, !8, !"__UNIQUE_ID_file304", i1 false, i1 false}
!8 = !{!"../drivers/video/backlight/pandora_bl.c", i32 161, i32 1}
!9 = !{ptr @__UNIQUE_ID_license305, !8, !"__UNIQUE_ID_license305", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias306, !11, !"__UNIQUE_ID_alias306", i1 false, i1 false}
!11 = !{!"../drivers/video/backlight/pandora_bl.c", i32 162, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/video/backlight/pandora_bl.c", i32 152, i32 11}
!14 = !{ptr @pandora_backlight_driver, !15, !"pandora_backlight_driver", i1 false, i1 false}
!15 = !{!"../drivers/video/backlight/pandora_bl.c", i32 150, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/video/backlight/pandora_bl.c", i32 118, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @pandora_backlight_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @pandora_backlight_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/video/backlight/pandora_bl.c", i32 128, i32 3}
!26 = !{ptr @pandora_backlight_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @pandora_backlight_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @pandora_backlight_ops, !29, !"pandora_backlight_ops", i1 false, i1 false}
!29 = !{!"../drivers/video/backlight/pandora_bl.c", i32 104, i32 35}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"auto-init"}
