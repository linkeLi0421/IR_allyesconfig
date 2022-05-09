; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-lp8788.c_pt.bc'
source_filename = "../drivers/leds/leds-lp8788.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.lp8788_led = type { ptr, %struct.mutex, %struct.led_classdev, i32, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lp8788 = type { ptr, ptr, ptr, i32, ptr }
%struct.lp8788_platform_data = type { ptr, [4 x ptr], [12 x ptr], [10 x ptr], ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.lp8788_led_platform_data = type { ptr, i32, i32, i32 }

@__initcall__kmod_leds_lp8788__223_166_lp8788_led_driver_init6 = internal global ptr @lp8788_led_driver_init, section ".initcall6.init", align 4
@lp8788_led_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @lp8788_led_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_lp8788_led_driver_exit = internal global ptr @lp8788_led_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description224 = internal constant [69 x i8] c"leds_lp8788.description=Texas Instruments LP8788 Keyboard LED Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author225 = internal constant [28 x i8] c"leds_lp8788.author=Milo Kim\00", section ".modinfo", align 1
@__UNIQUE_ID_file226 = internal constant [42 x i8] c"leds_lp8788.file=drivers/leds/leds-lp8788\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [24 x i8] c"leds_lp8788.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias228 = internal constant [41 x i8] c"leds_lp8788.alias=platform:lp8788-keyled\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lp8788-keyled\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"keyboard-backlight\00", [45 x i8] zeroinitializer }, align 32
@lp8788_led_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&led->lock\00", [21 x i8] zeroinitializer }, align 32
@lp8788_led_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 147, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"led init device err: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lp8788_led_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/leds/leds-lp8788.c\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lp8788_led_probe._entry_ptr = internal global ptr @lp8788_led_probe._entry, section ".printk_index", align 4
@lp8788_led_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 153, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"led register err: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@lp8788_led_probe._entry_ptr.10 = internal global ptr @lp8788_led_probe._entry.8, section ".printk_index", align 4
@lp8788_pwm_addr = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\9C\9D\9E", [29 x i8] zeroinitializer }, align 32
@default_led_config.0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@default_led_config.1 = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@default_led_config.2 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@lp8788_iout_addr = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\9A\9A\9B", [29 x i8] zeroinitializer }, align 32
@lp8788_iout_mask = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\0F\F0\0F", [29 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [18 x i8] c"lp8788_led_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 160, i32 31 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 163, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 139, i32 23 }
@___asan_gen_.20 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 143, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 147, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [30 x i8] c"../drivers/leds/leds-lp8788.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 153, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [16 x i8] c"lp8788_pwm_addr\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 42, i32 17 }
@___asan_gen_.53 = private unnamed_addr constant [21 x i8] c"default_led_config.0\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [21 x i8] c"default_led_config.1\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [21 x i8] c"default_led_config.2\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"lp8788_iout_addr\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 30, i32 17 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"lp8788_iout_mask\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [36 x i8] c"../include/linux/mfd/lp8788-isink.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 36, i32 17 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_alias228, ptr @__UNIQUE_ID_author225, ptr @__UNIQUE_ID_description224, ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_license227, ptr @__exitcall_lp8788_led_driver_exit, ptr @__initcall__kmod_leds_lp8788__223_166_lp8788_led_driver_init6, ptr @lp8788_led_driver_exit, ptr @lp8788_led_probe._entry, ptr @lp8788_led_probe._entry.8, ptr @lp8788_led_probe._entry_ptr, ptr @lp8788_led_probe._entry_ptr.10, ptr @lp8788_led_driver, ptr @.str, ptr @.str.1, ptr @lp8788_led_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @lp8788_pwm_addr, ptr @default_led_config.0, ptr @default_led_config.1, ptr @default_led_config.2, ptr @lp8788_iout_addr, ptr @lp8788_iout_mask], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_led_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_led_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_led_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_led_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_pwm_addr to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_led_config.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_led_config.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_led_config.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_iout_addr to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp8788_iout_mask to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8788_led_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @lp8788_led_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lp8788_led_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @lp8788_led_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8788_led_probe(ptr noundef %pdev) #2 align 64 {
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
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 504, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %call.i, align 4
  %led_dev = getelementptr inbounds %struct.lp8788_led, ptr %call.i, i32 0, i32 2
  %max_brightness = getelementptr inbounds %struct.lp8788_led, ptr %call.i, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 63, ptr %max_brightness, align 4
  %brightness_set_blocking = getelementptr inbounds %struct.lp8788_led, ptr %call.i, i32 0, i32 2, i32 6
  %6 = ptrtoint ptr %brightness_set_blocking to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @lp8788_brightness_set, ptr %brightness_set_blocking, align 4
  %pdata = getelementptr inbounds %struct.lp8788, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdata, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %if.end.do.body.thread_crit_edge, label %cond.end

if.end.do.body.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.thread

cond.end:                                         ; preds = %if.end
  %led_pdata8 = getelementptr inbounds %struct.lp8788_platform_data, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %led_pdata8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %led_pdata8, align 4
  %tobool9.not = icmp eq ptr %10, null
  br i1 %tobool9.not, label %cond.end.do.body.thread_crit_edge, label %if.then.i

cond.end.do.body.thread_crit_edge:                ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.thread

do.body.thread:                                   ; preds = %cond.end.do.body.thread_crit_edge, %if.end.do.body.thread_crit_edge
  %11 = ptrtoint ptr %led_dev to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.1, ptr %led_dev, align 4
  %lock69 = getelementptr inbounds %struct.lp8788_led, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock69, ptr noundef nonnull @.str.2, ptr noundef nonnull @lp8788_led_probe.__key) #4
  br label %if.end.i

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %10, align 4
  %tobool10.not = icmp eq ptr %13, null
  %spec.select = select i1 %tobool10.not, ptr @.str.1, ptr %13
  %14 = ptrtoint ptr %led_dev to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %spec.select, ptr %led_dev, align 4
  %lock = getelementptr inbounds %struct.lp8788_led, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @lp8788_led_probe.__key) #4
  %scale.i = getelementptr inbounds %struct.lp8788_led_platform_data, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %scale.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %scale.i, align 4
  store i32 %16, ptr @default_led_config.0, align 4
  %num.i = getelementptr inbounds %struct.lp8788_led_platform_data, ptr %10, i32 0, i32 2
  %17 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num.i, align 4
  store i32 %18, ptr @default_led_config.1, align 4
  %iout_code.i = getelementptr inbounds %struct.lp8788_led_platform_data, ptr %10, i32 0, i32 3
  %19 = ptrtoint ptr %iout_code.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iout_code.i, align 4
  store i32 %20, ptr @default_led_config.2, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.body.thread
  %21 = load i32, ptr @default_led_config.1, align 4
  %isink_num.i = getelementptr inbounds %struct.lp8788_led, ptr %call.i, i32 0, i32 3
  %22 = ptrtoint ptr %isink_num.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %isink_num.i, align 4
  %add.i = add i32 %21, 3
  %shl.i = shl nuw i32 1, %add.i
  %conv.i = trunc i32 %shl.i to i8
  %23 = load i32, ptr @default_led_config.0, align 4
  %shl8.i = shl i32 %23, %add.i
  %conv9.i = trunc i32 %shl8.i to i8
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 4
  %call.i60 = tail call i32 @lp8788_update_bits(ptr noundef %25, i8 noundef zeroext -103, i8 noundef zeroext %conv.i, i8 noundef zeroext %conv9.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool10.not.i = icmp eq i32 %call.i60, 0
  br i1 %tobool10.not.i, label %lp8788_led_init_device.exit, label %if.end.i.do.end23_crit_edge

if.end.i.do.end23_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end23

lp8788_led_init_device.exit:                      ; preds = %if.end.i
  %26 = load i32, ptr @default_led_config.1, align 4
  %arrayidx.i = getelementptr [3 x i8], ptr @lp8788_iout_addr, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i, align 1
  %arrayidx15.i = getelementptr [3 x i8], ptr @lp8788_iout_mask, i32 0, i32 %26
  %29 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx15.i, align 1
  %31 = load i32, ptr @default_led_config.2, align 4
  %conv17.i = trunc i32 %31 to i8
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i, align 4
  %call19.i = tail call i32 @lp8788_update_bits(ptr noundef %33, i8 noundef zeroext %28, i8 noundef zeroext %30, i8 noundef zeroext %conv17.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool19.not = icmp eq i32 %call19.i, 0
  br i1 %tobool19.not, label %if.end24, label %lp8788_led_init_device.exit.do.end23_crit_edge

lp8788_led_init_device.exit.do.end23_crit_edge:   ; preds = %lp8788_led_init_device.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end23

do.end23:                                         ; preds = %lp8788_led_init_device.exit.do.end23_crit_edge, %if.end.i.do.end23_crit_edge
  %retval.0.i72 = phi i32 [ %call19.i, %lp8788_led_init_device.exit.do.end23_crit_edge ], [ %call.i60, %if.end.i.do.end23_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %retval.0.i72) #7
  br label %cleanup

if.end24:                                         ; preds = %lp8788_led_init_device.exit
  %call.i61 = tail call i32 @devm_led_classdev_register_ext(ptr noundef %dev, ptr noundef %led_dev, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %tobool27.not = icmp eq i32 %call.i61, 0
  br i1 %tobool27.not, label %if.end24.cleanup_crit_edge, label %do.end31

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call.i61) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %if.end24.cleanup_crit_edge, %do.end23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i72, %do.end23 ], [ %call.i61, %do.end31 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lp8788_brightness_set(ptr noundef %led_cdev, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -96
  %isink_num = getelementptr i8, ptr %led_cdev, i32 400
  %0 = ptrtoint ptr %isink_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %isink_num, align 4
  %lock = getelementptr i8, ptr %led_cdev, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %switch = icmp ult i32 %1, 3
  br i1 %switch, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %arrayidx = getelementptr [3 x i8], ptr @lp8788_pwm_addr, i32 0, i32 %1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = trunc i32 %val to i8
  %call = tail call i32 @lp8788_write_byte(ptr noundef %3, i8 noundef zeroext %5, i8 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp3.not = icmp ne i32 %val, 0
  %cond = zext i1 %cmp3.not to i32
  %on = getelementptr i8, ptr %led_cdev, i32 404
  %6 = ptrtoint ptr %on to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %on, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %cond)
  %cmp5.not = icmp eq i32 %7, %cond
  br i1 %cmp5.not, label %sw.epilog.cleanup_crit_edge, label %if.then7

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then7:                                         ; preds = %sw.epilog
  %shl.i = shl nuw nsw i32 1, %1
  %conv.i = trunc i32 %shl.i to i8
  %shl1.i = shl nuw nsw i32 %cond, %1
  %conv2.i = trunc i32 %shl1.i to i8
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call i32 @lp8788_update_bits(ptr noundef %9, i8 noundef zeroext -103, i8 noundef zeroext %conv.i, i8 noundef zeroext %conv2.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %on to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond, ptr %on, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then7.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %sw.bb.cleanup_crit_edge ], [ %call, %sw.epilog.cleanup_crit_edge ], [ %call.i, %if.then7.cleanup_crit_edge ], [ 0, %if.then.i ]
  tail call void @mutex_unlock(ptr noundef %lock) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lp8788_write_byte(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lp8788_update_bits(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !35, !37, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__initcall__kmod_leds_lp8788__223_166_lp8788_led_driver_init6, !1, !"__initcall__kmod_leds_lp8788__223_166_lp8788_led_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-lp8788.c", i32 166, i32 1}
!2 = !{ptr @__exitcall_lp8788_led_driver_exit, !1, !"__exitcall_lp8788_led_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description224, !4, !"__UNIQUE_ID_description224", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-lp8788.c", i32 168, i32 1}
!5 = !{ptr @__UNIQUE_ID_author225, !6, !"__UNIQUE_ID_author225", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-lp8788.c", i32 169, i32 1}
!7 = !{ptr @__UNIQUE_ID_file226, !8, !"__UNIQUE_ID_file226", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-lp8788.c", i32 170, i32 1}
!9 = !{ptr @__UNIQUE_ID_license227, !8, !"__UNIQUE_ID_license227", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias228, !11, !"__UNIQUE_ID_alias228", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-lp8788.c", i32 171, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-lp8788.c", i32 163, i32 11}
!14 = !{ptr @lp8788_led_driver, !15, !"lp8788_led_driver", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-lp8788.c", i32 160, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/leds/leds-lp8788.c", i32 139, i32 23}
!18 = !{ptr @lp8788_led_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/leds/leds-lp8788.c", i32 143, i32 2}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/leds/leds-lp8788.c", i32 147, i32 3}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @lp8788_led_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @lp8788_led_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/leds/leds-lp8788.c", i32 153, i32 3}
!31 = !{ptr @lp8788_led_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @lp8788_led_probe._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @lp8788_pwm_addr, !34, !"lp8788_pwm_addr", i1 false, i1 false}
!34 = !{!"../include/linux/mfd/lp8788-isink.h", i32 42, i32 17}
!35 = distinct !{null, !36, !"default_led_config", i1 false, i1 false}
!36 = !{!"../drivers/leds/leds-lp8788.c", i32 36, i32 33}
!37 = !{ptr @lp8788_iout_addr, !38, !"lp8788_iout_addr", i1 false, i1 false}
!38 = !{!"../include/linux/mfd/lp8788-isink.h", i32 30, i32 17}
!39 = !{ptr @lp8788_iout_mask, !40, !"lp8788_iout_mask", i1 false, i1 false}
!40 = !{!"../include/linux/mfd/lp8788-isink.h", i32 36, i32 17}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
