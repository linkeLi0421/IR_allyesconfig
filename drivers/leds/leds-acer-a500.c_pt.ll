; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-acer-a500.c_pt.bc'
source_filename = "../drivers/leds/leds-acer-a500.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.reg_sequence = type { i32, i32, i32 }
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
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.a500_led = type { %struct.led_classdev, ptr, ptr, ptr }

@__initcall__kmod_leds_acer_a500__170_124_a500_ec_leds_driver_init6 = internal global ptr @a500_ec_leds_driver_init, section ".initcall6.init", align 4
@a500_ec_leds_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @a500_ec_leds_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_a500_ec_leds_driver_exit = internal global ptr @a500_ec_leds_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description171 = internal constant [76 x i8] c"leds_acer_a500.description=LED driver for Acer Iconia Tab A500 Power Button\00", section ".modinfo", align 1
@__UNIQUE_ID_author172 = internal constant [57 x i8] c"leds_acer_a500.author=Dmitry Osipenko <digetx@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias173 = internal constant [52 x i8] c"leds_acer_a500.alias=platform:acer-a500-iconia-leds\00", section ".modinfo", align 1
@__UNIQUE_ID_file174 = internal constant [48 x i8] c"leds_acer_a500.file=drivers/leds/leds-acer-a500\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [27 x i8] c"leds_acer_a500.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"acer-a500-iconia-leds\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"KB930\00", [26 x i8] zeroinitializer }, align 32
@a500_ec_leds_reset_seq = internal constant { [2 x %struct.reg_sequence], [40 x i8] } { [2 x %struct.reg_sequence] [%struct.reg_sequence { i32 64, i32 0, i32 100000 }, %struct.reg_sequence { i32 90, i32 0, i32 100000 }], [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"power:white\00", [20 x i8] zeroinitializer }, align 32
@a500_ec_white_led_enable_seq = internal constant { [1 x %struct.reg_sequence], [20 x i8] } { [1 x %struct.reg_sequence] [%struct.reg_sequence { i32 66, i32 0, i32 100000 }], [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"power:orange\00", [19 x i8] zeroinitializer }, align 32
@a500_ec_orange_led_enable_seq = internal constant { [1 x %struct.reg_sequence], [20 x i8] } { [1 x %struct.reg_sequence] [%struct.reg_sequence { i32 67, i32 0, i32 100000 }], [20 x i8] zeroinitializer }, align 32
@a500_ec_leds_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 105, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to register white LED\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"a500_ec_leds_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/leds/leds-acer-a500.c\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@a500_ec_leds_probe._entry_ptr = internal global ptr @a500_ec_leds_probe._entry, section ".printk_index", align 4
@a500_ec_leds_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 111, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register orange LED\0A\00", [33 x i8] zeroinitializer }, align 32
@a500_ec_leds_probe._entry_ptr.11 = internal global ptr @a500_ec_leds_probe._entry.9, section ".printk_index", align 4
@___asan_gen_.12 = private unnamed_addr constant [20 x i8] c"a500_ec_leds_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 118, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 120, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 71, i32 42 }
@___asan_gen_.21 = private unnamed_addr constant [23 x i8] c"a500_ec_leds_reset_seq\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 24, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 82, i32 25 }
@___asan_gen_.27 = private unnamed_addr constant [29 x i8] c"a500_ec_white_led_enable_seq\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 29, i32 34 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 93, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant [30 x i8] c"a500_ec_orange_led_enable_seq\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 33, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 105, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private constant [33 x i8] c"../drivers/leds/leds-acer-a500.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 111, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_alias173, ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_a500_ec_leds_driver_exit, ptr @__initcall__kmod_leds_acer_a500__170_124_a500_ec_leds_driver_init6, ptr @a500_ec_leds_driver_exit, ptr @a500_ec_leds_probe._entry, ptr @a500_ec_leds_probe._entry.9, ptr @a500_ec_leds_probe._entry_ptr, ptr @a500_ec_leds_probe._entry_ptr.11, ptr @a500_ec_leds_driver, ptr @.str, ptr @.str.1, ptr @a500_ec_leds_reset_seq, ptr @.str.2, ptr @a500_ec_white_led_enable_seq, ptr @.str.3, ptr @a500_ec_orange_led_enable_seq, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a500_ec_leds_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a500_ec_leds_reset_seq to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a500_ec_white_led_enable_seq to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a500_ec_orange_led_enable_seq to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a500_ec_leds_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a500_ec_leds_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @a500_ec_leds_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @a500_ec_leds_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @a500_ec_leds_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @a500_ec_leds_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a500_ec_leds_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call = tail call ptr @dev_get_regmap(ptr noundef %1, ptr noundef nonnull @.str.1) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @regmap_multi_reg_write(ptr noundef nonnull %call, ptr noundef nonnull @a500_ec_leds_reset_seq, i32 noundef 2) #5
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 412, i32 noundef 3520) #5
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.2, ptr %call.i, align 4
  %brightness_set_blocking = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 6
  %3 = ptrtoint ptr %brightness_set_blocking to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @a500_ec_led_brightness_set, ptr %brightness_set_blocking, align 4
  %flags = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 65536, ptr %flags, align 4
  %max_brightness = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %max_brightness, align 4
  %enable_seq = getelementptr inbounds %struct.a500_led, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %enable_seq to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @a500_ec_white_led_enable_seq, ptr %enable_seq, align 4
  %rmap10 = getelementptr inbounds %struct.a500_led, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %rmap10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %rmap10, align 4
  %call.i77 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 412, i32 noundef 3520) #5
  %tobool13.not = icmp eq ptr %call.i77, null
  br i1 %tobool13.not, label %if.end6.cleanup_crit_edge, label %if.end15

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  %8 = ptrtoint ptr %call.i77 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.3, ptr %call.i77, align 4
  %brightness_set_blocking19 = getelementptr inbounds %struct.led_classdev, ptr %call.i77, i32 0, i32 6
  %9 = ptrtoint ptr %brightness_set_blocking19 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @a500_ec_led_brightness_set, ptr %brightness_set_blocking19, align 4
  %flags21 = getelementptr inbounds %struct.led_classdev, ptr %call.i77, i32 0, i32 3
  %10 = ptrtoint ptr %flags21 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 65536, ptr %flags21, align 4
  %max_brightness23 = getelementptr inbounds %struct.led_classdev, ptr %call.i77, i32 0, i32 2
  %11 = ptrtoint ptr %max_brightness23 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %max_brightness23, align 4
  %enable_seq24 = getelementptr inbounds %struct.a500_led, ptr %call.i77, i32 0, i32 1
  %12 = ptrtoint ptr %enable_seq24 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @a500_ec_orange_led_enable_seq, ptr %enable_seq24, align 4
  %rmap25 = getelementptr inbounds %struct.a500_led, ptr %call.i77, i32 0, i32 3
  %13 = ptrtoint ptr %rmap25 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call, ptr %rmap25, align 4
  %other = getelementptr inbounds %struct.a500_led, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %other to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i77, ptr %other, align 4
  %other26 = getelementptr inbounds %struct.a500_led, ptr %call.i77, i32 0, i32 2
  %15 = ptrtoint ptr %other26 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %other26, align 4
  %call.i78 = tail call i32 @devm_led_classdev_register_ext(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool30.not = icmp eq i32 %call.i78, 0
  br i1 %tobool30.not, label %if.end33, label %if.end15.cleanup.sink.split_crit_edge

if.end15.cleanup.sink.split_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end33:                                         ; preds = %if.end15
  %call.i79 = tail call i32 @devm_led_classdev_register_ext(ptr noundef %dev, ptr noundef nonnull %call.i77, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool37.not = icmp eq i32 %call.i79, 0
  br i1 %tobool37.not, label %if.end33.cleanup_crit_edge, label %if.end33.cleanup.sink.split_crit_edge

if.end33.cleanup.sink.split_crit_edge:            ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end33.cleanup.sink.split_crit_edge, %if.end15.cleanup.sink.split_crit_edge
  %.str.10.sink = phi ptr [ @.str.4, %if.end15.cleanup.sink.split_crit_edge ], [ @.str.10, %if.end33.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i78, %if.end15.cleanup.sink.split_crit_edge ], [ %call.i79, %if.end33.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.10.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end33.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ 0, %if.end33.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_multi_reg_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a500_ec_led_brightness_set(ptr nocapture noundef readonly %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  %control_seq = alloca [2 x %struct.reg_sequence], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %control_seq) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %0 = call ptr @memset(ptr %control_seq, i32 255, i32 24)
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %enable_seq = getelementptr inbounds %struct.a500_led, ptr %led_cdev, i32 0, i32 1
  %1 = ptrtoint ptr %enable_seq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %enable_seq, align 4
  %3 = call ptr @memcpy(ptr %control_seq, ptr %2, i32 12)
  br label %if.end9

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = getelementptr inbounds [2 x %struct.reg_sequence], ptr %control_seq, i32 0, i32 1
  %other = getelementptr inbounds %struct.a500_led, ptr %led_cdev, i32 0, i32 2
  %5 = ptrtoint ptr %other to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %other, align 4
  %brightness = getelementptr inbounds %struct.led_classdev, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %brightness, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  %spec.select = select i1 %tobool2.not, i32 1, i32 2
  %9 = call ptr @memcpy(ptr %control_seq, ptr @a500_ec_leds_reset_seq, i32 12)
  %enable_seq7 = getelementptr inbounds %struct.a500_led, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %enable_seq7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %enable_seq7, align 4
  %12 = call ptr @memcpy(ptr %4, ptr %11, i32 12)
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then
  %num_regs.1 = phi i32 [ 1, %if.then ], [ %spec.select, %if.else ]
  %rmap = getelementptr inbounds %struct.a500_led, ptr %led_cdev, i32 0, i32 3
  %13 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmap, align 4
  %call = call i32 @regmap_multi_reg_write(ptr noundef %14, ptr noundef nonnull %control_seq, i32 noundef %num_regs.1) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %control_seq) #5
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__initcall__kmod_leds_acer_a500__170_124_a500_ec_leds_driver_init6, !1, !"__initcall__kmod_leds_acer_a500__170_124_a500_ec_leds_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-acer-a500.c", i32 124, i32 1}
!2 = !{ptr @__exitcall_a500_ec_leds_driver_exit, !1, !"__exitcall_a500_ec_leds_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description171, !4, !"__UNIQUE_ID_description171", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-acer-a500.c", i32 126, i32 1}
!5 = !{ptr @__UNIQUE_ID_author172, !6, !"__UNIQUE_ID_author172", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-acer-a500.c", i32 127, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias173, !8, !"__UNIQUE_ID_alias173", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-acer-a500.c", i32 128, i32 1}
!9 = !{ptr @__UNIQUE_ID_file174, !10, !"__UNIQUE_ID_file174", i1 false, i1 false}
!10 = !{!"../drivers/leds/leds-acer-a500.c", i32 129, i32 1}
!11 = !{ptr @__UNIQUE_ID_license175, !10, !"__UNIQUE_ID_license175", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-acer-a500.c", i32 120, i32 11}
!14 = !{ptr @a500_ec_leds_driver, !15, !"a500_ec_leds_driver", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-acer-a500.c", i32 118, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/leds/leds-acer-a500.c", i32 71, i32 42}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/leds/leds-acer-a500.c", i32 82, i32 25}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/leds/leds-acer-a500.c", i32 93, i32 26}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/leds/leds-acer-a500.c", i32 105, i32 3}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @a500_ec_leds_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @a500_ec_leds_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/leds/leds-acer-a500.c", i32 111, i32 3}
!32 = !{ptr @a500_ec_leds_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @a500_ec_leds_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @a500_ec_leds_reset_seq, !35, !"a500_ec_leds_reset_seq", i1 false, i1 false}
!35 = !{!"../drivers/leds/leds-acer-a500.c", i32 24, i32 34}
!36 = !{ptr @a500_ec_white_led_enable_seq, !37, !"a500_ec_white_led_enable_seq", i1 false, i1 false}
!37 = !{!"../drivers/leds/leds-acer-a500.c", i32 29, i32 34}
!38 = !{ptr @a500_ec_orange_led_enable_seq, !39, !"a500_ec_orange_led_enable_seq", i1 false, i1 false}
!39 = !{!"../drivers/leds/leds-acer-a500.c", i32 33, i32 34}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
