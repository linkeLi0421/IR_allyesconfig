; ModuleID = '/llk/IR_all_yes/drivers/video/backlight/rave-sp-backlight.c_pt.bc'
source_filename = "../drivers/video/backlight/rave-sp-backlight.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_rave_sp_backlight__301_81_rave_sp_backlight_driver_init6 = internal global ptr @rave_sp_backlight_driver_init, section ".initcall6.init", align 4
@rave_sp_backlight_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rave_sp_backlight_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rave_sp_backlight_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rave_sp_backlight_driver_exit = internal global ptr @rave_sp_backlight_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file302 = internal constant [65 x i8] c"rave_sp_backlight.file=drivers/video/backlight/rave-sp-backlight\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [30 x i8] c"rave_sp_backlight.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author304 = internal constant [80 x i8] c"rave_sp_backlight.author=Andrey Vostrikov <andrey.vostrikov@cogentembedded.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author305 = internal constant [77 x i8] c"rave_sp_backlight.author=Nikita Yushchenko <nikita.yoush@cogentembedded.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author306 = internal constant [67 x i8] c"rave_sp_backlight.author=Andrey Smirnov <andrew.smirnov@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description307 = internal constant [55 x i8] c"rave_sp_backlight.description=RAVE SP Backlight driver\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rave_sp_backlight\00", [46 x i8] zeroinitializer }, align 32
@rave_sp_backlight_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"zii,rave-sp-backlight\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rave_sp_backlight_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 1, ptr @rave_sp_backlight_update_status, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@rave_sp_backlight_props = internal global { %struct.backlight_properties, [36 x i8] } { %struct.backlight_properties { i32 50, i32 100, i32 0, i32 0, i32 2, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [25 x i8] c"rave_sp_backlight_driver\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 74, i32 31 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 77, i32 11 }
@___asan_gen_.7 = private unnamed_addr constant [27 x i8] c"rave_sp_backlight_of_match\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 69, i32 34 }
@___asan_gen_.10 = private unnamed_addr constant [22 x i8] c"rave_sp_backlight_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 35, i32 35 }
@___asan_gen_.13 = private unnamed_addr constant [24 x i8] c"rave_sp_backlight_props\00", align 1
@___asan_gen_.14 = private constant [47 x i8] c"../drivers/video/backlight/rave-sp-backlight.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 40, i32 36 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_description307, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__exitcall_rave_sp_backlight_driver_exit, ptr @__initcall__kmod_rave_sp_backlight__301_81_rave_sp_backlight_driver_init6, ptr @rave_sp_backlight_driver_exit, ptr @rave_sp_backlight_driver, ptr @.str, ptr @rave_sp_backlight_of_match, ptr @rave_sp_backlight_ops, ptr @rave_sp_backlight_props], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_backlight_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_backlight_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_backlight_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_backlight_props to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rave_sp_backlight_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rave_sp_backlight_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rave_sp_backlight_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @rave_sp_backlight_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rave_sp_backlight_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %call2 = tail call ptr @devm_backlight_device_register(ptr noundef %dev1, ptr noundef %1, ptr noundef %dev1, ptr noundef %5, ptr noundef nonnull @rave_sp_backlight_ops, ptr noundef nonnull @rave_sp_backlight_props) #4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %phandle = getelementptr inbounds %struct.device_node, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %phandle to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %phandle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %update_lock.i = getelementptr inbounds %struct.backlight_device, ptr %call2, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #4
  %ops.i = getelementptr inbounds %struct.backlight_device, ptr %call2, i32 0, i32 3
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.then5.backlight_update_status.exit_crit_edge, label %land.lhs.true.i

if.then5.backlight_update_status.exit_crit_edge:  ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %backlight_update_status.exit

land.lhs.true.i:                                  ; preds = %if.then5
  %update_status.i = getelementptr inbounds %struct.backlight_ops, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %update_status.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %update_status.i, align 4
  %tobool2.not.i = icmp eq ptr %14, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.backlight_update_status.exit_crit_edge, label %if.then.i

land.lhs.true.i.backlight_update_status.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %backlight_update_status.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 %14(ptr noundef %call2) #4
  br label %backlight_update_status.exit

backlight_update_status.exit:                     ; preds = %if.then.i, %land.lhs.true.i.backlight_update_status.exit_crit_edge, %if.then5.backlight_update_status.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock.i) #4
  br label %cleanup

cleanup:                                          ; preds = %backlight_update_status.exit, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ 0, %backlight_update_status.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rave_sp_backlight_update_status(ptr nocapture noundef readonly %bd) #2 align 64 {
entry:
  %cmd = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %power = getelementptr inbounds %struct.backlight_properties, ptr %bd, i32 0, i32 2
  %0 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bd, align 4
  %phi.cast15 = and i32 %3, 255
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %phi.cast15, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %driver_data.i = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 6, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %cmd) #4
  %6 = getelementptr inbounds [5 x i8], ptr %cmd, i32 0, i32 1
  %7 = getelementptr inbounds [5 x i8], ptr %cmd, i32 0, i32 2
  %8 = getelementptr inbounds [5 x i8], ptr %cmd, i32 0, i32 3
  %9 = getelementptr inbounds [5 x i8], ptr %cmd, i32 0, i32 4
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -90, ptr %cmd, align 1
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool.not = icmp eq i32 %cond, 0
  %12 = trunc i32 %cond to i8
  %phi.cast = or i8 %12, -128
  %spec.select = select i1 %tobool.not, i8 0, i8 %phi.cast
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %spec.select, ptr %7, align 1
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %8, align 1
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %9, align 1
  %call11 = call i32 @rave_sp_exec(ptr noundef %5, ptr noundef nonnull %cmd, i32 noundef 5, ptr noundef null, i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %cmd) #4
  ret i32 %call11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rave_sp_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__initcall__kmod_rave_sp_backlight__301_81_rave_sp_backlight_driver_init6, !1, !"__initcall__kmod_rave_sp_backlight__301_81_rave_sp_backlight_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/backlight/rave-sp-backlight.c", i32 81, i32 1}
!2 = !{ptr @__exitcall_rave_sp_backlight_driver_exit, !1, !"__exitcall_rave_sp_backlight_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file302, !4, !"__UNIQUE_ID_file302", i1 false, i1 false}
!4 = !{!"../drivers/video/backlight/rave-sp-backlight.c", i32 84, i32 1}
!5 = !{ptr @__UNIQUE_ID_license303, !4, !"__UNIQUE_ID_license303", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author304, !7, !"__UNIQUE_ID_author304", i1 false, i1 false}
!7 = !{!"../drivers/video/backlight/rave-sp-backlight.c", i32 85, i32 1}
!8 = !{ptr @__UNIQUE_ID_author305, !9, !"__UNIQUE_ID_author305", i1 false, i1 false}
!9 = !{!"../drivers/video/backlight/rave-sp-backlight.c", i32 86, i32 1}
!10 = !{ptr @__UNIQUE_ID_author306, !11, !"__UNIQUE_ID_author306", i1 false, i1 false}
!11 = !{!"../drivers/video/backlight/rave-sp-backlight.c", i32 87, i32 1}
!12 = !{ptr @__UNIQUE_ID_description307, !13, !"__UNIQUE_ID_description307", i1 false, i1 false}
!13 = !{!"../drivers/video/backlight/rave-sp-backlight.c", i32 88, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/video/backlight/rave-sp-backlight.c", i32 77, i32 11}
!16 = !{ptr @rave_sp_backlight_driver, !17, !"rave_sp_backlight_driver", i1 false, i1 false}
!17 = !{!"../drivers/video/backlight/rave-sp-backlight.c", i32 74, i32 31}
!18 = !{ptr @rave_sp_backlight_ops, !19, !"rave_sp_backlight_ops", i1 false, i1 false}
!19 = !{!"../drivers/video/backlight/rave-sp-backlight.c", i32 35, i32 35}
!20 = !{ptr @rave_sp_backlight_props, !21, !"rave_sp_backlight_props", i1 false, i1 false}
!21 = !{!"../drivers/video/backlight/rave-sp-backlight.c", i32 40, i32 36}
!22 = !{ptr @rave_sp_backlight_of_match, !23, !"rave_sp_backlight_of_match", i1 false, i1 false}
!23 = !{!"../drivers/video/backlight/rave-sp-backlight.c", i32 69, i32 34}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
