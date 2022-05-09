; ModuleID = '/llk/IR_all_yes/drivers/clocksource/timer-stm32-lp.c_pt.bc'
source_filename = "../drivers/clocksource/timer-stm32-lp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cpumask = type { [1 x i32] }
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
%struct.stm32_lptimer = type { ptr, ptr, i8 }
%struct.stm32_lp_private = type { ptr, [124 x i8], %struct.clock_event_device, i32, ptr, [120 x i8] }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_timer_stm32_lp__187_217_stm32_clkevent_lp_driver_init6 = internal global ptr @stm32_clkevent_lp_driver_init, section ".initcall6.init", align 4
@stm32_clkevent_lp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32_clkevent_lp_probe, ptr @stm32_clkevent_lp_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_clkevent_lp_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stm32_clkevent_lp_driver_exit = internal global ptr @stm32_clkevent_lp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias188 = internal constant [50 x i8] c"timer_stm32_lp.alias=platform:stm32-lptimer-timer\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [80 x i8] c"timer_stm32_lp.description=STMicroelectronics STM32 clockevent low power driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [55 x i8] c"timer_stm32_lp.file=drivers/clocksource/timer-stm32-lp\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [30 x i8] c"timer_stm32_lp.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stm32-lptimer-timer\00", [44 x i8] zeroinitializer }, align 32
@stm32_clkevent_lp_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-lptimer-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wakeup-source\00", [18 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@___asan_gen_.2 = private unnamed_addr constant [25 x i8] c"stm32_clkevent_lp_driver\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 209, i32 31 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 213, i32 11 }
@___asan_gen_.8 = private unnamed_addr constant [27 x i8] c"stm32_clkevent_lp_of_match\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 203, i32 34 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private constant [40 x i8] c"../drivers/clocksource/timer-stm32-lp.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 170, i32 55 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_stm32_clkevent_lp_driver_exit, ptr @__initcall__kmod_timer_stm32_lp__187_217_stm32_clkevent_lp_driver_init6, ptr @stm32_clkevent_lp_driver_exit, ptr @stm32_clkevent_lp_driver, ptr @.str, ptr @stm32_clkevent_lp_of_match, ptr @.str.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_clkevent_lp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_clkevent_lp_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_clkevent_lp_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_clkevent_lp_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm32_clkevent_lp_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_clkevent_lp_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_clkevent_lp_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 512, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.stm32_lptimer, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %call.i, align 128
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %call.i71 = tail call i32 @clk_prepare(ptr noundef %8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %tobool.not.i = icmp eq i32 %call.i71, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end6, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %8) #4
  br label %cleanup

if.end6:                                          ; preds = %if.end.i
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %call8 = tail call i32 @clk_get_rate(ptr noundef %10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end6.out_clk_disable_crit_edge, label %if.end11

if.end6.out_clk_disable_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_clk_disable

if.end11:                                         ; preds = %if.end6
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %12, i32 -16
  %call14 = tail call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call14)
  %cmp = icmp slt i32 %call14, 1
  br i1 %cmp, label %if.end11.out_clk_disable_crit_edge, label %if.end16

if.end11.out_clk_disable_crit_edge:               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_clk_disable

if.end16:                                         ; preds = %if.end11
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node, align 8
  %call.i72 = tail call ptr @of_find_property(ptr noundef %16, ptr noundef nonnull @.str.1, ptr noundef null) #4
  %tobool.i.not = icmp eq ptr %call.i72, null
  br i1 %tobool.i.not, label %if.end16.if.end31_crit_edge, label %if.then20

if.end16.if.end31_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.then20:                                        ; preds = %if.end16
  %call22 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.then20.out_clk_disable_crit_edge

if.then20.out_clk_disable_crit_edge:              ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_clk_disable

if.end25:                                         ; preds = %if.then20
  %call27 = tail call i32 @dev_pm_set_wake_irq(ptr noundef %dev, i32 noundef %call14) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end25.if.end31_crit_edge, label %if.end25.out_clk_disable_crit_edge

if.end25.out_clk_disable_crit_edge:               ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_clk_disable

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.end31:                                         ; preds = %if.end25.if.end31_crit_edge, %if.end16.if.end31_crit_edge
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 8
  %clkevt = getelementptr inbounds %struct.stm32_lp_private, ptr %call.i, i32 0, i32 2
  %call.i73 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call14, ptr noundef nonnull @stm32_clkevent_lp_irq_handler, ptr noundef null, i32 noundef 82432, ptr noundef %18, ptr noundef %clkevt) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %tobool34.not = icmp eq i32 %call.i73, 0
  br i1 %tobool34.not, label %if.end36, label %if.end31.out_clk_disable_crit_edge

if.end31.out_clk_disable_crit_edge:               ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_clk_disable

if.end36:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 3200000, i32 %call8)
  %cmp2.i = icmp ult i32 %call8, 3200000
  br i1 %cmp2.i, label %if.end36.stm32_clkevent_lp_set_prescaler.exit_crit_edge, label %for.inc.i

if.end36.stm32_clkevent_lp_set_prescaler.exit_crit_edge: ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %stm32_clkevent_lp_set_prescaler.exit

for.inc.i:                                        ; preds = %if.end36
  %add.1.i = add i32 %call8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6400000, i32 %add.1.i)
  %cmp2.1.i = icmp ult i32 %add.1.i, 6400000
  br i1 %cmp2.1.i, label %for.inc.i.stm32_clkevent_lp_set_prescaler.exit_crit_edge, label %for.inc.1.i

for.inc.i.stm32_clkevent_lp_set_prescaler.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %stm32_clkevent_lp_set_prescaler.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %add.2.i = add i32 %call8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 12800000, i32 %add.2.i)
  %cmp2.2.i = icmp ult i32 %add.2.i, 12800000
  br i1 %cmp2.2.i, label %for.inc.1.i.stm32_clkevent_lp_set_prescaler.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.stm32_clkevent_lp_set_prescaler.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %stm32_clkevent_lp_set_prescaler.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %add.3.i = add i32 %call8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25600000, i32 %add.3.i)
  %cmp2.3.i = icmp ult i32 %add.3.i, 25600000
  br i1 %cmp2.3.i, label %for.inc.2.i.stm32_clkevent_lp_set_prescaler.exit_crit_edge, label %for.inc.3.i

for.inc.2.i.stm32_clkevent_lp_set_prescaler.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %stm32_clkevent_lp_set_prescaler.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %add.4.i = add i32 %call8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 51200000, i32 %add.4.i)
  %cmp2.4.i = icmp ult i32 %add.4.i, 51200000
  br i1 %cmp2.4.i, label %for.inc.3.i.stm32_clkevent_lp_set_prescaler.exit_crit_edge, label %for.inc.4.i

for.inc.3.i.stm32_clkevent_lp_set_prescaler.exit_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %stm32_clkevent_lp_set_prescaler.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %add.5.i = add i32 %call8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 102400000, i32 %add.5.i)
  %cmp2.5.i = icmp ult i32 %add.5.i, 102400000
  br i1 %cmp2.5.i, label %for.inc.4.i.stm32_clkevent_lp_set_prescaler.exit_crit_edge, label %for.inc.5.i

for.inc.4.i.stm32_clkevent_lp_set_prescaler.exit_crit_edge: ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %stm32_clkevent_lp_set_prescaler.exit

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %add.6.i = add i32 %call8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 204800000, i32 %add.6.i)
  %cmp2.6.i = icmp ult i32 %add.6.i, 204800000
  br i1 %cmp2.6.i, label %for.inc.5.i.stm32_clkevent_lp_set_prescaler.exit_crit_edge, label %for.inc.6.i

for.inc.5.i.stm32_clkevent_lp_set_prescaler.exit_crit_edge: ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %stm32_clkevent_lp_set_prescaler.exit

for.inc.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.7.i = add i32 %call8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 409600000, i32 %add.7.i)
  %cmp2.7.i = icmp ult i32 %add.7.i, 409600000
  %spec.select.i = select i1 %cmp2.7.i, i32 7, i32 8
  br label %stm32_clkevent_lp_set_prescaler.exit

stm32_clkevent_lp_set_prescaler.exit:             ; preds = %for.inc.6.i, %for.inc.5.i.stm32_clkevent_lp_set_prescaler.exit_crit_edge, %for.inc.4.i.stm32_clkevent_lp_set_prescaler.exit_crit_edge, %for.inc.3.i.stm32_clkevent_lp_set_prescaler.exit_crit_edge, %for.inc.2.i.stm32_clkevent_lp_set_prescaler.exit_crit_edge, %for.inc.1.i.stm32_clkevent_lp_set_prescaler.exit_crit_edge, %for.inc.i.stm32_clkevent_lp_set_prescaler.exit_crit_edge, %if.end36.stm32_clkevent_lp_set_prescaler.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end36.stm32_clkevent_lp_set_prescaler.exit_crit_edge ], [ 1, %for.inc.i.stm32_clkevent_lp_set_prescaler.exit_crit_edge ], [ 2, %for.inc.1.i.stm32_clkevent_lp_set_prescaler.exit_crit_edge ], [ 3, %for.inc.2.i.stm32_clkevent_lp_set_prescaler.exit_crit_edge ], [ 4, %for.inc.3.i.stm32_clkevent_lp_set_prescaler.exit_crit_edge ], [ 5, %for.inc.4.i.stm32_clkevent_lp_set_prescaler.exit_crit_edge ], [ 6, %for.inc.5.i.stm32_clkevent_lp_set_prescaler.exit_crit_edge ], [ %spec.select.i, %for.inc.6.i ]
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 128
  %shl3.i = shl nuw nsw i32 %i.0.lcssa.i, 9
  %call.i74 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 12, i32 noundef %shl3.i) #4
  %shl6.i = shl nuw nsw i32 1, %i.0.lcssa.i
  %div826.i = lshr i32 %shl6.i, 1
  %add9.i = add i32 %div826.i, %call8
  %div1023.i = lshr i32 %add9.i, %i.0.lcssa.i
  %sub.i = add i32 %div1023.i, 99
  %div12.i = udiv i32 %sub.i, 100
  %period.i = getelementptr inbounds %struct.stm32_lp_private, ptr %call.i, i32 0, i32 3
  %21 = ptrtoint ptr %period.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div12.i, ptr %period.i, align 128
  %22 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent, align 8
  %of_node39 = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %of_node39 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node39, align 8
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %full_name.i, align 4
  %name.i = getelementptr inbounds %struct.stm32_lp_private, ptr %call.i, i32 0, i32 2, i32 21
  %28 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %name.i, align 4
  %cpumask.i = getelementptr inbounds %struct.stm32_lp_private, ptr %call.i, i32 0, i32 2, i32 25
  %29 = ptrtoint ptr %cpumask.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @__cpu_possible_mask, ptr %cpumask.i, align 4
  %features.i = getelementptr inbounds %struct.stm32_lp_private, ptr %call.i, i32 0, i32 2, i32 9
  %30 = ptrtoint ptr %features.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 3, ptr %features.i, align 4
  %set_state_shutdown.i = getelementptr inbounds %struct.stm32_lp_private, ptr %call.i, i32 0, i32 2, i32 14
  %31 = ptrtoint ptr %set_state_shutdown.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @stm32_clkevent_lp_shutdown, ptr %set_state_shutdown.i, align 8
  %set_state_periodic.i = getelementptr inbounds %struct.stm32_lp_private, ptr %call.i, i32 0, i32 2, i32 11
  %32 = ptrtoint ptr %set_state_periodic.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @stm32_clkevent_lp_set_periodic, ptr %set_state_periodic.i, align 4
  %set_state_oneshot.i = getelementptr inbounds %struct.stm32_lp_private, ptr %call.i, i32 0, i32 2, i32 12
  %33 = ptrtoint ptr %set_state_oneshot.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @stm32_clkevent_lp_set_oneshot, ptr %set_state_oneshot.i, align 64
  %set_next_event.i = getelementptr inbounds %struct.stm32_lp_private, ptr %call.i, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %set_next_event.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @stm32_clkevent_lp_set_next_event, ptr %set_next_event.i, align 4
  %rating.i = getelementptr inbounds %struct.stm32_lp_private, ptr %call.i, i32 0, i32 2, i32 22
  %35 = ptrtoint ptr %rating.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1000, ptr %rating.i, align 8
  tail call void @clockevents_config_and_register(ptr noundef %clkevt, i32 noundef %div1023.i, i32 noundef 1, i32 noundef 65535) #4
  %dev41 = getelementptr inbounds %struct.stm32_lp_private, ptr %call.i, i32 0, i32 4
  %36 = ptrtoint ptr %dev41 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %dev, ptr %dev41, align 4
  br label %cleanup

out_clk_disable:                                  ; preds = %if.end31.out_clk_disable_crit_edge, %if.end25.out_clk_disable_crit_edge, %if.then20.out_clk_disable_crit_edge, %if.end11.out_clk_disable_crit_edge, %if.end6.out_clk_disable_crit_edge
  %ret.0 = phi i32 [ %call22, %if.then20.out_clk_disable_crit_edge ], [ %call27, %if.end25.out_clk_disable_crit_edge ], [ %call.i73, %if.end31.out_clk_disable_crit_edge ], [ -22, %if.end6.out_clk_disable_crit_edge ], [ %call14, %if.end11.out_clk_disable_crit_edge ]
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %38) #4
  tail call void @clk_unprepare(ptr noundef %38) #4
  br label %cleanup

cleanup:                                          ; preds = %out_clk_disable, %stm32_clkevent_lp_set_prescaler.exit, %if.then3.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_clk_disable ], [ 0, %stm32_clkevent_lp_set_prescaler.exit ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.then3.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stm32_clkevent_lp_remove(ptr nocapture noundef readnone %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_set_wake_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_clkevent_lp_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 -128
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %call1 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 4, i32 noundef 2) #4
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_id, align 128
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %3(ptr noundef %dev_id) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_clkevent_lp_shutdown(ptr nocapture noundef readonly %clkevt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %clkevt, i32 -128
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 128
  %call1 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 16, i32 noundef 0) #4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 128
  %call3 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 8, i32 noundef 0) #4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 128
  %call5 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 4, i32 noundef 2) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_clkevent_lp_set_periodic(ptr nocapture noundef readonly %clkevt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %clkevt, i32 -128
  %period = getelementptr i8, ptr %clkevt, i32 256
  %0 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %period, align 128
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 128
  %call1.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 16, i32 noundef 0) #4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 128
  %call3.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 8, i32 noundef 2) #4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 128
  %call5.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 16, i32 noundef 1) #4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 128
  %call7.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 24, i32 noundef %1) #4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 128
  %call11.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 16, i32 noundef 5) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_clkevent_lp_set_oneshot(ptr nocapture noundef readonly %clkevt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %clkevt, i32 -128
  %period = getelementptr i8, ptr %clkevt, i32 256
  %0 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %period, align 128
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 128
  %call1.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 16, i32 noundef 0) #4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 128
  %call3.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 8, i32 noundef 2) #4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 128
  %call5.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 16, i32 noundef 1) #4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 128
  %call7.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 24, i32 noundef %1) #4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 128
  %call11.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 16, i32 noundef 3) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_clkevent_lp_set_next_event(i32 noundef %evt, ptr nocapture noundef readonly %clkevt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %state_use_accessors.i = getelementptr inbounds %struct.clock_event_device, ptr %clkevt, i32 0, i32 8
  %0 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state_use_accessors.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 2
  %add.ptr.i.i = getelementptr i8, ptr %clkevt, i32 -128
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 128
  %call1.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 16, i32 noundef 0) #4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i, align 128
  %call3.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 8, i32 noundef 2) #4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i.i, align 128
  %call5.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 16, i32 noundef 1) #4
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i.i, align 128
  %call7.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 24, i32 noundef %evt) #4
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i.i, align 128
  %..i = select i1 %cmp.i.not, i32 5, i32 3
  %call11.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 16, i32 noundef %..i) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__initcall__kmod_timer_stm32_lp__187_217_stm32_clkevent_lp_driver_init6, !1, !"__initcall__kmod_timer_stm32_lp__187_217_stm32_clkevent_lp_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/timer-stm32-lp.c", i32 217, i32 1}
!2 = !{ptr @__exitcall_stm32_clkevent_lp_driver_exit, !1, !"__exitcall_stm32_clkevent_lp_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias188, !4, !"__UNIQUE_ID_alias188", i1 false, i1 false}
!4 = !{!"../drivers/clocksource/timer-stm32-lp.c", i32 219, i32 1}
!5 = !{ptr @__UNIQUE_ID_description189, !6, !"__UNIQUE_ID_description189", i1 false, i1 false}
!6 = !{!"../drivers/clocksource/timer-stm32-lp.c", i32 220, i32 1}
!7 = !{ptr @__UNIQUE_ID_file190, !8, !"__UNIQUE_ID_file190", i1 false, i1 false}
!8 = !{!"../drivers/clocksource/timer-stm32-lp.c", i32 221, i32 1}
!9 = !{ptr @__UNIQUE_ID_license191, !8, !"__UNIQUE_ID_license191", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clocksource/timer-stm32-lp.c", i32 213, i32 11}
!12 = !{ptr @stm32_clkevent_lp_driver, !13, !"stm32_clkevent_lp_driver", i1 false, i1 false}
!13 = !{!"../drivers/clocksource/timer-stm32-lp.c", i32 209, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clocksource/timer-stm32-lp.c", i32 170, i32 55}
!16 = !{ptr @stm32_clkevent_lp_of_match, !17, !"stm32_clkevent_lp_of_match", i1 false, i1 false}
!17 = !{!"../drivers/clocksource/timer-stm32-lp.c", i32 203, i32 34}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
