; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-siox.c_pt.bc'
source_filename = "../drivers/gpio/gpio-siox.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.siox_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.siox_device = type { %struct.list_head, ptr, %struct.device, ptr, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.gpio_siox_ddata = type { %struct.gpio_chip, %struct.irq_chip, %struct.mutex, [1 x i8], [3 x i8], %struct.raw_spinlock, i32, i32, [20 x i32] }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_gpio_siox__223_265_gpio_siox_driver_init6 = internal global ptr @gpio_siox_driver_init, section ".initcall6.init", align 4
@gpio_siox_driver = internal global { %struct.siox_driver, [32 x i8] } { %struct.siox_driver { ptr @gpio_siox_probe, ptr null, ptr null, ptr @gpio_siox_set_data, ptr @gpio_siox_get_data, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [32 x i8] zeroinitializer }, align 32
@__exitcall_gpio_siox_driver_exit = internal global ptr @gpio_siox_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author224 = internal constant [68 x i8] c"gpio_siox.author=Uwe Kleine-Koenig <u.kleine-koenig@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description225 = internal constant [39 x i8] c"gpio_siox.description=SIOX gpio driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file226 = internal constant [38 x i8] c"gpio_siox.file=drivers/gpio/gpio-siox\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [25 x i8] c"gpio_siox.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio-siox\00", [22 x i8] zeroinitializer }, align 32
@gpio_siox_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&ddata->lock\00", [19 x i8] zeroinitializer }, align 32
@gpio_siox_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ddata->irqlock\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"siox-gpio\00", [22 x i8] zeroinitializer }, align 32
@gpio_siox_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@gpio_siox_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@gpio_siox_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 252, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register gpio chip (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpio_siox_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/gpio/gpio-siox.c\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gpio_siox_probe._entry_ptr = internal global ptr @gpio_siox_probe._entry, section ".printk_index", align 4
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"gpio_siox_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 257, i32 27 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 262, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 224, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 225, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 238, i32 22 }
@___asan_gen_.31 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 250, i32 8 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [28 x i8] c"../drivers/gpio/gpio-siox.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 252, i32 3 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_license227, ptr @__exitcall_gpio_siox_driver_exit, ptr @__initcall__kmod_gpio_siox__223_265_gpio_siox_driver_init6, ptr @gpio_siox_driver_exit, ptr @gpio_siox_probe._entry, ptr @gpio_siox_probe._entry_ptr, ptr @gpio_siox_driver, ptr @.str, ptr @gpio_siox_probe.__key, ptr @.str.1, ptr @gpio_siox_probe.__key.2, ptr @.str.3, ptr @.str.4, ptr @gpio_siox_probe.lock_key, ptr @gpio_siox_probe.request_key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_siox_driver to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_siox_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_siox_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_siox_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_siox_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_siox_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_siox_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__siox_driver_register(ptr noundef nonnull @gpio_siox_driver, ptr noundef null) #6
  ret i32 %call.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gpio_siox_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.siox_driver, ptr @gpio_siox_driver, i32 0, i32 5)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__siox_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_siox_probe(ptr noundef %sdevice) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.siox_device, ptr %sdevice, i32 0, i32 2
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 712, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.siox_device, ptr %sdevice, i32 0, i32 2, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.gpio_siox_ddata, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @gpio_siox_probe.__key) #6
  %irqlock = getelementptr inbounds %struct.gpio_siox_ddata, ptr %call.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %irqlock, ptr noundef nonnull @.str.3, ptr noundef nonnull @gpio_siox_probe.__key.2, i16 noundef signext 2) #6
  %base = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 19
  %1 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %base, align 4
  %can_sleep = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 23
  %2 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %can_sleep, align 4
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %parent, align 4
  %owner = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %owner, align 4
  %get = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 10
  %5 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @gpio_siox_get, ptr %get, align 4
  %set = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 12
  %6 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @gpio_siox_set, ptr %set, align 4
  %direction_input = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 8
  %7 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @gpio_siox_direction_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 9
  %8 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @gpio_siox_direction_output, ptr %direction_output, align 4
  %get_direction = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 7
  %9 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @gpio_siox_get_direction, ptr %get_direction, align 4
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %10 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 20, ptr %ngpio, align 4
  %ichip = getelementptr inbounds %struct.gpio_siox_ddata, ptr %call.i, i32 0, i32 1
  %name = getelementptr inbounds %struct.gpio_siox_ddata, ptr %call.i, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.4, ptr %name, align 4
  %irq_ack = getelementptr inbounds %struct.gpio_siox_ddata, ptr %call.i, i32 0, i32 1, i32 6
  %12 = ptrtoint ptr %irq_ack to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @gpio_siox_irq_ack, ptr %irq_ack, align 4
  %irq_mask = getelementptr inbounds %struct.gpio_siox_ddata, ptr %call.i, i32 0, i32 1, i32 7
  %13 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @gpio_siox_irq_mask, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.gpio_siox_ddata, ptr %call.i, i32 0, i32 1, i32 9
  %14 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @gpio_siox_irq_unmask, ptr %irq_unmask, align 4
  %irq_set_type = getelementptr inbounds %struct.gpio_siox_ddata, ptr %call.i, i32 0, i32 1, i32 13
  %15 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @gpio_siox_irq_set_type, ptr %irq_set_type, align 4
  %irq = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %ichip, ptr %irq, align 4
  %default_type = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 10
  %17 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %default_type, align 4
  %handler = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 9
  %18 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @handle_level_irq, ptr %handler, align 4
  %threaded = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 18
  %19 = ptrtoint ptr %threaded to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %threaded, align 4
  %call21 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev1, ptr noundef nonnull %call.i, ptr noundef null, ptr noundef nonnull @gpio_siox_probe.lock_key, ptr noundef nonnull @gpio_siox_probe.request_key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end.cleanup_crit_edge, label %do.end26

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef %call21) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call21, %do.end26 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_siox_set_data(ptr nocapture noundef readonly %sdevice, i8 noundef zeroext %status, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.siox_device, ptr %sdevice, i32 0, i32 2, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.gpio_siox_ddata, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %setdata = getelementptr inbounds %struct.gpio_siox_ddata, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %setdata to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %setdata, align 4
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %buf, align 1
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_siox_get_data(ptr nocapture noundef readonly %sdevice, ptr nocapture noundef readonly %buf) #2 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.siox_device, ptr %sdevice, i32 0, i32 2, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.gpio_siox_ddata, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %irqlock = getelementptr inbounds %struct.gpio_siox_ddata, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %irqlock) #6
  %irq_status = getelementptr inbounds %struct.gpio_siox_ddata, ptr %1, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %if.end28.for.body_crit_edge, %entry
  %offset.099 = phi i32 [ 0, %entry ], [ %inc, %if.end28.for.body_crit_edge ]
  %sub = sub nuw nsw i32 11, %offset.099
  %div97 = lshr i32 %sub, 3
  %arrayidx = getelementptr i8, ptr %buf, i32 %div97
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %rem = and i32 %sub, 7
  %shl = shl nuw nsw i32 1, %rem
  %and = and i32 %shl, %conv
  %arrayidx2 = getelementptr %struct.gpio_siox_ddata, ptr %1, i32 0, i32 4, i32 %div97
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %5 to i32
  %and6 = and i32 %shl, %conv3
  %arrayidx8 = getelementptr %struct.gpio_siox_ddata, ptr %1, i32 0, i32 8, i32 %offset.099
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %and9 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %if.then.if.end28.sink.split_crit_edge

if.then.if.end28.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.sink.split

lor.lhs.false:                                    ; preds = %if.then
  %and11 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp ne i32 %and11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool13.not = icmp eq i32 %and6, 0
  %or.cond = select i1 %tobool12.not, i1 %tobool13.not, i1 false
  br i1 %or.cond, label %lor.lhs.false.if.end28.sink.split_crit_edge, label %lor.lhs.false.if.end28_crit_edge

lor.lhs.false.if.end28_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

lor.lhs.false.if.end28.sink.split_crit_edge:      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.sink.split

if.else:                                          ; preds = %for.body
  %and16 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %lor.lhs.false18, label %if.else.if.end28.sink.split_crit_edge

if.else.if.end28.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.sink.split

lor.lhs.false18:                                  ; preds = %if.else
  %and19 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool22.not = icmp eq i32 %and6, 0
  %or.cond98 = select i1 %tobool20.not, i1 true, i1 %tobool22.not
  br i1 %or.cond98, label %lor.lhs.false18.if.end28_crit_edge, label %lor.lhs.false18.if.end28.sink.split_crit_edge

lor.lhs.false18.if.end28.sink.split_crit_edge:    ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.sink.split

lor.lhs.false18.if.end28_crit_edge:               ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.end28.sink.split:                              ; preds = %lor.lhs.false18.if.end28.sink.split_crit_edge, %if.else.if.end28.sink.split_crit_edge, %lor.lhs.false.if.end28.sink.split_crit_edge, %if.then.if.end28.sink.split_crit_edge
  %shl24 = shl nuw nsw i32 1, %offset.099
  %8 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq_status, align 4
  %or26 = or i32 %9, %shl24
  store i32 %or26, ptr %irq_status, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.end28.sink.split, %lor.lhs.false18.if.end28_crit_edge, %lor.lhs.false.if.end28_crit_edge
  %inc = add nuw nsw i32 %offset.099, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.end, label %if.end28.for.body_crit_edge

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end28
  %10 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq_status, align 4
  %irq_enable = getelementptr inbounds %struct.gpio_siox_ddata, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %irq_enable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq_enable, align 4
  %and30 = and i32 %13, %11
  tail call void @_raw_spin_unlock_irq(ptr noundef %irqlock) #6
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %buf, align 1
  %getdata33 = getelementptr inbounds %struct.gpio_siox_ddata, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %getdata33 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %getdata33, align 1
  %arrayidx35 = getelementptr i8, ptr %buf, i32 1
  %17 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx35, align 1
  %arrayidx37 = getelementptr %struct.gpio_siox_ddata, ptr %1, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx37, align 1
  %arrayidx38 = getelementptr i8, ptr %buf, i32 2
  %20 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx38, align 1
  %arrayidx40 = getelementptr %struct.gpio_siox_ddata, ptr %1, i32 0, i32 4, i32 2
  %22 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx40, align 1
  tail call void @mutex_unlock(ptr noundef %lock) #6
  %domain = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 37, i32 1
  br label %for.body45

for.body45:                                       ; preds = %for.inc58.for.body45_crit_edge, %for.end
  %offset.1101 = phi i32 [ 0, %for.end ], [ %inc59, %for.inc58.for.body45_crit_edge ]
  %shl46 = shl nuw nsw i32 1, %offset.1101
  %and47 = and i32 %and30, %shl46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %for.body45.for.inc58_crit_edge, label %if.then49

for.body45.for.inc58_crit_edge:                   ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc58

if.then49:                                        ; preds = %for.body45
  %23 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #6
  %25 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %irq.i, align 4, !annotation !42
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %24, i32 noundef %offset.1101, ptr noundef nonnull %irq.i) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then49.irq_find_mapping.exit_crit_edge, label %if.then.i

if.then49.irq_find_mapping.exit_crit_edge:        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %if.then49.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %27, %if.then.i ], [ 0, %if.then49.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #6
  call void @_raw_spin_lock_irq(ptr noundef %irqlock) #6
  %neg = xor i32 %shl46, -1
  %28 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq_status, align 4
  %and55 = and i32 %29, %neg
  store i32 %and55, ptr %irq_status, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %irqlock) #6
  call void @handle_nested_irq(i32 noundef %retval.0.i) #6
  br label %for.inc58

for.inc58:                                        ; preds = %irq_find_mapping.exit, %for.body45.for.inc58_crit_edge
  %inc59 = add nuw nsw i32 %offset.1101, 1
  %exitcond103.not = icmp eq i32 %inc59, 12
  br i1 %exitcond103.not, label %for.end60, label %for.inc58.for.body45_crit_edge

for.inc58.for.body45_crit_edge:                   ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body45

for.end60:                                        ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_siox_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.gpio_siox_ddata, ptr %chip, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %offset)
  %cmp = icmp ugt i32 %offset, 11
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 19, %offset
  %setdata = getelementptr inbounds %struct.gpio_siox_ddata, ptr %chip, i32 0, i32 3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub2 = sub nuw nsw i32 11, %offset
  %div14 = lshr i32 %sub2, 3
  %arrayidx3 = getelementptr %struct.gpio_siox_ddata, ptr %chip, i32 0, i32 4, i32 %div14
  %rem = and i32 %sub2, 7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %rem.sink = phi i32 [ %rem, %if.else ], [ %sub, %if.then ]
  %conv4.sink.in.in = phi ptr [ %arrayidx3, %if.else ], [ %setdata, %if.then ]
  %0 = ptrtoint ptr %conv4.sink.in.in to i32
  call void @__asan_load1_noabort(i32 %0)
  %conv4.sink.in = load i8, ptr %conv4.sink.in.in, align 1
  %conv4.sink = zext i8 %conv4.sink.in to i32
  %shl5 = shl nuw i32 1, %rem.sink
  %and6 = and i32 %shl5, %conv4.sink
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %and6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_siox_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = sub i32 19, %offset
  %shl = shl nuw i32 1, %sub
  %lock = getelementptr inbounds %struct.gpio_siox_ddata, ptr %chip, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %setdata5 = getelementptr inbounds %struct.gpio_siox_ddata, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %setdata5 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %setdata5, align 4
  %2 = trunc i32 %shl to i8
  %3 = xor i8 %2, -1
  %conv8 = and i8 %1, %3
  %conv3 = or i8 %1, %2
  %conv8.sink = select i1 %tobool.not, i8 %conv8, i8 %conv3
  store i8 %conv8.sink, ptr %setdata5, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gpio_siox_direction_input(ptr nocapture noundef readnone %chip, i32 noundef %offset) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %offset)
  %cmp = icmp ugt i32 %offset, 11
  %. = select i1 %cmp, i32 -22, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_siox_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %offset)
  %cmp = icmp ult i32 %offset, 12
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = sub i32 19, %offset
  %shl.i = shl nuw i32 1, %sub.i
  %lock.i = getelementptr inbounds %struct.gpio_siox_ddata, ptr %chip, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %setdata5.i = getelementptr inbounds %struct.gpio_siox_ddata, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %setdata5.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %setdata5.i, align 4
  %2 = trunc i32 %shl.i to i8
  %3 = xor i8 %2, -1
  %conv8.i = and i8 %1, %3
  %conv3.i = or i8 %1, %2
  %conv8.sink.i = select i1 %tobool.not.i, i8 %conv8.i, i8 %conv3.i
  store i8 %conv8.sink.i, ptr %setdata5.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gpio_siox_get_direction(ptr nocapture noundef readnone %chip, i32 noundef %offset) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %offset)
  %cmp = icmp ult i32 %offset, 12
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_siox_irq_ack(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 4
  %irqlock = getelementptr i8, ptr %1, i32 232
  tail call void @_raw_spin_lock(ptr noundef %irqlock) #6
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %3
  %neg = xor i32 %shl, -1
  %irq_status = getelementptr i8, ptr %1, i32 280
  %4 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_status, align 4
  %and = and i32 %5, %neg
  store i32 %and, ptr %irq_status, align 4
  tail call void @_raw_spin_unlock(ptr noundef %irqlock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_siox_irq_mask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 4
  %irqlock = getelementptr i8, ptr %1, i32 232
  tail call void @_raw_spin_lock(ptr noundef %irqlock) #6
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %3
  %neg = xor i32 %shl, -1
  %irq_enable = getelementptr i8, ptr %1, i32 276
  %4 = ptrtoint ptr %irq_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_enable, align 4
  %and = and i32 %5, %neg
  store i32 %and, ptr %irq_enable, align 4
  tail call void @_raw_spin_unlock(ptr noundef %irqlock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_siox_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 4
  %irqlock = getelementptr i8, ptr %1, i32 232
  tail call void @_raw_spin_lock(ptr noundef %irqlock) #6
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %3
  %irq_enable = getelementptr i8, ptr %1, i32 276
  %4 = ptrtoint ptr %irq_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_enable, align 4
  %or = or i32 %5, %shl
  store i32 %or, ptr %irq_enable, align 4
  tail call void @_raw_spin_unlock(ptr noundef %irqlock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_siox_irq_set_type(ptr nocapture noundef readonly %d, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 4
  %irqlock = getelementptr i8, ptr %1, i32 232
  tail call void @_raw_spin_lock(ptr noundef %irqlock) #6
  %irq_type = getelementptr i8, ptr %1, i32 284
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %arrayidx = getelementptr [20 x i32], ptr %irq_type, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %type, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock(ptr noundef %irqlock) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !24, !25, !27, !28, !29, !30, !31, !32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @__initcall__kmod_gpio_siox__223_265_gpio_siox_driver_init6, !1, !"__initcall__kmod_gpio_siox__223_265_gpio_siox_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-siox.c", i32 265, i32 1}
!2 = !{ptr @__exitcall_gpio_siox_driver_exit, !1, !"__exitcall_gpio_siox_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author224, !4, !"__UNIQUE_ID_author224", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-siox.c", i32 267, i32 1}
!5 = !{ptr @__UNIQUE_ID_description225, !6, !"__UNIQUE_ID_description225", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-siox.c", i32 268, i32 1}
!7 = !{ptr @__UNIQUE_ID_file226, !8, !"__UNIQUE_ID_file226", i1 false, i1 false}
!8 = !{!"../drivers/gpio/gpio-siox.c", i32 269, i32 1}
!9 = !{ptr @__UNIQUE_ID_license227, !8, !"__UNIQUE_ID_license227", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpio/gpio-siox.c", i32 262, i32 11}
!12 = !{ptr @gpio_siox_driver, !13, !"gpio_siox_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-siox.c", i32 257, i32 27}
!14 = !{ptr @gpio_siox_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-siox.c", i32 224, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @gpio_siox_probe.__key.2, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/gpio/gpio-siox.c", i32 225, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpio/gpio-siox.c", i32 238, i32 22}
!22 = !{ptr @gpio_siox_probe.lock_key, !23, !"lock_key", i1 false, i1 false}
!23 = !{!"../drivers/gpio/gpio-siox.c", i32 250, i32 8}
!24 = !{ptr @gpio_siox_probe.request_key, !23, !"request_key", i1 false, i1 false}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpio/gpio-siox.c", i32 252, i32 3}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @gpio_siox_probe._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @gpio_siox_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
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
