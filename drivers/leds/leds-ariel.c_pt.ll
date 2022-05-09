; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-ariel.c_pt.bc'
source_filename = "../drivers/leds/leds-ariel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ariel_led = type { ptr, i32, %struct.led_classdev }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@__initcall__kmod_leds_ariel__170_129_ariel_led_driver_init6 = internal global ptr @ariel_led_driver_init, section ".initcall6.init", align 4
@ariel_led_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ariel_led_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ariel_led_driver_exit = internal global ptr @ariel_led_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [50 x i8] c"leds_ariel.author=Lubomir Rintel <lkundrak@v3.sk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [57 x i8] c"leds_ariel.description=Dell Wyse 3020 Status LEDs Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [40 x i8] c"leds_ariel.file=drivers/leds/leds-ariel\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [32 x i8] c"leds_ariel.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dell-wyse-ariel-led\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ec_ram\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"blue:power\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"default-on\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"amber:status\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"green:status\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"ariel_led_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 123, i32 31 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 126, i32 11 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 90, i32 39 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 99, i32 26 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 100, i32 37 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 103, i32 26 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [29 x i8] c"../drivers/leds/leds-ariel.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 106, i32 26 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_ariel_led_driver_exit, ptr @__initcall__kmod_leds_ariel__170_129_ariel_led_driver_init6, ptr @ariel_led_driver_exit, ptr @ariel_led_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ariel_led_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ariel_led_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ariel_led_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ariel_led_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @ariel_led_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ariel_led_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call = tail call ptr @dev_get_regmap(ptr noundef %1, ptr noundef nonnull @.str.1) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1224, i32 noundef 3520) #4
  %tobool3.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %ec_index = getelementptr inbounds %struct.ariel_led, ptr %call5.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %ec_index to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %ec_index, align 4
  %led_cdev = getelementptr %struct.ariel_led, ptr %call5.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %led_cdev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.2, ptr %led_cdev, align 4
  %default_trigger = getelementptr inbounds %struct.ariel_led, ptr %call5.i.i, i32 0, i32 2, i32 14
  %4 = ptrtoint ptr %default_trigger to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.3, ptr %default_trigger, align 4
  %ec_index10 = getelementptr %struct.ariel_led, ptr %call5.i.i, i32 1, i32 1
  %5 = ptrtoint ptr %ec_index10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %ec_index10, align 4
  %led_cdev12 = getelementptr %struct.ariel_led, ptr %call5.i.i, i32 1, i32 2
  %6 = ptrtoint ptr %led_cdev12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.4, ptr %led_cdev12, align 4
  %ec_index15 = getelementptr %struct.ariel_led, ptr %call5.i.i, i32 2, i32 1
  %7 = ptrtoint ptr %ec_index15 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %ec_index15, align 4
  %led_cdev17 = getelementptr %struct.ariel_led, ptr %call5.i.i, i32 2, i32 2
  %8 = ptrtoint ptr %led_cdev17 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.5, ptr %led_cdev17, align 4
  %default_trigger21 = getelementptr %struct.ariel_led, ptr %call5.i.i, i32 2, i32 2, i32 14
  %9 = ptrtoint ptr %default_trigger21 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.3, ptr %default_trigger21, align 4
  %10 = ptrtoint ptr %call5.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %call5.i.i, align 4
  %brightness_get = getelementptr %struct.ariel_led, ptr %call5.i.i, i32 0, i32 2, i32 7
  %11 = ptrtoint ptr %brightness_get to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ariel_led_get, ptr %brightness_get, align 4
  %brightness_set = getelementptr %struct.ariel_led, ptr %call5.i.i, i32 0, i32 2, i32 5
  %12 = ptrtoint ptr %brightness_set to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ariel_led_set, ptr %brightness_set, align 4
  %blink_set = getelementptr %struct.ariel_led, ptr %call5.i.i, i32 0, i32 2, i32 8
  %13 = ptrtoint ptr %blink_set to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @ariel_blink_set, ptr %blink_set, align 4
  %call.i = tail call i32 @devm_led_classdev_register_ext(ptr noundef %dev1, ptr noundef %led_cdev, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool33.not = icmp eq i32 %call.i, 0
  br i1 %tobool33.not, label %for.cond, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond:                                         ; preds = %if.end5
  %arrayidx22.1 = getelementptr %struct.ariel_led, ptr %call5.i.i, i32 1
  %14 = ptrtoint ptr %arrayidx22.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %arrayidx22.1, align 4
  %brightness_get.1 = getelementptr %struct.ariel_led, ptr %call5.i.i, i32 1, i32 2, i32 7
  %15 = ptrtoint ptr %brightness_get.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ariel_led_get, ptr %brightness_get.1, align 4
  %brightness_set.1 = getelementptr %struct.ariel_led, ptr %call5.i.i, i32 1, i32 2, i32 5
  %16 = ptrtoint ptr %brightness_set.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ariel_led_set, ptr %brightness_set.1, align 4
  %blink_set.1 = getelementptr %struct.ariel_led, ptr %call5.i.i, i32 1, i32 2, i32 8
  %17 = ptrtoint ptr %blink_set.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ariel_blink_set, ptr %blink_set.1, align 4
  %call.i.1 = tail call i32 @devm_led_classdev_register_ext(ptr noundef %dev1, ptr noundef %led_cdev12, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool33.not.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool33.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx22.2 = getelementptr %struct.ariel_led, ptr %call5.i.i, i32 2
  %18 = ptrtoint ptr %arrayidx22.2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call, ptr %arrayidx22.2, align 4
  %brightness_get.2 = getelementptr %struct.ariel_led, ptr %call5.i.i, i32 2, i32 2, i32 7
  %19 = ptrtoint ptr %brightness_get.2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @ariel_led_get, ptr %brightness_get.2, align 4
  %brightness_set.2 = getelementptr %struct.ariel_led, ptr %call5.i.i, i32 2, i32 2, i32 5
  %20 = ptrtoint ptr %brightness_set.2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ariel_led_set, ptr %brightness_set.2, align 4
  %blink_set.2 = getelementptr %struct.ariel_led, ptr %call5.i.i, i32 2, i32 2, i32 8
  %21 = ptrtoint ptr %blink_set.2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @ariel_blink_set, ptr %blink_set.2, align 4
  %call.i.2 = tail call i32 @devm_led_classdev_register_ext(ptr noundef %dev1, ptr noundef %led_cdev17, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %for.cond.1, %for.cond.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call.i, %if.end5.cleanup_crit_edge ], [ %call.i.1, %for.cond.cleanup_crit_edge ], [ %call.i.2, %for.cond.1 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ariel_led_get(ptr nocapture noundef readonly %led_cdev) #2 align 64 {
entry:
  %led_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %led_status) #4
  %0 = ptrtoint ptr %led_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %led_status, align 4
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %ec_index = getelementptr i8, ptr %led_cdev, i32 -4
  %3 = ptrtoint ptr %ec_index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ec_index, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %led_status) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %led_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %led_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  %. = select i1 %cmp, i32 255, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %led_status) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ariel_led_set(ptr nocapture noundef readonly %led_cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %cmp = icmp ne i32 %brightness, 0
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %ec_index = getelementptr i8, ptr %led_cdev, i32 -4
  %2 = ptrtoint ptr %ec_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ec_index, align 4
  %. = zext i1 %cmp to i32
  %call3 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %3, i32 noundef %.) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ariel_blink_set(ptr nocapture noundef readonly %led_cdev, ptr nocapture noundef %delay_on, ptr nocapture noundef %delay_off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -8
  %0 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delay_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %2 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %delay_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  br i1 %cmp1, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.cleanup.sink.split_crit_edge

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else:                                          ; preds = %entry
  br i1 %cmp1, label %if.else.cleanup.sink.split_crit_edge, label %if.else9

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %delay_on to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 500, ptr %delay_on, align 4
  %5 = ptrtoint ptr %delay_off to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 500, ptr %delay_off, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else9, %if.else.cleanup.sink.split_crit_edge, %land.lhs.true.cleanup.sink.split_crit_edge
  %.sink25 = phi i32 [ 3, %if.else9 ], [ 0, %land.lhs.true.cleanup.sink.split_crit_edge ], [ 1, %if.else.cleanup.sink.split_crit_edge ]
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %ec_index = getelementptr i8, ptr %led_cdev, i32 -4
  %8 = ptrtoint ptr %ec_index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ec_index, align 4
  %call = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %9, i32 noundef %.sink25) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__initcall__kmod_leds_ariel__170_129_ariel_led_driver_init6, !1, !"__initcall__kmod_leds_ariel__170_129_ariel_led_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-ariel.c", i32 129, i32 1}
!2 = !{ptr @__exitcall_ariel_led_driver_exit, !1, !"__exitcall_ariel_led_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author171, !4, !"__UNIQUE_ID_author171", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-ariel.c", i32 131, i32 1}
!5 = !{ptr @__UNIQUE_ID_description172, !6, !"__UNIQUE_ID_description172", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-ariel.c", i32 132, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-ariel.c", i32 133, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-ariel.c", i32 126, i32 11}
!12 = !{ptr @ariel_led_driver, !13, !"ariel_led_driver", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-ariel.c", i32 123, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-ariel.c", i32 90, i32 39}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/leds/leds-ariel.c", i32 99, i32 26}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/leds/leds-ariel.c", i32 100, i32 37}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/leds/leds-ariel.c", i32 103, i32 26}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/leds/leds-ariel.c", i32 106, i32 26}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
