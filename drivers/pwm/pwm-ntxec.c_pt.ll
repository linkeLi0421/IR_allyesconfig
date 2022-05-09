; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-ntxec.c_pt.bc'
source_filename = "../drivers/pwm/pwm-ntxec.c"
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
%struct.ntxec_pwm = type { ptr, ptr, %struct.pwm_chip }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.reg_sequence = type { i32, i32, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.ntxec = type { ptr, ptr }

@__initcall__kmod_pwm_ntxec__174_167_ntxec_pwm_driver_init6 = internal global ptr @ntxec_pwm_driver_init, section ".initcall6.init", align 4
@ntxec_pwm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ntxec_pwm_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ntxec_pwm_driver_exit = internal global ptr @ntxec_pwm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author175 = internal constant [62 x i8] c"pwm_ntxec.author=Jonathan Neusch\C3\A4fer <j.neuschaefer@gmx.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description176 = internal constant [49 x i8] c"pwm_ntxec.description=PWM driver for Netronix EC\00", section ".modinfo", align 1
@__UNIQUE_ID_file177 = internal constant [37 x i8] c"pwm_ntxec.file=drivers/pwm/pwm-ntxec\00", section ".modinfo", align 1
@__UNIQUE_ID_license178 = internal constant [22 x i8] c"pwm_ntxec.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias179 = internal constant [35 x i8] c"pwm_ntxec.alias=platform:ntxec-pwm\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ntxec-pwm\00", [22 x i8] zeroinitializer }, align 32
@ntxec_pwm_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr null, ptr null, ptr null, ptr @ntxec_pwm_apply, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"ntxec_pwm_driver\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 161, i32 31 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 163, i32 11 }
@___asan_gen_.7 = private unnamed_addr constant [14 x i8] c"ntxec_pwm_ops\00", align 1
@___asan_gen_.8 = private constant [27 x i8] c"../drivers/pwm/pwm-ntxec.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 129, i32 29 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias179, ptr @__UNIQUE_ID_author175, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file177, ptr @__UNIQUE_ID_license178, ptr @__exitcall_ntxec_pwm_driver_exit, ptr @__initcall__kmod_pwm_ntxec__174_167_ntxec_pwm_driver_init6, ptr @ntxec_pwm_driver_exit, ptr @ntxec_pwm_driver, ptr @.str, ptr @ntxec_pwm_ops], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntxec_pwm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntxec_pwm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ntxec_pwm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ntxec_pwm_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ntxec_pwm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @ntxec_pwm_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntxec_pwm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %of_node4 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %of_node4, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ec7 = getelementptr inbounds %struct.ntxec_pwm, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %ec7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %3, ptr %ec7, align 4
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %call.i, align 4
  %chip10 = getelementptr inbounds %struct.ntxec_pwm, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %chip10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %chip10, align 4
  %ops = getelementptr inbounds %struct.ntxec_pwm, ptr %call.i, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ntxec_pwm_ops, ptr %ops, align 4
  %npwm = getelementptr inbounds %struct.ntxec_pwm, ptr %call.i, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %npwm, align 4
  %call14 = tail call i32 @devm_pwmchip_add(ptr noundef %dev, ptr noundef %chip10) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pwmchip_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntxec_pwm_apply(ptr nocapture noundef readonly %chip, ptr nocapture noundef readnone %pwm_dev, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  %regs.i = alloca [4 x %struct.reg_sequence], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %polarity = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %polarity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %state, align 8
  %4 = tail call i64 @llvm.umin.i64(i64 %3, i64 8191875)
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %5 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %duty_cycle, align 8
  %7 = tail call i64 @llvm.umin.i64(i64 %6, i64 %4)
  %8 = trunc i64 %7 to i32
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %9 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %enabled, align 4, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 125, i32 %8)
  %11 = icmp ult i32 %8, 125
  %or.cond = select i1 %tobool.not, i1 true, i1 %11
  br i1 %or.cond, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end
  %div12 = udiv i32 %8, 125
  %12 = trunc i64 %4 to i32
  %div = udiv i32 %12, 125
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %regs.i) #5
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 165, ptr %regs.i, align 4
  %def.i = getelementptr inbounds %struct.reg_sequence, ptr %regs.i, i32 0, i32 1
  %14 = and i32 %div, 65280
  %15 = ptrtoint ptr %def.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %def.i, align 4
  %delay_us.i = getelementptr inbounds %struct.reg_sequence, ptr %regs.i, i32 0, i32 2
  %16 = ptrtoint ptr %delay_us.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %delay_us.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.reg_sequence, ptr %regs.i, i32 1
  %17 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 167, ptr %arrayinit.element.i, align 4
  %def4.i = getelementptr inbounds %struct.reg_sequence, ptr %regs.i, i32 1, i32 1
  %18 = and i32 %div12, 65280
  %19 = ptrtoint ptr %def4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %def4.i, align 4
  %delay_us9.i = getelementptr inbounds %struct.reg_sequence, ptr %regs.i, i32 1, i32 2
  %20 = ptrtoint ptr %delay_us9.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %delay_us9.i, align 4
  %arrayinit.element10.i = getelementptr inbounds %struct.reg_sequence, ptr %regs.i, i32 2
  %21 = ptrtoint ptr %arrayinit.element10.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 164, ptr %arrayinit.element10.i, align 4
  %def12.i = getelementptr inbounds %struct.reg_sequence, ptr %regs.i, i32 2, i32 1
  %conv.i29.i = shl nuw nsw i32 %div, 8
  %conv15.i = and i32 %conv.i29.i, 65280
  %22 = ptrtoint ptr %def12.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv15.i, ptr %def12.i, align 4
  %delay_us16.i = getelementptr inbounds %struct.reg_sequence, ptr %regs.i, i32 2, i32 2
  %23 = ptrtoint ptr %delay_us16.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %delay_us16.i, align 4
  %arrayinit.element17.i = getelementptr inbounds %struct.reg_sequence, ptr %regs.i, i32 3
  %24 = ptrtoint ptr %arrayinit.element17.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 166, ptr %arrayinit.element17.i, align 4
  %def19.i = getelementptr inbounds %struct.reg_sequence, ptr %regs.i, i32 3, i32 1
  %conv.i31.i = shl nuw nsw i32 %div12, 8
  %conv22.i = and i32 %conv.i31.i, 65280
  %25 = ptrtoint ptr %def19.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv22.i, ptr %def19.i, align 4
  %delay_us23.i = getelementptr inbounds %struct.reg_sequence, ptr %regs.i, i32 3, i32 2
  %26 = ptrtoint ptr %delay_us23.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %delay_us23.i, align 4
  %ec.i = getelementptr i8, ptr %chip, i32 -4
  %27 = ptrtoint ptr %ec.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ec.i, align 4
  %regmap.i = getelementptr inbounds %struct.ntxec, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap.i, align 4
  %call24.i = call i32 @regmap_multi_reg_write(ptr noundef %30, ptr noundef nonnull %regs.i, i32 noundef 4) #5
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %regs.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool18.not = icmp eq i32 %call24.i, 0
  br i1 %tobool18.not, label %if.end20, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %if.then16
  %31 = ptrtoint ptr %ec.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ec.i, align 4
  %regmap = getelementptr inbounds %struct.ntxec, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %call23 = call i32 @regmap_write(ptr noundef %34, i32 noundef 163, i32 noundef 256) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end26:                                         ; preds = %if.end20
  %35 = ptrtoint ptr %ec.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ec.i, align 4
  %regmap28 = getelementptr inbounds %struct.ntxec, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %regmap28 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap28, align 4
  %call31 = call i32 @regmap_write(ptr noundef %38, i32 noundef 161, i32 noundef 65280) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end34:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %ec.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ec.i, align 4
  %regmap36 = getelementptr inbounds %struct.ntxec, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %regmap36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap36, align 4
  %call39 = call i32 @regmap_write(ptr noundef %42, i32 noundef 162, i32 noundef 65280) #5
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ec40 = getelementptr i8, ptr %chip, i32 -4
  %43 = ptrtoint ptr %ec40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ec40, align 4
  %regmap41 = getelementptr inbounds %struct.ntxec, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %regmap41 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap41, align 4
  %call44 = tail call i32 @regmap_write(ptr noundef %46, i32 noundef 163, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end34, %if.end26.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call39, %if.end34 ], [ %call44, %if.else ], [ -22, %entry.cleanup_crit_edge ], [ %call24.i, %if.then16.cleanup_crit_edge ], [ %call23, %if.end20.cleanup_crit_edge ], [ %call31, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_multi_reg_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__initcall__kmod_pwm_ntxec__174_167_ntxec_pwm_driver_init6, !1, !"__initcall__kmod_pwm_ntxec__174_167_ntxec_pwm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-ntxec.c", i32 167, i32 1}
!2 = !{ptr @__exitcall_ntxec_pwm_driver_exit, !1, !"__exitcall_ntxec_pwm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author175, !4, !"__UNIQUE_ID_author175", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-ntxec.c", i32 169, i32 1}
!5 = !{ptr @__UNIQUE_ID_description176, !6, !"__UNIQUE_ID_description176", i1 false, i1 false}
!6 = !{!"../drivers/pwm/pwm-ntxec.c", i32 170, i32 1}
!7 = !{ptr @__UNIQUE_ID_file177, !8, !"__UNIQUE_ID_file177", i1 false, i1 false}
!8 = !{!"../drivers/pwm/pwm-ntxec.c", i32 171, i32 1}
!9 = !{ptr @__UNIQUE_ID_license178, !8, !"__UNIQUE_ID_license178", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias179, !11, !"__UNIQUE_ID_alias179", i1 false, i1 false}
!11 = !{!"../drivers/pwm/pwm-ntxec.c", i32 172, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-ntxec.c", i32 163, i32 11}
!14 = !{ptr @ntxec_pwm_driver, !15, !"ntxec_pwm_driver", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-ntxec.c", i32 161, i32 31}
!16 = !{ptr @ntxec_pwm_ops, !17, !"ntxec_pwm_ops", i1 false, i1 false}
!17 = !{!"../drivers/pwm/pwm-ntxec.c", i32 129, i32 29}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i8 0, i8 2}
