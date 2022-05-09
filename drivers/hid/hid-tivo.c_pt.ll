; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-tivo.c_pt.bc'
source_filename = "../drivers/hid/hid-tivo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hid_driver = type { ptr, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hid_device_id = type { i16, i16, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.list_head, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.hid_usage = type { i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i16 }

@__initcall__kmod_hid_tivo__223_74_tivo_driver_init6 = internal global ptr @tivo_driver_init, section ".initcall6.init", align 4
@tivo_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @tivo_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tivo_input_mapping, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tivo_driver_exit = internal global ptr @tivo_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file224 = internal constant [35 x i8] c"hid_tivo.file=drivers/hid/hid-tivo\00", section ".modinfo", align 1
@__UNIQUE_ID_license225 = internal constant [21 x i8] c"hid_tivo.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author226 = internal constant [48 x i8] c"hid_tivo.author=Jarod Wilson <jarod@redhat.com>\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hid_tivo\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tivo_slide\00", [21 x i8] zeroinitializer }, align 32
@tivo_devices = internal constant { [4 x %struct.hid_device_id], [32 x i8] } { [4 x %struct.hid_device_id] [%struct.hid_device_id { i16 5, i16 0, i32 5386, i32 4608, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 5386, i32 4609, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 5386, i32 4611, i32 0 }, %struct.hid_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@__func__.hid_map_usage = private unnamed_addr constant [14 x i8] c"hid_map_usage\00", align 1
@hid_map_usage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @__func__.hid_map_usage, ptr @.str.4, i32 1037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: Invalid code %d type %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/hid.h\00", [44 x i8] zeroinitializer }, align 32
@hid_map_usage._entry_ptr = internal global ptr @hid_map_usage._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 786432, i64 4294901760]
@__sancov_gen_cov_switch_values.5 = internal global [6 x i64] [i64 4, i64 16, i64 61, i64 62, i64 65, i64 66]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 16, i64 131, i64 521]
@___asan_gen_.7 = private unnamed_addr constant [12 x i8] c"tivo_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 69, i32 26 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 74, i32 1 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 70, i32 10 }
@___asan_gen_.16 = private unnamed_addr constant [13 x i8] c"tivo_devices\00", align 1
@___asan_gen_.17 = private constant [26 x i8] c"../drivers/hid/hid-tivo.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 60, i32 35 }
@___asan_gen_.19 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [23 x i8] c"../include/linux/hid.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 1036, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author226, ptr @__UNIQUE_ID_file224, ptr @__UNIQUE_ID_license225, ptr @__exitcall_tivo_driver_exit, ptr @__initcall__kmod_hid_tivo__223_74_tivo_driver_init6, ptr @hid_map_usage._entry, ptr @hid_map_usage._entry_ptr, ptr @tivo_driver_exit, ptr @tivo_driver, ptr @.str, ptr @.str.1, ptr @tivo_devices, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tivo_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tivo_devices to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_map_usage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tivo_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @tivo_driver, ptr noundef null, ptr noundef nonnull @.str) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tivo_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @hid_unregister_driver(ptr noundef nonnull @tivo_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tivo_input_mapping(ptr nocapture noundef readnone %hdev, ptr nocapture noundef readonly %hi, ptr nocapture noundef readnone %field, ptr nocapture noundef %usage, ptr nocapture noundef writeonly %bit, ptr nocapture noundef writeonly %max) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usage, align 4
  %and = and i32 %1, -65536
  %2 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %entry.return_crit_edge [
    i32 -65536, label %sw.bb
    i32 786432, label %sw.bb7
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb:                                            ; preds = %entry
  %trunc39 = trunc i32 %1 to i16
  %3 = zext i16 %trunc39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.5)
  switch i16 %trunc39, label %sw.bb.return_crit_edge [
    i16 61, label %sw.bb3
    i16 62, label %sw.bb4
    i16 65, label %sw.bb5
    i16 66, label %sw.bb6
  ]

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb3:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %4 = ptrtoint ptr %input1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input1.i.i, align 4
  %keybit.i.i = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 6
  %type19.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %6 = ptrtoint ptr %type19.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %type19.i.i, align 4
  %code.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %7 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 226, ptr %code.i.i, align 2
  br label %return.sink.split

sw.bb4:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i40 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %8 = ptrtoint ptr %input1.i.i40 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input1.i.i40, align 4
  %keybit.i.i41 = getelementptr inbounds %struct.input_dev, ptr %9, i32 0, i32 6
  %type19.i.i42 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %10 = ptrtoint ptr %type19.i.i42 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %type19.i.i42, align 4
  %code.i.i43 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %11 = ptrtoint ptr %code.i.i43 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 377, ptr %code.i.i43, align 2
  br label %return.sink.split

sw.bb5:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i45 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %12 = ptrtoint ptr %input1.i.i45 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %input1.i.i45, align 4
  %keybit.i.i46 = getelementptr inbounds %struct.input_dev, ptr %13, i32 0, i32 6
  %type19.i.i47 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %14 = ptrtoint ptr %type19.i.i47 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %type19.i.i47, align 4
  %code.i.i48 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %15 = ptrtoint ptr %code.i.i48 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 74, ptr %code.i.i48, align 2
  br label %return.sink.split

sw.bb6:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i50 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %16 = ptrtoint ptr %input1.i.i50 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %input1.i.i50, align 4
  %keybit.i.i51 = getelementptr inbounds %struct.input_dev, ptr %17, i32 0, i32 6
  %type19.i.i52 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %18 = ptrtoint ptr %type19.i.i52 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %type19.i.i52, align 4
  %code.i.i53 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %19 = ptrtoint ptr %code.i.i53 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 78, ptr %code.i.i53, align 2
  br label %return.sink.split

sw.bb7:                                           ; preds = %entry
  %trunc = trunc i32 %1 to i16
  %20 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.6)
  switch i16 %trunc, label %sw.bb7.return_crit_edge [
    i16 131, label %sw.bb10
    i16 521, label %sw.bb11
  ]

sw.bb7.return_crit_edge:                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb10:                                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i55 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %21 = ptrtoint ptr %input1.i.i55 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %input1.i.i55, align 4
  %keybit.i.i56 = getelementptr inbounds %struct.input_dev, ptr %22, i32 0, i32 6
  %type19.i.i57 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %23 = ptrtoint ptr %type19.i.i57 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %type19.i.i57, align 4
  %code.i.i58 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %24 = ptrtoint ptr %code.i.i58 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 28, ptr %code.i.i58, align 2
  br label %return.sink.split

sw.bb11:                                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i60 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %25 = ptrtoint ptr %input1.i.i60 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %input1.i.i60, align 4
  %keybit.i.i61 = getelementptr inbounds %struct.input_dev, ptr %26, i32 0, i32 6
  %type19.i.i62 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %27 = ptrtoint ptr %type19.i.i62 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %type19.i.i62, align 4
  %code.i.i63 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %28 = ptrtoint ptr %code.i.i63 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 358, ptr %code.i.i63, align 2
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb11, %sw.bb10, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3
  %keybit.i.i51.sink65 = phi ptr [ %keybit.i.i51, %sw.bb6 ], [ %keybit.i.i46, %sw.bb5 ], [ %keybit.i.i41, %sw.bb4 ], [ %keybit.i.i, %sw.bb3 ], [ %keybit.i.i61, %sw.bb11 ], [ %keybit.i.i56, %sw.bb10 ]
  %code.i.i53.sink = phi ptr [ %code.i.i53, %sw.bb6 ], [ %code.i.i48, %sw.bb5 ], [ %code.i.i43, %sw.bb4 ], [ %code.i.i, %sw.bb3 ], [ %code.i.i63, %sw.bb11 ], [ %code.i.i58, %sw.bb10 ]
  %29 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 767, ptr %max, align 4
  %30 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %keybit.i.i51.sink65, ptr %bit, align 4
  %31 = ptrtoint ptr %code.i.i53.sink to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %code.i.i53.sink, align 2
  %conv1.i54 = zext i16 %32 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i54, ptr noundef nonnull %keybit.i.i51.sink65) #3
  br label %return

return:                                           ; preds = %return.sink.split, %sw.bb7.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb.return_crit_edge ], [ 0, %sw.bb7.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ 1, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__initcall__kmod_hid_tivo__223_74_tivo_driver_init6, !1, !"__initcall__kmod_hid_tivo__223_74_tivo_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-tivo.c", i32 74, i32 1}
!2 = !{ptr @__exitcall_tivo_driver_exit, !1, !"__exitcall_tivo_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file224, !4, !"__UNIQUE_ID_file224", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-tivo.c", i32 76, i32 1}
!5 = !{ptr @__UNIQUE_ID_license225, !4, !"__UNIQUE_ID_license225", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author226, !7, !"__UNIQUE_ID_author226", i1 false, i1 false}
!7 = !{!"../drivers/hid/hid-tivo.c", i32 77, i32 1}
!8 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/hid/hid-tivo.c", i32 70, i32 10}
!11 = !{ptr @tivo_driver, !12, !"tivo_driver", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-tivo.c", i32 69, i32 26}
!13 = !{ptr @tivo_devices, !14, !"tivo_devices", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-tivo.c", i32 60, i32 35}
!15 = distinct !{null, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../include/linux/hid.h", i32 1036, i32 3}
!17 = distinct !{null, !16, !"_rs", i1 false, i1 false}
!18 = !{ptr @__func__.hid_map_usage, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @hid_map_usage._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @hid_map_usage._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
