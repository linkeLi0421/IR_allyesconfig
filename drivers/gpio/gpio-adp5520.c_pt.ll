; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-adp5520.c_pt.bc'
source_filename = "../drivers/gpio/gpio-adp5520.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.adp5520_gpio_platform_data = type { i32, i8, i8 }
%struct.adp5520_gpio = type { ptr, %struct.gpio_chip, [8 x i8], i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }

@__initcall__kmod_gpio_adp5520__223_162_adp5520_gpio_driver_init6 = internal global ptr @adp5520_gpio_driver_init, section ".initcall6.init", align 4
@adp5520_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @adp5520_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_adp5520_gpio_driver_exit = internal global ptr @adp5520_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author224 = internal constant [69 x i8] c"gpio_adp5520.author=Michael Hennerich <michael.hennerich@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description225 = internal constant [45 x i8] c"gpio_adp5520.description=GPIO ADP5520 Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file226 = internal constant [44 x i8] c"gpio_adp5520.file=drivers/gpio/gpio-adp5520\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [25 x i8] c"gpio_adp5520.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias228 = internal constant [41 x i8] c"gpio_adp5520.alias=platform:adp5520-gpio\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"adp5520-gpio\00", [19 x i8] zeroinitializer }, align 32
@adp5520_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 97, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"missing platform data\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adp5520_gpio_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/gpio/gpio-adp5520.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adp5520_gpio_probe._entry_ptr = internal global ptr @adp5520_gpio_probe._entry, section ".printk_index", align 4
@adp5520_gpio_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 102, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"only ADP5520 supports GPIO\0A\00", [36 x i8] zeroinitializer }, align 32
@adp5520_gpio_probe._entry_ptr.8 = internal global ptr @adp5520_gpio_probe._entry.6, section ".printk_index", align 4
@adp5520_gpio_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 148, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"failed to write\0A\00", [47 x i8] zeroinitializer }, align 32
@adp5520_gpio_probe._entry_ptr.11 = internal global ptr @adp5520_gpio_probe._entry.9, section ".printk_index", align 4
@adp5520_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@adp5520_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@___asan_gen_.12 = private unnamed_addr constant [20 x i8] c"adp5520_gpio_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 155, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 157, i32 11 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 97, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 102, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 148, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.52 = private constant [31 x i8] c"../drivers/gpio/gpio-adp5520.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 152, i32 9 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_alias228, ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_license227, ptr @__exitcall_adp5520_gpio_driver_exit, ptr @__initcall__kmod_gpio_adp5520__223_162_adp5520_gpio_driver_init6, ptr @adp5520_gpio_driver_exit, ptr @adp5520_gpio_probe._entry, ptr @adp5520_gpio_probe._entry.6, ptr @adp5520_gpio_probe._entry.9, ptr @adp5520_gpio_probe._entry_ptr, ptr @adp5520_gpio_probe._entry_ptr.11, ptr @adp5520_gpio_probe._entry_ptr.8, ptr @adp5520_gpio_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @adp5520_gpio_probe.lock_key, ptr @adp5520_gpio_probe.request_key], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5520_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5520_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5520_gpio_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5520_gpio_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5520_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5520_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5520_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @adp5520_gpio_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adp5520_gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @adp5520_gpio_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5520_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5520, i32 %3)
  %cmp3.not = icmp eq i32 %3, 5520
  br i1 %cmp3.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 364, i32 noundef 3520) #5
  %cmp12 = icmp eq ptr %call.i, null
  br i1 %cmp12, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %call.i, align 4
  %gpio_en_mask = getelementptr inbounds %struct.adp5520_gpio_platform_data, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %gpio_en_mask to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %gpio_en_mask, align 4
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end14.for.inc_crit_edge, label %if.then17

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.adp5520_gpio, ptr %call.i, i32 0, i32 2, i32 0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %if.end14.for.inc_crit_edge
  %gpios.1 = phi i32 [ 1, %if.then17 ], [ 0, %if.end14.for.inc_crit_edge ]
  %11 = ptrtoint ptr %gpio_en_mask to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %gpio_en_mask, align 4
  %13 = and i8 %12, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.1 = icmp eq i8 %13, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then17.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then17.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %inc.1 = add nuw nsw i32 %gpios.1, 1
  %arrayidx.1 = getelementptr %struct.adp5520_gpio, ptr %call.i, i32 0, i32 2, i32 %gpios.1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %arrayidx.1, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then17.1, %for.inc.for.inc.1_crit_edge
  %gpios.1.1 = phi i32 [ %inc.1, %if.then17.1 ], [ %gpios.1, %for.inc.for.inc.1_crit_edge ]
  %15 = ptrtoint ptr %gpio_en_mask to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %gpio_en_mask, align 4
  %17 = and i8 %16, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.2 = icmp eq i8 %17, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then17.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then17.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %inc.2 = add nuw nsw i32 %gpios.1.1, 1
  %arrayidx.2 = getelementptr %struct.adp5520_gpio, ptr %call.i, i32 0, i32 2, i32 %gpios.1.1
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 4, ptr %arrayidx.2, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then17.2, %for.inc.1.for.inc.2_crit_edge
  %gpios.1.2 = phi i32 [ %inc.2, %if.then17.2 ], [ %gpios.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %19 = ptrtoint ptr %gpio_en_mask to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %gpio_en_mask, align 4
  %21 = and i8 %20, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.3 = icmp eq i8 %21, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then17.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.then17.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  %inc.3 = add nuw nsw i32 %gpios.1.2, 1
  %arrayidx.3 = getelementptr %struct.adp5520_gpio, ptr %call.i, i32 0, i32 2, i32 %gpios.1.2
  %22 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 8, ptr %arrayidx.3, align 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then17.3, %for.inc.2.for.inc.3_crit_edge
  %gpios.1.3 = phi i32 [ %inc.3, %if.then17.3 ], [ %gpios.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %23 = ptrtoint ptr %gpio_en_mask to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %gpio_en_mask, align 4
  %25 = and i8 %24, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.4 = icmp eq i8 %25, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then17.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

if.then17.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  %inc.4 = add nuw nsw i32 %gpios.1.3, 1
  %arrayidx.4 = getelementptr %struct.adp5520_gpio, ptr %call.i, i32 0, i32 2, i32 %gpios.1.3
  %26 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 16, ptr %arrayidx.4, align 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then17.4, %for.inc.3.for.inc.4_crit_edge
  %gpios.1.4 = phi i32 [ %inc.4, %if.then17.4 ], [ %gpios.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %27 = ptrtoint ptr %gpio_en_mask to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %gpio_en_mask, align 4
  %29 = and i8 %28, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.5 = icmp eq i8 %29, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then17.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

if.then17.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  %inc.5 = add nuw nsw i32 %gpios.1.4, 1
  %arrayidx.5 = getelementptr %struct.adp5520_gpio, ptr %call.i, i32 0, i32 2, i32 %gpios.1.4
  %30 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 32, ptr %arrayidx.5, align 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then17.5, %for.inc.4.for.inc.5_crit_edge
  %gpios.1.5 = phi i32 [ %inc.5, %if.then17.5 ], [ %gpios.1.4, %for.inc.4.for.inc.5_crit_edge ]
  %31 = ptrtoint ptr %gpio_en_mask to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %gpio_en_mask, align 4
  %33 = and i8 %32, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.6 = icmp eq i8 %33, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then17.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6

if.then17.6:                                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  %inc.6 = add nuw nsw i32 %gpios.1.5, 1
  %arrayidx.6 = getelementptr %struct.adp5520_gpio, ptr %call.i, i32 0, i32 2, i32 %gpios.1.5
  %34 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 64, ptr %arrayidx.6, align 1
  %35 = ptrtoint ptr %gpio_en_mask to i32
  call void @__asan_load1_noabort(i32 %35)
  %.pr = load i8, ptr %gpio_en_mask, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then17.6, %for.inc.5.for.inc.6_crit_edge
  %36 = phi i8 [ %.pr, %if.then17.6 ], [ %32, %for.inc.5.for.inc.6_crit_edge ]
  %gpios.1.6 = phi i32 [ %inc.6, %if.then17.6 ], [ %gpios.1.5, %for.inc.5.for.inc.6_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %36)
  %tobool.not.7 = icmp sgt i8 %36, -1
  br i1 %tobool.not.7, label %for.inc.7, label %for.inc.7.thread

for.inc.7.thread:                                 ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  %inc.7 = add nuw nsw i32 %gpios.1.6, 1
  %arrayidx.7 = getelementptr %struct.adp5520_gpio, ptr %call.i, i32 0, i32 2, i32 %gpios.1.6
  %37 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -128, ptr %arrayidx.7, align 1
  br label %if.end25

for.inc.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gpios.1.6)
  %cmp22 = icmp eq i32 %gpios.1.6, 0
  br i1 %cmp22, label %for.inc.7.cleanup_crit_edge, label %for.inc.7.if.end25_crit_edge

for.inc.7.if.end25_crit_edge:                     ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

for.inc.7.cleanup_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %for.inc.7.if.end25_crit_edge, %for.inc.7.thread
  %gpios.1.7115 = phi i32 [ %inc.7, %for.inc.7.thread ], [ %gpios.1.6, %for.inc.7.if.end25_crit_edge ]
  %gpio_chip = getelementptr inbounds %struct.adp5520_gpio, ptr %call.i, i32 0, i32 1
  %direction_input = getelementptr inbounds %struct.adp5520_gpio, ptr %call.i, i32 0, i32 1, i32 8
  %38 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @adp5520_gpio_direction_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.adp5520_gpio, ptr %call.i, i32 0, i32 1, i32 9
  %39 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @adp5520_gpio_direction_output, ptr %direction_output, align 4
  %get = getelementptr inbounds %struct.adp5520_gpio, ptr %call.i, i32 0, i32 1, i32 10
  %40 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @adp5520_gpio_get_value, ptr %get, align 4
  %set = getelementptr inbounds %struct.adp5520_gpio, ptr %call.i, i32 0, i32 1, i32 12
  %41 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @adp5520_gpio_set_value, ptr %set, align 4
  %can_sleep = getelementptr inbounds %struct.adp5520_gpio, ptr %call.i, i32 0, i32 1, i32 23
  %42 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %can_sleep, align 4
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %1, align 4
  %base = getelementptr inbounds %struct.adp5520_gpio, ptr %call.i, i32 0, i32 1, i32 19
  %45 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %base, align 4
  %conv26 = trunc i32 %gpios.1.7115 to i16
  %ngpio = getelementptr inbounds %struct.adp5520_gpio, ptr %call.i, i32 0, i32 1, i32 20
  %46 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv26, ptr %ngpio, align 4
  %47 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdev, align 8
  %49 = ptrtoint ptr %gpio_chip to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %gpio_chip, align 4
  %owner = getelementptr inbounds %struct.adp5520_gpio, ptr %call.i, i32 0, i32 1, i32 4
  %50 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %owner, align 4
  %51 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call.i, align 4
  %53 = ptrtoint ptr %gpio_en_mask to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %gpio_en_mask, align 4
  %call29 = tail call i32 @adp5520_clr_bits(ptr noundef %52, i32 noundef 23, i8 noundef zeroext %54) #5
  %55 = ptrtoint ptr %gpio_en_mask to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %gpio_en_mask, align 4
  %57 = lshr i8 %56, 3
  %58 = and i8 %57, 16
  %59 = shl i8 %56, 2
  %60 = and i8 %59, 32
  %61 = or i8 %60, %58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool47.not = icmp eq i8 %61, 0
  br i1 %tobool47.not, label %if.end25.if.end51_crit_edge, label %if.then48

if.end25.if.end51_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.then48:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call.i, align 4
  %call50 = tail call i32 @adp5520_set_bits(ptr noundef %63, i32 noundef 17, i8 noundef zeroext %61) #5
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.end25.if.end51_crit_edge
  %ret.0 = phi i32 [ %call50, %if.then48 ], [ %call29, %if.end25.if.end51_crit_edge ]
  %64 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call.i, align 4
  %gpio_pullup_mask = getelementptr inbounds %struct.adp5520_gpio_platform_data, ptr %1, i32 0, i32 2
  %66 = ptrtoint ptr %gpio_pullup_mask to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %gpio_pullup_mask, align 1
  %call53 = tail call i32 @adp5520_set_bits(ptr noundef %65, i32 noundef 31, i8 noundef zeroext %67) #5
  %or54 = or i32 %call53, %ret.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or54)
  %tobool55.not = icmp eq i32 %or54, 0
  br i1 %tobool55.not, label %if.end61, label %do.end59

do.end59:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #8
  br label %cleanup

if.end61:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  %call64 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef %gpio_chip, ptr noundef nonnull %call.i, ptr noundef nonnull @adp5520_gpio_probe.lock_key, ptr noundef nonnull @adp5520_gpio_probe.request_key) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %do.end59, %for.inc.7.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %do.end7 ], [ %or54, %do.end59 ], [ %call64, %if.end61 ], [ -12, %if.end9.cleanup_crit_edge ], [ -22, %for.inc.7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5520_gpio_direction_input(ptr noundef %chip, i32 noundef %off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %output = getelementptr inbounds %struct.adp5520_gpio, ptr %call, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef %off, ptr noundef %output) #5
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %arrayidx = getelementptr %struct.adp5520_gpio, ptr %call, i32 0, i32 2, i32 %off
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %call1 = tail call i32 @adp5520_clr_bits(ptr noundef %1, i32 noundef 24, i8 noundef zeroext %3) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5520_gpio_direction_output(ptr noundef %chip, i32 noundef %off, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %output = getelementptr inbounds %struct.adp5520_gpio, ptr %call, i32 0, i32 3
  tail call void @_set_bit(i32 noundef %off, ptr noundef %output) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %arrayidx4 = getelementptr %struct.adp5520_gpio, ptr %call, i32 0, i32 2, i32 %off
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @adp5520_set_bits(ptr noundef %1, i32 noundef 26, i8 noundef zeroext %3) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 @adp5520_clr_bits(ptr noundef %1, i32 noundef 26, i8 noundef zeroext %3) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call1, %if.then ], [ %call5, %if.else ]
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %arrayidx9 = getelementptr %struct.adp5520_gpio, ptr %call, i32 0, i32 2, i32 %off
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx9, align 1
  %call10 = tail call i32 @adp5520_set_bits(ptr noundef %5, i32 noundef 24, i8 noundef zeroext %7) #5
  %or11 = or i32 %call10, %ret.0
  ret i32 %or11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5520_gpio_get_value(ptr noundef %chip, i32 noundef %off) #2 align 64 {
entry:
  %reg_val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_val) #5
  %0 = ptrtoint ptr %reg_val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg_val, align 1, !annotation !44
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %output = getelementptr inbounds %struct.adp5520_gpio, ptr %call, i32 0, i32 3
  %div3.i = lshr i32 %off, 5
  %arrayidx.i = getelementptr i32, ptr %output, i32 %div3.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %off, 31
  %3 = shl nuw i32 1, %and.i
  %4 = and i32 %2, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %. = select i1 %tobool.not, i32 25, i32 26
  %call4 = call i32 @adp5520_read(ptr noundef %6, i32 noundef %., ptr noundef nonnull %reg_val) #5
  %7 = ptrtoint ptr %reg_val to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %reg_val, align 1
  %arrayidx = getelementptr %struct.adp5520_gpio, ptr %call, i32 0, i32 2, i32 %off
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %and12 = and i8 %10, %8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and12)
  %tobool6 = icmp ne i8 %and12, 0
  %lnot.ext = zext i1 %tobool6 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_val) #5
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adp5520_gpio_set_value(ptr noundef %chip, i32 noundef %off, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %arrayidx4 = getelementptr %struct.adp5520_gpio, ptr %call, i32 0, i32 2, i32 %off
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @adp5520_set_bits(ptr noundef %1, i32 noundef 26, i8 noundef zeroext %3) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 @adp5520_clr_bits(ptr noundef %1, i32 noundef 26, i8 noundef zeroext %3) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adp5520_clr_bits(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adp5520_set_bits(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adp5520_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__initcall__kmod_gpio_adp5520__223_162_adp5520_gpio_driver_init6, !1, !"__initcall__kmod_gpio_adp5520__223_162_adp5520_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-adp5520.c", i32 162, i32 1}
!2 = !{ptr @__exitcall_adp5520_gpio_driver_exit, !1, !"__exitcall_adp5520_gpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author224, !4, !"__UNIQUE_ID_author224", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-adp5520.c", i32 164, i32 1}
!5 = !{ptr @__UNIQUE_ID_description225, !6, !"__UNIQUE_ID_description225", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-adp5520.c", i32 165, i32 1}
!7 = !{ptr @__UNIQUE_ID_file226, !8, !"__UNIQUE_ID_file226", i1 false, i1 false}
!8 = !{!"../drivers/gpio/gpio-adp5520.c", i32 166, i32 1}
!9 = !{ptr @__UNIQUE_ID_license227, !8, !"__UNIQUE_ID_license227", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias228, !11, !"__UNIQUE_ID_alias228", i1 false, i1 false}
!11 = !{!"../drivers/gpio/gpio-adp5520.c", i32 167, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-adp5520.c", i32 157, i32 11}
!14 = !{ptr @adp5520_gpio_driver, !15, !"adp5520_gpio_driver", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-adp5520.c", i32 155, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpio/gpio-adp5520.c", i32 97, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @adp5520_gpio_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @adp5520_gpio_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpio/gpio-adp5520.c", i32 102, i32 3}
!26 = !{ptr @adp5520_gpio_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @adp5520_gpio_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpio/gpio-adp5520.c", i32 148, i32 3}
!30 = !{ptr @adp5520_gpio_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @adp5520_gpio_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @adp5520_gpio_probe.lock_key, !33, !"lock_key", i1 false, i1 false}
!33 = !{!"../drivers/gpio/gpio-adp5520.c", i32 152, i32 9}
!34 = !{ptr @adp5520_gpio_probe.request_key, !33, !"request_key", i1 false, i1 false}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{!"auto-init"}
