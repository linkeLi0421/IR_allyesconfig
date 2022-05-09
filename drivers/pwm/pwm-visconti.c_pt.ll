; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-visconti.c_pt.bc'
source_filename = "../drivers/pwm/pwm-visconti.c"
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
%struct.visconti_pwm_chip = type { %struct.pwm_chip, ptr }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }

@__initcall__kmod_pwm_visconti__170_171_visconti_pwm_driver_init6 = internal global ptr @visconti_pwm_driver_init, section ".initcall6.init", align 4
@visconti_pwm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @visconti_pwm_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @visconti_pwm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_visconti_pwm_driver_exit = internal global ptr @visconti_pwm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file171 = internal constant [43 x i8] c"pwm_visconti.file=drivers/pwm/pwm-visconti\00", section ".modinfo", align 1
@__UNIQUE_ID_license172 = internal constant [28 x i8] c"pwm_visconti.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author173 = internal constant [73 x i8] c"pwm_visconti.author=Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias174 = internal constant [41 x i8] c"pwm_visconti.alias=platform:pwm-visconti\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pwm-visconti\00", [19 x i8] zeroinitializer }, align 32
@visconti_pwm_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"toshiba,visconti-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@visconti_pwm_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr null, ptr null, ptr null, ptr @visconti_pwm_apply, ptr @visconti_pwm_get_state, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot register visconti PWM\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/pwm/pwm-visconti.c\00", [37 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [20 x i8] c"visconti_pwm_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 164, i32 31 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 166, i32 11 }
@___asan_gen_.9 = private unnamed_addr constant [22 x i8] c"visconti_pwm_of_match\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 158, i32 34 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"visconti_pwm_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 127, i32 29 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 153, i32 41 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private constant [30 x i8] c"../drivers/pwm/pwm-visconti.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 91, i32 6 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_alias174, ptr @__UNIQUE_ID_author173, ptr @__UNIQUE_ID_file171, ptr @__UNIQUE_ID_license172, ptr @__exitcall_visconti_pwm_driver_exit, ptr @__initcall__kmod_pwm_visconti__170_171_visconti_pwm_driver_init6, ptr @visconti_pwm_driver_exit, ptr @visconti_pwm_driver, ptr @.str, ptr @visconti_pwm_of_match, ptr @visconti_pwm_ops, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @visconti_pwm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @visconti_pwm_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @visconti_pwm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @visconti_pwm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @visconti_pwm_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @visconti_pwm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @visconti_pwm_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @visconti_pwm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 40, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #4
  %base = getelementptr inbounds %struct.visconti_pwm_chip, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @visconti_pwm_ops, ptr %ops, align 4
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %npwm, align 4
  %call14 = tail call i32 @devm_pwmchip_add(ptr noundef %dev1, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %if.then15, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %call17 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call14, ptr noundef nonnull @.str.1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end8.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ %call17, %if.then15 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pwmchip_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @visconti_pwm_apply(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  %base = getelementptr inbounds %struct.visconti_pwm_chip, ptr %chip, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %4 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwpwm, align 8
  %mul = shl i32 %5, 2
  %add = add i32 %mul, 1024
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #4, !srcloc !33
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %state, align 8
  %8 = tail call i64 @llvm.umin.i64(i64 %7, i64 524280000)
  %9 = trunc i64 %8 to i32
  %duty_cycle5 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %10 = ptrtoint ptr %duty_cycle5 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %duty_cycle5, align 8
  %12 = tail call i64 @llvm.umin.i64(i64 %11, i64 %8)
  %13 = trunc i64 %12 to i32
  %div = udiv i32 %9, 1000
  %div14 = udiv i32 %13, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %9)
  %14 = icmp ult i32 %9, 1000
  br i1 %14, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %shr = lshr i32 %div, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536000, i32 %9)
  %tobool.not.i = icmp ult i32 %9, 65536000
  %15 = tail call i32 @llvm.ctlz.i32(i32 %shr, i1 true) #4, !range !34
  %sub.i = sub nuw nsw i32 32, %15
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cond.i)
  %cmp19 = icmp ugt i32 %cond.i, 3
  br i1 %cmp19, label %do.end32, label %if.end47, !prof !35

do.end32:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 91, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end47:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %shr48 = lshr i32 %div, %cond.i
  %shr49 = lshr i32 %div14, %cond.i
  %polarity = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %16 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %polarity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp50 = icmp eq i32 %17, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  %18 = shl nuw nsw i32 %cond.i, 24
  %19 = or i32 %18, 536870912
  %20 = select i1 %cmp50, i32 %19, i32 %18
  %base57 = getelementptr inbounds %struct.visconti_pwm_chip, ptr %chip, i32 0, i32 1
  %21 = ptrtoint ptr %base57 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base57, align 4
  %hwpwm58 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %23 = ptrtoint ptr %hwpwm58 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hwpwm58, align 8
  %mul59 = shl i32 %24, 2
  %add60 = add i32 %mul59, 1088
  %add.ptr61 = getelementptr i8, ptr %22, i32 %add60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 %20) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  tail call void @arm_heavy_mb() #4
  %25 = tail call i32 @llvm.bswap.i32(i32 %shr49)
  %26 = ptrtoint ptr %base57 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base57, align 4
  %28 = ptrtoint ptr %hwpwm58 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hwpwm58, align 8
  %mul67 = shl i32 %29, 2
  %add68 = add i32 %mul67, 1056
  %add.ptr69 = getelementptr i8, ptr %27, i32 %add68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 %25) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  tail call void @arm_heavy_mb() #4
  %30 = tail call i32 @llvm.bswap.i32(i32 %shr48)
  %31 = ptrtoint ptr %base57 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base57, align 4
  %33 = ptrtoint ptr %hwpwm58 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hwpwm58, align 8
  %mul75 = shl i32 %34, 2
  %add76 = add i32 %mul75, 1024
  %add.ptr77 = getelementptr i8, ptr %32, i32 %add76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 %30) #4, !srcloc !33
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %do.end32, %if.end.cleanup_crit_edge, %do.body
  %retval.0 = phi i32 [ -22, %do.end32 ], [ 0, %if.end47 ], [ 0, %do.body ], [ -34, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @visconti_pwm_get_state(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm, ptr nocapture noundef writeonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.visconti_pwm_chip, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %2 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwpwm, align 8
  %mul = shl i32 %3, 2
  %add = add i32 %mul, 1024
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !39
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %8 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwpwm, align 8
  %mul7 = shl i32 %9, 2
  %add8 = add i32 %mul7, 1056
  %add.ptr9 = getelementptr i8, ptr %7, i32 %add8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #4, !srcloc !39
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %14 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hwpwm, align 8
  %mul17 = shl i32 %15, 2
  %add18 = add i32 %mul17, 1088
  %add.ptr19 = getelementptr i8, ptr %13, i32 %add18
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #4, !srcloc !39
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  %and = and i32 %17, 3
  %shl = shl i32 %5, %and
  %mul23 = mul i32 %shl, 1000
  %conv = zext i32 %mul23 to i64
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv, ptr %state, align 8
  %shl25 = shl i32 %11, %and
  %mul26 = mul i32 %shl25, 1000
  %conv27 = zext i32 %mul26 to i64
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %19 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv27, ptr %duty_cycle, align 8
  %and28 = lshr i32 %17, 5
  %and28.lobit = and i32 %and28, 1
  %20 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and28.lobit, ptr %20, align 8
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %22 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %enabled, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__initcall__kmod_pwm_visconti__170_171_visconti_pwm_driver_init6, !1, !"__initcall__kmod_pwm_visconti__170_171_visconti_pwm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-visconti.c", i32 171, i32 1}
!2 = !{ptr @__exitcall_visconti_pwm_driver_exit, !1, !"__exitcall_visconti_pwm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file171, !4, !"__UNIQUE_ID_file171", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-visconti.c", i32 173, i32 1}
!5 = !{ptr @__UNIQUE_ID_license172, !4, !"__UNIQUE_ID_license172", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author173, !7, !"__UNIQUE_ID_author173", i1 false, i1 false}
!7 = !{!"../drivers/pwm/pwm-visconti.c", i32 174, i32 1}
!8 = !{ptr @__UNIQUE_ID_alias174, !9, !"__UNIQUE_ID_alias174", i1 false, i1 false}
!9 = !{!"../drivers/pwm/pwm-visconti.c", i32 175, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pwm/pwm-visconti.c", i32 166, i32 11}
!12 = !{ptr @visconti_pwm_driver, !13, !"visconti_pwm_driver", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-visconti.c", i32 164, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-visconti.c", i32 153, i32 41}
!16 = !{ptr @visconti_pwm_ops, !17, !"visconti_pwm_ops", i1 false, i1 false}
!17 = !{!"../drivers/pwm/pwm-visconti.c", i32 127, i32 29}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pwm/pwm-visconti.c", i32 91, i32 6}
!20 = !{ptr @visconti_pwm_of_match, !21, !"visconti_pwm_of_match", i1 false, i1 false}
!21 = !{!"../drivers/pwm/pwm-visconti.c", i32 158, i32 34}
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
!32 = !{i64 2152531060}
!33 = !{i64 688118}
!34 = !{i32 0, i32 33}
!35 = !{!"branch_weights", i32 1, i32 2000}
!36 = !{i64 2152532109}
!37 = !{i64 2152532589}
!38 = !{i64 2152533080}
!39 = !{i64 688536}
!40 = !{i64 2152533900}
!41 = !{i64 2152534512}
!42 = !{i64 2152535124}
