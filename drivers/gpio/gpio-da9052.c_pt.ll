; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-da9052.c_pt.bc'
source_filename = "../drivers/gpio/gpio-da9052.c"
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
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.101, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.101 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.da9052_gpio = type { ptr, %struct.gpio_chip }
%struct.da9052_pdata = type { ptr, ptr, i32, i32, i32, [14 x ptr] }
%struct.da9052 = type { ptr, ptr, %struct.mutex, %struct.completion, i32, ptr, i8, i32, ptr }

@__initcall__kmod_gpio_da9052__253_221_da9052_gpio_driver_init6 = internal global ptr @da9052_gpio_driver_init, section ".initcall6.init", align 4
@da9052_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @da9052_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_da9052_gpio_driver_exit = internal global ptr @da9052_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author254 = internal constant [56 x i8] c"gpio_da9052.author=David Dajun Chen <dchen@diasemi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description255 = internal constant [50 x i8] c"gpio_da9052.description=DA9052 GPIO Device Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file256 = internal constant [42 x i8] c"gpio_da9052.file=drivers/gpio/gpio-da9052\00", section ".modinfo", align 1
@__UNIQUE_ID_license257 = internal constant [24 x i8] c"gpio_da9052.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias258 = internal constant [39 x i8] c"gpio_da9052.alias=platform:da9052-gpio\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"da9052-gpio\00", [20 x i8] zeroinitializer }, align 32
@reference_gp = internal constant { %struct.gpio_chip, [68 x i8] } { %struct.gpio_chip { ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @da9052_gpio_direction_input, ptr @da9052_gpio_direction_output, ptr @da9052_gpio_get, ptr null, ptr @da9052_gpio_set, ptr null, ptr null, ptr @da9052_gpio_to_irq, ptr null, ptr null, ptr null, i32 -1, i16 16, i16 0, ptr null, i8 1, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, [68 x i8] zeroinitializer }, align 32
@da9052_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@da9052_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@da9052_gpio_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 106, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to updated gpio odd reg,%d\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"da9052_gpio_set\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/gpio/gpio-da9052.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@da9052_gpio_set._entry_ptr = internal global ptr @da9052_gpio_set._entry, section ".printk_index", align 4
@da9052_gpio_set._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 115, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to updated gpio even reg,%d\00", [61 x i8] zeroinitializer }, align 32
@da9052_gpio_set._entry_ptr.8 = internal global ptr @da9052_gpio_set._entry.6, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.9 = private unnamed_addr constant [19 x i8] c"da9052_gpio_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 214, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 217, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant [13 x i8] c"reference_gp\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 182, i32 31 }
@___asan_gen_.18 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 211, i32 9 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 104, i32 5 }
@___asan_gen_.42 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [30 x i8] c"../drivers/gpio/gpio-da9052.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 113, i32 5 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_alias258, ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_description255, ptr @__UNIQUE_ID_file256, ptr @__UNIQUE_ID_license257, ptr @__exitcall_da9052_gpio_driver_exit, ptr @__initcall__kmod_gpio_da9052__253_221_da9052_gpio_driver_init6, ptr @da9052_gpio_driver_exit, ptr @da9052_gpio_set._entry, ptr @da9052_gpio_set._entry.6, ptr @da9052_gpio_set._entry_ptr, ptr @da9052_gpio_set._entry_ptr.8, ptr @da9052_gpio_driver, ptr @.str, ptr @reference_gp, ptr @da9052_gpio_probe.lock_key, ptr @da9052_gpio_probe.request_key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reference_gp to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_gpio_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_gpio_set._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @da9052_gpio_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @da9052_gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @da9052_gpio_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 352, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %call.i, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %platform_data.i, align 8
  %gp = getelementptr inbounds %struct.da9052_gpio, ptr %call.i, i32 0, i32 1
  %9 = call ptr @memcpy(ptr %gp, ptr @reference_gp, i32 348)
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %if.end.if.end11_crit_edge, label %land.lhs.true

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %gpio_base = getelementptr inbounds %struct.da9052_pdata, ptr %8, i32 0, i32 3
  %10 = ptrtoint ptr %gpio_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gpio_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not = icmp eq i32 %11, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end11_crit_edge, label %if.then8

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %base = getelementptr inbounds %struct.da9052_gpio, ptr %call.i, i32 0, i32 1, i32 19
  %12 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %base, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %call14 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef %gp, ptr noundef nonnull %call.i, ptr noundef nonnull @da9052_gpio_probe.lock_key, ptr noundef nonnull @da9052_gpio_probe.request_key) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end11 ], [ -12, %entry.cleanup_crit_edge ]
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
define internal i32 @da9052_gpio_direction_input(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  %conv.i26 = and i32 %offset, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i26)
  %tobool.not = icmp eq i32 %conv.i26, 0
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %shr6 = lshr i32 %offset, 1
  %2 = trunc i32 %shr6 to i8
  %conv8 = add i8 %2, 21
  %regmap.i15 = getelementptr inbounds %struct.da9052, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap.i15 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i15, align 4
  %conv.i16 = zext i8 %conv8 to i32
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef %conv.i16, i32 noundef 240, i32 noundef 144, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %fix_io.i = getelementptr inbounds %struct.da9052, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %fix_io.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fix_io.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %if.end.i.if.end.sink.split_crit_edge

if.end.i.if.end.sink.split_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.else:                                          ; preds = %entry
  %call.i.i17 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef %conv.i16, i32 noundef 15, i32 noundef 9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i17)
  %cmp.i18 = icmp slt i32 %call.i.i17, 0
  br i1 %cmp.i18, label %if.else.if.end_crit_edge, label %if.end.i21

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i21:                                       ; preds = %if.else
  %fix_io.i19 = getelementptr inbounds %struct.da9052, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %fix_io.i19 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fix_io.i19, align 4
  %tobool.not.i20 = icmp eq ptr %8, null
  br i1 %tobool.not.i20, label %if.end.i21.if.end_crit_edge, label %if.end.i21.if.end.sink.split_crit_edge

if.end.i21.if.end.sink.split_crit_edge:           ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split

if.end.i21.if.end_crit_edge:                      ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.sink.split:                                ; preds = %if.end.i21.if.end.sink.split_crit_edge, %if.end.i.if.end.sink.split_crit_edge
  %.sink = phi ptr [ %6, %if.end.i.if.end.sink.split_crit_edge ], [ %8, %if.end.i21.if.end.sink.split_crit_edge ]
  %call6.i22 = tail call i32 %.sink(ptr noundef %1, i8 noundef zeroext %conv8) #5
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.end.i21.if.end_crit_edge, %if.else.if.end_crit_edge, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %ret.0 = phi i32 [ %call.i.i, %if.then.if.end_crit_edge ], [ %call.i.i, %if.end.i.if.end_crit_edge ], [ %call.i.i17, %if.else.if.end_crit_edge ], [ %call.i.i17, %if.end.i21.if.end_crit_edge ], [ %call6.i22, %if.end.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_gpio_direction_output(ptr noundef %gc, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  %value.tr = trunc i32 %value to i8
  %0 = shl i8 %value.tr, 3
  %conv = or i8 %0, 3
  %conv.i29 = and i32 %offset, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i29)
  %tobool.not = icmp eq i32 %conv.i29, 0
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %shr8 = lshr i32 %offset, 1
  %3 = trunc i32 %shr8 to i8
  %conv10 = add i8 %3, 21
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %shl4 = shl i8 %conv, 4
  %regmap.i = getelementptr inbounds %struct.da9052, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %conv.i16 = zext i8 %conv10 to i32
  %conv2.i = zext i8 %shl4 to i32
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %conv.i16, i32 noundef 240, i32 noundef %conv2.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %fix_io.i = getelementptr inbounds %struct.da9052, ptr %2, i32 0, i32 8
  %6 = ptrtoint ptr %fix_io.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fix_io.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %if.end.i.if.end.sink.split_crit_edge

if.end.i.if.end.sink.split_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.else:                                          ; preds = %entry
  %regmap.i17 = getelementptr inbounds %struct.da9052, ptr %2, i32 0, i32 1
  %8 = ptrtoint ptr %regmap.i17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i17, align 4
  %conv.i18 = zext i8 %conv10 to i32
  %conv2.i19 = zext i8 %conv to i32
  %call.i.i20 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %conv.i18, i32 noundef 15, i32 noundef %conv2.i19, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i20)
  %cmp.i21 = icmp slt i32 %call.i.i20, 0
  br i1 %cmp.i21, label %if.else.if.end_crit_edge, label %if.end.i24

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i24:                                       ; preds = %if.else
  %fix_io.i22 = getelementptr inbounds %struct.da9052, ptr %2, i32 0, i32 8
  %10 = ptrtoint ptr %fix_io.i22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fix_io.i22, align 4
  %tobool.not.i23 = icmp eq ptr %11, null
  br i1 %tobool.not.i23, label %if.end.i24.if.end_crit_edge, label %if.end.i24.if.end.sink.split_crit_edge

if.end.i24.if.end.sink.split_crit_edge:           ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split

if.end.i24.if.end_crit_edge:                      ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.sink.split:                                ; preds = %if.end.i24.if.end.sink.split_crit_edge, %if.end.i.if.end.sink.split_crit_edge
  %.sink = phi ptr [ %7, %if.end.i.if.end.sink.split_crit_edge ], [ %11, %if.end.i24.if.end.sink.split_crit_edge ]
  %call6.i25 = tail call i32 %.sink(ptr noundef %2, i8 noundef zeroext %conv10) #5
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.end.i24.if.end_crit_edge, %if.else.if.end_crit_edge, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %ret.0 = phi i32 [ %call.i.i, %if.then.if.end_crit_edge ], [ %call.i.i, %if.end.i.if.end_crit_edge ], [ %call.i.i20, %if.else.if.end_crit_edge ], [ %call.i.i20, %if.end.i24.if.end_crit_edge ], [ %call6.i25, %if.end.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_gpio_get(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  %val.i72 = alloca i32, align 4
  %val.i59 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %shr = lshr i32 %offset, 1
  %2 = trunc i32 %shr to i8
  %conv = add i8 %2, 21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val.i, align 4, !annotation !42
  %regmap.i = getelementptr inbounds %struct.da9052, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %conv.i = zext i8 %conv to i32
  %call.i = call i32 @regmap_read(ptr noundef %5, i32 noundef %conv.i, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.da9052_reg_read.exit.thread_crit_edge, label %if.end.i

entry.da9052_reg_read.exit.thread_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_read.exit.thread

if.end.i:                                         ; preds = %entry
  %fix_io.i = getelementptr inbounds %struct.da9052, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %fix_io.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fix_io.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i.da9052_reg_read.exit_crit_edge, label %if.then2.i

if.end.i.da9052_reg_read.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_read.exit

if.then2.i:                                       ; preds = %if.end.i
  %call4.i = call i32 %7(ptr noundef %1, i8 noundef zeroext %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.then2.i.da9052_reg_read.exit.thread_crit_edge, label %if.then2.i.da9052_reg_read.exit_crit_edge

if.then2.i.da9052_reg_read.exit_crit_edge:        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_read.exit

if.then2.i.da9052_reg_read.exit.thread_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_read.exit.thread

da9052_reg_read.exit.thread:                      ; preds = %if.then2.i.da9052_reg_read.exit.thread_crit_edge, %entry.da9052_reg_read.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call4.i, %if.then2.i.da9052_reg_read.exit.thread_crit_edge ], [ %call.i, %entry.da9052_reg_read.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  br label %cleanup

da9052_reg_read.exit:                             ; preds = %if.then2.i.da9052_reg_read.exit_crit_edge, %if.end.i.da9052_reg_read.exit_crit_edge
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %da9052_reg_read.exit.cleanup_crit_edge, label %if.end

da9052_reg_read.exit.cleanup_crit_edge:           ; preds = %da9052_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %da9052_reg_read.exit
  %conv.i5888 = and i32 %offset, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i5888)
  %tobool.not = icmp eq i32 %conv.i5888, 0
  %and = lshr i32 %9, 4
  %da9052_port_direction.0.in = select i1 %tobool.not, i32 %9, i32 %and
  %da9052_port_direction.0 = and i32 %da9052_port_direction.0.in, 3
  %10 = zext i32 %da9052_port_direction.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %da9052_port_direction.0, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb24
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %offset)
  %cmp8 = icmp ult i32 %offset, 8
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call, align 4
  br i1 %cmp8, label %if.then10, label %if.else13

if.then10:                                        ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i59) #5
  %13 = ptrtoint ptr %val.i59 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %val.i59, align 4, !annotation !42
  %regmap.i60 = getelementptr inbounds %struct.da9052, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %regmap.i60 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i60, align 4
  %call.i61 = call i32 @regmap_read(ptr noundef %15, i32 noundef 3, ptr noundef nonnull %val.i59) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %cmp.i62 = icmp slt i32 %call.i61, 0
  br i1 %cmp.i62, label %if.then10.da9052_reg_read.exit71_crit_edge, label %if.end.i65

if.then10.da9052_reg_read.exit71_crit_edge:       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_read.exit71

if.end.i65:                                       ; preds = %if.then10
  %fix_io.i63 = getelementptr inbounds %struct.da9052, ptr %12, i32 0, i32 8
  %16 = ptrtoint ptr %fix_io.i63 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fix_io.i63, align 4
  %tobool.not.i64 = icmp eq ptr %17, null
  br i1 %tobool.not.i64, label %if.end.i65.if.end9.i69_crit_edge, label %if.then2.i68

if.end.i65.if.end9.i69_crit_edge:                 ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i69

if.then2.i68:                                     ; preds = %if.end.i65
  %call4.i66 = call i32 %17(ptr noundef %12, i8 noundef zeroext 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i66)
  %cmp5.i67 = icmp slt i32 %call4.i66, 0
  br i1 %cmp5.i67, label %if.then2.i68.da9052_reg_read.exit71_crit_edge, label %if.then2.i68.if.end9.i69_crit_edge

if.then2.i68.if.end9.i69_crit_edge:               ; preds = %if.then2.i68
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i69

if.then2.i68.da9052_reg_read.exit71_crit_edge:    ; preds = %if.then2.i68
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_read.exit71

if.end9.i69:                                      ; preds = %if.then2.i68.if.end9.i69_crit_edge, %if.end.i65.if.end9.i69_crit_edge
  %18 = ptrtoint ptr %val.i59 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val.i59, align 4
  br label %da9052_reg_read.exit71

da9052_reg_read.exit71:                           ; preds = %if.end9.i69, %if.then2.i68.da9052_reg_read.exit71_crit_edge, %if.then10.da9052_reg_read.exit71_crit_edge
  %retval.0.i70 = phi i32 [ %19, %if.end9.i69 ], [ %call.i61, %if.then10.da9052_reg_read.exit71_crit_edge ], [ %call4.i66, %if.then2.i68.da9052_reg_read.exit71_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i59) #5
  br label %if.end16

if.else13:                                        ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i72) #5
  %20 = ptrtoint ptr %val.i72 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %val.i72, align 4, !annotation !42
  %regmap.i73 = getelementptr inbounds %struct.da9052, ptr %12, i32 0, i32 1
  %21 = ptrtoint ptr %regmap.i73 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i73, align 4
  %call.i74 = call i32 @regmap_read(ptr noundef %22, i32 noundef 4, ptr noundef nonnull %val.i72) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %cmp.i75 = icmp slt i32 %call.i74, 0
  br i1 %cmp.i75, label %if.else13.da9052_reg_read.exit84_crit_edge, label %if.end.i78

if.else13.da9052_reg_read.exit84_crit_edge:       ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_read.exit84

if.end.i78:                                       ; preds = %if.else13
  %fix_io.i76 = getelementptr inbounds %struct.da9052, ptr %12, i32 0, i32 8
  %23 = ptrtoint ptr %fix_io.i76 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fix_io.i76, align 4
  %tobool.not.i77 = icmp eq ptr %24, null
  br i1 %tobool.not.i77, label %if.end.i78.if.end9.i82_crit_edge, label %if.then2.i81

if.end.i78.if.end9.i82_crit_edge:                 ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i82

if.then2.i81:                                     ; preds = %if.end.i78
  %call4.i79 = call i32 %24(ptr noundef %12, i8 noundef zeroext 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i79)
  %cmp5.i80 = icmp slt i32 %call4.i79, 0
  br i1 %cmp5.i80, label %if.then2.i81.da9052_reg_read.exit84_crit_edge, label %if.then2.i81.if.end9.i82_crit_edge

if.then2.i81.if.end9.i82_crit_edge:               ; preds = %if.then2.i81
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i82

if.then2.i81.da9052_reg_read.exit84_crit_edge:    ; preds = %if.then2.i81
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_read.exit84

if.end9.i82:                                      ; preds = %if.then2.i81.if.end9.i82_crit_edge, %if.end.i78.if.end9.i82_crit_edge
  %25 = ptrtoint ptr %val.i72 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val.i72, align 4
  br label %da9052_reg_read.exit84

da9052_reg_read.exit84:                           ; preds = %if.end9.i82, %if.then2.i81.da9052_reg_read.exit84_crit_edge, %if.else13.da9052_reg_read.exit84_crit_edge
  %retval.0.i83 = phi i32 [ %26, %if.end9.i82 ], [ %call.i74, %if.else13.da9052_reg_read.exit84_crit_edge ], [ %call4.i79, %if.then2.i81.da9052_reg_read.exit84_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i72) #5
  br label %if.end16

if.end16:                                         ; preds = %da9052_reg_read.exit84, %da9052_reg_read.exit71
  %ret.0 = phi i32 [ %retval.0.i70, %da9052_reg_read.exit71 ], [ %retval.0.i83, %da9052_reg_read.exit84 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp17 = icmp slt i32 %ret.0, 0
  br i1 %cmp17, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %rem = and i32 %offset, 7
  %27 = lshr i32 %ret.0, %rem
  %28 = and i32 %27, 1
  br label %cleanup

sw.bb24:                                          ; preds = %if.end
  br i1 %tobool.not, label %if.else34, label %if.then27

if.then27:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #7
  %and28 = lshr i32 %9, 7
  %and28.lobit = and i32 %and28, 1
  br label %cleanup

if.else34:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #7
  %and35 = lshr i32 %9, 3
  %and35.lobit = and i32 %and35, 1
  br label %cleanup

cleanup:                                          ; preds = %if.else34, %if.then27, %if.end20, %if.end16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %da9052_reg_read.exit.cleanup_crit_edge, %da9052_reg_read.exit.thread
  %retval.0 = phi i32 [ %and28.lobit, %if.then27 ], [ %and35.lobit, %if.else34 ], [ %28, %if.end20 ], [ %9, %da9052_reg_read.exit.cleanup_crit_edge ], [ %ret.0, %if.end16.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.i.ph, %da9052_reg_read.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @da9052_gpio_set(ptr noundef %gc, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  %conv.i53 = and i32 %offset, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i53)
  %tobool.not = icmp eq i32 %conv.i53, 0
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %shr8 = lshr i32 %offset, 1
  %2 = trunc i32 %shr8 to i8
  %conv10 = add i8 %2, 21
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %conv2 = shl i32 %value, 7
  %regmap.i = getelementptr inbounds %struct.da9052, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %conv.i34 = zext i8 %conv10 to i32
  %conv2.i = and i32 %conv2, 128
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef %conv.i34, i32 noundef 128, i32 noundef %conv2.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then.do.end_crit_edge, label %if.end.i

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i:                                         ; preds = %if.then
  %fix_io.i = getelementptr inbounds %struct.da9052, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %fix_io.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fix_io.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i.da9052_reg_update.exit_crit_edge, label %if.then4.i

if.end.i.da9052_reg_update.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_update.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i = tail call i32 %6(ptr noundef %1, i8 noundef zeroext %conv10) #5
  br label %da9052_reg_update.exit

da9052_reg_update.exit:                           ; preds = %if.then4.i, %if.end.i.da9052_reg_update.exit_crit_edge
  %retval.0.i = phi i32 [ %call6.i, %if.then4.i ], [ %call.i.i, %if.end.i.da9052_reg_update.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp.not = icmp eq i32 %retval.0.i, 0
  br i1 %cmp.not, label %da9052_reg_update.exit.if.end23_crit_edge, label %da9052_reg_update.exit.do.end_crit_edge

da9052_reg_update.exit.do.end_crit_edge:          ; preds = %da9052_reg_update.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

da9052_reg_update.exit.if.end23_crit_edge:        ; preds = %da9052_reg_update.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

do.end:                                           ; preds = %da9052_reg_update.exit.do.end_crit_edge, %if.then.do.end_crit_edge
  %retval.0.i49 = phi i32 [ %retval.0.i, %da9052_reg_update.exit.do.end_crit_edge ], [ %call.i.i, %if.then.do.end_crit_edge ]
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i49) #8
  br label %if.end23

if.else:                                          ; preds = %entry
  %conv12 = shl i32 %value, 3
  %regmap.i35 = getelementptr inbounds %struct.da9052, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %regmap.i35 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i35, align 4
  %conv.i36 = zext i8 %conv10 to i32
  %conv2.i37 = and i32 %conv12, 248
  %call.i.i38 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %conv.i36, i32 noundef 8, i32 noundef %conv2.i37, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i38)
  %cmp.i39 = icmp slt i32 %call.i.i38, 0
  br i1 %cmp.i39, label %if.else.do.end19_crit_edge, label %if.end.i42

if.else.do.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

if.end.i42:                                       ; preds = %if.else
  %fix_io.i40 = getelementptr inbounds %struct.da9052, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %fix_io.i40 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fix_io.i40, align 4
  %tobool.not.i41 = icmp eq ptr %14, null
  br i1 %tobool.not.i41, label %if.end.i42.da9052_reg_update.exit46_crit_edge, label %if.then4.i44

if.end.i42.da9052_reg_update.exit46_crit_edge:    ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #7
  br label %da9052_reg_update.exit46

if.then4.i44:                                     ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i43 = tail call i32 %14(ptr noundef %1, i8 noundef zeroext %conv10) #5
  br label %da9052_reg_update.exit46

da9052_reg_update.exit46:                         ; preds = %if.then4.i44, %if.end.i42.da9052_reg_update.exit46_crit_edge
  %retval.0.i45 = phi i32 [ %call6.i43, %if.then4.i44 ], [ %call.i.i38, %if.end.i42.da9052_reg_update.exit46_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i45)
  %cmp14.not = icmp eq i32 %retval.0.i45, 0
  br i1 %cmp14.not, label %da9052_reg_update.exit46.if.end23_crit_edge, label %da9052_reg_update.exit46.do.end19_crit_edge

da9052_reg_update.exit46.do.end19_crit_edge:      ; preds = %da9052_reg_update.exit46
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

da9052_reg_update.exit46.if.end23_crit_edge:      ; preds = %da9052_reg_update.exit46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

do.end19:                                         ; preds = %da9052_reg_update.exit46.do.end19_crit_edge, %if.else.do.end19_crit_edge
  %retval.0.i4552 = phi i32 [ %retval.0.i45, %da9052_reg_update.exit46.do.end19_crit_edge ], [ %call.i.i38, %if.else.do.end19_crit_edge ]
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i4552) #8
  br label %if.end23

if.end23:                                         ; preds = %do.end19, %da9052_reg_update.exit46.if.end23_crit_edge, %do.end, %da9052_reg_update.exit.if.end23_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_gpio_to_irq(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %irq_data = getelementptr inbounds %struct.da9052, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_data, align 4
  %add = add i32 %offset, 16
  %call2 = tail call i32 @regmap_irq_get_virq(ptr noundef %3, i32 noundef %add) #5
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_irq_get_virq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @__initcall__kmod_gpio_da9052__253_221_da9052_gpio_driver_init6, !1, !"__initcall__kmod_gpio_da9052__253_221_da9052_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-da9052.c", i32 221, i32 1}
!2 = !{ptr @__exitcall_da9052_gpio_driver_exit, !1, !"__exitcall_da9052_gpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author254, !4, !"__UNIQUE_ID_author254", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-da9052.c", i32 223, i32 1}
!5 = !{ptr @__UNIQUE_ID_description255, !6, !"__UNIQUE_ID_description255", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-da9052.c", i32 224, i32 1}
!7 = !{ptr @__UNIQUE_ID_file256, !8, !"__UNIQUE_ID_file256", i1 false, i1 false}
!8 = !{!"../drivers/gpio/gpio-da9052.c", i32 225, i32 1}
!9 = !{ptr @__UNIQUE_ID_license257, !8, !"__UNIQUE_ID_license257", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias258, !11, !"__UNIQUE_ID_alias258", i1 false, i1 false}
!11 = !{!"../drivers/gpio/gpio-da9052.c", i32 226, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-da9052.c", i32 217, i32 11}
!14 = !{ptr @da9052_gpio_driver, !15, !"da9052_gpio_driver", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-da9052.c", i32 214, i32 31}
!16 = !{ptr @da9052_gpio_probe.lock_key, !17, !"lock_key", i1 false, i1 false}
!17 = !{!"../drivers/gpio/gpio-da9052.c", i32 211, i32 9}
!18 = !{ptr @da9052_gpio_probe.request_key, !17, !"request_key", i1 false, i1 false}
!19 = !{ptr @reference_gp, !20, !"reference_gp", i1 false, i1 false}
!20 = !{!"../drivers/gpio/gpio-da9052.c", i32 182, i32 31}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpio/gpio-da9052.c", i32 104, i32 5}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @da9052_gpio_set._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @da9052_gpio_set._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpio/gpio-da9052.c", i32 113, i32 5}
!31 = !{ptr @da9052_gpio_set._entry.6, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @da9052_gpio_set._entry_ptr.8, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"auto-init"}
