; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-adp5520.c_pt.bc'
source_filename = "../drivers/leds/leds-adp5520.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.adp5520_leds_platform_data = type { i32, ptr, i8, i8, i8 }
%struct.led_info = type { ptr, ptr, i32 }
%struct.adp5520_led = type { %struct.led_classdev, ptr, i32, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@__initcall__kmod_leds_adp5520__183_192_adp5520_led_driver_init6 = internal global ptr @adp5520_led_driver_init, section ".initcall6.init", align 4
@adp5520_led_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @adp5520_led_probe, ptr @adp5520_led_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_adp5520_led_driver_exit = internal global ptr @adp5520_led_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [71 x i8] c"leds_adp5520.author=Michael Hennerich <hennerich@blackfin.uclinux.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description185 = internal constant [49 x i8] c"leds_adp5520.description=LEDS ADP5520(01) Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [44 x i8] c"leds_adp5520.file=drivers/leds/leds-adp5520\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [25 x i8] c"leds_adp5520.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias188 = internal constant [40 x i8] c"leds_adp5520.alias=platform:adp5520-led\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adp5520-led\00", [20 x i8] zeroinitializer }, align 32
@adp5520_led_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 100, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"missing platform data\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adp5520_led_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/leds/leds-adp5520.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adp5520_led_probe._entry_ptr = internal global ptr @adp5520_led_probe._entry, section ".printk_index", align 4
@adp5520_led_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 106, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"can't handle more than %d LEDS\0A\00", [32 x i8] zeroinitializer }, align 32
@adp5520_led_probe._entry_ptr.8 = internal global ptr @adp5520_led_probe._entry.6, section ".printk_index", align 4
@adp5520_led_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 117, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"failed to write\0A\00", [47 x i8] zeroinitializer }, align 32
@adp5520_led_probe._entry_ptr.11 = internal global ptr @adp5520_led_probe._entry.9, section ".printk_index", align 4
@adp5520_led_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 142, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to register LED %d\0A\00", [37 x i8] zeroinitializer }, align 32
@adp5520_led_probe._entry_ptr.14 = internal global ptr @adp5520_led_probe._entry.12, section ".printk_index", align 4
@adp5520_led_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 148, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@adp5520_led_probe._entry_ptr.16 = internal global ptr @adp5520_led_probe._entry.15, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.17 = private unnamed_addr constant [19 x i8] c"adp5520_led_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 184, i32 31 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 186, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 100, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 105, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 117, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 141, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private constant [31 x i8] c"../drivers/leds/leds-adp5520.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 148, i32 4 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_alias188, ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_adp5520_led_driver_exit, ptr @__initcall__kmod_leds_adp5520__183_192_adp5520_led_driver_init6, ptr @adp5520_led_driver_exit, ptr @adp5520_led_probe._entry, ptr @adp5520_led_probe._entry.12, ptr @adp5520_led_probe._entry.15, ptr @adp5520_led_probe._entry.6, ptr @adp5520_led_probe._entry.9, ptr @adp5520_led_probe._entry_ptr, ptr @adp5520_led_probe._entry_ptr.11, ptr @adp5520_led_probe._entry_ptr.14, ptr @adp5520_led_probe._entry_ptr.16, ptr @adp5520_led_probe._entry_ptr.8, ptr @adp5520_led_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5520_led_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5520_led_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5520_led_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5520_led_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5520_led_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5520_led_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5520_led_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @adp5520_led_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adp5520_led_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @adp5520_led_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5520_led_probe(ptr noundef %pdev) #2 align 64 {
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
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp2 = icmp sgt i32 %3, 3
  br i1 %cmp2, label %do.end6, label %if.end8

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef 3) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 412) #5
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %if.end8.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !48

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end8
  %6 = extractvalue { i32, i1 } %4, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %6, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end13

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %devm_kcalloc.exit
  %7 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %platform_data.i, align 8
  %parent.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i, align 8
  %call3.i = tail call i32 @adp5520_write(ptr noundef %10, i32 noundef 20, i8 noundef zeroext 0) #5
  %call4.i = tail call i32 @adp5520_write(ptr noundef %10, i32 noundef 21, i8 noundef zeroext 0) #5
  %or5.i = or i32 %call4.i, %call3.i
  %call6.i = tail call i32 @adp5520_write(ptr noundef %10, i32 noundef 22, i8 noundef zeroext 0) #5
  %or7.i = or i32 %or5.i, %call6.i
  %led_on_time.i = getelementptr inbounds %struct.adp5520_leds_platform_data, ptr %8, i32 0, i32 4
  %11 = ptrtoint ptr %led_on_time.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %led_on_time.i, align 2
  %shl.i = shl i8 %12, 6
  %call9.i = tail call i32 @adp5520_write(ptr noundef %10, i32 noundef 18, i8 noundef zeroext %shl.i) #5
  %or10.i = or i32 %or7.i, %call9.i
  %fade_in.i = getelementptr inbounds %struct.adp5520_leds_platform_data, ptr %8, i32 0, i32 2
  %13 = ptrtoint ptr %fade_in.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %fade_in.i, align 4
  %15 = and i8 %14, 15
  %fade_out.i = getelementptr inbounds %struct.adp5520_leds_platform_data, ptr %8, i32 0, i32 3
  %16 = ptrtoint ptr %fade_out.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %fade_out.i, align 1
  %18 = shl i8 %17, 4
  %or1531.i = or i8 %18, %15
  %call17.i = tail call i32 @adp5520_write(ptr noundef %10, i32 noundef 19, i8 noundef zeroext %or1531.i) #5
  %or18.i = or i32 %or10.i, %call17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or18.i)
  %tobool15.not = icmp eq i32 %or18.i, 0
  br i1 %tobool15.not, label %for.cond.preheader, label %do.end19

for.cond.preheader:                               ; preds = %if.end13
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp23129 = icmp sgt i32 %20, 0
  br i1 %cmp23129, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %leds = getelementptr inbounds %struct.adp5520_leds_platform_data, ptr %1, i32 0, i32 1
  br label %for.body

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0130 = phi i32 [ 0, %for.body.lr.ph ], [ %inc58, %for.inc.for.body_crit_edge ]
  %21 = ptrtoint ptr %leds to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %leds, align 4
  %arrayidx = getelementptr %struct.led_info, ptr %22, i32 %i.0130
  %arrayidx24 = getelementptr %struct.adp5520_led, ptr %call5.i.i, i32 %i.0130
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %25 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %arrayidx24, align 4
  %default_trigger = getelementptr %struct.led_info, ptr %22, i32 %i.0130, i32 1
  %26 = ptrtoint ptr %default_trigger to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %default_trigger, align 4
  %default_trigger27 = getelementptr inbounds %struct.led_classdev, ptr %arrayidx24, i32 0, i32 14
  %28 = ptrtoint ptr %default_trigger27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %default_trigger27, align 4
  %brightness_set_blocking = getelementptr inbounds %struct.led_classdev, ptr %arrayidx24, i32 0, i32 6
  %29 = ptrtoint ptr %brightness_set_blocking to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @adp5520_led_set, ptr %brightness_set_blocking, align 4
  %brightness = getelementptr inbounds %struct.led_classdev, ptr %arrayidx24, i32 0, i32 1
  %30 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %brightness, align 4
  %flags = getelementptr %struct.led_info, ptr %22, i32 %i.0130, i32 2
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags, align 4
  %and = and i32 %32, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  %add = add nuw nsw i32 %i.0130, 1
  %.pre = and i32 %add, 3
  %and37.pre-phi = select i1 %tobool30.not, i32 %.pre, i32 %and
  %.sink = select i1 %tobool30.not, i32 %add, i32 %32
  %33 = getelementptr %struct.adp5520_led, ptr %call5.i.i, i32 %i.0130, i32 3
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink, ptr %33, align 4
  %id = getelementptr %struct.adp5520_led, ptr %call5.i.i, i32 %i.0130, i32 2
  %35 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and37.pre-phi, ptr %id, align 4
  %36 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %parent.i, align 8
  %master = getelementptr %struct.adp5520_led, ptr %call5.i.i, i32 %i.0130, i32 1
  %38 = ptrtoint ptr %master to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %master, align 4
  %call.i = tail call i32 @led_classdev_register_ext(ptr noundef %37, ptr noundef %arrayidx24, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool42.not = icmp eq i32 %call.i, 0
  br i1 %tobool42.not, label %if.end49, label %do.end46

do.end46:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %40) #8
  br label %err

if.end49:                                         ; preds = %for.body
  %41 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %master, align 4
  %43 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %33, align 4
  %45 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %id, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values)
  switch i32 %46, label %if.end49.for.inc_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb4.i
    i32 3, label %sw.bb14.i
  ]

if.end49.for.inc_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

sw.bb.i:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  %48 = lshr i32 %44, 8
  %49 = trunc i32 %48 to i8
  %conv.i = and i8 %49, 3
  %call.i119 = tail call i32 @adp5520_set_bits(ptr noundef %42, i32 noundef 18, i8 noundef zeroext %conv.i) #5
  %call2.i = tail call i32 @adp5520_set_bits(ptr noundef %42, i32 noundef 17, i8 noundef zeroext 1) #5
  br label %adp5520_led_setup.exit

sw.bb4.i:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  %50 = lshr i32 %44, 6
  %51 = trunc i32 %50 to i8
  %conv7.i = and i8 %51, 12
  %call8.i = tail call i32 @adp5520_set_bits(ptr noundef %42, i32 noundef 18, i8 noundef zeroext %conv7.i) #5
  %call10.i = tail call i32 @adp5520_clr_bits(ptr noundef %42, i32 noundef 17, i8 noundef zeroext 32) #5
  %or11.i = or i32 %call10.i, %call8.i
  %call12.i = tail call i32 @adp5520_set_bits(ptr noundef %42, i32 noundef 17, i8 noundef zeroext 2) #5
  br label %adp5520_led_setup.exit

sw.bb14.i:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  %52 = lshr i32 %44, 4
  %53 = trunc i32 %52 to i8
  %conv18.i = and i8 %53, 48
  %call19.i = tail call i32 @adp5520_set_bits(ptr noundef %42, i32 noundef 18, i8 noundef zeroext %conv18.i) #5
  %call21.i = tail call i32 @adp5520_clr_bits(ptr noundef %42, i32 noundef 17, i8 noundef zeroext 16) #5
  %or22.i = or i32 %call21.i, %call19.i
  %call23.i = tail call i32 @adp5520_set_bits(ptr noundef %42, i32 noundef 17, i8 noundef zeroext 4) #5
  br label %adp5520_led_setup.exit

adp5520_led_setup.exit:                           ; preds = %sw.bb14.i, %sw.bb4.i, %sw.bb.i
  %call23.sink.i = phi i32 [ %call23.i, %sw.bb14.i ], [ %call12.i, %sw.bb4.i ], [ %call.i119, %sw.bb.i ]
  %or22.sink.i = phi i32 [ %or22.i, %sw.bb14.i ], [ %or11.i, %sw.bb4.i ], [ %call2.i, %sw.bb.i ]
  %or24.i = or i32 %or22.sink.i, %call23.sink.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or24.i)
  %tobool51.not = icmp eq i32 %or24.i, 0
  br i1 %tobool51.not, label %adp5520_led_setup.exit.for.inc_crit_edge, label %do.end55

adp5520_led_setup.exit.for.inc_crit_edge:         ; preds = %adp5520_led_setup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end55:                                         ; preds = %adp5520_led_setup.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #8
  %inc = add nuw i32 %i.0130, 1
  br label %err

for.inc:                                          ; preds = %adp5520_led_setup.exit.for.inc_crit_edge, %if.end49.for.inc_crit_edge
  %inc58 = add nuw nsw i32 %i.0130, 1
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %1, align 4
  %cmp23 = icmp slt i32 %inc58, %55
  br i1 %cmp23, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %56 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call5.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err:                                              ; preds = %do.end55, %do.end46
  %ret.0 = phi i32 [ %call.i, %do.end46 ], [ %or24.i, %do.end55 ]
  %i.1 = phi i32 [ %i.0130, %do.end46 ], [ %inc, %do.end55 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1)
  %57 = icmp sgt i32 %i.1, 0
  br i1 %57, label %err.for.body63_crit_edge, label %err.cleanup_crit_edge

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err.for.body63_crit_edge:                         ; preds = %err
  br label %for.body63

for.body63:                                       ; preds = %for.body63.for.body63_crit_edge, %err.for.body63_crit_edge
  %i.2134.in = phi i32 [ %i.2134, %for.body63.for.body63_crit_edge ], [ %i.1, %err.for.body63_crit_edge ]
  %i.2134 = add nsw i32 %i.2134.in, -1
  %arrayidx64 = getelementptr %struct.adp5520_led, ptr %call5.i.i, i32 %i.2134
  tail call void @led_classdev_unregister(ptr noundef %arrayidx64) #5
  %cmp62.not = icmp eq i32 %i.2134, 0
  br i1 %cmp62.not, label %for.body63.cleanup_crit_edge, label %for.body63.for.body63_crit_edge

for.body63.for.body63_crit_edge:                  ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body63

for.body63.cleanup_crit_edge:                     ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.body63.cleanup_crit_edge, %err.cleanup_crit_edge, %for.end, %do.end19, %devm_kcalloc.exit.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -14, %do.end6 ], [ %or18.i, %do.end19 ], [ 0, %for.end ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ %ret.0, %err.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ], [ %ret.0, %for.body63.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5520_led_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %master = getelementptr inbounds %struct.adp5520_led, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %call2 = tail call i32 @adp5520_clr_bits(ptr noundef %5, i32 noundef 17, i8 noundef zeroext 7) #5
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7 = icmp sgt i32 %7, 0
  br i1 %cmp7, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.adp5520_led, ptr %3, i32 %i.08
  tail call void @led_classdev_unregister(ptr noundef %arrayidx) #5
  %inc = add nuw nsw i32 %i.08, 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5520_led_set(ptr nocapture noundef readonly %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.adp5520_led, ptr %led_cdev, i32 0, i32 1
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %id = getelementptr inbounds %struct.adp5520_led, ptr %led_cdev, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %sub = add i32 %3, 19
  %shr = lshr i32 %value, 2
  %conv = trunc i32 %shr to i8
  %call = tail call i32 @adp5520_write(ptr noundef %1, i32 noundef %sub, i8 noundef zeroext %conv) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adp5520_write(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adp5520_set_bits(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adp5520_clr_bits(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__initcall__kmod_leds_adp5520__183_192_adp5520_led_driver_init6, !1, !"__initcall__kmod_leds_adp5520__183_192_adp5520_led_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-adp5520.c", i32 192, i32 1}
!2 = !{ptr @__exitcall_adp5520_led_driver_exit, !1, !"__exitcall_adp5520_led_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author184, !4, !"__UNIQUE_ID_author184", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-adp5520.c", i32 194, i32 1}
!5 = !{ptr @__UNIQUE_ID_description185, !6, !"__UNIQUE_ID_description185", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-adp5520.c", i32 195, i32 1}
!7 = !{ptr @__UNIQUE_ID_file186, !8, !"__UNIQUE_ID_file186", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-adp5520.c", i32 196, i32 1}
!9 = !{ptr @__UNIQUE_ID_license187, !8, !"__UNIQUE_ID_license187", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias188, !11, !"__UNIQUE_ID_alias188", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-adp5520.c", i32 197, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-adp5520.c", i32 186, i32 11}
!14 = !{ptr @adp5520_led_driver, !15, !"adp5520_led_driver", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-adp5520.c", i32 184, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/leds/leds-adp5520.c", i32 100, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @adp5520_led_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @adp5520_led_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/leds/leds-adp5520.c", i32 105, i32 3}
!26 = !{ptr @adp5520_led_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @adp5520_led_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/leds/leds-adp5520.c", i32 117, i32 3}
!30 = !{ptr @adp5520_led_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @adp5520_led_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/leds/leds-adp5520.c", i32 141, i32 4}
!34 = !{ptr @adp5520_led_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @adp5520_led_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @adp5520_led_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!37 = !{!"../drivers/leds/leds-adp5520.c", i32 148, i32 4}
!38 = !{ptr @adp5520_led_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"branch_weights", i32 1, i32 2000}
