; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-berlin.c_pt.bc'
source_filename = "../drivers/pwm/pwm-berlin.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.berlin_pwm_chip = type { %struct.pwm_chip, ptr, ptr }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.berlin_pwm_channel = type { i32, i32, i32, i32 }

@__initcall__kmod_pwm_berlin__183_327_berlin_pwm_driver_init6 = internal global ptr @berlin_pwm_driver_init, section ".initcall6.init", align 4
@berlin_pwm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @berlin_pwm_probe, ptr @berlin_pwm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @berlin_pwm_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @berlin_pwm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_berlin_pwm_driver_exit = internal global ptr @berlin_pwm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [69 x i8] c"pwm_berlin.author=Antoine Tenart <antoine.tenart@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description185 = internal constant [49 x i8] c"pwm_berlin.description=Marvell Berlin PWM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [39 x i8] c"pwm_berlin.file=drivers/pwm/pwm-berlin\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [26 x i8] c"pwm_berlin.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"berlin-pwm\00", [21 x i8] zeroinitializer }, align 32
@berlin_pwm_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,berlin-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@berlin_pwm_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @berlin_pwm_suspend, ptr @berlin_pwm_resume, ptr @berlin_pwm_suspend, ptr @berlin_pwm_resume, ptr @berlin_pwm_suspend, ptr @berlin_pwm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@berlin_pwm_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr @berlin_pwm_request, ptr @berlin_pwm_free, ptr null, ptr @berlin_pwm_apply, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@berlin_pwm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 243, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to add PWM chip: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"berlin_pwm_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/pwm/pwm-berlin.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@berlin_pwm_probe._entry_ptr = internal global ptr @berlin_pwm_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.6 = private unnamed_addr constant [18 x i8] c"berlin_pwm_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 318, i32 31 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 322, i32 11 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"berlin_pwm_match\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 210, i32 34 }
@___asan_gen_.15 = private unnamed_addr constant [18 x i8] c"berlin_pwm_pm_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 315, i32 8 }
@___asan_gen_.18 = private unnamed_addr constant [15 x i8] c"berlin_pwm_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 203, i32 29 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [28 x i8] c"../drivers/pwm/pwm-berlin.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 243, i32 3 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_berlin_pwm_driver_exit, ptr @__initcall__kmod_pwm_berlin__183_327_berlin_pwm_driver_init6, ptr @berlin_pwm_driver_exit, ptr @berlin_pwm_probe._entry, ptr @berlin_pwm_probe._entry_ptr, ptr @berlin_pwm_driver, ptr @.str, ptr @berlin_pwm_match, ptr @berlin_pwm_pm_ops, ptr @berlin_pwm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @berlin_pwm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @berlin_pwm_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @berlin_pwm_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @berlin_pwm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @berlin_pwm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @berlin_pwm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @berlin_pwm_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @berlin_pwm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @berlin_pwm_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @berlin_pwm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.berlin_pwm_chip, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call9 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.berlin_pwm_chip, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %clk, align 4
  %cmp.i54 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i54, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  %call.i55 = tail call i32 @clk_prepare(ptr noundef %call9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool.not.i = icmp eq i32 %call.i55, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end15
  %call1.i = tail call i32 @clk_enable(ptr noundef %call9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end20, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call9) #6
  br label %cleanup

if.end20:                                         ; preds = %if.end.i
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @berlin_pwm_ops, ptr %ops, align 4
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %npwm, align 4
  %call26 = tail call i32 @pwmchip_add(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp slt i32 %call26, 0
  br i1 %cmp, label %do.end, label %if.end30

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call26) #9
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %8) #6
  tail call void @clk_unprepare(ptr noundef %8) #6
  br label %cleanup

if.end30:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end, %if.then3.i, %if.end15.cleanup_crit_edge, %if.then12, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ %3, %if.then12 ], [ %call26, %do.end ], [ 0, %if.end30 ], [ -12, %entry.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i55, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @berlin_pwm_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @pwmchip_remove(ptr noundef %1) #6
  %clk = getelementptr inbounds %struct.berlin_pwm_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @berlin_pwm_request(ptr nocapture noundef readnone %chip, ptr noundef %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @pwm_set_chip_data(ptr noundef %pwm, ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @berlin_pwm_free(ptr nocapture noundef readnone %chip, ptr noundef %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pwm_get_chip_data(ptr noundef %pwm) #6
  tail call void @kfree(ptr noundef %call) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @berlin_pwm_apply(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled2 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7, i32 3
  %0 = ptrtoint ptr %enabled2 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled2, align 4, !range !37
  %polarity = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %2 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %polarity, align 8
  %polarity4 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %polarity4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %polarity4, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then6

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %hwpwm.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %6 = ptrtoint ptr %hwpwm.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwpwm.i, align 8
  %base.i.i = getelementptr inbounds %struct.berlin_pwm_chip, ptr %chip, i32 0, i32 2
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 4
  %mul.i.i = shl i32 %7, 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %mul.i.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !38
  %11 = and i32 %10, -16777217
  %12 = ptrtoint ptr %hwpwm.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hwpwm.i, align 8
  %14 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i, align 4
  %mul.i7.i = shl i32 %13, 4
  %add.ptr.i8.i = getelementptr i8, ptr %15, i32 %mul.i7.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %11) #6, !srcloc !39
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  %16 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %polarity, align 8
  %hwpwm.i48 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %18 = ptrtoint ptr %hwpwm.i48 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hwpwm.i48, align 8
  %base.i.i49 = getelementptr inbounds %struct.berlin_pwm_chip, ptr %chip, i32 0, i32 2
  %20 = ptrtoint ptr %base.i.i49 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i49, align 4
  %mul.i.i50 = shl i32 %19, 4
  %add.ptr.i.i51 = getelementptr i8, ptr %21, i32 %mul.i.i50
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i51, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #6, !srcloc !38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp eq i32 %17, 0
  %23 = and i32 %22, -134217729
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #6
  %masksel.i = select i1 %cmp.i, i32 0, i32 8
  %value.0.i = or i32 %24, %masksel.i
  %25 = ptrtoint ptr %hwpwm.i48 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hwpwm.i48, align 8
  %27 = tail call i32 @llvm.bswap.i32(i32 %value.0.i) #6
  %28 = ptrtoint ptr %base.i.i49 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i49, align 4
  %mul.i2.i = shl i32 %26, 4
  %add.ptr.i3.i = getelementptr i8, ptr %29, i32 %mul.i2.i
  %add.ptr1.i4.i = getelementptr i8, ptr %add.ptr.i3.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i4.i, i32 %27) #6, !srcloc !39
  br label %if.end11

if.end11:                                         ; preds = %if.end, %entry.if.end11_crit_edge
  %enabled.1.off0.in = phi i8 [ 0, %if.end ], [ %1, %entry.if.end11_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enabled.1.off0.in)
  %enabled.1.off0.not = icmp eq i8 %enabled.1.off0.in, 0
  %enabled12 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %30 = ptrtoint ptr %enabled12 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %enabled12, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool13.not = icmp eq i8 %31, 0
  br i1 %tobool13.not, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end11
  br i1 %enabled.1.off0.not, label %if.then14.cleanup_crit_edge, label %if.then16

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  %hwpwm.i52 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %32 = ptrtoint ptr %hwpwm.i52 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hwpwm.i52, align 8
  %base.i.i53 = getelementptr inbounds %struct.berlin_pwm_chip, ptr %chip, i32 0, i32 2
  %34 = ptrtoint ptr %base.i.i53 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i.i53, align 4
  %mul.i.i54 = shl i32 %33, 4
  %add.ptr.i.i55 = getelementptr i8, ptr %35, i32 %mul.i.i54
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i55) #6, !srcloc !38
  %37 = and i32 %36, -16777217
  %38 = ptrtoint ptr %hwpwm.i52 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hwpwm.i52, align 8
  %40 = ptrtoint ptr %base.i.i53 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i.i53, align 4
  %mul.i7.i56 = shl i32 %39, 4
  %add.ptr.i8.i57 = getelementptr i8, ptr %41, i32 %mul.i7.i56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i57, i32 %37) #6, !srcloc !39
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %42 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %duty_cycle, align 8
  %44 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %state, align 8
  %clk.i = getelementptr inbounds %struct.berlin_pwm_chip, ptr %chip, i32 0, i32 1
  %46 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %clk.i, align 4
  %call1.i = tail call i32 @clk_get_rate(ptr noundef %47) #6
  %conv.i = zext i32 %call1.i to i64
  %mul.i = mul i64 %45, %conv.i
  %48 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i, i32 0) #11, !srcloc !40
  %asmresult.i.i = extractvalue { i64, i32 } %48, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %48, 1
  %49 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #11, !srcloc !41
  %asmresult10.i.i = extractvalue { i64, i32 } %49, 0
  %storemerge.i = lshr i64 %asmresult10.i.i, 29
  call void @__sanitizer_cov_trace_const_cmp8(i64 35184372088831, i64 %asmresult10.i.i)
  %cmp185.i = icmp ugt i64 %asmresult10.i.i, 35184372088831
  br i1 %cmp185.i, label %if.then187.i, label %if.end18.if.end193.i_crit_edge

if.end18.if.end193.i_crit_edge:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end193.i

if.then187.i:                                     ; preds = %if.end18
  %shr188.i = lshr i64 %asmresult10.i.i, 41
  call void @__sanitizer_cov_trace_const_cmp8(i64 144115188075855871, i64 %asmresult10.i.i)
  %cmp189.i = icmp ugt i64 %asmresult10.i.i, 144115188075855871
  br i1 %cmp189.i, label %if.then187.i.cleanup_crit_edge, label %if.then187.i.if.end193.i_crit_edge

if.then187.i.if.end193.i_crit_edge:               ; preds = %if.then187.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end193.i

if.then187.i.cleanup_crit_edge:                   ; preds = %if.then187.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end193.i:                                      ; preds = %if.then187.i.if.end193.i_crit_edge, %if.end18.if.end193.i_crit_edge
  %cycles.0.i = phi i64 [ %shr188.i, %if.then187.i.if.end193.i_crit_edge ], [ %storemerge.i, %if.end18.if.end193.i_crit_edge ]
  %conv194.i = trunc i64 %cycles.0.i to i32
  %mul195.i = mul i64 %cycles.0.i, %43
  %conv197.i = trunc i64 %45 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul195.i)
  %cmp398.i = icmp ult i64 %mul195.i, 4294967296
  br i1 %cmp398.i, label %if.then406.i, label %if.else412.i, !prof !42

if.then406.i:                                     ; preds = %if.end193.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv407.i = trunc i64 %mul195.i to i32
  %div410.i = udiv i32 %conv407.i, %conv197.i
  br label %berlin_pwm_config.exit

if.else412.i:                                     ; preds = %if.end193.i
  call void @__sanitizer_cov_trace_pc() #8
  %50 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv197.i, i64 %mul195.i) #11, !srcloc !43
  %asmresult1.i.i = extractvalue { i64, i64 } %50, 1
  %extract.t646.i = trunc i64 %asmresult1.i.i to i32
  br label %berlin_pwm_config.exit

berlin_pwm_config.exit:                           ; preds = %if.else412.i, %if.then406.i
  %cycles.1.off0.i = phi i32 [ %div410.i, %if.then406.i ], [ %extract.t646.i, %if.else412.i ]
  %hwpwm.i58 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %51 = ptrtoint ptr %hwpwm.i58 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hwpwm.i58, align 8
  %base.i.i59 = getelementptr inbounds %struct.berlin_pwm_chip, ptr %chip, i32 0, i32 2
  %53 = ptrtoint ptr %base.i.i59 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i.i59, align 4
  %mul.i.i60 = shl i32 %52, 4
  %add.ptr.i.i61 = getelementptr i8, ptr %54, i32 %mul.i.i60
  %add.ptr1.i.i62 = getelementptr i8, ptr %add.ptr.i.i61, i32 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i62) #6, !srcloc !38
  %56 = and i32 %55, -117440513
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #6
  %masksel.i63 = select i1 %cmp185.i, i32 7, i32 0
  %value.0.i64 = or i32 %57, %masksel.i63
  %58 = ptrtoint ptr %hwpwm.i58 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %hwpwm.i58, align 8
  %60 = tail call i32 @llvm.bswap.i32(i32 %value.0.i64) #6
  %61 = ptrtoint ptr %base.i.i59 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i.i59, align 4
  %mul.i609.i = shl i32 %59, 4
  %add.ptr.i610.i = getelementptr i8, ptr %62, i32 %mul.i609.i
  %add.ptr1.i611.i = getelementptr i8, ptr %add.ptr.i610.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i611.i, i32 %60) #6, !srcloc !39
  %63 = ptrtoint ptr %hwpwm.i58 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %hwpwm.i58, align 8
  %65 = tail call i32 @llvm.bswap.i32(i32 %cycles.1.off0.i) #6
  %66 = ptrtoint ptr %base.i.i59 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base.i.i59, align 4
  %mul.i613.i = shl i32 %64, 4
  %add.ptr.i614.i = getelementptr i8, ptr %67, i32 %mul.i613.i
  %add.ptr1.i615.i = getelementptr i8, ptr %add.ptr.i614.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i615.i, i32 %65) #6, !srcloc !39
  %68 = ptrtoint ptr %hwpwm.i58 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %hwpwm.i58, align 8
  %70 = tail call i32 @llvm.bswap.i32(i32 %conv194.i) #6
  %71 = ptrtoint ptr %base.i.i59 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i.i59, align 4
  %mul.i617.i = shl i32 %69, 4
  %add.ptr.i618.i = getelementptr i8, ptr %72, i32 %mul.i617.i
  %add.ptr1.i619.i = getelementptr i8, ptr %add.ptr.i618.i, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i619.i, i32 %70) #6, !srcloc !39
  br i1 %enabled.1.off0.not, label %if.then24, label %berlin_pwm_config.exit.cleanup_crit_edge

berlin_pwm_config.exit.cleanup_crit_edge:         ; preds = %berlin_pwm_config.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then24:                                        ; preds = %berlin_pwm_config.exit
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %hwpwm.i58 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %hwpwm.i58, align 8
  %75 = ptrtoint ptr %base.i.i59 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base.i.i59, align 4
  %mul.i.i67 = shl i32 %74, 4
  %add.ptr.i.i68 = getelementptr i8, ptr %76, i32 %mul.i.i67
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i68) #6, !srcloc !38
  %78 = or i32 %77, 16777216
  %79 = ptrtoint ptr %hwpwm.i58 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %hwpwm.i58, align 8
  %81 = ptrtoint ptr %base.i.i59 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base.i.i59, align 4
  %mul.i2.i69 = shl i32 %80, 4
  %add.ptr.i3.i70 = getelementptr i8, ptr %82, i32 %mul.i2.i69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i70, i32 %78) #6, !srcloc !39
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %berlin_pwm_config.exit.cleanup_crit_edge, %if.then187.i.cleanup_crit_edge, %if.then16, %if.then14.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then24 ], [ 0, %if.then16 ], [ 0, %if.then14.cleanup_crit_edge ], [ 0, %berlin_pwm_config.exit.cleanup_crit_edge ], [ -34, %if.then187.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_set_chip_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pwm_get_chip_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @berlin_pwm_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npwm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp37.not = icmp eq i32 %3, 0
  br i1 %cmp37.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pwms = getelementptr inbounds %struct.pwm_chip, ptr %1, i32 0, i32 7
  %base.i = getelementptr inbounds %struct.berlin_pwm_chip, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %4 = ptrtoint ptr %pwms to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pwms, align 4
  %arrayidx = getelementptr %struct.pwm_device, ptr %5, i32 %i.038
  %call2 = tail call ptr @pwm_get_chip_data(ptr noundef %arrayidx) #6
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %mul.i = shl i32 %i.038, 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 1
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #6, !srcloc !38
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  %10 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %call2, align 4
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %12, i32 4
  %add.ptr1.i28 = getelementptr i8, ptr %add.ptr.i27, i32 %mul.i
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i28) #6, !srcloc !38
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  %ctrl = getelementptr inbounds %struct.berlin_pwm_channel, ptr %call2, i32 0, i32 1
  %15 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %ctrl, align 4
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %17, i32 8
  %add.ptr1.i32 = getelementptr i8, ptr %add.ptr.i31, i32 %mul.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i32) #6, !srcloc !38
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  %duty = getelementptr inbounds %struct.berlin_pwm_channel, ptr %call2, i32 0, i32 2
  %20 = ptrtoint ptr %duty to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %duty, align 4
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %22, i32 12
  %add.ptr1.i36 = getelementptr i8, ptr %add.ptr.i35, i32 %mul.i
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i36) #6, !srcloc !38
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #6
  %tcnt = getelementptr inbounds %struct.berlin_pwm_channel, ptr %call2, i32 0, i32 3
  %25 = ptrtoint ptr %tcnt to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %tcnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.038, 1
  %26 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %npwm, align 4
  %cmp = icmp ult i32 %inc, %27
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %clk = getelementptr inbounds %struct.berlin_pwm_chip, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %29) #6
  tail call void @clk_unprepare(ptr noundef %29) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @berlin_pwm_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.berlin_pwm_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup7_crit_edge

entry.cleanup7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup7

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.cond.preheader, label %if.then3.i

for.cond.preheader:                               ; preds = %if.end.i
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %npwm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp41.not = icmp eq i32 %5, 0
  br i1 %cmp41.not, label %for.cond.preheader.cleanup7_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup7_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup7

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pwms = getelementptr inbounds %struct.pwm_chip, ptr %1, i32 0, i32 7
  %base.i = getelementptr inbounds %struct.berlin_pwm_chip, ptr %1, i32 0, i32 2
  br label %for.body

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %cleanup7

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.042 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %6 = ptrtoint ptr %pwms to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pwms, align 4
  %arrayidx = getelementptr %struct.pwm_device, ptr %7, i32 %i.042
  %call3 = tail call ptr @pwm_get_chip_data(ptr noundef %arrayidx) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %for.body.cleanup_crit_edge, label %if.end6

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl = getelementptr inbounds %struct.berlin_pwm_channel, ptr %call3, i32 0, i32 1
  %8 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctrl, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #6
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %mul.i = shl i32 %i.042, 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 4
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %10) #6, !srcloc !39
  %duty = getelementptr inbounds %struct.berlin_pwm_channel, ptr %call3, i32 0, i32 2
  %13 = ptrtoint ptr %duty to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %duty, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %17, i32 8
  %add.ptr1.i30 = getelementptr i8, ptr %add.ptr.i29, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i30, i32 %15) #6, !srcloc !39
  %tcnt = getelementptr inbounds %struct.berlin_pwm_channel, ptr %call3, i32 0, i32 3
  %18 = ptrtoint ptr %tcnt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tcnt, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #6
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %22, i32 12
  %add.ptr1.i34 = getelementptr i8, ptr %add.ptr.i33, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i34, i32 %20) #6, !srcloc !39
  %23 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call3, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #6
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %27, i32 1
  %add.ptr1.i38 = getelementptr i8, ptr %add.ptr.i37, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i38, i32 %25) #6, !srcloc !39
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.042, 1
  %28 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %npwm, align 4
  %cmp = icmp ult i32 %inc, %29
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.cleanup7_crit_edge

cleanup.cleanup7_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup7

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup7:                                         ; preds = %cleanup.cleanup7_crit_edge, %if.then3.i, %for.cond.preheader.cleanup7_crit_edge, %entry.cleanup7_crit_edge
  %retval.0 = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup7_crit_edge ], [ 0, %for.cond.preheader.cleanup7_crit_edge ], [ 0, %cleanup.cleanup7_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__initcall__kmod_pwm_berlin__183_327_berlin_pwm_driver_init6, !1, !"__initcall__kmod_pwm_berlin__183_327_berlin_pwm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-berlin.c", i32 327, i32 1}
!2 = !{ptr @__exitcall_berlin_pwm_driver_exit, !1, !"__exitcall_berlin_pwm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author184, !4, !"__UNIQUE_ID_author184", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-berlin.c", i32 329, i32 1}
!5 = !{ptr @__UNIQUE_ID_description185, !6, !"__UNIQUE_ID_description185", i1 false, i1 false}
!6 = !{!"../drivers/pwm/pwm-berlin.c", i32 330, i32 1}
!7 = !{ptr @__UNIQUE_ID_file186, !8, !"__UNIQUE_ID_file186", i1 false, i1 false}
!8 = !{!"../drivers/pwm/pwm-berlin.c", i32 331, i32 1}
!9 = !{ptr @__UNIQUE_ID_license187, !8, !"__UNIQUE_ID_license187", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pwm/pwm-berlin.c", i32 322, i32 11}
!12 = !{ptr @berlin_pwm_driver, !13, !"berlin_pwm_driver", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-berlin.c", i32 318, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-berlin.c", i32 243, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @berlin_pwm_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @berlin_pwm_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @berlin_pwm_ops, !23, !"berlin_pwm_ops", i1 false, i1 false}
!23 = !{!"../drivers/pwm/pwm-berlin.c", i32 203, i32 29}
!24 = !{ptr @berlin_pwm_match, !25, !"berlin_pwm_match", i1 false, i1 false}
!25 = !{!"../drivers/pwm/pwm-berlin.c", i32 210, i32 34}
!26 = !{ptr @berlin_pwm_pm_ops, !27, !"berlin_pwm_pm_ops", i1 false, i1 false}
!27 = !{!"../drivers/pwm/pwm-berlin.c", i32 315, i32 8}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i8 0, i8 2}
!38 = !{i64 2035626}
!39 = !{i64 2035208}
!40 = !{i64 1151293, i64 1151320, i64 1151342, i64 1151370}
!41 = !{i64 1151701, i64 1151728, i64 1151761, i64 1151782, i64 1151809, i64 1151835}
!42 = !{!"branch_weights", i32 2000, i32 1}
!43 = !{i64 2148636837, i64 2148637117, i64 2148637451, i64 2148637785}
