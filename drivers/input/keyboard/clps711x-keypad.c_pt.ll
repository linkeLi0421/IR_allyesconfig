; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/clps711x-keypad.c_pt.bc'
source_filename = "../drivers/input/keyboard/clps711x-keypad.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.clps711x_keypad_data = type { ptr, i32, i32, ptr }
%struct.clps711x_gpio_data = type { ptr, [1 x i32] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_clps711x_keypad__223_181_clps711x_keypad_driver_init6 = internal global ptr @clps711x_keypad_driver_init, section ".initcall6.init", align 4
@clps711x_keypad_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @clps711x_keypad_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @clps711x_keypad_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_clps711x_keypad_driver_exit = internal global ptr @clps711x_keypad_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author224 = internal constant [59 x i8] c"clps711x_keypad.author=Alexander Shiyan <shc_work@mail.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_description225 = internal constant [64 x i8] c"clps711x_keypad.description=Cirrus Logic CLPS711X Keypad driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file226 = internal constant [60 x i8] c"clps711x_keypad.file=drivers/input/keyboard/clps711x-keypad\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [28 x i8] c"clps711x_keypad.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clps711x-keypad\00", [16 x i8] zeroinitializer }, align 32
@clps711x_keypad_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cirrus,ep7209-keypad\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cirrus,ep7209-syscon1\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"row-gpios\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"row\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"poll-interval\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"autorepeat\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"#gpio-cells\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/input/keyboard/clps711x-keypad.c\00", [55 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant [23 x i8] c"clps711x_keypad_driver\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 174, i32 31 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 176, i32 12 }
@___asan_gen_.14 = private unnamed_addr constant [25 x i8] c"clps711x_keypad_of_match\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 168, i32 34 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 99, i32 38 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 103, i32 44 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 118, i32 42 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 123, i32 33 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 147, i32 32 }
@___asan_gen_.33 = private unnamed_addr constant [27 x i8] c"../include/linux/of_gpio.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 104, i32 50 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [44 x i8] c"../drivers/input/keyboard/clps711x-keypad.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 53, i32 5 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_license227, ptr @__exitcall_clps711x_keypad_driver_exit, ptr @__initcall__kmod_clps711x_keypad__223_181_clps711x_keypad_driver_init6, ptr @clps711x_keypad_driver_exit, ptr @clps711x_keypad_driver, ptr @.str, ptr @clps711x_keypad_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clps711x_keypad_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clps711x_keypad_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @clps711x_keypad_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @clps711x_keypad_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @clps711x_keypad_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @clps711x_keypad_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clps711x_keypad_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %poll_interval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poll_interval) #5
  %2 = ptrtoint ptr %poll_interval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %poll_interval, align 4, !annotation !39
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 16, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup61_crit_edge, label %if.end

entry.cleanup61_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup61

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.1) #5
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call2 to i32
  br label %cleanup61

if.end8:                                          ; preds = %if.end
  %call.i115 = tail call i32 @of_count_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6) #5
  %row_count = getelementptr inbounds %struct.clps711x_keypad_data, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %row_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call.i115, ptr %row_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i115)
  %cmp = icmp slt i32 %call.i115, 1
  br i1 %cmp, label %if.end8.cleanup61_crit_edge, label %if.end12

if.end8.cleanup61_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup61

if.end12:                                         ; preds = %if.end8
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i115, i32 8) #5
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !40

devm_kcalloc.exit.thread:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %gpio_data120 = getelementptr inbounds %struct.clps711x_keypad_data, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %gpio_data120 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %gpio_data120, align 4
  br label %cleanup61

devm_kcalloc.exit:                                ; preds = %if.end12
  %9 = extractvalue { i32, i1 } %6, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %9, i32 noundef 3520) #5
  %gpio_data = getelementptr inbounds %struct.clps711x_keypad_data, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %gpio_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5.i.i, ptr %gpio_data, align 4
  %tobool16.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool16.not, label %devm_kcalloc.exit.cleanup61_crit_edge, label %if.end18

devm_kcalloc.exit.cleanup61_crit_edge:            ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup61

if.end18:                                         ; preds = %devm_kcalloc.exit
  %row_shift = getelementptr inbounds %struct.clps711x_keypad_data, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %row_shift to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %row_shift, align 4
  %12 = ptrtoint ptr %row_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %row_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp21123 = icmp sgt i32 %13, 0
  br i1 %cmp21123, label %if.end18.for.body_crit_edge, label %if.end18.for.end_crit_edge

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0124, 1
  %14 = ptrtoint ptr %row_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %row_count, align 4
  %cmp21 = icmp slt i32 %inc, %15
  br i1 %cmp21, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end18.for.body_crit_edge
  %i.0124 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end18.for.body_crit_edge ]
  %16 = ptrtoint ptr %gpio_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gpio_data, align 4
  %arrayidx = getelementptr %struct.clps711x_gpio_data, ptr %17, i32 %i.0124
  %call23 = tail call ptr @devm_gpiod_get_index(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef %i.0124, i32 noundef 1) #5
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call23, ptr %arrayidx, align 4
  %cmp.i116 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116, label %cleanup.thread, label %for.cond

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %call23 to i32
  br label %cleanup61

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end18.for.end_crit_edge
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %poll_interval, i32 noundef 1, i32 noundef 0) #5
  %20 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool31.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool31.not, label %if.end33, label %for.end.cleanup61_crit_edge

for.end.cleanup61_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup61

if.end33:                                         ; preds = %for.end
  %call34 = call ptr @devm_input_allocate_device(ptr noundef %dev1) #5
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.end33.cleanup61_crit_edge, label %if.end37

if.end33.cleanup61_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup61

if.end37:                                         ; preds = %if.end33
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call34, i32 0, i32 40, i32 8
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %22 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev, align 8
  %24 = ptrtoint ptr %call34 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %call34, align 8
  %parent = getelementptr inbounds %struct.input_dev, ptr %call34, i32 0, i32 40, i32 1
  %25 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev1, ptr %parent, align 8
  %id = getelementptr inbounds %struct.input_dev, ptr %call34, i32 0, i32 3
  %26 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 25, ptr %id, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call34, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %vendor, align 2
  %product = getelementptr inbounds %struct.input_dev, ptr %call34, i32 0, i32 3, i32 2
  %28 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %product, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %call34, i32 0, i32 3, i32 3
  %29 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 256, ptr %version, align 2
  %30 = ptrtoint ptr %row_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %row_count, align 4
  %call44 = call i32 @matrix_keypad_build_keymap(ptr noundef null, ptr noundef null, i32 noundef %31, i32 noundef 8, ptr noundef null, ptr noundef nonnull %call34) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end37.cleanup61_crit_edge

if.end37.cleanup61_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup61

if.end47:                                         ; preds = %if.end37
  call void @input_set_capability(ptr noundef nonnull %call34, i32 noundef 4, i32 noundef 4) #5
  %call.i117 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef null) #5
  %tobool.i.not = icmp eq ptr %call.i117, null
  br i1 %tobool.i.not, label %if.end47.if.end50_crit_edge, label %if.then49

if.end47.if.end50_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call34, i32 0, i32 5
  %32 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %evbit, align 4
  %or.i = or i32 %33, 1048576
  store i32 %or.i, ptr %evbit, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end47.if.end50_crit_edge
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 4
  %call.i118 = call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 0, i32 noundef 15, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call53 = call i32 @input_setup_polling(ptr noundef nonnull %call34, ptr noundef nonnull @clps711x_keypad_poll) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end50.cleanup61_crit_edge

if.end50.cleanup61_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup61

if.end56:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %poll_interval to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %poll_interval, align 4
  call void @input_set_poll_interval(ptr noundef nonnull %call34, i32 noundef %37) #5
  %call57 = call i32 @input_register_device(ptr noundef nonnull %call34) #5
  br label %cleanup61

cleanup61:                                        ; preds = %if.end56, %if.end50.cleanup61_crit_edge, %if.end37.cleanup61_crit_edge, %if.end33.cleanup61_crit_edge, %for.end.cleanup61_crit_edge, %cleanup.thread, %devm_kcalloc.exit.cleanup61_crit_edge, %devm_kcalloc.exit.thread, %if.end8.cleanup61_crit_edge, %if.then5, %entry.cleanup61_crit_edge
  %retval.2 = phi i32 [ %4, %if.then5 ], [ -12, %entry.cleanup61_crit_edge ], [ -22, %if.end8.cleanup61_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup61_crit_edge ], [ %20, %for.end.cleanup61_crit_edge ], [ -12, %if.end33.cleanup61_crit_edge ], [ %call44, %if.end37.cleanup61_crit_edge ], [ %call53, %if.end50.cleanup61_crit_edge ], [ %call57, %if.end56 ], [ -12, %devm_kcalloc.exit.thread ], [ %19, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poll_interval) #5
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matrix_keypad_build_keymap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_setup_polling(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clps711x_keypad_poll(ptr noundef %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %keycode = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 17
  %0 = ptrtoint ptr %keycode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %keycode, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %row_count = getelementptr inbounds %struct.clps711x_keypad_data, ptr %3, i32 0, i32 1
  %gpio_data = getelementptr inbounds %struct.clps711x_keypad_data, ptr %3, i32 0, i32 3
  %row_shift = getelementptr inbounds %struct.clps711x_keypad_data, ptr %3, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry
  %col.083 = phi i32 [ 0, %entry ], [ %inc40, %for.end.for.body_crit_edge ]
  %sync.0.off082 = phi i1 [ false, %entry ], [ %sync.1.off0.lcssa, %for.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add = add nuw nsw i32 %col.083, 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef 15, i32 noundef %add, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %6 = ptrtoint ptr %row_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %row_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp378 = icmp sgt i32 %7, 0
  br i1 %cmp378, label %for.body4.lr.ph, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body4.lr.ph:                                  ; preds = %for.body
  %div3.i = lshr i32 %col.083, 5
  br label %for.body4

for.body4:                                        ; preds = %if.end36.for.body4_crit_edge, %for.body4.lr.ph
  %row.080 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc, %if.end36.for.body4_crit_edge ]
  %sync.1.off079 = phi i1 [ %sync.0.off082, %for.body4.lr.ph ], [ %sync.2.off0, %if.end36.for.body4_crit_edge ]
  %8 = ptrtoint ptr %gpio_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpio_data, align 4
  %arrayidx = getelementptr %struct.clps711x_gpio_data, ptr %9, i32 %row.080
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %for.body4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %call5 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool = icmp ne i32 %call5, 0
  tail call void @__might_resched(ptr noundef nonnull @.str.7, i32 noundef 53, i32 noundef 0) #5
  %call.i75 = tail call i32 @__cond_resched() #5
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %call8 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9 = icmp eq i32 %call8, 0
  %cmp14.not = xor i1 %tobool, %tobool9
  br i1 %cmp14.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end:                                           ; preds = %do.body
  %conv.le = zext i1 %tobool to i32
  %last_state = getelementptr %struct.clps711x_gpio_data, ptr %9, i32 %row.080, i32 1
  %arrayidx.i = getelementptr i32, ptr %last_state, i32 %div3.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx.i, align 4
  %shr.i = lshr i32 %15, %col.083
  %and1.i = and i32 %shr.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i, i32 %conv.le)
  %cmp19.not = icmp eq i32 %and1.i, %conv.le
  br i1 %cmp19.not, label %do.end.if.end36_crit_edge, label %if.then

do.end.if.end36_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then:                                          ; preds = %do.end
  %16 = ptrtoint ptr %row_shift to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %row_shift, align 4
  %shl = shl i32 %row.080, %17
  %add21 = add i32 %shl, %col.083
  br i1 %tobool, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_set_bit(i32 noundef %col.083, ptr noundef %last_state) #5
  tail call void @input_event(ptr noundef %input, i32 noundef 4, i32 noundef 4, i32 noundef %add21) #5
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_clear_bit(i32 noundef %col.083, ptr noundef %last_state) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then23
  %arrayidx28 = getelementptr i16, ptr %1, i32 %add21
  %18 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx28, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool29.not = icmp eq i16 %19, 0
  br i1 %tobool29.not, label %if.end.if.end36_crit_edge, label %if.then30

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv32 = zext i16 %19 to i32
  tail call void @input_event(ptr noundef %input, i32 noundef 1, i32 noundef %conv32, i32 noundef %conv.le) #5
  br label %if.end36

if.end36:                                         ; preds = %if.then30, %if.end.if.end36_crit_edge, %do.end.if.end36_crit_edge
  %sync.2.off0 = phi i1 [ %sync.1.off079, %do.end.if.end36_crit_edge ], [ true, %if.then30 ], [ true, %if.end.if.end36_crit_edge ]
  %inc = add nuw nsw i32 %row.080, 1
  %20 = ptrtoint ptr %row_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %row_count, align 4
  %cmp3 = icmp slt i32 %inc, %21
  br i1 %cmp3, label %if.end36.for.body4_crit_edge, label %if.end36.for.end_crit_edge

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end36.for.body4_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body4

for.end:                                          ; preds = %if.end36.for.end_crit_edge, %for.body.for.end_crit_edge
  %sync.1.off0.lcssa = phi i1 [ %sync.0.off082, %for.body.for.end_crit_edge ], [ %sync.2.off0, %if.end36.for.end_crit_edge ]
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %call.i76 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 0, i32 noundef 15, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %inc40 = add nuw nsw i32 %col.083, 1
  %exitcond.not = icmp eq i32 %inc40, 8
  br i1 %exitcond.not, label %for.end41, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end41:                                        ; preds = %for.end
  br i1 %sync.1.off0.lcssa, label %if.then43, label %for.end41.if.end44_crit_edge

for.end41.if.end44_crit_edge:                     ; preds = %for.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then43:                                        ; preds = %for.end41
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @input_event(ptr noundef %input, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %for.end41.if.end44_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_poll_interval(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__initcall__kmod_clps711x_keypad__223_181_clps711x_keypad_driver_init6, !1, !"__initcall__kmod_clps711x_keypad__223_181_clps711x_keypad_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/clps711x-keypad.c", i32 181, i32 1}
!2 = !{ptr @__exitcall_clps711x_keypad_driver_exit, !1, !"__exitcall_clps711x_keypad_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author224, !4, !"__UNIQUE_ID_author224", i1 false, i1 false}
!4 = !{!"../drivers/input/keyboard/clps711x-keypad.c", i32 183, i32 1}
!5 = !{ptr @__UNIQUE_ID_description225, !6, !"__UNIQUE_ID_description225", i1 false, i1 false}
!6 = !{!"../drivers/input/keyboard/clps711x-keypad.c", i32 184, i32 1}
!7 = !{ptr @__UNIQUE_ID_file226, !8, !"__UNIQUE_ID_file226", i1 false, i1 false}
!8 = !{!"../drivers/input/keyboard/clps711x-keypad.c", i32 185, i32 1}
!9 = !{ptr @__UNIQUE_ID_license227, !8, !"__UNIQUE_ID_license227", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/keyboard/clps711x-keypad.c", i32 176, i32 12}
!12 = !{ptr @clps711x_keypad_driver, !13, !"clps711x_keypad_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/keyboard/clps711x-keypad.c", i32 174, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/keyboard/clps711x-keypad.c", i32 99, i32 38}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/keyboard/clps711x-keypad.c", i32 103, i32 44}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/input/keyboard/clps711x-keypad.c", i32 118, i32 42}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/input/keyboard/clps711x-keypad.c", i32 123, i32 33}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/keyboard/clps711x-keypad.c", i32 147, i32 32}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/of_gpio.h", i32 104, i32 50}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/keyboard/clps711x-keypad.c", i32 53, i32 5}
!28 = !{ptr @clps711x_keypad_of_match, !29, !"clps711x_keypad_of_match", i1 false, i1 false}
!29 = !{!"../drivers/input/keyboard/clps711x-keypad.c", i32 168, i32 34}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"auto-init"}
!40 = !{!"branch_weights", i32 1, i32 2000}
