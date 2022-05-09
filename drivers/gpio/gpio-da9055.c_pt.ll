; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-da9055.c_pt.bc'
source_filename = "../drivers/gpio/gpio-da9055.c"
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
%struct.da9055 = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.da9055_gpio = type { ptr, %struct.gpio_chip }
%struct.da9055_pdata = type { ptr, i32, i32, [8 x ptr], i8, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_gpio_da9055__227_162_da9055_gpio_init4 = internal global ptr @da9055_gpio_init, section ".initcall4.init", align 4
@da9055_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @da9055_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_da9055_gpio_exit = internal global ptr @da9055_gpio_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author228 = internal constant [56 x i8] c"gpio_da9055.author=David Dajun Chen <dchen@diasemi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [50 x i8] c"gpio_da9055.description=DA9055 GPIO Device Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [42 x i8] c"gpio_da9055.file=drivers/gpio/gpio-da9055\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [24 x i8] c"gpio_da9055.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias232 = internal constant [39 x i8] c"gpio_da9055.alias=platform:da9055-gpio\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"da9055-gpio\00", [20 x i8] zeroinitializer }, align 32
@reference_gp = internal constant { %struct.gpio_chip, [68 x i8] } { %struct.gpio_chip { ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @da9055_gpio_direction_input, ptr @da9055_gpio_direction_output, ptr @da9055_gpio_get, ptr null, ptr @da9055_gpio_set, ptr null, ptr null, ptr @da9055_gpio_to_irq, ptr null, ptr null, ptr null, i32 -1, i16 3, i16 0, ptr null, i8 1, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, [68 x i8] zeroinitializer }, align 32
@da9055_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@da9055_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.1 = private unnamed_addr constant [19 x i8] c"da9055_gpio_driver\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 151, i32 31 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 154, i32 11 }
@___asan_gen_.7 = private unnamed_addr constant [13 x i8] c"reference_gp\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 119, i32 31 }
@___asan_gen_.10 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.14 = private constant [30 x i8] c"../drivers/gpio/gpio-da9055.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 148, i32 9 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_da9055_gpio_exit, ptr @__initcall__kmod_gpio_da9055__227_162_da9055_gpio_init4, ptr @da9055_gpio_exit, ptr @da9055_gpio_driver, ptr @.str, ptr @reference_gp, ptr @da9055_gpio_probe.lock_key, ptr @da9055_gpio_probe.request_key], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reference_gp to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_gpio_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @da9055_gpio_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @da9055_gpio_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @da9055_gpio_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 352, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
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
  %dev4 = getelementptr inbounds %struct.da9055, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev4, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %platform_data.i, align 8
  %gp = getelementptr inbounds %struct.da9055_gpio, ptr %call.i, i32 0, i32 1
  %9 = call ptr @memcpy(ptr %gp, ptr @reference_gp, i32 348)
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %if.end.if.end11_crit_edge, label %land.lhs.true

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %gpio_base = getelementptr inbounds %struct.da9055_pdata, ptr %8, i32 0, i32 2
  %10 = ptrtoint ptr %gpio_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gpio_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not = icmp eq i32 %11, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end11_crit_edge, label %if.then8

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %base = getelementptr inbounds %struct.da9055_gpio, ptr %call.i, i32 0, i32 1, i32 19
  %12 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %base, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %call14 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef %gp, ptr noundef nonnull %call.i, ptr noundef nonnull @da9055_gpio_probe.lock_key, ptr noundef nonnull @da9055_gpio_probe.request_key) #4
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
define internal i32 @da9055_gpio_direction_input(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #4
  %rem = shl i32 %offset, 2
  %mul = and i32 %rem, 4
  %shl = shl nuw nsw i32 1, %mul
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %shr = lshr i32 %offset, 1
  %conv1 = add nuw i32 %shr, 16
  %shl4 = shl nuw nsw i32 3, %mul
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %conv.i = and i32 %conv1, 255
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %conv.i, i32 noundef %shl4, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_gpio_direction_output(ptr noundef %gc, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #4
  %rem = shl i32 %offset, 2
  %mul = and i32 %rem, 4
  %shl = shl nuw nsw i32 3, %mul
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %shr = lshr i32 %offset, 1
  %conv1 = add nuw i32 %shr, 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %conv.i = and i32 %conv1, 255
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %conv.i, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gc) #4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 4
  %shl.i = shl nuw i32 1, %offset
  %shl1.i = shl i32 %value, %offset
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %conv1.i.i = and i32 %shl.i, 255
  %conv2.i.i = and i32 %shl1.i, 255
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 18, i32 noundef %conv1.i.i, i32 noundef %conv2.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_gpio_get(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  %val.i42 = alloca i32, align 4
  %val.i36 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #4
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %shr = lshr i32 %offset, 1
  %conv = add nuw i32 %shr, 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #4
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !31
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %conv.i = and i32 %conv, 255
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef %conv.i, ptr noundef nonnull %val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %da9055_reg_read.exit.thread, label %da9055_reg_read.exit

da9055_reg_read.exit.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #4
  br label %cleanup

da9055_reg_read.exit:                             ; preds = %entry
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %da9055_reg_read.exit.cleanup_crit_edge, label %if.end

da9055_reg_read.exit.cleanup_crit_edge:           ; preds = %da9055_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %da9055_reg_read.exit
  %rem = shl i32 %offset, 2
  %mul = and i32 %rem, 4
  %shl = shl nuw nsw i32 3, %mul
  %and = and i32 %6, %shl
  %shr5 = lshr i32 %and, %mul
  %7 = zext i32 %shr5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr5, label %if.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb12
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i36) #4
  %10 = ptrtoint ptr %val.i36 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %val.i36, align 4, !annotation !31
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %9, align 4
  %call.i37 = call i32 @regmap_read(ptr noundef %12, i32 noundef 2, ptr noundef nonnull %val.i36) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %cmp.i38 = icmp slt i32 %call.i37, 0
  br i1 %cmp.i38, label %da9055_reg_read.exit41.thread, label %da9055_reg_read.exit41

da9055_reg_read.exit41.thread:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i36) #4
  br label %cleanup

da9055_reg_read.exit41:                           ; preds = %sw.bb
  %13 = ptrtoint ptr %val.i36 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i36, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i36) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp8 = icmp slt i32 %14, 0
  br i1 %cmp8, label %da9055_reg_read.exit41.cleanup_crit_edge, label %da9055_reg_read.exit41.sw.epilog_crit_edge

da9055_reg_read.exit41.sw.epilog_crit_edge:       ; preds = %da9055_reg_read.exit41
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

da9055_reg_read.exit41.cleanup_crit_edge:         ; preds = %da9055_reg_read.exit41
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb12:                                          ; preds = %if.end
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i42) #4
  %17 = ptrtoint ptr %val.i42 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %val.i42, align 4, !annotation !31
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %16, align 4
  %call.i43 = call i32 @regmap_read(ptr noundef %19, i32 noundef 18, ptr noundef nonnull %val.i42) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %cmp.i44 = icmp slt i32 %call.i43, 0
  br i1 %cmp.i44, label %da9055_reg_read.exit47.thread, label %da9055_reg_read.exit47

da9055_reg_read.exit47.thread:                    ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i42) #4
  br label %cleanup

da9055_reg_read.exit47:                           ; preds = %sw.bb12
  %20 = ptrtoint ptr %val.i42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val.i42, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i42) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp15 = icmp slt i32 %21, 0
  br i1 %cmp15, label %da9055_reg_read.exit47.cleanup_crit_edge, label %da9055_reg_read.exit47.sw.epilog_crit_edge

da9055_reg_read.exit47.sw.epilog_crit_edge:       ; preds = %da9055_reg_read.exit47
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

da9055_reg_read.exit47.cleanup_crit_edge:         ; preds = %da9055_reg_read.exit47
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.epilog:                                        ; preds = %da9055_reg_read.exit47.sw.epilog_crit_edge, %da9055_reg_read.exit41.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %6, %if.end.sw.epilog_crit_edge ], [ %21, %da9055_reg_read.exit47.sw.epilog_crit_edge ], [ %14, %da9055_reg_read.exit41.sw.epilog_crit_edge ]
  %shl19 = shl nuw i32 1, %offset
  %and20 = and i32 %ret.0, %shl19
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %da9055_reg_read.exit47.cleanup_crit_edge, %da9055_reg_read.exit47.thread, %da9055_reg_read.exit41.cleanup_crit_edge, %da9055_reg_read.exit41.thread, %da9055_reg_read.exit.cleanup_crit_edge, %da9055_reg_read.exit.thread
  %retval.0 = phi i32 [ %and20, %sw.epilog ], [ %6, %da9055_reg_read.exit.cleanup_crit_edge ], [ %14, %da9055_reg_read.exit41.cleanup_crit_edge ], [ %21, %da9055_reg_read.exit47.cleanup_crit_edge ], [ %call.i, %da9055_reg_read.exit.thread ], [ %call.i37, %da9055_reg_read.exit41.thread ], [ %call.i43, %da9055_reg_read.exit47.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @da9055_gpio_set(ptr noundef %gc, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #4
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %shl = shl nuw i32 1, %offset
  %shl1 = shl i32 %value, %offset
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %conv1.i = and i32 %shl, 255
  %conv2.i = and i32 %shl1, 255
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 18, i32 noundef %conv1.i, i32 noundef %conv2.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_gpio_to_irq(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #4
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %irq_data = getelementptr inbounds %struct.da9055, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_data, align 4
  %add = add i32 %offset, 3
  %call2 = tail call i32 @regmap_irq_get_virq(ptr noundef %3, i32 noundef %add) #4
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__initcall__kmod_gpio_da9055__227_162_da9055_gpio_init4, !1, !"__initcall__kmod_gpio_da9055__227_162_da9055_gpio_init4", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-da9055.c", i32 162, i32 1}
!2 = !{ptr @__exitcall_da9055_gpio_exit, !3, !"__exitcall_da9055_gpio_exit", i1 false, i1 false}
!3 = !{!"../drivers/gpio/gpio-da9055.c", i32 168, i32 1}
!4 = !{ptr @__UNIQUE_ID_author228, !5, !"__UNIQUE_ID_author228", i1 false, i1 false}
!5 = !{!"../drivers/gpio/gpio-da9055.c", i32 170, i32 1}
!6 = !{ptr @__UNIQUE_ID_description229, !7, !"__UNIQUE_ID_description229", i1 false, i1 false}
!7 = !{!"../drivers/gpio/gpio-da9055.c", i32 171, i32 1}
!8 = !{ptr @__UNIQUE_ID_file230, !9, !"__UNIQUE_ID_file230", i1 false, i1 false}
!9 = !{!"../drivers/gpio/gpio-da9055.c", i32 172, i32 1}
!10 = !{ptr @__UNIQUE_ID_license231, !9, !"__UNIQUE_ID_license231", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias232, !12, !"__UNIQUE_ID_alias232", i1 false, i1 false}
!12 = !{!"../drivers/gpio/gpio-da9055.c", i32 173, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpio/gpio-da9055.c", i32 154, i32 11}
!15 = !{ptr @da9055_gpio_driver, !16, !"da9055_gpio_driver", i1 false, i1 false}
!16 = !{!"../drivers/gpio/gpio-da9055.c", i32 151, i32 31}
!17 = !{ptr @da9055_gpio_probe.lock_key, !18, !"lock_key", i1 false, i1 false}
!18 = !{!"../drivers/gpio/gpio-da9055.c", i32 148, i32 9}
!19 = !{ptr @da9055_gpio_probe.request_key, !18, !"request_key", i1 false, i1 false}
!20 = !{ptr @reference_gp, !21, !"reference_gp", i1 false, i1 false}
!21 = !{!"../drivers/gpio/gpio-da9055.c", i32 119, i32 31}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"auto-init"}
