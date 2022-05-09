; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-ot200.c_pt.bc'
source_filename = "../drivers/leds/leds-ot200.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ot200_led = type { %struct.led_classdev, ptr, i32, i8 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__initcall__kmod_leds_ot200__183_147_ot200_led_driver_init6 = internal global ptr @ot200_led_driver_init, section ".initcall6.init", align 4
@ot200_led_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ot200_led_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ot200_led_driver_exit = internal global ptr @ot200_led_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [63 x i8] c"leds_ot200.author=Sebastian A. Siewior <bigeasy@linutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description185 = internal constant [40 x i8] c"leds_ot200.description=ot200 LED driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [40 x i8] c"leds_ot200.file=drivers/leds/leds-ot200\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [23 x i8] c"leds_ot200.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias188 = internal constant [37 x i8] c"leds_ot200.alias=platform:leds-ot200\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"leds-ot200\00", [21 x i8] zeroinitializer }, align 32
@leds = internal global { [10 x %struct.ot200_led], [1032 x i8] } { [10 x %struct.ot200_led] [%struct.ot200_led { %struct.led_classdev zeroinitializer, ptr @.str.1, i32 90, i8 1 }, %struct.ot200_led { %struct.led_classdev zeroinitializer, ptr @.str.2, i32 90, i8 2 }, %struct.ot200_led { %struct.led_classdev zeroinitializer, ptr @.str.3, i32 90, i8 4 }, %struct.ot200_led { %struct.led_classdev zeroinitializer, ptr @.str.4, i32 73, i8 64 }, %struct.ot200_led { %struct.led_classdev zeroinitializer, ptr @.str.5, i32 73, i8 32 }, %struct.ot200_led { %struct.led_classdev zeroinitializer, ptr @.str.6, i32 73, i8 16 }, %struct.ot200_led { %struct.led_classdev zeroinitializer, ptr @.str.7, i32 73, i8 8 }, %struct.ot200_led { %struct.led_classdev zeroinitializer, ptr @.str.8, i32 73, i8 4 }, %struct.ot200_led { %struct.led_classdev zeroinitializer, ptr @.str.9, i32 73, i8 2 }, %struct.ot200_led { %struct.led_classdev zeroinitializer, ptr @.str.10, i32 73, i8 1 }], [1032 x i8] zeroinitializer }, align 32
@leds_front = internal global { i8, [31 x i8] } zeroinitializer, align 32
@leds_back = internal global { i8, [31 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"led_run\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"led_init\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"led_err\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"led_1\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"led_2\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"led_3\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"led_4\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"led_5\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"led_6\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"led_7\00", [26 x i8] zeroinitializer }, align 32
@value_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"value_lock\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 73, i64 90]
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"ot200_led_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 140, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 143, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [5 x i8] c"leds\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 30, i32 25 }
@___asan_gen_.21 = private unnamed_addr constant [11 x i8] c"leds_front\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 90, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant [10 x i8] c"leds_back\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 89, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 32, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 37, i32 11 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 42, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 47, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 52, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 57, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 62, i32 11 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 67, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 72, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 77, i32 11 }
@___asan_gen_.57 = private unnamed_addr constant [11 x i8] c"value_lock\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [29 x i8] c"../drivers/leds/leds-ot200.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 83, i32 8 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_alias188, ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_ot200_led_driver_exit, ptr @__initcall__kmod_leds_ot200__183_147_ot200_led_driver_init6, ptr @ot200_led_driver_exit, ptr @ot200_led_driver, ptr @.str, ptr @leds, ptr @leds_front, ptr @leds_back, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @value_lock, ptr @.str.11], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ot200_led_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @leds to i32), i32 4120, i32 5152, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @leds_front to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @leds_back to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @value_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ot200_led_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ot200_led_driver, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ot200_led_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @ot200_led_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ot200_led_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %0 = load ptr, ptr getelementptr inbounds ([10 x %struct.ot200_led], ptr @leds, i32 0, i32 0, i32 1), align 4
  store ptr %0, ptr @leds, align 4
  store ptr @ot200_led_brightness_set, ptr getelementptr inbounds ([10 x %struct.ot200_led], ptr @leds, i32 0, i32 0, i32 0, i32 5), align 4
  %call.i = tail call i32 @devm_led_classdev_register_ext(ptr noundef %dev, ptr noundef nonnull @leds, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7 = icmp slt i32 %call.i, 0
  br i1 %cmp7, label %entry.cleanup_crit_edge, label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond:                                         ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds ([10 x %struct.ot200_led], ptr @leds, i32 0, i32 1, i32 1), align 4
  store ptr %1, ptr getelementptr inbounds ([10 x %struct.ot200_led], ptr @leds, i32 0, i32 1), align 4
  store ptr @ot200_led_brightness_set, ptr getelementptr inbounds ([10 x %struct.ot200_led], ptr @leds, i32 0, i32 1, i32 0, i32 5), align 4
  %call.i.1 = tail call i32 @devm_led_classdev_register_ext(ptr noundef %dev, ptr noundef getelementptr inbounds ([10 x %struct.ot200_led], ptr @leds, i32 0, i32 1), ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp7.1 = icmp slt i32 %call.i.1, 0
  br i1 %cmp7.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %2 = load ptr, ptr getelementptr inbounds ([10 x %struct.ot200_led], ptr @leds, i32 0, i32 2, i32 1), align 4
  store ptr %2, ptr getelementptr inbounds ([10 x %struct.ot200_led], ptr @leds, i32 0, i32 2), align 4
  store ptr @ot200_led_brightness_set, ptr getelementptr inbounds ([10 x %struct.ot200_led], ptr @leds, i32 0, i32 2, i32 0, i32 5), align 4
  %call.i.2 = tail call i32 @devm_led_classdev_register_ext(ptr noundef %dev, ptr noundef getelementptr inbounds ([10 x %struct.ot200_led], ptr @leds, i32 0, i32 2), ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %cmp7.2 = icmp slt i32 %call.i.2, 0
  br i1 %cmp7.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %3 = load ptr, ptr getelementptr inbounds ([10 x %struct.ot200_led], ptr @leds, i32 0, i32 3, i32 1), align 4
  store ptr %3, ptr getelementptr inbounds ([10 x %struct.ot200_led], ptr @leds, i32 0, i32 3), align 4
  store ptr @ot200_led_brightness_set, ptr getelementptr inbounds ([10 x %struct.ot200_led], ptr @leds, i32 0, i32 3, i32 0, i32 5), align 4
  %call.i.3 = tail call i32 @devm_led_classdev_register_ext(ptr noundef %dev, ptr noundef getelementptr inbounds ([10 x %struct.ot200_led], ptr @leds, i32 0, i32 3), ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %cmp7.3 = icmp slt i32 %call.i.3, 0
  br i1 %cmp7.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %4 = load ptr, ptr getelementptr inbounds ([10 x %struct.ot200_led], ptr @leds, i32 0, i32 4, i32 1), align 4
  store ptr %4, ptr getelementptr inbounds ([10 x %struct.ot200_led], ptr @leds, i32 0, i32 4), align 4
  store ptr @ot200_led_brightness_set, ptr getelementptr inbounds ([10 x %struct.ot200_led], ptr @leds, i32 0, i32 4, i32 0, i32 5), align 4
  %call.i.4 = tail call i32 @devm_led_classdev_register_ext(ptr noundef %dev, ptr noundef getelementptr inbounds ([10 x %struct.ot200_led], ptr @leds, i32 0, i32 4), ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4)
  %cmp7.4 = icmp slt i32 %call.i.4, 0
  br i1 %cmp7.4, label %for.cond.3.cleanup_crit_edge, label %for.cond.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %5 = load ptr, ptr getelementptr inbounds ([10 x %struct.ot200_led], ptr @leds, i32 0, i32 5, i32 1), align 4
  store ptr %5, ptr getelementptr inbounds ([10 x %struct.ot200_led], ptr @leds, i32 0, i32 5), align 4
  store ptr @ot200_led_brightness_set, ptr getelementptr inbounds ([10 x %struct.ot200_led], ptr @leds, i32 0, i32 5, i32 0, i32 5), align 4
  %call.i.5 = tail call i32 @devm_led_classdev_register_ext(ptr noundef %dev, ptr noundef getelementptr inbounds ([10 x %struct.ot200_led], ptr @leds, i32 0, i32 5), ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.5)
  %cmp7.5 = icmp slt i32 %call.i.5, 0
  br i1 %cmp7.5, label %for.cond.4.cleanup_crit_edge, label %for.cond.5

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  %6 = load ptr, ptr getelementptr inbounds ([10 x %struct.ot200_led], ptr @leds, i32 0, i32 6, i32 1), align 4
  store ptr %6, ptr getelementptr inbounds ([10 x %struct.ot200_led], ptr @leds, i32 0, i32 6), align 4
  store ptr @ot200_led_brightness_set, ptr getelementptr inbounds ([10 x %struct.ot200_led], ptr @leds, i32 0, i32 6, i32 0, i32 5), align 4
  %call.i.6 = tail call i32 @devm_led_classdev_register_ext(ptr noundef %dev, ptr noundef getelementptr inbounds ([10 x %struct.ot200_led], ptr @leds, i32 0, i32 6), ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.6)
  %cmp7.6 = icmp slt i32 %call.i.6, 0
  br i1 %cmp7.6, label %for.cond.5.cleanup_crit_edge, label %for.cond.6

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.6:                                       ; preds = %for.cond.5
  %7 = load ptr, ptr getelementptr inbounds ([10 x %struct.ot200_led], ptr @leds, i32 0, i32 7, i32 1), align 4
  store ptr %7, ptr getelementptr inbounds ([10 x %struct.ot200_led], ptr @leds, i32 0, i32 7), align 4
  store ptr @ot200_led_brightness_set, ptr getelementptr inbounds ([10 x %struct.ot200_led], ptr @leds, i32 0, i32 7, i32 0, i32 5), align 4
  %call.i.7 = tail call i32 @devm_led_classdev_register_ext(ptr noundef %dev, ptr noundef getelementptr inbounds ([10 x %struct.ot200_led], ptr @leds, i32 0, i32 7), ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.7)
  %cmp7.7 = icmp slt i32 %call.i.7, 0
  br i1 %cmp7.7, label %for.cond.6.cleanup_crit_edge, label %for.cond.7

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.7:                                       ; preds = %for.cond.6
  %8 = load ptr, ptr getelementptr inbounds ([10 x %struct.ot200_led], ptr @leds, i32 0, i32 8, i32 1), align 4
  store ptr %8, ptr getelementptr inbounds ([10 x %struct.ot200_led], ptr @leds, i32 0, i32 8), align 4
  store ptr @ot200_led_brightness_set, ptr getelementptr inbounds ([10 x %struct.ot200_led], ptr @leds, i32 0, i32 8, i32 0, i32 5), align 4
  %call.i.8 = tail call i32 @devm_led_classdev_register_ext(ptr noundef %dev, ptr noundef getelementptr inbounds ([10 x %struct.ot200_led], ptr @leds, i32 0, i32 8), ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.8)
  %cmp7.8 = icmp slt i32 %call.i.8, 0
  br i1 %cmp7.8, label %for.cond.7.cleanup_crit_edge, label %for.cond.8

for.cond.7.cleanup_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.8:                                       ; preds = %for.cond.7
  %9 = load ptr, ptr getelementptr inbounds ([10 x %struct.ot200_led], ptr @leds, i32 0, i32 9, i32 1), align 4
  store ptr %9, ptr getelementptr inbounds ([10 x %struct.ot200_led], ptr @leds, i32 0, i32 9), align 4
  store ptr @ot200_led_brightness_set, ptr getelementptr inbounds ([10 x %struct.ot200_led], ptr @leds, i32 0, i32 9, i32 0, i32 5), align 4
  %call.i.9 = tail call i32 @devm_led_classdev_register_ext(ptr noundef %dev, ptr noundef getelementptr inbounds ([10 x %struct.ot200_led], ptr @leds, i32 0, i32 9), ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.9)
  %cmp7.9 = icmp slt i32 %call.i.9, 0
  br i1 %cmp7.9, label %for.cond.8.cleanup_crit_edge, label %for.cond.9

for.cond.8.cleanup_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.9:                                       ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #5
  store i8 0, ptr @leds_front, align 1
  store i8 2, ptr @leds_back, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !54
  tail call void @arm_heavy_mb() #3
  %10 = load i8, ptr @leds_front, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874295 to ptr), i8 %10) #3, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !56
  tail call void @arm_heavy_mb() #3
  %11 = load i8, ptr @leds_back, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874278 to ptr), i8 %11) #3, !srcloc !55
  br label %cleanup

cleanup:                                          ; preds = %for.cond.9, %for.cond.8.cleanup_crit_edge, %for.cond.7.cleanup_crit_edge, %for.cond.6.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.cond.9 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i.1, %for.cond.cleanup_crit_edge ], [ %call.i.2, %for.cond.1.cleanup_crit_edge ], [ %call.i.3, %for.cond.2.cleanup_crit_edge ], [ %call.i.4, %for.cond.3.cleanup_crit_edge ], [ %call.i.5, %for.cond.4.cleanup_crit_edge ], [ %call.i.6, %for.cond.5.cleanup_crit_edge ], [ %call.i.7, %for.cond.6.cleanup_crit_edge ], [ %call.i.8, %for.cond.7.cleanup_crit_edge ], [ %call.i.9, %for.cond.8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ot200_led_brightness_set(ptr nocapture noundef readonly %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @value_lock) #3
  %port = getelementptr inbounds %struct.ot200_led, ptr %led_cdev, i32 0, i32 2
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.body13 [
    i32 73, label %entry.if.end19_crit_edge
    i32 90, label %if.then11
  ]

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

do.body13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/leds/leds-ot200.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 106, 0\0A.popsection", ""() #3, !srcloc !57
  unreachable

if.end19:                                         ; preds = %if.then11, %entry.if.end19_crit_edge
  %val.0 = phi ptr [ @leds_back, %if.then11 ], [ @leds_front, %entry.if.end19_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp20 = icmp eq i32 %value, 0
  %mask = getelementptr inbounds %struct.ot200_led, ptr %led_cdev, i32 0, i32 3
  %3 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %mask, align 4
  br i1 %cmp20, label %if.then22, label %if.else26

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #5
  %neg = xor i8 %4, -1
  %5 = ptrtoint ptr %val.0 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val.0, align 1
  %and = and i8 %6, %neg
  br label %do.body32

if.else26:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %val.0 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val.0, align 1
  %or44 = or i8 %8, %4
  br label %do.body32

do.body32:                                        ; preds = %if.else26, %if.then22
  %storemerge = phi i8 [ %or44, %if.else26 ], [ %and, %if.then22 ]
  %9 = ptrtoint ptr %val.0 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %storemerge, ptr %val.0, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !58
  tail call void @arm_heavy_mb() #3
  %10 = ptrtoint ptr %val.0 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %val.0, align 1
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %and36 = and i32 %13, 1048575
  %add = or i32 %and36, -18874368
  %14 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %11) #3, !srcloc !55
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @value_lock, i32 noundef %call3) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__initcall__kmod_leds_ot200__183_147_ot200_led_driver_init6, !1, !"__initcall__kmod_leds_ot200__183_147_ot200_led_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-ot200.c", i32 147, i32 1}
!2 = !{ptr @__exitcall_ot200_led_driver_exit, !1, !"__exitcall_ot200_led_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author184, !4, !"__UNIQUE_ID_author184", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-ot200.c", i32 149, i32 1}
!5 = !{ptr @__UNIQUE_ID_description185, !6, !"__UNIQUE_ID_description185", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-ot200.c", i32 150, i32 1}
!7 = !{ptr @__UNIQUE_ID_file186, !8, !"__UNIQUE_ID_file186", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-ot200.c", i32 151, i32 1}
!9 = !{ptr @__UNIQUE_ID_license187, !8, !"__UNIQUE_ID_license187", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias188, !11, !"__UNIQUE_ID_alias188", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-ot200.c", i32 152, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-ot200.c", i32 143, i32 11}
!14 = !{ptr @ot200_led_driver, !15, !"ot200_led_driver", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-ot200.c", i32 140, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/leds/leds-ot200.c", i32 32, i32 11}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/leds/leds-ot200.c", i32 37, i32 11}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/leds/leds-ot200.c", i32 42, i32 11}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/leds/leds-ot200.c", i32 47, i32 11}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/leds/leds-ot200.c", i32 52, i32 11}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/leds/leds-ot200.c", i32 57, i32 11}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/leds/leds-ot200.c", i32 62, i32 11}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/leds/leds-ot200.c", i32 67, i32 11}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/leds/leds-ot200.c", i32 72, i32 11}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/leds/leds-ot200.c", i32 77, i32 11}
!36 = !{ptr @leds, !37, !"leds", i1 false, i1 false}
!37 = !{!"../drivers/leds/leds-ot200.c", i32 30, i32 25}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/leds/leds-ot200.c", i32 83, i32 8}
!40 = !{ptr @value_lock, !39, !"value_lock", i1 false, i1 false}
!41 = !{ptr @leds_front, !42, !"leds_front", i1 false, i1 false}
!42 = !{!"../drivers/leds/leds-ot200.c", i32 90, i32 11}
!43 = !{ptr @leds_back, !44, !"leds_back", i1 false, i1 false}
!44 = !{!"../drivers/leds/leds-ot200.c", i32 89, i32 11}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i64 2152764294}
!55 = !{i64 5200869}
!56 = !{i64 2152764618}
!57 = !{i64 2152762114, i64 2152762604, i64 2152762151, i64 2152762207, i64 2152762241, i64 2152762265, i64 2152762306, i64 2152762327, i64 2152762355, i64 2152762389}
!58 = !{i64 2152763575}
