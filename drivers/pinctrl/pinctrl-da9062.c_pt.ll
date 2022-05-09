; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/pinctrl-da9062.c_pt.bc'
source_filename = "../drivers/pinctrl/pinctrl-da9062.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.da9062_pctl = type { ptr, %struct.gpio_chip, [5 x i32] }
%struct.da9062 = type { ptr, ptr, ptr, i32 }

@__initcall__kmod_pinctrl_da9062__227_295_da9062_pctl_driver_init6 = internal global ptr @da9062_pctl_driver_init, section ".initcall6.init", align 4
@da9062_pctl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @da9062_pctl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_da9062_pctl_driver_exit = internal global ptr @da9062_pctl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author228 = internal constant [59 x i8] c"pinctrl_da9062.author=Marco Felsch <kernel@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [63 x i8] c"pinctrl_da9062.description=DA9062 PMIC pinctrl and GPIO Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [51 x i8] c"pinctrl_da9062.file=drivers/pinctrl/pinctrl-da9062\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [30 x i8] c"pinctrl_da9062.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias232 = internal constant [42 x i8] c"pinctrl_da9062.alias=platform:da9062-gpio\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"da9062-gpio\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpio-controller\00", [16 x i8] zeroinitializer }, align 32
@reference_gc = internal constant { %struct.gpio_chip, [68 x i8] } { %struct.gpio_chip { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @da9062_gpio_get_direction, ptr @da9062_gpio_direction_input, ptr @da9062_gpio_direction_output, ptr @da9062_gpio_get, ptr null, ptr @da9062_gpio_set, ptr null, ptr @da9062_gpio_set_config, ptr @da9062_gpio_to_irq, ptr null, ptr null, ptr null, i32 -1, i16 5, i16 0, ptr null, i8 1, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, [68 x i8] zeroinitializer }, align 32
@da9062_pctl_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@da9062_pctl_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@switch.table.da9062_gpio_get_direction = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 -524, i32 1, i32 0, i32 0], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 3, i64 5, i64 6, i64 8]
@___asan_gen_.3 = private unnamed_addr constant [19 x i8] c"da9062_pctl_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 289, i32 31 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 292, i32 11 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 270, i32 39 }
@___asan_gen_.12 = private unnamed_addr constant [13 x i8] c"reference_gc\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 240, i32 31 }
@___asan_gen_.15 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.19 = private constant [36 x i8] c"../drivers/pinctrl/pinctrl-da9062.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 286, i32 9 }
@___asan_gen_.21 = private unnamed_addr constant [39 x i8] c"switch.table.da9062_gpio_get_direction\00", align 1
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_da9062_pctl_driver_exit, ptr @__initcall__kmod_pinctrl_da9062__227_295_da9062_pctl_driver_init6, ptr @da9062_pctl_driver_exit, ptr @da9062_pctl_driver, ptr @.str, ptr @.str.1, ptr @reference_gc, ptr @da9062_pctl_probe.lock_key, ptr @da9062_pctl_probe.request_key, ptr @switch.table.da9062_gpio_get_direction], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_pctl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reference_gc to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_pctl_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9062_pctl_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da9062_gpio_get_direction to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @da9062_pctl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @da9062_pctl_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @da9062_pctl_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @da9062_pctl_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9062_pctl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1, align 8
  %call = tail call ptr @dev_fwnode(ptr noundef %1) #4
  tail call void @device_set_node(ptr noundef %dev, ptr noundef %call) #4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 372, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %call.i, align 4
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call zeroext i1 @device_property_present(ptr noundef %1, ptr noundef nonnull @.str.1) #4
  br i1 %call12, label %for.body.preheader, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.preheader:                               ; preds = %if.end11
  %arrayidx = getelementptr %struct.da9062_pctl, ptr %call.i, i32 0, i32 2, i32 0
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %arrayidx, align 4
  %arrayidx.1 = getelementptr %struct.da9062_pctl, ptr %call.i, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %arrayidx.1, align 4
  %arrayidx.2 = getelementptr %struct.da9062_pctl, ptr %call.i, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %arrayidx.2, align 4
  %arrayidx.3 = getelementptr %struct.da9062_pctl, ptr %call.i, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %arrayidx.3, align 4
  %arrayidx.4 = getelementptr %struct.da9062_pctl, ptr %call.i, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %arrayidx.4, align 4
  %gc = getelementptr inbounds %struct.da9062_pctl, ptr %call.i, i32 0, i32 1
  %10 = call ptr @memcpy(ptr %gc, ptr @reference_gc, i32 348)
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.i, label %for.body.preheader.dev_name.exit_crit_edge

for.body.preheader.dev_name.exit_crit_edge:       ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit

if.end.i:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %for.body.preheader.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %14, %if.end.i ], [ %12, %for.body.preheader.dev_name.exit_crit_edge ]
  %15 = ptrtoint ptr %gc to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %retval.0.i, ptr %gc, align 4
  %parent20 = getelementptr inbounds %struct.da9062_pctl, ptr %call.i, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %parent20 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev, ptr %parent20, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call23 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef %gc, ptr noundef nonnull %call.i, ptr noundef nonnull @da9062_pctl_probe.lock_key, ptr noundef nonnull @da9062_pctl_probe.request_key) #4
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %dev_name.exit ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9062_gpio_get_direction(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #4
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %regmap1.i = getelementptr inbounds %struct.da9062, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #4
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !32
  %shr.i = lshr i32 %offset, 1
  %add.i = add nuw i32 %shr.i, 21
  %call.i = call i32 @regmap_read(ptr noundef %3, i32 noundef %add.i, ptr noundef nonnull %val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %da9062_pctl_get_pin_mode.exit.thread, label %da9062_pctl_get_pin_mode.exit

da9062_pctl_get_pin_mode.exit.thread:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #4
  br label %cleanup

da9062_pctl_get_pin_mode.exit:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %rem.i = shl i32 %offset, 2
  %mul.i = and i32 %rem.i, 4
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %shr2.i = ashr i32 %6, %mul.i
  %and.i = and i32 %shr2.i, 3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #4
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.da9062_gpio_get_direction, i32 0, i32 %and.i
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %da9062_pctl_get_pin_mode.exit, %da9062_pctl_get_pin_mode.exit.thread
  %retval.0 = phi i32 [ %call.i, %da9062_pctl_get_pin_mode.exit.thread ], [ %switch.load, %da9062_pctl_get_pin_mode.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9062_gpio_direction_input(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #4
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %regmap1 = getelementptr inbounds %struct.da9062, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap1, align 4
  %call2 = tail call ptr @gpiochip_get_desc(ptr noundef %gc, i32 noundef %offset) #4
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %regmap1.i = getelementptr inbounds %struct.da9062, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap1.i, align 4
  %rem.i = shl i32 %offset, 2
  %mul.i = and i32 %rem.i, 4
  %shl.i = shl nuw nsw i32 1, %mul.i
  %shl4.i = shl nuw nsw i32 3, %mul.i
  %shr.i = lshr i32 %offset, 1
  %add.i = add nuw i32 %shr.i, 21
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %add.i, i32 noundef %shl4.i, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i = getelementptr %struct.da9062_pctl, ptr %call, i32 0, i32 2, i32 %offset
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %arrayidx.i, align 4
  %call4 = tail call i32 @gpiod_is_active_low(ptr noundef %call2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  %lnot.ext = zext i1 %tobool5.not to i32
  %shl = shl nuw nsw i32 4, %mul.i
  %shl8 = shl nuw nsw i32 %lnot.ext, %mul.i
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add.i, i32 noundef %shl, i32 noundef %shl8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ %call.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9062_gpio_direction_output(ptr noundef %gc, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #4
  %arrayidx = getelementptr %struct.da9062_pctl, ptr %call, i32 0, i32 2, i32 %offset
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %regmap1.i = getelementptr inbounds %struct.da9062, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap1.i, align 4
  %and.i = and i32 %1, 3
  %rem.i = shl i32 %offset, 2
  %mul.i = and i32 %rem.i, 4
  %shl.i = shl nuw nsw i32 %and.i, %mul.i
  %shl4.i = shl nuw nsw i32 3, %mul.i
  %shr.i = lshr i32 %offset, 1
  %add.i = add nuw i32 %shr.i, 21
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add.i, i32 noundef %shl4.i, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %1, ptr %arrayidx, align 4
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gc) #4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call.i, align 4
  %regmap1.i10 = getelementptr inbounds %struct.da9062, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %regmap1.i10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap1.i10, align 4
  %shl.i11 = shl nuw i32 1, %offset
  %shl2.i = shl i32 %value, %offset
  %call.i.i12 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 29, i32 noundef %shl.i11, i32 noundef %shl2.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9062_gpio_get(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #4
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %regmap1 = getelementptr inbounds %struct.da9062, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #4
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !32
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %regmap1.i = getelementptr inbounds %struct.da9062, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #4
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val.i, align 4, !annotation !32
  %shr.i = lshr i32 %offset, 1
  %add.i = add nuw i32 %shr.i, 21
  %call.i = call i32 @regmap_read(ptr noundef %8, i32 noundef %add.i, ptr noundef nonnull %val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %da9062_pctl_get_pin_mode.exit.thread, label %da9062_pctl_get_pin_mode.exit

da9062_pctl_get_pin_mode.exit.thread:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #4
  br label %cleanup

da9062_pctl_get_pin_mode.exit:                    ; preds = %entry
  %rem.i = shl i32 %offset, 2
  %mul.i = and i32 %rem.i, 4
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i, align 4
  %shr2.i = ashr i32 %11, %mul.i
  %and.i = and i32 %shr2.i, 3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #4
  %12 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %da9062_pctl_get_pin_mode.exit.unreachabledefault [
    i32 0, label %da9062_pctl_get_pin_mode.exit.cleanup_crit_edge
    i32 1, label %sw.bb3
    i32 2, label %da9062_pctl_get_pin_mode.exit.sw.bb8_crit_edge
    i32 3, label %da9062_pctl_get_pin_mode.exit.sw.bb8_crit_edge28
  ]

da9062_pctl_get_pin_mode.exit.sw.bb8_crit_edge28: ; preds = %da9062_pctl_get_pin_mode.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb8

da9062_pctl_get_pin_mode.exit.sw.bb8_crit_edge:   ; preds = %da9062_pctl_get_pin_mode.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb8

da9062_pctl_get_pin_mode.exit.cleanup_crit_edge:  ; preds = %da9062_pctl_get_pin_mode.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb3:                                           ; preds = %da9062_pctl_get_pin_mode.exit
  %call4 = call i32 @regmap_read(ptr noundef %3, i32 noundef 2, ptr noundef nonnull %val) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %sw.bb3.cleanup_crit_edge, label %sw.bb3.sw.epilog_crit_edge

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb8:                                           ; preds = %da9062_pctl_get_pin_mode.exit.sw.bb8_crit_edge, %da9062_pctl_get_pin_mode.exit.sw.bb8_crit_edge28
  %call9 = call i32 @regmap_read(ptr noundef %3, i32 noundef 29, ptr noundef nonnull %val) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %sw.bb8.cleanup_crit_edge, label %sw.bb8.sw.epilog_crit_edge

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

da9062_pctl_get_pin_mode.exit.unreachabledefault: ; preds = %da9062_pctl_get_pin_mode.exit
  unreachable

sw.epilog:                                        ; preds = %sw.bb8.sw.epilog_crit_edge, %sw.bb3.sw.epilog_crit_edge
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %15 = lshr i32 %14, %offset
  %16 = and i32 %15, 1
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb8.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %da9062_pctl_get_pin_mode.exit.cleanup_crit_edge, %da9062_pctl_get_pin_mode.exit.thread
  %retval.0 = phi i32 [ %16, %sw.epilog ], [ -524, %da9062_pctl_get_pin_mode.exit.cleanup_crit_edge ], [ %call4, %sw.bb3.cleanup_crit_edge ], [ %call9, %sw.bb8.cleanup_crit_edge ], [ %call.i, %da9062_pctl_get_pin_mode.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @da9062_gpio_set(ptr noundef %gc, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #4
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %regmap1 = getelementptr inbounds %struct.da9062, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap1, align 4
  %shl = shl nuw i32 1, %offset
  %shl2 = shl i32 %value, %offset
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 29, i32 noundef %shl, i32 noundef %shl2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9062_gpio_set_config(ptr noundef %gc, i32 noundef %offset, i32 noundef %config) #2 align 64 {
entry:
  %val.i50 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #4
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %regmap1 = getelementptr inbounds %struct.da9062, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap1, align 4
  %trunc = trunc i32 %config to i8
  %4 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %trunc, label %entry.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 3, label %sw.bb4
    i8 5, label %sw.bb12
    i8 6, label %sw.bb24
    i8 8, label %sw.bb26
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %shl = shl nuw i32 1, %offset
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 272, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #4
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val.i, align 4, !annotation !32
  %shr.i = lshr i32 %offset, 1
  %add.i = add nuw i32 %shr.i, 21
  %call.i47 = call i32 @regmap_read(ptr noundef %3, i32 noundef %add.i, ptr noundef nonnull %val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %cmp.i = icmp slt i32 %call.i47, 0
  br i1 %cmp.i, label %da9062_pctl_get_pin_mode.exit.thread, label %da9062_pctl_get_pin_mode.exit

da9062_pctl_get_pin_mode.exit.thread:             ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #4
  br label %cleanup

da9062_pctl_get_pin_mode.exit:                    ; preds = %sw.bb4
  %rem.i = shl i32 %offset, 2
  %mul.i = and i32 %rem.i, 4
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val.i, align 4
  %shr2.i = ashr i32 %7, %mul.i
  %and.i48 = and i32 %shr2.i, 3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i48)
  %cmp6.not = icmp eq i32 %and.i48, 1
  br i1 %cmp6.not, label %if.end8, label %da9062_pctl_get_pin_mode.exit.cleanup_crit_edge

da9062_pctl_get_pin_mode.exit.cleanup_crit_edge:  ; preds = %da9062_pctl_get_pin_mode.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %da9062_pctl_get_pin_mode.exit
  call void @__sanitizer_cov_trace_pc() #6
  %shl9 = shl nuw i32 1, %offset
  %call.i49 = call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 272, i32 noundef %shl9, i32 noundef %shl9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i50) #4
  %8 = ptrtoint ptr %val.i50 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val.i50, align 4, !annotation !32
  %shr.i52 = lshr i32 %offset, 1
  %add.i53 = add nuw i32 %shr.i52, 21
  %call.i54 = call i32 @regmap_read(ptr noundef %3, i32 noundef %add.i53, ptr noundef nonnull %val.i50) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %cmp.i55 = icmp slt i32 %call.i54, 0
  br i1 %cmp.i55, label %da9062_pctl_get_pin_mode.exit62.thread, label %da9062_pctl_get_pin_mode.exit62

da9062_pctl_get_pin_mode.exit62.thread:           ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i50) #4
  br label %cleanup

da9062_pctl_get_pin_mode.exit62:                  ; preds = %sw.bb12
  %rem.i56 = shl i32 %offset, 2
  %mul.i57 = and i32 %rem.i56, 4
  %9 = ptrtoint ptr %val.i50 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i50, align 4
  %shr2.i58 = ashr i32 %10, %mul.i57
  %and.i59 = and i32 %shr2.i58, 3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i50) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i59)
  %cmp17.not = icmp eq i32 %and.i59, 2
  br i1 %cmp17.not, label %if.end20, label %da9062_pctl_get_pin_mode.exit62.cleanup_crit_edge

da9062_pctl_get_pin_mode.exit62.cleanup_crit_edge: ; preds = %da9062_pctl_get_pin_mode.exit62
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end20:                                         ; preds = %da9062_pctl_get_pin_mode.exit62
  call void @__sanitizer_cov_trace_pc() #6
  %shl21 = shl nuw i32 1, %offset
  %call.i63 = call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 272, i32 noundef %shl21, i32 noundef %shl21, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %cleanup

sw.bb24:                                          ; preds = %entry
  %rem.i65 = shl i32 %offset, 2
  %mul.i66 = and i32 %rem.i65, 4
  %shl.i = shl nuw nsw i32 2, %mul.i66
  %shl4.i = shl nuw nsw i32 3, %mul.i66
  %shr.i67 = lshr i32 %offset, 1
  %add.i68 = add nuw i32 %shr.i67, 21
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add.i68, i32 noundef %shl4.i, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %sw.bb24.cleanup_crit_edge

sw.bb24.cleanup_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i = getelementptr %struct.da9062_pctl, ptr %call, i32 0, i32 2, i32 %offset
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %arrayidx.i, align 4
  br label %cleanup

sw.bb26:                                          ; preds = %entry
  %rem.i71 = shl i32 %offset, 2
  %mul.i72 = and i32 %rem.i71, 4
  %shl.i73 = shl nuw nsw i32 3, %mul.i72
  %shr.i75 = lshr i32 %offset, 1
  %add.i76 = add nuw i32 %shr.i75, 21
  %call.i.i77 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add.i76, i32 noundef %shl.i73, i32 noundef %shl.i73, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i77)
  %tobool.not.i78 = icmp eq i32 %call.i.i77, 0
  br i1 %tobool.not.i78, label %if.then.i80, label %sw.bb26.cleanup_crit_edge

sw.bb26.cleanup_crit_edge:                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i80:                                      ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i79 = getelementptr %struct.da9062_pctl, ptr %call, i32 0, i32 2, i32 %offset
  %12 = ptrtoint ptr %arrayidx.i79 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %arrayidx.i79, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i80, %sw.bb26.cleanup_crit_edge, %if.then.i, %sw.bb24.cleanup_crit_edge, %if.end20, %da9062_pctl_get_pin_mode.exit62.cleanup_crit_edge, %da9062_pctl_get_pin_mode.exit62.thread, %if.end8, %da9062_pctl_get_pin_mode.exit.cleanup_crit_edge, %da9062_pctl_get_pin_mode.exit.thread, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i63, %if.end20 ], [ %call.i49, %if.end8 ], [ %call.i, %sw.bb ], [ -524, %da9062_pctl_get_pin_mode.exit.cleanup_crit_edge ], [ -524, %da9062_pctl_get_pin_mode.exit62.cleanup_crit_edge ], [ -524, %entry.cleanup_crit_edge ], [ -22, %da9062_pctl_get_pin_mode.exit.thread ], [ -22, %da9062_pctl_get_pin_mode.exit62.thread ], [ %call.i.i, %sw.bb24.cleanup_crit_edge ], [ 0, %if.then.i ], [ %call.i.i77, %sw.bb26.cleanup_crit_edge ], [ 0, %if.then.i80 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9062_gpio_to_irq(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #4
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %regmap_irq = getelementptr inbounds %struct.da9062, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap_irq, align 4
  %add = add i32 %offset, 9
  %call2 = tail call i32 @regmap_irq_get_virq(ptr noundef %3, i32 noundef %add) #4
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_desc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_is_active_low(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_irq_get_virq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__initcall__kmod_pinctrl_da9062__227_295_da9062_pctl_driver_init6, !1, !"__initcall__kmod_pinctrl_da9062__227_295_da9062_pctl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/pinctrl-da9062.c", i32 295, i32 1}
!2 = !{ptr @__exitcall_da9062_pctl_driver_exit, !1, !"__exitcall_da9062_pctl_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author228, !4, !"__UNIQUE_ID_author228", i1 false, i1 false}
!4 = !{!"../drivers/pinctrl/pinctrl-da9062.c", i32 297, i32 1}
!5 = !{ptr @__UNIQUE_ID_description229, !6, !"__UNIQUE_ID_description229", i1 false, i1 false}
!6 = !{!"../drivers/pinctrl/pinctrl-da9062.c", i32 298, i32 1}
!7 = !{ptr @__UNIQUE_ID_file230, !8, !"__UNIQUE_ID_file230", i1 false, i1 false}
!8 = !{!"../drivers/pinctrl/pinctrl-da9062.c", i32 299, i32 1}
!9 = !{ptr @__UNIQUE_ID_license231, !8, !"__UNIQUE_ID_license231", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias232, !11, !"__UNIQUE_ID_alias232", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/pinctrl-da9062.c", i32 300, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/pinctrl-da9062.c", i32 292, i32 11}
!14 = !{ptr @da9062_pctl_driver, !15, !"da9062_pctl_driver", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/pinctrl-da9062.c", i32 289, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/pinctrl-da9062.c", i32 270, i32 39}
!18 = !{ptr @da9062_pctl_probe.lock_key, !19, !"lock_key", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/pinctrl-da9062.c", i32 286, i32 9}
!20 = !{ptr @da9062_pctl_probe.request_key, !19, !"request_key", i1 false, i1 false}
!21 = !{ptr @reference_gc, !22, !"reference_gc", i1 false, i1 false}
!22 = !{!"../drivers/pinctrl/pinctrl-da9062.c", i32 240, i32 31}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"auto-init"}
