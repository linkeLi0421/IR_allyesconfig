; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-keembay.c_pt.bc'
source_filename = "../drivers/pwm/pwm-keembay.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.keembay_pwm = type { %struct.pwm_chip, ptr, ptr, ptr }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }

@__initcall__kmod_pwm_keembay__190_230_keembay_pwm_driver_init6 = internal global ptr @keembay_pwm_driver_init, section ".initcall6.init", align 4
@keembay_pwm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @keembay_pwm_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @keembay_pwm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_keembay_pwm_driver_exit = internal global ptr @keembay_pwm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias191 = internal constant [39 x i8] c"pwm_keembay.alias=platform:pwm-keembay\00", section ".modinfo", align 1
@__UNIQUE_ID_description192 = internal constant [50 x i8] c"pwm_keembay.description=Intel Keem Bay PWM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file193 = internal constant [41 x i8] c"pwm_keembay.file=drivers/pwm/pwm-keembay\00", section ".modinfo", align 1
@__UNIQUE_ID_license194 = internal constant [27 x i8] c"pwm_keembay.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm-keembay\00", [20 x i8] zeroinitializer }, align 32
@keembay_pwm_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,keembay-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@keembay_pwm_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr null, ptr null, ptr null, ptr @keembay_pwm_apply, ptr @keembay_pwm_get_state, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to add PWM chip\0A\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [19 x i8] c"keembay_pwm_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 223, i32 31 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 226, i32 11 }
@___asan_gen_.9 = private unnamed_addr constant [21 x i8] c"keembay_pwm_of_match\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 217, i32 34 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 196, i32 49 }
@___asan_gen_.15 = private unnamed_addr constant [16 x i8] c"keembay_pwm_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 178, i32 29 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private constant [29 x i8] c"../drivers/pwm/pwm-keembay.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 212, i32 34 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_alias191, ptr @__UNIQUE_ID_description192, ptr @__UNIQUE_ID_file193, ptr @__UNIQUE_ID_license194, ptr @__exitcall_keembay_pwm_driver_exit, ptr @__initcall__kmod_pwm_keembay__190_230_keembay_pwm_driver_init6, ptr @keembay_pwm_driver_exit, ptr @keembay_pwm_driver, ptr @.str, ptr @keembay_pwm_of_match, ptr @.str.1, ptr @keembay_pwm_ops, ptr @.str.2], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_pwm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_pwm_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_pwm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @keembay_pwm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @keembay_pwm_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @keembay_pwm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @keembay_pwm_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keembay_pwm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 48, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #4
  %clk = getelementptr inbounds %struct.keembay_pwm, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %call2 to i32
  %call8 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %1, ptr noundef nonnull @.str.1) #4
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #4
  %base = getelementptr inbounds %struct.keembay_pwm, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call10, ptr %base, align 4
  %cmp.i54 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i54, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end16
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i, label %if.end.i.i.cleanup.sink.split.i_crit_edge

if.end.i.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.end.i.i
  %call.i4.i = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @keembay_clk_unprepare, ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i)
  %tobool.not.i5.i = icmp eq i32 %call.i4.i, 0
  br i1 %tobool.not.i5.i, label %if.end21, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_disable(ptr noundef %5) #4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then.i.i, %if.end.i.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ %call.i4.i, %if.then.i.i ], [ %call1.i.i, %if.end.i.i.cleanup.sink.split.i_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %5) #4
  br label %cleanup

if.end21:                                         ; preds = %if.end.i
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev1, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @keembay_pwm_ops, ptr %ops, align 4
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 6, ptr %npwm, align 4
  %call26 = tail call i32 @devm_pwmchip_add(ptr noundef %dev1, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end21.cleanup_crit_edge, label %if.then28

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then28:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %call29 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call26, ptr noundef nonnull @.str.2) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end21.cleanup_crit_edge, %cleanup.sink.split.i, %if.end16.cleanup_crit_edge, %if.then13, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then5 ], [ %3, %if.then13 ], [ %call29, %if.then28 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ], [ %call.i.i, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pwmchip_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @keembay_clk_unprepare(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_disable(ptr noundef %data) #4
  tail call void @clk_unprepare(ptr noundef %data) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keembay_pwm_apply(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %polarity = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %polarity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %2 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwpwm, align 8
  %mul = shl i32 %3, 2
  %base.i = getelementptr inbounds %struct.keembay_pwm, ptr %chip, i32 0, i32 3
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %mul
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  %and.i.i = and i32 %6, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  tail call void @arm_heavy_mb() #4
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %8, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %and.i.i) #4, !srcloc !34
  %clk.i = getelementptr inbounds %struct.keembay_pwm, ptr %chip, i32 0, i32 2
  %9 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk.i, align 4
  %call1.i = tail call i32 @clk_get_rate(ptr noundef %10) #4
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %13 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hwpwm, align 8
  %mul.i = shl i32 %14, 2
  %add.ptr.i694 = getelementptr i8, ptr %12, i32 %mul.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i694) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %16 = trunc i32 %15 to i8
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %19 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hwpwm, align 8
  %mul9.i = shl i32 %20, 2
  %add10.i = add i32 %mul9.i, 32
  %add.ptr11.i = getelementptr i8, ptr %18, i32 %add10.i
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #4, !srcloc !31
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  %and28.i = and i32 %22, 65535
  %mul29.i = mul i32 %and28.i, 1000000000
  %conv.i = zext i32 %mul29.i to i64
  %shr47.i = lshr i32 %22, 16
  %mul48.i = mul i32 %shr47.i, 1000000000
  %conv49.i = zext i32 %mul48.i to i64
  %conv50.i = zext i32 %call1.i to i64
  %add51.i = add nsw i64 %conv50.i, -1
  %sub.i = add nsw i64 %add51.i, %conv49.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp228.i = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp228.i, label %if.end.if.else449.i_crit_edge, label %if.else238.i, !prof !37

if.end.if.else449.i_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else449.i

if.else238.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %23 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call1.i, i64 %sub.i) #7, !srcloc !38
  br label %if.else449.i

if.else449.i:                                     ; preds = %if.else238.i, %if.end.if.else449.i_crit_edge
  %sub249.i = add nsw i64 %sub.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub249.i)
  %cmp451.i = icmp ult i64 %sub249.i, 4294967296
  br i1 %cmp451.i, label %if.else449.i.keembay_pwm_get_state.exit_crit_edge, label %if.else465.i, !prof !37

if.else449.i.keembay_pwm_get_state.exit_crit_edge: ; preds = %if.else449.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %keembay_pwm_get_state.exit

if.else465.i:                                     ; preds = %if.else449.i
  call void @__sanitizer_cov_trace_pc() #6
  %24 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call1.i, i64 %sub249.i) #7, !srcloc !38
  br label %keembay_pwm_get_state.exit

keembay_pwm_get_state.exit:                       ; preds = %if.else465.i, %if.else449.i.keembay_pwm_get_state.exit_crit_edge
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %25 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %enabled, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not = icmp eq i8 %26, 0
  br i1 %tobool.not, label %if.then1, label %if.end197

if.then1:                                         ; preds = %keembay_pwm_get_state.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %tobool3.not = icmp sgt i8 %16, -1
  br i1 %tobool3.not, label %if.then1.cleanup_crit_edge, label %if.then4

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then4:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hwpwm, align 8
  %mul.i696 = shl i32 %28, 2
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 %mul.i696
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  %32 = and i32 %31, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  tail call void @arm_heavy_mb() #4
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %34, i32 %mul.i696
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %32) #4, !srcloc !34
  br label %cleanup

if.end197:                                        ; preds = %keembay_pwm_get_state.exit
  %35 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %clk.i, align 4
  %call8 = tail call i32 @clk_get_rate(ptr noundef %36) #4
  %conv = zext i32 %call8 to i64
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %37 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %duty_cycle, align 8
  %mul9 = mul i64 %38, %conv
  %39 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul9, i32 0) #7, !srcloc !40
  %asmresult.i = extractvalue { i64, i32 } %39, 0
  %asmresult4.i = extractvalue { i64, i32 } %39, 1
  %40 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul9, i64 %asmresult.i, i32 %asmresult4.i) #7, !srcloc !41
  %asmresult10.i = extractvalue { i64, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 35184372088831, i64 %asmresult10.i)
  %cmp200 = icmp ugt i64 %asmresult10.i, 35184372088831
  br i1 %cmp200, label %if.end197.cleanup_crit_edge, label %if.end427

if.end197.cleanup_crit_edge:                      ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end427:                                        ; preds = %if.end197
  %_tmp.0 = lshr i64 %asmresult10.i, 29
  %41 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %state, align 8
  %mul206 = mul i64 %42, %conv
  %43 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul206, i32 0) #7, !srcloc !40
  %asmresult.i697 = extractvalue { i64, i32 } %43, 0
  %asmresult4.i698 = extractvalue { i64, i32 } %43, 1
  %44 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul206, i64 %asmresult.i697, i32 %asmresult4.i698) #7, !srcloc !41
  %asmresult10.i699 = extractvalue { i64, i32 } %44, 0
  %_tmp207.0 = lshr i64 %asmresult10.i699, 29
  %sub431 = sub nsw i64 %_tmp207.0, %_tmp.0
  call void @__sanitizer_cov_trace_const_cmp8(i64 65535, i64 %sub431)
  %cmp432 = icmp ugt i64 %sub431, 65535
  br i1 %cmp432, label %if.end427.cleanup_crit_edge, label %if.end435

if.end427.cleanup_crit_edge:                      ; preds = %if.end427
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end435:                                        ; preds = %if.end427
  %45 = trunc i64 %_tmp.0 to i32
  %shl458 = shl nuw i32 %45, 16
  %46 = trunc i64 %sub431 to i32
  %or486 = or i32 %shl458, %46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %47 = tail call i32 @llvm.bswap.i32(i32 %or486)
  %48 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i, align 4
  %50 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hwpwm, align 8
  %mul491 = shl i32 %51, 2
  %add492 = add i32 %mul491, 32
  %add.ptr = getelementptr i8, ptr %49, i32 %add492
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %47) #4, !srcloc !34
  %52 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %enabled, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool494.not = icmp ne i8 %53, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %tobool498.not = icmp sgt i8 %16, -1
  %or.cond = select i1 %tobool494.not, i1 %tobool498.not, i1 false
  br i1 %or.cond, label %if.then499, label %if.end435.cleanup_crit_edge

if.end435.cleanup_crit_edge:                      ; preds = %if.end435
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then499:                                       ; preds = %if.end435
  call void @__sanitizer_cov_trace_pc() #6
  %54 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %hwpwm, align 8
  tail call fastcc void @keembay_pwm_enable(ptr noundef %chip, i32 noundef %55)
  br label %cleanup

cleanup:                                          ; preds = %if.then499, %if.end435.cleanup_crit_edge, %if.end427.cleanup_crit_edge, %if.end197.cleanup_crit_edge, %if.then4, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then4 ], [ 0, %if.then1.cleanup_crit_edge ], [ -34, %if.end197.cleanup_crit_edge ], [ -34, %if.end427.cleanup_crit_edge ], [ 0, %if.then499 ], [ 0, %if.end435.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @keembay_pwm_get_state(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm, ptr nocapture noundef writeonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.keembay_pwm, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_get_rate(ptr noundef %1) #4
  %base = getelementptr inbounds %struct.keembay_pwm, ptr %chip, i32 0, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %4 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwpwm, align 8
  %mul = shl i32 %5, 2
  %add.ptr = getelementptr i8, ptr %3, i32 %mul
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %7 = trunc i32 %6 to i8
  %8 = lshr i8 %7, 7
  %9 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %8, ptr %9, align 4
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %13 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hwpwm, align 8
  %mul9 = shl i32 %14, 2
  %add10 = add i32 %mul9, 32
  %add.ptr11 = getelementptr i8, ptr %12, i32 %add10
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #4, !srcloc !31
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  %and28 = and i32 %16, 65535
  %mul29 = mul i32 %and28, 1000000000
  %conv = zext i32 %mul29 to i64
  %shr47 = lshr i32 %16, 16
  %mul48 = mul i32 %shr47, 1000000000
  %conv49 = zext i32 %mul48 to i64
  %conv50 = zext i32 %call1 to i64
  %add51 = add nsw i64 %conv50, -1
  %sub = add nsw i64 %add51, %conv49
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp228 = icmp ult i64 %sub, 4294967296
  br i1 %cmp228, label %if.then232, label %if.else238, !prof !37

if.then232:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv233 = trunc i64 %sub to i32
  %div236 = udiv i32 %conv233, %call1
  %conv237 = zext i32 %div236 to i64
  br label %if.else449

if.else238:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %17 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call1, i64 %sub) #7, !srcloc !38
  %asmresult1.i = extractvalue { i64, i64 } %17, 1
  br label %if.else449

if.else449:                                       ; preds = %if.else238, %if.then232
  %_tmp.0 = phi i64 [ %conv237, %if.then232 ], [ %asmresult1.i, %if.else238 ]
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %18 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %_tmp.0, ptr %duty_cycle, align 8
  %add248 = add nsw i64 %add51, %conv
  %sub249 = add nsw i64 %add248, %conv49
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub249)
  %cmp451 = icmp ult i64 %sub249, 4294967296
  br i1 %cmp451, label %if.then459, label %if.else465, !prof !37

if.then459:                                       ; preds = %if.else449
  call void @__sanitizer_cov_trace_pc() #6
  %conv460 = trunc i64 %sub249 to i32
  %div463 = udiv i32 %conv460, %call1
  %conv464 = zext i32 %div463 to i64
  br label %if.end469

if.else465:                                       ; preds = %if.else449
  call void @__sanitizer_cov_trace_pc() #6
  %19 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call1, i64 %sub249) #7, !srcloc !38
  %asmresult1.i670 = extractvalue { i64, i64 } %19, 1
  br label %if.end469

if.end469:                                        ; preds = %if.else465, %if.then459
  %_tmp245.0 = phi i64 [ %conv464, %if.then459 ], [ %asmresult1.i670, %if.else465 ]
  %20 = ptrtoint ptr %state to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %_tmp245.0, ptr %state, align 8
  %polarity = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %21 = ptrtoint ptr %polarity to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %polarity, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @keembay_pwm_enable(ptr nocapture noundef readonly %priv, i32 noundef %ch) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %ch, 2
  %base.i = getelementptr inbounds %struct.keembay_pwm, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %mul
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  %3 = or i32 %2, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  tail call void @arm_heavy_mb() #4
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %5, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %3) #4, !srcloc !34
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__initcall__kmod_pwm_keembay__190_230_keembay_pwm_driver_init6, !1, !"__initcall__kmod_pwm_keembay__190_230_keembay_pwm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-keembay.c", i32 230, i32 1}
!2 = !{ptr @__exitcall_keembay_pwm_driver_exit, !1, !"__exitcall_keembay_pwm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias191, !4, !"__UNIQUE_ID_alias191", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-keembay.c", i32 232, i32 1}
!5 = !{ptr @__UNIQUE_ID_description192, !6, !"__UNIQUE_ID_description192", i1 false, i1 false}
!6 = !{!"../drivers/pwm/pwm-keembay.c", i32 233, i32 1}
!7 = !{ptr @__UNIQUE_ID_file193, !8, !"__UNIQUE_ID_file193", i1 false, i1 false}
!8 = !{!"../drivers/pwm/pwm-keembay.c", i32 234, i32 1}
!9 = !{ptr @__UNIQUE_ID_license194, !8, !"__UNIQUE_ID_license194", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pwm/pwm-keembay.c", i32 226, i32 11}
!12 = !{ptr @keembay_pwm_driver, !13, !"keembay_pwm_driver", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-keembay.c", i32 223, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-keembay.c", i32 196, i32 49}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pwm/pwm-keembay.c", i32 212, i32 34}
!18 = !{ptr @keembay_pwm_ops, !19, !"keembay_pwm_ops", i1 false, i1 false}
!19 = !{!"../drivers/pwm/pwm-keembay.c", i32 178, i32 29}
!20 = !{ptr @keembay_pwm_of_match, !21, !"keembay_pwm_of_match", i1 false, i1 false}
!21 = !{!"../drivers/pwm/pwm-keembay.c", i32 217, i32 34}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i64 2060868}
!32 = !{i64 2152628628}
!33 = !{i64 2152628845}
!34 = !{i64 2060450}
!35 = !{i64 2152629842}
!36 = !{i64 2152630533}
!37 = !{!"branch_weights", i32 2000, i32 1}
!38 = !{i64 2148666140, i64 2148666420, i64 2148666754, i64 2148667088}
!39 = !{i8 0, i8 2}
!40 = !{i64 1180596, i64 1180623, i64 1180645, i64 1180673}
!41 = !{i64 1181004, i64 1181031, i64 1181064, i64 1181085, i64 1181112, i64 1181138}
!42 = !{i64 2152816645}
