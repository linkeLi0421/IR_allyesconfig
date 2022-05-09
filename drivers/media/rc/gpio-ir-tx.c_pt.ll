; ModuleID = '/llk/IR_all_yes/drivers/media/rc/gpio-ir-tx.c_pt.bc'
source_filename = "../drivers/media/rc/gpio-ir-tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.gpio_ir = type { ptr, i32, i32 }

@__initcall__kmod_gpio_ir_tx__228_189_gpio_ir_tx_driver_init6 = internal global ptr @gpio_ir_tx_driver_init, section ".initcall6.init", align 4
@gpio_ir_tx_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gpio_ir_tx_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gpio_ir_tx_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_gpio_ir_tx_driver_exit = internal global ptr @gpio_ir_tx_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description229 = internal constant [55 x i8] c"gpio_ir_tx.description=GPIO IR Bit Banging Transmitter\00", section ".modinfo", align 1
@__UNIQUE_ID_author230 = internal constant [45 x i8] c"gpio_ir_tx.author=Sean Young <sean@mess.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [44 x i8] c"gpio_ir_tx.file=drivers/media/rc/gpio-ir-tx\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [23 x i8] c"gpio_ir_tx.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio-ir-tx\00", [21 x i8] zeroinitializer }, align 32
@gpio_ir_tx_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"gpio-ir-tx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@gpio_ir_tx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 161, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get gpio (%ld)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gpio_ir_tx_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/media/rc/gpio-ir-tx.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gpio_ir_tx_probe._entry_ptr = internal global ptr @gpio_ir_tx_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"GPIO IR Bit Banging Transmitter\00", [32 x i8] zeroinitializer }, align 32
@gpio_ir_tx_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 177, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to register rc device\0A\00", [34 x i8] zeroinitializer }, align 32
@gpio_ir_tx_probe._entry_ptr.9 = internal global ptr @gpio_ir_tx_probe._entry.7, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.10 = private unnamed_addr constant [18 x i8] c"gpio_ir_tx_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 182, i32 31 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 185, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [20 x i8] c"gpio_ir_tx_of_match\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 24, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 160, i32 4 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 167, i32 23 }
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [33 x i8] c"../drivers/media/rc/gpio-ir-tx.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 177, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_gpio_ir_tx_driver_exit, ptr @__initcall__kmod_gpio_ir_tx__228_189_gpio_ir_tx_driver_init6, ptr @gpio_ir_tx_driver_exit, ptr @gpio_ir_tx_probe._entry, ptr @gpio_ir_tx_probe._entry.7, ptr @gpio_ir_tx_probe._entry_ptr, ptr @gpio_ir_tx_probe._entry_ptr.9, ptr @gpio_ir_tx_driver, ptr @.str, ptr @gpio_ir_tx_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_ir_tx_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_ir_tx_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_ir_tx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_ir_tx_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_ir_tx_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @gpio_ir_tx_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gpio_ir_tx_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @gpio_ir_tx_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_ir_tx_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3264) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_rc_allocate_device(ptr noundef %dev, i32 noundef 2) #6
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call7 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef null, i32 noundef 3) #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call7, ptr %call, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end20

if.then10:                                        ; preds = %if.end5
  %cmp.not = icmp eq ptr %call7, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then10.if.end17_crit_edge, label %do.end

if.then10.if.end17_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

do.end:                                           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %1) #9
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.then10.if.end17_crit_edge
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %4 = ptrtoint ptr %3 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end5
  %priv = getelementptr inbounds %struct.rc_dev, ptr %call2, i32 0, i32 24
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %priv, align 4
  %driver_name = getelementptr inbounds %struct.rc_dev, ptr %call2, i32 0, i32 6
  %6 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str, ptr %driver_name, align 8
  %device_name = getelementptr inbounds %struct.rc_dev, ptr %call2, i32 0, i32 3
  %7 = ptrtoint ptr %device_name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.6, ptr %device_name, align 8
  %tx_ir = getelementptr inbounds %struct.rc_dev, ptr %call2, i32 0, i32 54
  %8 = ptrtoint ptr %tx_ir to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @gpio_ir_tx, ptr %tx_ir, align 8
  %s_tx_duty_cycle = getelementptr inbounds %struct.rc_dev, ptr %call2, i32 0, i32 52
  %9 = ptrtoint ptr %s_tx_duty_cycle to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @gpio_ir_tx_set_duty_cycle, ptr %s_tx_duty_cycle, align 8
  %s_tx_carrier = getelementptr inbounds %struct.rc_dev, ptr %call2, i32 0, i32 51
  %10 = ptrtoint ptr %s_tx_carrier to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @gpio_ir_tx_set_carrier, ptr %s_tx_carrier, align 4
  %carrier = getelementptr inbounds %struct.gpio_ir, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %carrier to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 38000, ptr %carrier, align 4
  %duty_cycle = getelementptr inbounds %struct.gpio_ir, ptr %call, i32 0, i32 2
  %12 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 50, ptr %duty_cycle, align 4
  %call22 = tail call i32 @devm_rc_register_device(ptr noundef %dev, ptr noundef nonnull %call2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %do.end27, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %if.end20.cleanup_crit_edge, %if.end17, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.end17 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call22, %do.end27 ], [ %call22, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rc_allocate_device(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_ir_tx(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %txbuf, i32 noundef returned %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !39
  %and.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_off() #6
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry.do.end11_crit_edge
  %carrier = getelementptr inbounds %struct.gpio_ir, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %carrier to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %carrier, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool12.not = icmp eq i32 %4, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %do.end11
  %duty_cycle.i = getelementptr inbounds %struct.gpio_ir, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %duty_cycle.i, align 4
  %mul.i = mul i32 %6, 10000000
  %div83.i = lshr i32 %4, 1
  %add.i = add i32 %mul.i, %div83.i
  %div1.i = udiv i32 %add.i, %4
  %sub.i = sub i32 100, %6
  %mul4.i = mul i32 %sub.i, 10000000
  %add9.i = add i32 %mul4.i, %div83.i
  %div10.i = udiv i32 %add9.i, %4
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !40
  %and.i.i.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #6, !srcloc !41
  br i1 %tobool.not.i, label %if.then.i, label %if.then13.if.end.i_crit_edge

if.then13.if.end.i_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_off() #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then13.if.end.i_crit_edge
  %call12.i = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp100.not.i = icmp eq i32 %count, 0
  br i1 %cmp100.not.i, label %if.end.i.do.body15_crit_edge, label %for.body.lr.ph.i

if.end.i.do.body15_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body15

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %conv34.i = zext i32 %div1.i to i64
  %conv45.i = zext i32 %div10.i to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %edge.0103.i = phi i64 [ %call12.i, %for.body.lr.ph.i ], [ %add.i85.i, %for.inc.i.for.body.i_crit_edge ]
  %i.0101.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %8 = and i32 %i.0101.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool13.not.i = icmp eq i32 %8, 0
  %arrayidx29.i = getelementptr i32, ptr %txbuf, i32 %i.0101.i
  %9 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx29.i, align 4
  %conv30.i = zext i32 %10 to i64
  %mul.i84.i = mul nuw nsw i64 %conv30.i, 1000
  %add.i85.i = add i64 %mul.i84.i, %edge.0103.i
  %call3297.i = tail call i64 @ktime_get() #6
  br i1 %tobool13.not.i, label %if.else.i, label %if.then14.i

if.then14.i:                                      ; preds = %for.body.i
  %sub.i.i = sub i64 %add.i85.i, %call3297.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i)
  %cmp8.i.i.i.i = icmp slt i64 %sub.i.i, 0
  %11 = tail call i64 @llvm.abs.i64(i64 %sub.i.i, i1 false) #6
  %12 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %11, i32 0) #10, !srcloc !42
  %asmresult.i.i.i.i.i = extractvalue { i64, i32 } %12, 0
  %asmresult4.i.i.i.i.i = extractvalue { i64, i32 } %12, 1
  %13 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %11, i64 %asmresult.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i) #10, !srcloc !43
  %asmresult10.i.i.i.i.i = extractvalue { i64, i32 } %13, 0
  %div1811.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i, 9
  %sub210.i.i.i.i = sub nsw i64 0, %div1811.i.i.i.i
  %cond213.i.i.i.i = select i1 %cmp8.i.i.i.i, i64 %sub210.i.i.i.i, i64 %div1811.i.i.i.i
  %conv18.i = trunc i64 %cond213.i.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv18.i)
  %cmp19.i = icmp sgt i32 %conv18.i, 0
  br i1 %cmp19.i, label %cond.false26.i, label %if.then14.i.for.inc.i_crit_edge

if.then14.i.for.inc.i_crit_edge:                  ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

cond.false26.i:                                   ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %14(i32 noundef %conv18.i) #6
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i85.i, i64 %call3297.i)
  %cmp.i.i98.i = icmp sgt i64 %add.i85.i, %call3297.i
  br i1 %cmp.i.i98.i, label %if.else.i.while.body.i_crit_edge, label %if.else.i.for.inc.i_crit_edge

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.else.i.while.body.i_crit_edge:                 ; preds = %if.else.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end54.i.while.body.i_crit_edge, %if.else.i.while.body.i_crit_edge
  %edge.199.i = phi i64 [ %add46.i, %if.end54.i.while.body.i_crit_edge ], [ %edge.0103.i, %if.else.i.while.body.i_crit_edge ]
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  tail call void @gpiod_set_value(ptr noundef %16, i32 noundef 1) #6
  %add35.i = add i64 %edge.199.i, %conv34.i
  %call36.i = tail call i64 @ktime_get() #6
  %sub37.i = sub i64 %add35.i, %call36.i
  %conv39.i = trunc i64 %sub37.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv39.i)
  %cmp40.i = icmp sgt i32 %conv39.i, 0
  br i1 %cmp40.i, label %cond.false8.i.i, label %while.body.i.if.end43.i_crit_edge

while.body.i.if.end43.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.i

cond.false8.i.i:                                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i86.i = add nuw i32 %conv39.i, 999
  %div.i.i = udiv i32 %sub.i86.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %17(i32 noundef %div.i.i) #6
  br label %if.end43.i

if.end43.i:                                       ; preds = %cond.false8.i.i, %while.body.i.if.end43.i_crit_edge
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  tail call void @gpiod_set_value(ptr noundef %19, i32 noundef 0) #6
  %add46.i = add i64 %add35.i, %conv45.i
  %call47.i = tail call i64 @ktime_get() #6
  %sub48.i = sub i64 %add46.i, %call47.i
  %conv50.i = trunc i64 %sub48.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv50.i)
  %cmp51.i = icmp sgt i32 %conv50.i, 0
  br i1 %cmp51.i, label %cond.false8.i95.i, label %if.end43.i.if.end54.i_crit_edge

if.end43.i.if.end54.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54.i

cond.false8.i95.i:                                ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i88.i = add nuw i32 %conv50.i, 999
  %div.i89.i = udiv i32 %sub.i88.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %20(i32 noundef %div.i89.i) #6
  br label %if.end54.i

if.end54.i:                                       ; preds = %cond.false8.i95.i, %if.end43.i.if.end54.i_crit_edge
  %call32.i = tail call i64 @ktime_get() #6
  %cmp.i.i.i = icmp slt i64 %call32.i, %add.i85.i
  br i1 %cmp.i.i.i, label %if.end54.i.while.body.i_crit_edge, label %if.end54.i.for.inc.i_crit_edge

if.end54.i.for.inc.i_crit_edge:                   ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end54.i.while.body.i_crit_edge:                ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

for.inc.i:                                        ; preds = %if.end54.i.for.inc.i_crit_edge, %if.else.i.for.inc.i_crit_edge, %cond.false26.i, %if.then14.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.0101.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %count
  br i1 %exitcond.not.i, label %for.inc.i.do.body15_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.do.body15_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body15

if.else:                                          ; preds = %do.end11
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !40
  %and.i.i.i53 = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i53)
  %tobool.not.i54 = icmp eq i32 %and.i.i.i53, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #6, !srcloc !41
  br i1 %tobool.not.i54, label %if.then.i55, label %if.else.if.end.i56_crit_edge

if.else.if.end.i56_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i56

if.then.i55:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_off() #6
  br label %if.end.i56

if.end.i56:                                       ; preds = %if.then.i55, %if.else.if.end.i56_crit_edge
  %call2.i = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp27.not.i = icmp eq i32 %count, 0
  br i1 %cmp27.not.i, label %if.end.i56.gpio_ir_tx_unmodulated.exit_crit_edge, label %if.end.i56.for.body.i65_crit_edge

if.end.i56.for.body.i65_crit_edge:                ; preds = %if.end.i56
  br label %for.body.i65

if.end.i56.gpio_ir_tx_unmodulated.exit_crit_edge: ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #8
  br label %gpio_ir_tx_unmodulated.exit

for.body.i65:                                     ; preds = %for.inc.i71.for.body.i65_crit_edge, %if.end.i56.for.body.i65_crit_edge
  %edge.029.i = phi i64 [ %add.i.i, %for.inc.i71.for.body.i65_crit_edge ], [ %call2.i, %if.end.i56.for.body.i65_crit_edge ]
  %i.028.i = phi i32 [ %inc.i69, %for.inc.i71.for.body.i65_crit_edge ], [ 0, %if.end.i56.for.body.i65_crit_edge ]
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %24 = and i32 %i.028.i, 1
  %25 = xor i32 %24, 1
  tail call void @gpiod_set_value(ptr noundef %23, i32 noundef %25) #6
  %arrayidx.i = getelementptr i32, ptr %txbuf, i32 %i.028.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %conv.i = zext i32 %27 to i64
  %mul.i.i = mul nuw nsw i64 %conv.i, 1000
  %add.i.i = add i64 %mul.i.i, %edge.029.i
  %call5.i = tail call i64 @ktime_get() #6
  %sub.i.i57 = sub i64 %add.i.i, %call5.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i57)
  %cmp8.i.i.i.i58 = icmp slt i64 %sub.i.i57, 0
  %28 = tail call i64 @llvm.abs.i64(i64 %sub.i.i57, i1 false) #6
  %29 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %28, i32 0) #10, !srcloc !42
  %asmresult.i.i.i.i.i59 = extractvalue { i64, i32 } %29, 0
  %asmresult4.i.i.i.i.i60 = extractvalue { i64, i32 } %29, 1
  %30 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %28, i64 %asmresult.i.i.i.i.i59, i32 %asmresult4.i.i.i.i.i60) #10, !srcloc !43
  %asmresult10.i.i.i.i.i61 = extractvalue { i64, i32 } %30, 0
  %div1811.i.i.i.i62 = lshr i64 %asmresult10.i.i.i.i.i61, 9
  %sub210.i.i.i.i63 = sub nsw i64 0, %div1811.i.i.i.i62
  %cond213.i.i.i.i64 = select i1 %cmp8.i.i.i.i58, i64 %sub210.i.i.i.i63, i64 %div1811.i.i.i.i62
  %conv7.i = trunc i64 %cond213.i.i.i.i64 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv7.i)
  %cmp8.i = icmp sgt i32 %conv7.i, 0
  br i1 %cmp8.i, label %cond.false14.i, label %for.body.i65.for.inc.i71_crit_edge

for.body.i65.for.inc.i71_crit_edge:               ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i71

cond.false14.i:                                   ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %31(i32 noundef %conv7.i) #6
  br label %for.inc.i71

for.inc.i71:                                      ; preds = %cond.false14.i, %for.body.i65.for.inc.i71_crit_edge
  %inc.i69 = add nuw i32 %i.028.i, 1
  %exitcond.not.i70 = icmp eq i32 %inc.i69, %count
  br i1 %exitcond.not.i70, label %for.inc.i71.gpio_ir_tx_unmodulated.exit_crit_edge, label %for.inc.i71.for.body.i65_crit_edge

for.inc.i71.for.body.i65_crit_edge:               ; preds = %for.inc.i71
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i65

for.inc.i71.gpio_ir_tx_unmodulated.exit_crit_edge: ; preds = %for.inc.i71
  call void @__sanitizer_cov_trace_pc() #8
  br label %gpio_ir_tx_unmodulated.exit

gpio_ir_tx_unmodulated.exit:                      ; preds = %for.inc.i71.gpio_ir_tx_unmodulated.exit_crit_edge, %if.end.i56.gpio_ir_tx_unmodulated.exit_crit_edge
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  tail call void @gpiod_set_value(ptr noundef %33, i32 noundef 0) #6
  br label %do.body15

do.body15:                                        ; preds = %gpio_ir_tx_unmodulated.exit, %for.inc.i.do.body15_crit_edge, %if.end.i.do.body15_crit_edge
  br i1 %tobool.not, label %if.then24, label %do.body15.do.body26_crit_edge

do.body15.do.body26_crit_edge:                    ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body26

if.then24:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_on() #6
  br label %do.body26

do.body26:                                        ; preds = %if.then24, %do.body15.do.body26_crit_edge
  %34 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !40
  %and.i.i = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool34.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool34.not, label %if.then38, label %do.body26.do.end41_crit_edge, !prof !44

do.body26.do.end41_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end41

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %do.body26.do.end41_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #6, !srcloc !45
  ret i32 %count
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gpio_ir_tx_set_duty_cycle(ptr nocapture noundef readonly %dev, i32 noundef %duty_cycle) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %duty_cycle1 = getelementptr inbounds %struct.gpio_ir, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %duty_cycle1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %duty_cycle, ptr %duty_cycle1, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gpio_ir_tx_set_carrier(ptr nocapture noundef readonly %dev, i32 noundef %carrier) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %carrier)
  %cmp = icmp ugt i32 %carrier, 500000
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %priv = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %carrier1 = getelementptr inbounds %struct.gpio_ir, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %carrier1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %carrier, ptr %carrier1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_rc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__initcall__kmod_gpio_ir_tx__228_189_gpio_ir_tx_driver_init6, !1, !"__initcall__kmod_gpio_ir_tx__228_189_gpio_ir_tx_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/gpio-ir-tx.c", i32 189, i32 1}
!2 = !{ptr @__exitcall_gpio_ir_tx_driver_exit, !1, !"__exitcall_gpio_ir_tx_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description229, !4, !"__UNIQUE_ID_description229", i1 false, i1 false}
!4 = !{!"../drivers/media/rc/gpio-ir-tx.c", i32 191, i32 1}
!5 = !{ptr @__UNIQUE_ID_author230, !6, !"__UNIQUE_ID_author230", i1 false, i1 false}
!6 = !{!"../drivers/media/rc/gpio-ir-tx.c", i32 192, i32 1}
!7 = !{ptr @__UNIQUE_ID_file231, !8, !"__UNIQUE_ID_file231", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/gpio-ir-tx.c", i32 193, i32 1}
!9 = !{ptr @__UNIQUE_ID_license232, !8, !"__UNIQUE_ID_license232", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/rc/gpio-ir-tx.c", i32 185, i32 11}
!12 = !{ptr @gpio_ir_tx_driver, !13, !"gpio_ir_tx_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/rc/gpio-ir-tx.c", i32 182, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/rc/gpio-ir-tx.c", i32 160, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @gpio_ir_tx_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @gpio_ir_tx_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/rc/gpio-ir-tx.c", i32 167, i32 23}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/rc/gpio-ir-tx.c", i32 177, i32 3}
!26 = !{ptr @gpio_ir_tx_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @gpio_ir_tx_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @gpio_ir_tx_of_match, !29, !"gpio_ir_tx_of_match", i1 false, i1 false}
!29 = !{!"../drivers/media/rc/gpio-ir-tx.c", i32 24, i32 34}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i64 604665, i64 604726}
!40 = !{i64 607397}
!41 = !{i64 605100}
!42 = !{i64 1117174, i64 1117201, i64 1117223, i64 1117251}
!43 = !{i64 1117582, i64 1117609, i64 1117642, i64 1117663, i64 1117690, i64 1117716}
!44 = !{!"branch_weights", i32 1, i32 2000}
!45 = !{i64 607682}
