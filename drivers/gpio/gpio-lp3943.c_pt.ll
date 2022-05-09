; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-lp3943.c_pt.bc'
source_filename = "../drivers/gpio/gpio-lp3943.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.84, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.84 = type { ptr }
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
%struct.lp3943_gpio = type { %struct.gpio_chip, ptr, i16 }
%struct.lp3943 = type { ptr, ptr, ptr, ptr, i32 }
%struct.lp3943_reg_cfg = type { i8, i8, i8 }

@__initcall__kmod_gpio_lp3943__288_221_lp3943_gpio_driver_init6 = internal global ptr @lp3943_gpio_driver_init, section ".initcall6.init", align 4
@lp3943_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @lp3943_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lp3943_gpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_lp3943_gpio_driver_exit = internal global ptr @lp3943_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [43 x i8] c"gpio_lp3943.description=LP3943 GPIO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias290 = internal constant [39 x i8] c"gpio_lp3943.alias=platform:lp3943-gpio\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [28 x i8] c"gpio_lp3943.author=Milo Kim\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [42 x i8] c"gpio_lp3943.file=drivers/gpio/gpio-lp3943\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [24 x i8] c"gpio_lp3943.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lp3943-gpio\00", [20 x i8] zeroinitializer }, align 32
@lp3943_gpio_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lp3943-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@lp3943_gpio_chip = internal constant { %struct.gpio_chip, [68 x i8] } { %struct.gpio_chip { ptr @.str.1, ptr null, ptr null, ptr null, ptr null, ptr @lp3943_gpio_request, ptr @lp3943_gpio_free, ptr null, ptr @lp3943_gpio_direction_input, ptr @lp3943_gpio_direction_output, ptr @lp3943_gpio_get, ptr null, ptr @lp3943_gpio_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -1, i16 16, i16 0, ptr null, i8 1, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, [68 x i8] zeroinitializer }, align 32
@lp3943_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@lp3943_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lp3943\00", [25 x i8] zeroinitializer }, align 32
@switch.table.lp3943_gpio_get = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], [32 x i8] zeroinitializer }, align 32
@switch.table.lp3943_gpio_get.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [19 x i8] c"lp3943_gpio_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 214, i32 31 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 217, i32 11 }
@___asan_gen_.9 = private unnamed_addr constant [21 x i8] c"lp3943_gpio_of_match\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 208, i32 34 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"lp3943_gpio_chip\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 174, i32 31 }
@___asan_gen_.15 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 204, i32 9 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [30 x i8] c"../drivers/gpio/gpio-lp3943.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 175, i32 13 }
@___asan_gen_.24 = private unnamed_addr constant [29 x i8] c"switch.table.lp3943_gpio_get\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [31 x i8] c"switch.table.lp3943_gpio_get.2\00", align 1
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_alias290, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_lp3943_gpio_driver_exit, ptr @__initcall__kmod_gpio_lp3943__288_221_lp3943_gpio_driver_init6, ptr @lp3943_gpio_driver_exit, ptr @lp3943_gpio_driver, ptr @.str, ptr @lp3943_gpio_of_match, ptr @lp3943_gpio_chip, ptr @lp3943_gpio_probe.lock_key, ptr @lp3943_gpio_probe.request_key, ptr @.str.1, ptr @switch.table.lp3943_gpio_get, ptr @switch.table.lp3943_gpio_get.2], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3943_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3943_gpio_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3943_gpio_chip to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3943_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp3943_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lp3943_gpio_get to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lp3943_gpio_get.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3943_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @lp3943_gpio_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lp3943_gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @lp3943_gpio_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3943_gpio_probe(ptr noundef %pdev) #2 align 64 {
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
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 356, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %lp39433 = getelementptr inbounds %struct.lp3943_gpio, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %lp39433 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %lp39433, align 4
  %5 = call ptr @memcpy(ptr %call.i, ptr @lp3943_gpio_chip, i32 348)
  %parent6 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %parent6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %parent6, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call9 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @lp3943_gpio_probe.lock_key, ptr noundef nonnull @lp3943_gpio_probe.request_key) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3943_gpio_request(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #4
  %lp39431 = getelementptr inbounds %struct.lp3943_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %lp39431 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lp39431, align 4
  %pin_used = getelementptr inbounds %struct.lp3943, ptr %1, i32 0, i32 4
  %call2 = tail call i32 @_test_and_set_bit(i32 noundef %offset, ptr noundef %pin_used) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  %. = select i1 %tobool.not, i32 0, i32 -16
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lp3943_gpio_free(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #4
  %lp39431 = getelementptr inbounds %struct.lp3943_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %lp39431 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lp39431, align 4
  %pin_used = getelementptr inbounds %struct.lp3943, ptr %1, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef %offset, ptr noundef %pin_used) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3943_gpio_direction_input(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #4
  %shl = shl nuw i32 1, %offset
  %input_mask = getelementptr inbounds %struct.lp3943_gpio, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %input_mask to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %input_mask, align 4
  %2 = trunc i32 %shl to i16
  %conv1 = or i16 %1, %2
  store i16 %conv1, ptr %input_mask, align 4
  %lp39431.i = getelementptr inbounds %struct.lp3943_gpio, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %lp39431.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lp39431.i, align 4
  %mux_cfg.i = getelementptr inbounds %struct.lp3943, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %mux_cfg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mux_cfg.i, align 4
  %idxprom.i = and i32 %offset, 255
  %arrayidx.i = getelementptr %struct.lp3943_reg_cfg, ptr %6, i32 %idxprom.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %mask.i = getelementptr %struct.lp3943_reg_cfg, ptr %6, i32 %idxprom.i, i32 1
  %9 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mask.i, align 1
  %call.i = tail call i32 @lp3943_update_bits(ptr noundef %4, i8 noundef zeroext %8, i8 noundef zeroext %10, i8 noundef zeroext 0) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3943_gpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #4
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %lp39431.i.i = getelementptr inbounds %struct.lp3943_gpio, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %lp39431.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lp39431.i.i, align 4
  %mux_cfg.i.i = getelementptr inbounds %struct.lp3943, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mux_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mux_cfg.i.i, align 4
  %idxprom.i.i = and i32 %offset, 255
  %arrayidx.i.i = getelementptr %struct.lp3943_reg_cfg, ptr %3, i32 %idxprom.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i, align 1
  %mask.i.i = getelementptr %struct.lp3943_reg_cfg, ptr %3, i32 %idxprom.i.i, i32 1
  %6 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mask.i.i, align 1
  %conv.i.i = zext i1 %tobool.not.i to i32
  %shift.i.i = getelementptr %struct.lp3943_reg_cfg, ptr %3, i32 %idxprom.i.i, i32 2
  %8 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %shift.i.i, align 1
  %conv6.i.i = zext i8 %9 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, %conv6.i.i
  %conv7.i.i = trunc i32 %shl.i.i to i8
  %call.i.i = tail call i32 @lp3943_update_bits(ptr noundef %1, i8 noundef zeroext %5, i8 noundef zeroext %7, i8 noundef zeroext %conv7.i.i) #4
  %shl = shl nuw i32 1, %offset
  %input_mask = getelementptr inbounds %struct.lp3943_gpio, ptr %call, i32 0, i32 2
  %10 = ptrtoint ptr %input_mask to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %input_mask, align 4
  %12 = trunc i32 %shl to i16
  %13 = xor i16 %12, -1
  %conv1 = and i16 %11, %13
  store i16 %conv1, ptr %input_mask, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp3943_gpio_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  %read.i9 = alloca i8, align 1
  %read.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #4
  %input_mask = getelementptr inbounds %struct.lp3943_gpio, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %input_mask to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %input_mask, align 4
  %conv = zext i16 %1 to i32
  %shl = shl nuw i32 1, %offset
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %read.i) #4
  %2 = ptrtoint ptr %read.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %read.i, align 1, !annotation !34
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %offset)
  %3 = icmp ult i32 %offset, 16
  br i1 %3, label %switch.lookup, label %if.then.lp3943_get_gpio_in_status.exit_crit_edge

if.then.lp3943_get_gpio_in_status.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %lp3943_get_gpio_in_status.exit

switch.lookup:                                    ; preds = %if.then
  %switch.gep = getelementptr inbounds [16 x i32], ptr @switch.table.lp3943_gpio_get, i32 0, i32 %offset
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep14 = getelementptr inbounds [16 x i8], ptr @switch.table.lp3943_gpio_get.2, i32 0, i32 %offset
  %5 = ptrtoint ptr %switch.gep14 to i32
  call void @__asan_load1_noabort(i32 %5)
  %switch.load15 = load i8, ptr %switch.gep14, align 1
  %lp3943.i = getelementptr inbounds %struct.lp3943_gpio, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %lp3943.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lp3943.i, align 4
  %call.i = call i32 @lp3943_read_byte(ptr noundef %7, i8 noundef zeroext %switch.load15, ptr noundef nonnull %read.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %switch.lookup.lp3943_get_gpio_in_status.exit_crit_edge

switch.lookup.lp3943_get_gpio_in_status.exit_crit_edge: ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  br label %lp3943_get_gpio_in_status.exit

if.end.i:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %read.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %read.i, align 1
  %conv.i = zext i8 %9 to i32
  %10 = lshr i32 %conv.i, %switch.load
  %11 = and i32 %10, 1
  br label %lp3943_get_gpio_in_status.exit

lp3943_get_gpio_in_status.exit:                   ; preds = %if.end.i, %switch.lookup.lp3943_get_gpio_in_status.exit_crit_edge, %if.then.lp3943_get_gpio_in_status.exit_crit_edge
  %retval.0.i = phi i32 [ %11, %if.end.i ], [ -22, %if.then.lp3943_get_gpio_in_status.exit_crit_edge ], [ %call.i, %switch.lookup.lp3943_get_gpio_in_status.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %read.i) #4
  br label %cleanup

if.else:                                          ; preds = %entry
  %lp39431.i = getelementptr inbounds %struct.lp3943_gpio, ptr %call, i32 0, i32 1
  %12 = ptrtoint ptr %lp39431.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lp39431.i, align 4
  %mux_cfg.i = getelementptr inbounds %struct.lp3943, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %mux_cfg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mux_cfg.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %read.i9) #4
  %16 = ptrtoint ptr %read.i9 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %read.i9, align 1, !annotation !34
  %arrayidx.i = getelementptr %struct.lp3943_reg_cfg, ptr %15, i32 %offset
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i, align 1
  %call.i10 = call i32 @lp3943_read_byte(ptr noundef %13, i8 noundef zeroext %18, ptr noundef nonnull %read.i9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %tobool.not.i11 = icmp eq i32 %call.i10, 0
  br i1 %tobool.not.i11, label %if.end.i12, label %if.else.lp3943_get_gpio_out_status.exit_crit_edge

if.else.lp3943_get_gpio_out_status.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %lp3943_get_gpio_out_status.exit

if.end.i12:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %read.i9 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %read.i9, align 1
  %mask.i = getelementptr %struct.lp3943_reg_cfg, ptr %15, i32 %offset, i32 1
  %21 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %mask.i, align 1
  %and1.i = and i8 %22, %20
  %and.i = zext i8 %and1.i to i32
  %shift.i = getelementptr %struct.lp3943_reg_cfg, ptr %15, i32 %offset, i32 2
  %23 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %shift.i, align 1
  %conv5.i = zext i8 %24 to i32
  %shr.i = lshr i32 %and.i, %conv5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr.i)
  %switch.selectcmp.i = icmp eq i32 %shr.i, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 0, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %switch.selectcmp2.i = icmp eq i32 %shr.i, 0
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 1, i32 %switch.select.i
  br label %lp3943_get_gpio_out_status.exit

lp3943_get_gpio_out_status.exit:                  ; preds = %if.end.i12, %if.else.lp3943_get_gpio_out_status.exit_crit_edge
  %retval.0.i13 = phi i32 [ %call.i10, %if.else.lp3943_get_gpio_out_status.exit_crit_edge ], [ %switch.select3.i, %if.end.i12 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %read.i9) #4
  br label %cleanup

cleanup:                                          ; preds = %lp3943_get_gpio_out_status.exit, %lp3943_get_gpio_in_status.exit
  %retval.0 = phi i32 [ %retval.0.i, %lp3943_get_gpio_in_status.exit ], [ %retval.0.i13, %lp3943_get_gpio_out_status.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lp3943_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %lp39431.i = getelementptr inbounds %struct.lp3943_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %lp39431.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lp39431.i, align 4
  %mux_cfg.i = getelementptr inbounds %struct.lp3943, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mux_cfg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mux_cfg.i, align 4
  %idxprom.i = and i32 %offset, 255
  %arrayidx.i = getelementptr %struct.lp3943_reg_cfg, ptr %3, i32 %idxprom.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %mask.i = getelementptr %struct.lp3943_reg_cfg, ptr %3, i32 %idxprom.i, i32 1
  %6 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mask.i, align 1
  %conv.i = zext i1 %tobool.not to i32
  %shift.i = getelementptr %struct.lp3943_reg_cfg, ptr %3, i32 %idxprom.i, i32 2
  %8 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %shift.i, align 1
  %conv6.i = zext i8 %9 to i32
  %shl.i = shl nuw i32 %conv.i, %conv6.i
  %conv7.i = trunc i32 %shl.i to i8
  %call.i = tail call i32 @lp3943_update_bits(ptr noundef %1, i8 noundef zeroext %5, i8 noundef zeroext %7, i8 noundef zeroext %conv7.i) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lp3943_update_bits(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lp3943_read_byte(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__initcall__kmod_gpio_lp3943__288_221_lp3943_gpio_driver_init6, !1, !"__initcall__kmod_gpio_lp3943__288_221_lp3943_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-lp3943.c", i32 221, i32 1}
!2 = !{ptr @__exitcall_lp3943_gpio_driver_exit, !1, !"__exitcall_lp3943_gpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-lp3943.c", i32 223, i32 1}
!5 = !{ptr @__UNIQUE_ID_alias290, !6, !"__UNIQUE_ID_alias290", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-lp3943.c", i32 224, i32 1}
!7 = !{ptr @__UNIQUE_ID_author291, !8, !"__UNIQUE_ID_author291", i1 false, i1 false}
!8 = !{!"../drivers/gpio/gpio-lp3943.c", i32 225, i32 1}
!9 = !{ptr @__UNIQUE_ID_file292, !10, !"__UNIQUE_ID_file292", i1 false, i1 false}
!10 = !{!"../drivers/gpio/gpio-lp3943.c", i32 226, i32 1}
!11 = !{ptr @__UNIQUE_ID_license293, !10, !"__UNIQUE_ID_license293", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-lp3943.c", i32 217, i32 11}
!14 = !{ptr @lp3943_gpio_driver, !15, !"lp3943_gpio_driver", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-lp3943.c", i32 214, i32 31}
!16 = !{ptr @lp3943_gpio_probe.lock_key, !17, !"lock_key", i1 false, i1 false}
!17 = !{!"../drivers/gpio/gpio-lp3943.c", i32 204, i32 9}
!18 = !{ptr @lp3943_gpio_probe.request_key, !17, !"request_key", i1 false, i1 false}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpio/gpio-lp3943.c", i32 175, i32 13}
!21 = !{ptr @lp3943_gpio_chip, !22, !"lp3943_gpio_chip", i1 false, i1 false}
!22 = !{!"../drivers/gpio/gpio-lp3943.c", i32 174, i32 31}
!23 = !{ptr @lp3943_gpio_of_match, !24, !"lp3943_gpio_of_match", i1 false, i1 false}
!24 = !{!"../drivers/gpio/gpio-lp3943.c", i32 208, i32 34}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{!"auto-init"}
