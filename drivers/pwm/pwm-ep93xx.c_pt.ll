; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-ep93xx.c_pt.bc'
source_filename = "../drivers/pwm/pwm-ep93xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ep93xx_pwm = type { ptr, ptr, %struct.pwm_chip }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }

@__initcall__kmod_pwm_ep93xx__183_199_ep93xx_pwm_driver_init6 = internal global ptr @ep93xx_pwm_driver_init, section ".initcall6.init", align 4
@ep93xx_pwm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ep93xx_pwm_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ep93xx_pwm_driver_exit = internal global ptr @ep93xx_pwm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description184 = internal constant [54 x i8] c"pwm_ep93xx.description=Cirrus Logic EP93xx PWM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author185 = internal constant [54 x i8] c"pwm_ep93xx.author=Matthieu Crapet <mcrapet@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author186 = internal constant [67 x i8] c"pwm_ep93xx.author=H Hartley Sweeten <hsweeten@visionengravers.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias187 = internal constant [37 x i8] c"pwm_ep93xx.alias=platform:ep93xx-pwm\00", section ".modinfo", align 1
@__UNIQUE_ID_file188 = internal constant [39 x i8] c"pwm_ep93xx.file=drivers/pwm/pwm-ep93xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license189 = internal constant [23 x i8] c"pwm_ep93xx.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ep93xx-pwm\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm_clk\00", [24 x i8] zeroinitializer }, align 32
@ep93xx_pwm_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr @ep93xx_pwm_request, ptr @ep93xx_pwm_free, ptr null, ptr @ep93xx_pwm_apply, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [18 x i8] c"ep93xx_pwm_driver\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 193, i32 31 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 195, i32 11 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 178, i32 45 }
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"ep93xx_pwm_ops\00", align 1
@___asan_gen_.12 = private constant [28 x i8] c"../drivers/pwm/pwm-ep93xx.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 158, i32 29 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_alias187, ptr @__UNIQUE_ID_author185, ptr @__UNIQUE_ID_author186, ptr @__UNIQUE_ID_description184, ptr @__UNIQUE_ID_file188, ptr @__UNIQUE_ID_license189, ptr @__exitcall_ep93xx_pwm_driver_exit, ptr @__initcall__kmod_pwm_ep93xx__183_199_ep93xx_pwm_driver_init6, ptr @ep93xx_pwm_driver_exit, ptr @ep93xx_pwm_driver, ptr @.str, ptr @.str.1, ptr @ep93xx_pwm_ops], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_pwm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_pwm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ep93xx_pwm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ep93xx_pwm_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ep93xx_pwm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @ep93xx_pwm_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep93xx_pwm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call9 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #5
  %clk = getelementptr inbounds %struct.ep93xx_pwm, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %clk, align 4
  %cmp.i41 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i41, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %chip = getelementptr inbounds %struct.ep93xx_pwm, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %chip, align 4
  %ops = getelementptr inbounds %struct.ep93xx_pwm, ptr %call.i, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ep93xx_pwm_ops, ptr %ops, align 4
  %npwm = getelementptr inbounds %struct.ep93xx_pwm, ptr %call.i, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %npwm, align 4
  %call22 = tail call i32 @devm_pwmchip_add(ptr noundef %dev, ptr noundef %chip) #5
  %7 = tail call i32 @llvm.smin.i32(i32 %call22, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then12, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ %3, %if.then12 ], [ -12, %entry.cleanup_crit_edge ], [ %7, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pwmchip_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ep93xx_pwm_request(ptr nocapture noundef readnone %chip, ptr nocapture noundef readnone %pwm) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ep93xx_pwm_free(ptr nocapture noundef %chip, ptr nocapture noundef %pwm) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep93xx_pwm_apply(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chip, i32 -8
  %enabled1 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %enabled1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled1, align 4, !range !31
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %polarity = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %4 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %polarity, align 8
  %polarity4 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7, i32 2
  %6 = ptrtoint ptr %polarity4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %polarity4, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp eq i32 %5, %7
  br i1 %cmp.not, label %entry.if.end28_crit_edge, label %if.then

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %do.body

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 0) #5, !srcloc !33
  %clk = getelementptr i8, ptr %chip, i32 -4
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %11) #5
  tail call void @clk_unprepare(ptr noundef %11) #5
  br label %if.end

if.end:                                           ; preds = %do.body, %if.then.if.end_crit_edge
  %clk8 = getelementptr i8, ptr %chip, i32 -4
  %12 = ptrtoint ptr %clk8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk8, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end12, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %13) #5
  br label %cleanup

if.end12:                                         ; preds = %if.end.i
  %14 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %polarity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp14 = icmp eq i32 %15, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr20 = getelementptr i8, ptr %17, i32 12
  br i1 %cmp14, label %do.body16, label %do.body21

do.body16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr20, i16 256) #5, !srcloc !33
  br label %if.end26

do.body21:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr20, i16 0) #5, !srcloc !33
  br label %if.end26

if.end26:                                         ; preds = %do.body21, %do.body16
  %18 = ptrtoint ptr %clk8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk8, align 4
  tail call void @clk_disable(ptr noundef %19) #5
  tail call void @clk_unprepare(ptr noundef %19) #5
  br label %if.end28

if.end28:                                         ; preds = %if.end26, %entry.if.end28_crit_edge
  %enabled.1.off0.in = phi i8 [ 0, %if.end26 ], [ %1, %entry.if.end28_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enabled.1.off0.in)
  %enabled.1.off0.not = icmp eq i8 %enabled.1.off0.in, 0
  %20 = ptrtoint ptr %enabled1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %enabled1, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool30.not = icmp eq i8 %21, 0
  br i1 %tobool30.not, label %if.then31, label %if.end41

if.then31:                                        ; preds = %if.end28
  br i1 %enabled.1.off0.not, label %if.then31.cleanup_crit_edge, label %do.body34

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body34:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr38 = getelementptr i8, ptr %23, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr38, i16 0) #5, !srcloc !33
  %clk39 = getelementptr i8, ptr %chip, i32 -4
  %24 = ptrtoint ptr %clk39 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk39, align 4
  tail call void @clk_disable(ptr noundef %25) #5
  tail call void @clk_unprepare(ptr noundef %25) #5
  br label %cleanup

if.end41:                                         ; preds = %if.end28
  %state.sroa.4.0.state1.i.sroa_idx.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7, i32 3
  %26 = ptrtoint ptr %state.sroa.4.0.state1.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %state.sroa.4.0.copyload1.i = load i8, ptr %state.sroa.4.0.state1.i.sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state.sroa.4.0.copyload1.i)
  %tobool.i.not = icmp eq i8 %state.sroa.4.0.copyload1.i, 0
  br i1 %tobool.i.not, label %if.then43, label %if.end41.if.end238_crit_edge

if.end41.if.end238_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end238

if.then43:                                        ; preds = %if.end41
  %clk44 = getelementptr i8, ptr %chip, i32 -4
  %27 = ptrtoint ptr %clk44 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk44, align 4
  %call.i733 = tail call i32 @clk_prepare(ptr noundef %28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i733)
  %tobool.not.i734 = icmp eq i32 %call.i733, 0
  br i1 %tobool.not.i734, label %if.end.i737, label %if.then43.cleanup_crit_edge

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i737:                                      ; preds = %if.then43
  %call1.i735 = tail call i32 @clk_enable(ptr noundef %28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i735)
  %tobool2.not.i736 = icmp eq i32 %call1.i735, 0
  br i1 %tobool2.not.i736, label %if.end.i737.if.end238_crit_edge, label %if.then3.i738

if.end.i737.if.end238_crit_edge:                  ; preds = %if.end.i737
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end238

if.then3.i738:                                    ; preds = %if.end.i737
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %28) #5
  br label %cleanup

if.end238:                                        ; preds = %if.end.i737.if.end238_crit_edge, %if.end41.if.end238_crit_edge
  %clk50 = getelementptr i8, ptr %chip, i32 -4
  %29 = ptrtoint ptr %clk50 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk50, align 4
  %call51 = tail call i32 @clk_get_rate(ptr noundef %30) #5
  %conv = zext i32 %call51 to i64
  %31 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %state, align 8
  %mul = mul i64 %32, %conv
  %33 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i32 0) #8, !srcloc !35
  %asmresult.i = extractvalue { i64, i32 } %33, 0
  %asmresult4.i = extractvalue { i64, i32 } %33, 1
  %34 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i64 %asmresult.i, i32 %asmresult4.i) #8, !srcloc !36
  %asmresult10.i = extractvalue { i64, i32 } %34, 0
  %storemerge = lshr i64 %asmresult10.i, 29
  %conv240 = trunc i64 %storemerge to i32
  %conv241 = and i64 %storemerge, 4294967295
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %35 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %duty_cycle, align 8
  %mul242 = mul i64 %conv241, %36
  %conv245 = trunc i64 %32 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul242)
  %cmp446 = icmp ult i64 %mul242, 4294967296
  br i1 %cmp446, label %if.then454, label %if.else460, !prof !37

if.then454:                                       ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #7
  %conv455 = trunc i64 %mul242 to i32
  %div458 = udiv i32 %conv455, %conv245
  %conv459 = zext i32 %div458 to i64
  br label %if.end464

if.else460:                                       ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #7
  %37 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv245, i64 %mul242) #8, !srcloc !38
  %asmresult1.i = extractvalue { i64, i64 } %37, 1
  br label %if.end464

if.end464:                                        ; preds = %if.else460, %if.then454
  %c.0 = phi i64 [ %conv459, %if.then454 ], [ %asmresult1.i, %if.else460 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %conv240)
  %cmp467 = icmp ult i32 %conv240, 65536
  %38 = and i64 %c.0, 4294901760
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %38)
  %cmp470 = icmp eq i64 %38, 0
  %or.cond = select i1 %cmp467, i1 %cmp470, i1 false
  br i1 %or.cond, label %if.then472, label %if.end464.if.end504_crit_edge

if.end464.if.end504_crit_edge:                    ; preds = %if.end464
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end504

if.then472:                                       ; preds = %if.end464
  %39 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %3) #5, !srcloc !39
  %40 = tail call i16 @llvm.bswap.i16(i16 %39)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  %conv477 = zext i16 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv240, i32 %conv477)
  %cmp478 = icmp ugt i32 %conv240, %conv477
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %cmp478, label %do.body481, label %do.body492

do.body481:                                       ; preds = %if.then472
  call void @__sanitizer_cov_trace_pc() #7
  %conv484 = trunc i64 %storemerge to i16
  %41 = tail call i16 @llvm.bswap.i16(i16 %conv484)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %3, i16 %41) #5, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %conv489 = trunc i64 %c.0 to i16
  %42 = tail call i16 @llvm.bswap.i16(i16 %conv489)
  %add.ptr490 = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr490, i16 %42) #5, !srcloc !33
  br label %if.end504

do.body492:                                       ; preds = %if.then472
  call void @__sanitizer_cov_trace_pc() #7
  %conv495 = trunc i64 %c.0 to i16
  %43 = tail call i16 @llvm.bswap.i16(i16 %conv495)
  %add.ptr496 = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr496, i16 %43) #5, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %conv500 = trunc i64 %storemerge to i16
  %44 = tail call i16 @llvm.bswap.i16(i16 %conv500)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %3, i16 %44) #5, !srcloc !33
  br label %if.end504

if.end504:                                        ; preds = %do.body492, %do.body481, %if.end464.if.end504_crit_edge
  %ret.0.mux = phi i32 [ -22, %if.end464.if.end504_crit_edge ], [ 0, %do.body481 ], [ 0, %do.body492 ]
  %45 = ptrtoint ptr %state.sroa.4.0.state1.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %state.sroa.4.0.copyload1.i746 = load i8, ptr %state.sroa.4.0.state1.i.sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state.sroa.4.0.copyload1.i746)
  %tobool.i747.not = icmp eq i8 %state.sroa.4.0.copyload1.i746, 0
  br i1 %tobool.i747.not, label %if.then506, label %if.end504.if.end508_crit_edge

if.end504.if.end508_crit_edge:                    ; preds = %if.end504
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end508

if.then506:                                       ; preds = %if.end504
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %clk50 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %clk50, align 4
  tail call void @clk_disable(ptr noundef %47) #5
  tail call void @clk_unprepare(ptr noundef %47) #5
  br label %if.end508

if.end508:                                        ; preds = %if.then506, %if.end504.if.end508_crit_edge
  %48 = select i1 %or.cond, i1 %enabled.1.off0.not, i1 false
  br i1 %48, label %if.then513, label %if.end508.cleanup_crit_edge

if.end508.cleanup_crit_edge:                      ; preds = %if.end508
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then513:                                       ; preds = %if.end508
  %49 = ptrtoint ptr %clk50 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %clk50, align 4
  %call.i748 = tail call i32 @clk_prepare(ptr noundef %50) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i748)
  %tobool.not.i749 = icmp eq i32 %call.i748, 0
  br i1 %tobool.not.i749, label %if.end.i752, label %if.then513.cleanup_crit_edge

if.then513.cleanup_crit_edge:                     ; preds = %if.then513
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i752:                                      ; preds = %if.then513
  %call1.i750 = tail call i32 @clk_enable(ptr noundef %50) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i750)
  %tobool2.not.i751 = icmp eq i32 %call1.i750, 0
  br i1 %tobool2.not.i751, label %do.body519, label %if.then3.i753

if.then3.i753:                                    ; preds = %if.end.i752
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %50) #5
  br label %cleanup

do.body519:                                       ; preds = %if.end.i752
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %51 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr523 = getelementptr i8, ptr %52, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr523, i16 256) #5, !srcloc !33
  br label %cleanup

cleanup:                                          ; preds = %do.body519, %if.then3.i753, %if.then513.cleanup_crit_edge, %if.end508.cleanup_crit_edge, %if.then3.i738, %if.then43.cleanup_crit_edge, %do.body34, %if.then31.cleanup_crit_edge, %if.then3.i, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body34 ], [ 0, %if.then31.cleanup_crit_edge ], [ %ret.0.mux, %if.end508.cleanup_crit_edge ], [ 0, %do.body519 ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call1.i735, %if.then3.i738 ], [ %call.i733, %if.then43.cleanup_crit_edge ], [ %call1.i750, %if.then3.i753 ], [ %call.i748, %if.then513.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__initcall__kmod_pwm_ep93xx__183_199_ep93xx_pwm_driver_init6, !1, !"__initcall__kmod_pwm_ep93xx__183_199_ep93xx_pwm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-ep93xx.c", i32 199, i32 1}
!2 = !{ptr @__exitcall_ep93xx_pwm_driver_exit, !1, !"__exitcall_ep93xx_pwm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description184, !4, !"__UNIQUE_ID_description184", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-ep93xx.c", i32 201, i32 1}
!5 = !{ptr @__UNIQUE_ID_author185, !6, !"__UNIQUE_ID_author185", i1 false, i1 false}
!6 = !{!"../drivers/pwm/pwm-ep93xx.c", i32 202, i32 1}
!7 = !{ptr @__UNIQUE_ID_author186, !8, !"__UNIQUE_ID_author186", i1 false, i1 false}
!8 = !{!"../drivers/pwm/pwm-ep93xx.c", i32 203, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias187, !10, !"__UNIQUE_ID_alias187", i1 false, i1 false}
!10 = !{!"../drivers/pwm/pwm-ep93xx.c", i32 204, i32 1}
!11 = !{ptr @__UNIQUE_ID_file188, !12, !"__UNIQUE_ID_file188", i1 false, i1 false}
!12 = !{!"../drivers/pwm/pwm-ep93xx.c", i32 205, i32 1}
!13 = !{ptr @__UNIQUE_ID_license189, !12, !"__UNIQUE_ID_license189", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-ep93xx.c", i32 195, i32 11}
!16 = !{ptr @ep93xx_pwm_driver, !17, !"ep93xx_pwm_driver", i1 false, i1 false}
!17 = !{!"../drivers/pwm/pwm-ep93xx.c", i32 193, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pwm/pwm-ep93xx.c", i32 178, i32 45}
!20 = !{ptr @ep93xx_pwm_ops, !21, !"ep93xx_pwm_ops", i1 false, i1 false}
!21 = !{!"../drivers/pwm/pwm-ep93xx.c", i32 158, i32 29}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i8 0, i8 2}
!32 = !{i64 2152914274}
!33 = !{i64 5210456}
!34 = !{i64 2152915492}
!35 = !{i64 704002, i64 704029, i64 704051, i64 704079}
!36 = !{i64 704410, i64 704437, i64 704470, i64 704491, i64 704518, i64 704544}
!37 = !{!"branch_weights", i32 2000, i32 1}
!38 = !{i64 2148189546, i64 2148189826, i64 2148190160, i64 2148190494}
!39 = !{i64 5210656}
!40 = !{i64 2152926215}
!41 = !{i64 2152926858}
!42 = !{i64 2152927688}
!43 = !{i64 2152928115}
