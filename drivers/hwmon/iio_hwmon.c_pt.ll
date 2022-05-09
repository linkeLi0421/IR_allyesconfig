; ModuleID = '/llk/IR_all_yes/drivers/hwmon/iio_hwmon.c_pt.bc'
source_filename = "../drivers/hwmon/iio_hwmon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.iio_hwmon_state = type { ptr, i32, %struct.attribute_group, [2 x ptr], ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_channel = type { ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }

@__initcall__kmod_iio_hwmon__183_180_iio_hwmon_driver_init6 = internal global ptr @iio_hwmon_driver_init, section ".initcall6.init", align 4
@iio_hwmon_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @iio_hwmon_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @iio_hwmon_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_iio_hwmon_driver_exit = internal global ptr @iio_hwmon_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [53 x i8] c"iio_hwmon.author=Jonathan Cameron <jic23@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description185 = internal constant [42 x i8] c"iio_hwmon.description=IIO to hwmon driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [39 x i8] c"iio_hwmon.file=drivers/hwmon/iio_hwmon\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [25 x i8] c"iio_hwmon.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iio_hwmon\00", [22 x i8] zeroinitializer }, align 32
@iio_hwmon_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"iio-hwmon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@iio_hwmon_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"temp\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"curr\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"humidity\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s%d_input\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pOFn\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 9, i64 18]
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"iio_hwmon_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 172, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 174, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant [19 x i8] c"iio_hwmon_of_match\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 166, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 107, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 115, i32 13 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 119, i32 13 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 123, i32 13 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 127, i32 13 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 131, i32 13 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 138, i32 14 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 153, i32 43 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [29 x i8] c"../drivers/hwmon/iio_hwmon.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 61, i32 22 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_iio_hwmon_driver_exit, ptr @__initcall__kmod_iio_hwmon__183_180_iio_hwmon_driver_init6, ptr @iio_hwmon_driver_exit, ptr @iio_hwmon_driver, ptr @.str, ptr @iio_hwmon_of_match, ptr @iio_hwmon_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_hwmon_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_hwmon_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_hwmon_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @iio_hwmon_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @iio_hwmon_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @iio_hwmon_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @iio_hwmon_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iio_hwmon_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type) #6
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %type, align 4, !annotation !43
  %call = tail call ptr @devm_iio_channel_get_all(ptr noundef %dev1) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call to i32
  %cmp = icmp eq ptr %call, inttoptr (i32 -19 to ptr)
  %spec.select = select i1 %cmp, i32 -517, i32 %1
  br label %cleanup75

if.end6:                                          ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 40, i32 noundef 3520) #6
  %cmp8 = icmp eq ptr %call.i, null
  br i1 %cmp8, label %if.end6.cleanup75_crit_edge, label %if.end10

if.end6.cleanup75_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup75

if.end10:                                         ; preds = %if.end6
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %call.i, align 4
  %num_channels = getelementptr inbounds %struct.iio_hwmon_state, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_channels, align 4
  %arrayidx141 = getelementptr %struct.iio_channel, ptr %call, i32 %4
  %5 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx141, align 4
  %tobool.not142 = icmp eq ptr %6, null
  br i1 %tobool.not142, label %if.end10.while.end_crit_edge, label %if.end10.while.body_crit_edge

if.end10.while.body_crit_edge:                    ; preds = %if.end10
  br label %while.body

if.end10.while.end_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end10.while.body_crit_edge
  %7 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ %4, %if.end10.while.body_crit_edge ]
  %inc = add i32 %7, 1
  %8 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %inc, ptr %num_channels, align 4
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  %arrayidx = getelementptr %struct.iio_channel, ptr %10, i32 %inc
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end10.while.end_crit_edge
  %.lcssa = phi i32 [ %4, %if.end10.while.end_crit_edge ], [ %inc, %while.body.while.end_crit_edge ]
  %add = add i32 %.lcssa, 1
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #6
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !44

devm_kcalloc.exit.thread:                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %attrs132 = getelementptr inbounds %struct.iio_hwmon_state, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %attrs132 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %attrs132, align 4
  br label %cleanup75

devm_kcalloc.exit:                                ; preds = %while.end
  %16 = extractvalue { i32, i1 } %13, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %16, i32 noundef 3520) #6
  %attrs = getelementptr inbounds %struct.iio_hwmon_state, ptr %call.i, i32 0, i32 4
  %17 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5.i.i, ptr %attrs, align 4
  %cmp17 = icmp eq ptr %call5.i.i, null
  br i1 %cmp17, label %devm_kcalloc.exit.cleanup75_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup75_crit_edge:            ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup75

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %18 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp21144 = icmp sgt i32 %19, 0
  br i1 %cmp21144, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %power_i.0150 = phi i32 [ %power_i.1, %for.inc.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %humidity_i.0149 = phi i32 [ %humidity_i.1, %for.inc.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %curr_i.0148 = phi i32 [ %curr_i.1, %for.inc.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %temp_i.0147 = phi i32 [ %temp_i.1, %for.inc.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %in_i.0146 = phi i32 [ %in_i.1, %for.inc.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %i.0145 = phi i32 [ %inc58, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call.i130 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 32, i32 noundef 3520) #6
  %cmp23 = icmp eq ptr %call.i130, null
  br i1 %cmp23, label %for.body.cleanup75_crit_edge, label %do.body

for.body.cleanup75_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup75

do.body:                                          ; preds = %for.body
  %key = getelementptr inbounds %struct.attribute, ptr %call.i130, i32 0, i32 3
  %20 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @iio_hwmon_probe.__key, ptr %key, align 4
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 4
  %arrayidx27 = getelementptr %struct.iio_channel, ptr %22, i32 %i.0145
  %call28 = call i32 @iio_get_channel_type(ptr noundef %arrayidx27, ptr noundef nonnull %type) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.body.cleanup75_crit_edge, label %if.end31

do.body.cleanup75_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup75

if.end31:                                         ; preds = %do.body
  %23 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %24, label %if.end31.cleanup75_crit_edge [
    i32 0, label %sw.bb
    i32 9, label %sw.bb33
    i32 1, label %sw.bb35
    i32 2, label %sw.bb37
    i32 18, label %sw.bb39
  ]

if.end31.cleanup75_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup75

sw.bb:                                            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %inc32 = add i32 %in_i.0146, 1
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %inc34 = add i32 %temp_i.0147, 1
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %inc36 = add i32 %curr_i.0148, 1
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %inc38 = add i32 %power_i.0150, 1
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %inc40 = add i32 %humidity_i.0149, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb39, %sw.bb37, %sw.bb35, %sw.bb33, %sw.bb
  %in_i.1 = phi i32 [ %in_i.0146, %sw.bb39 ], [ %in_i.0146, %sw.bb37 ], [ %in_i.0146, %sw.bb35 ], [ %in_i.0146, %sw.bb33 ], [ %inc32, %sw.bb ]
  %temp_i.1 = phi i32 [ %temp_i.0147, %sw.bb39 ], [ %temp_i.0147, %sw.bb37 ], [ %temp_i.0147, %sw.bb35 ], [ %inc34, %sw.bb33 ], [ %temp_i.0147, %sw.bb ]
  %curr_i.1 = phi i32 [ %curr_i.0148, %sw.bb39 ], [ %curr_i.0148, %sw.bb37 ], [ %inc36, %sw.bb35 ], [ %curr_i.0148, %sw.bb33 ], [ %curr_i.0148, %sw.bb ]
  %humidity_i.1 = phi i32 [ %inc40, %sw.bb39 ], [ %humidity_i.0149, %sw.bb37 ], [ %humidity_i.0149, %sw.bb35 ], [ %humidity_i.0149, %sw.bb33 ], [ %humidity_i.0149, %sw.bb ]
  %power_i.1 = phi i32 [ %power_i.0150, %sw.bb39 ], [ %inc38, %sw.bb37 ], [ %power_i.0150, %sw.bb35 ], [ %power_i.0150, %sw.bb33 ], [ %power_i.0150, %sw.bb ]
  %prefix.0 = phi ptr [ @.str.5, %sw.bb39 ], [ @.str.4, %sw.bb37 ], [ @.str.3, %sw.bb35 ], [ @.str.2, %sw.bb33 ], [ @.str.1, %sw.bb ]
  %n.0 = phi i32 [ %humidity_i.0149, %sw.bb39 ], [ %power_i.0150, %sw.bb37 ], [ %curr_i.0148, %sw.bb35 ], [ %temp_i.0147, %sw.bb33 ], [ %in_i.0146, %sw.bb ]
  %call41 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1, i32 noundef 3264, ptr noundef nonnull @.str.6, ptr noundef nonnull %prefix.0, i32 noundef %n.0) #6
  %26 = ptrtoint ptr %call.i130 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call41, ptr %call.i130, align 4
  %cmp47 = icmp eq ptr %call41, null
  br i1 %cmp47, label %sw.epilog.cleanup75_crit_edge, label %for.inc

sw.epilog.cleanup75_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup75

for.inc:                                          ; preds = %sw.epilog
  %show = getelementptr inbounds %struct.device_attribute, ptr %call.i130, i32 0, i32 1
  %27 = ptrtoint ptr %show to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @iio_hwmon_read_val, ptr %show, align 4
  %mode = getelementptr inbounds %struct.attribute, ptr %call.i130, i32 0, i32 1
  %28 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 292, ptr %mode, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %call.i130, i32 0, i32 1
  %29 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %i.0145, ptr %index, align 4
  %30 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %attrs, align 4
  %arrayidx56 = getelementptr ptr, ptr %31, i32 %i.0145
  %32 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i130, ptr %arrayidx56, align 4
  %inc58 = add nuw nsw i32 %i.0145, 1
  %33 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_channels, align 4
  %cmp21 = icmp slt i32 %inc58, %34
  br i1 %cmp21, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %35 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %attrs, align 4
  %attr_group = getelementptr inbounds %struct.iio_hwmon_state, ptr %call.i, i32 0, i32 2
  %attrs60 = getelementptr inbounds %struct.iio_hwmon_state, ptr %call.i, i32 0, i32 2, i32 3
  %37 = ptrtoint ptr %attrs60 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %attrs60, align 4
  %groups = getelementptr inbounds %struct.iio_hwmon_state, ptr %call.i, i32 0, i32 3
  %38 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %attr_group, ptr %groups, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %39 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %of_node, align 8
  %tobool63.not = icmp eq ptr %40, null
  br i1 %tobool63.not, label %for.end.if.end71_crit_edge, label %if.then64

for.end.if.end71_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then64:                                        ; preds = %for.end
  %call66 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1, i32 noundef 3264, ptr noundef nonnull @.str.7, ptr noundef nonnull %40) #6
  %tobool67.not = icmp eq ptr %call66, null
  br i1 %tobool67.not, label %if.then64.cleanup75_crit_edge, label %if.end69

if.then64.cleanup75_crit_edge:                    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup75

if.end69:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  %call70 = call ptr @strreplace(ptr noundef nonnull %call66, i8 noundef zeroext 45, i8 noundef zeroext 95) #6
  br label %if.end71

if.end71:                                         ; preds = %if.end69, %for.end.if.end71_crit_edge
  %sname.0 = phi ptr [ %call66, %if.end69 ], [ @.str, %for.end.if.end71_crit_edge ]
  %call73 = call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev1, ptr noundef nonnull %sname.0, ptr noundef nonnull %call.i, ptr noundef %groups) #6
  %cmp.i.i = icmp ugt ptr %call73, inttoptr (i32 -4096 to ptr)
  %41 = ptrtoint ptr %call73 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %41, i32 0
  br label %cleanup75

cleanup75:                                        ; preds = %if.end71, %if.then64.cleanup75_crit_edge, %sw.epilog.cleanup75_crit_edge, %if.end31.cleanup75_crit_edge, %do.body.cleanup75_crit_edge, %for.body.cleanup75_crit_edge, %devm_kcalloc.exit.cleanup75_crit_edge, %devm_kcalloc.exit.thread, %if.end6.cleanup75_crit_edge, %if.then
  %retval.2 = phi i32 [ %spec.select.i, %if.end71 ], [ -12, %if.end6.cleanup75_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup75_crit_edge ], [ -12, %if.then64.cleanup75_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ %spec.select, %if.then ], [ -12, %for.body.cleanup75_crit_edge ], [ %call28, %do.body.cleanup75_crit_edge ], [ -22, %if.end31.cleanup75_crit_edge ], [ -12, %sw.epilog.cleanup75_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type) #6
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_channel_get_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_get_channel_type(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iio_hwmon_read_val(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %result = alloca i32, align 4
  %type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result) #6
  %0 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %result, align 4, !annotation !43
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.iio_channel, ptr %4, i32 %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type) #6
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %type, align 4, !annotation !43
  %call1 = call i32 @iio_read_channel_processed(ptr noundef %arrayidx, ptr noundef nonnull %result) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @iio_get_channel_type(ptr noundef %arrayidx, ptr noundef nonnull %type) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp6 = icmp eq i32 %9, 2
  br i1 %cmp6, label %if.then7, label %if.end5.if.end8_crit_edge

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %result, align 4
  %mul = mul i32 %11, 1000
  store i32 %mul, ptr %result, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5.if.end8_crit_edge
  %12 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %result, align 4
  %call9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %13)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strreplace(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_processed(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

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
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__initcall__kmod_iio_hwmon__183_180_iio_hwmon_driver_init6, !1, !"__initcall__kmod_iio_hwmon__183_180_iio_hwmon_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/iio_hwmon.c", i32 180, i32 1}
!2 = !{ptr @__exitcall_iio_hwmon_driver_exit, !1, !"__exitcall_iio_hwmon_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author184, !4, !"__UNIQUE_ID_author184", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/iio_hwmon.c", i32 182, i32 1}
!5 = !{ptr @__UNIQUE_ID_description185, !6, !"__UNIQUE_ID_description185", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/iio_hwmon.c", i32 183, i32 1}
!7 = !{ptr @__UNIQUE_ID_file186, !8, !"__UNIQUE_ID_file186", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/iio_hwmon.c", i32 184, i32 1}
!9 = !{ptr @__UNIQUE_ID_license187, !8, !"__UNIQUE_ID_license187", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/iio_hwmon.c", i32 174, i32 11}
!12 = !{ptr @iio_hwmon_driver, !13, !"iio_hwmon_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/iio_hwmon.c", i32 172, i32 31}
!14 = !{ptr @iio_hwmon_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/iio_hwmon.c", i32 107, i32 3}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/iio_hwmon.c", i32 115, i32 13}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/iio_hwmon.c", i32 119, i32 13}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/iio_hwmon.c", i32 123, i32 13}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/iio_hwmon.c", i32 127, i32 13}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/iio_hwmon.c", i32 131, i32 13}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/hwmon/iio_hwmon.c", i32 138, i32 14}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/iio_hwmon.c", i32 153, i32 43}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/iio_hwmon.c", i32 61, i32 22}
!32 = !{ptr @iio_hwmon_of_match, !33, !"iio_hwmon_of_match", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/iio_hwmon.c", i32 166, i32 34}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"auto-init"}
!44 = !{!"branch_weights", i32 1, i32 2000}
