; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-topseed.c_pt.bc'
source_filename = "../drivers/hid/hid-topseed.c"
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

@__initcall__kmod_hid_topseed__223_79_ts_driver_init6 = internal global ptr @ts_driver_init, section ".initcall6.init", align 4
@ts_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @ts_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ts_input_mapping, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ts_driver_exit = internal global ptr @ts_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file224 = internal constant [41 x i8] c"hid_topseed.file=drivers/hid/hid-topseed\00", section ".modinfo", align 1
@__UNIQUE_ID_license225 = internal constant [24 x i8] c"hid_topseed.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hid_topseed\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"topseed\00", [24 x i8] zeroinitializer }, align 32
@ts_devices = internal constant { [7 x %struct.hid_device_id], [48 x i8] } { [7 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1894, i32 516, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1134, i32 21880, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1134, i32 21879, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 6020, i32 4, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1266, i32 1560, i32 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1266, i32 5128, i32 0 }, %struct.hid_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@__func__.hid_map_usage = private unnamed_addr constant [14 x i8] c"hid_map_usage\00", align 1
@hid_map_usage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @__func__.hid_map_usage, ptr @.str.4, i32 1037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: Invalid code %d type %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/hid.h\00", [44 x i8] zeroinitializer }, align 32
@hid_map_usage._entry_ptr = internal global ptr @hid_map_usage._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [24 x i64] [i64 22, i64 16, i64 12, i64 13, i64 16, i64 36, i64 37, i64 39, i64 49, i64 50, i64 51, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 80, i64 90, i64 91, i64 92, i64 93, i64 94]
@___asan_gen_.5 = private unnamed_addr constant [10 x i8] c"ts_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 74, i32 26 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 79, i32 1 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 75, i32 10 }
@___asan_gen_.14 = private unnamed_addr constant [11 x i8] c"ts_devices\00", align 1
@___asan_gen_.15 = private constant [29 x i8] c"../drivers/hid/hid-topseed.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 63, i32 35 }
@___asan_gen_.17 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [23 x i8] c"../include/linux/hid.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 1036, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_file224, ptr @__UNIQUE_ID_license225, ptr @__exitcall_ts_driver_exit, ptr @__initcall__kmod_hid_topseed__223_79_ts_driver_init6, ptr @hid_map_usage._entry, ptr @hid_map_usage._entry_ptr, ptr @ts_driver_exit, ptr @ts_driver, ptr @.str, ptr @.str.1, ptr @ts_devices, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts_devices to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_map_usage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ts_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @ts_driver, ptr noundef null, ptr noundef nonnull @.str) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ts_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @hid_unregister_driver(ptr noundef nonnull @ts_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ts_input_mapping(ptr nocapture noundef readnone %hdev, ptr noundef readonly %hi, ptr nocapture noundef readnone %field, ptr noundef %usage, ptr noundef writeonly %bit, ptr noundef writeonly %max) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usage, align 4
  %and = and i32 %1, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4456448, i32 %and)
  %cmp.not = icmp eq i32 %and, -4456448
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  %trunc = trunc i32 %1 to i16
  %2 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %if.end.return_crit_edge [
    i16 12, label %sw.bb
    i16 13, label %sw.bb3
    i16 16, label %sw.bb4
    i16 36, label %sw.bb5
    i16 37, label %sw.bb6
    i16 39, label %sw.bb7
    i16 49, label %sw.bb8
    i16 50, label %sw.bb9
    i16 51, label %sw.bb10
    i16 71, label %sw.bb11
    i16 72, label %sw.bb12
    i16 73, label %sw.bb13
    i16 74, label %sw.bb14
    i16 75, label %sw.bb15
    i16 76, label %sw.bb16
    i16 77, label %sw.bb17
    i16 80, label %sw.bb18
    i16 90, label %sw.bb19
    i16 91, label %sw.bb20
    i16 92, label %sw.bb21
    i16 93, label %sw.bb22
    i16 94, label %sw.bb23
  ]

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %3 = ptrtoint ptr %input1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %input1.i.i, align 4
  %keybit.i.i = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 6
  %type19.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %5 = ptrtoint ptr %type19.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %type19.i.i, align 4
  %code.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %6 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 238, ptr %code.i.i, align 2
  br label %return.sink.split

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i110 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %7 = ptrtoint ptr %input1.i.i110 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %input1.i.i110, align 4
  %keybit.i.i111 = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 6
  %type19.i.i112 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %9 = ptrtoint ptr %type19.i.i112 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %type19.i.i112, align 4
  %code.i.i113 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %10 = ptrtoint ptr %code.i.i113 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 226, ptr %code.i.i113, align 2
  br label %return.sink.split

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i115 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %11 = ptrtoint ptr %input1.i.i115 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %input1.i.i115, align 4
  %keybit.i.i116 = getelementptr inbounds %struct.input_dev, ptr %12, i32 0, i32 6
  %type19.i.i117 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %13 = ptrtoint ptr %type19.i.i117 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %type19.i.i117, align 4
  %code.i.i118 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %14 = ptrtoint ptr %code.i.i118 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 372, ptr %code.i.i118, align 2
  br label %return.sink.split

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i120 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %15 = ptrtoint ptr %input1.i.i120 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %input1.i.i120, align 4
  %keybit.i.i121 = getelementptr inbounds %struct.input_dev, ptr %16, i32 0, i32 6
  %type19.i.i122 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %17 = ptrtoint ptr %type19.i.i122 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %type19.i.i122, align 4
  %code.i.i123 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %18 = ptrtoint ptr %code.i.i123 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 139, ptr %code.i.i123, align 2
  br label %return.sink.split

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i125 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %19 = ptrtoint ptr %input1.i.i125 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %input1.i.i125, align 4
  %keybit.i.i126 = getelementptr inbounds %struct.input_dev, ptr %20, i32 0, i32 6
  %type19.i.i127 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %21 = ptrtoint ptr %type19.i.i127 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %type19.i.i127, align 4
  %code.i.i128 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %22 = ptrtoint ptr %code.i.i128 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 377, ptr %code.i.i128, align 2
  br label %return.sink.split

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i130 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %23 = ptrtoint ptr %input1.i.i130 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %input1.i.i130, align 4
  %keybit.i.i131 = getelementptr inbounds %struct.input_dev, ptr %24, i32 0, i32 6
  %type19.i.i132 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %25 = ptrtoint ptr %type19.i.i132 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %type19.i.i132, align 4
  %code.i.i133 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %26 = ptrtoint ptr %code.i.i133 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 373, ptr %code.i.i133, align 2
  br label %return.sink.split

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i135 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %27 = ptrtoint ptr %input1.i.i135 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %input1.i.i135, align 4
  %keybit.i.i136 = getelementptr inbounds %struct.input_dev, ptr %28, i32 0, i32 6
  %type19.i.i137 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %29 = ptrtoint ptr %type19.i.i137 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %type19.i.i137, align 4
  %code.i.i138 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %30 = ptrtoint ptr %code.i.i138 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 392, ptr %code.i.i138, align 2
  br label %return.sink.split

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i140 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %31 = ptrtoint ptr %input1.i.i140 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %input1.i.i140, align 4
  %keybit.i.i141 = getelementptr inbounds %struct.input_dev, ptr %32, i32 0, i32 6
  %type19.i.i142 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %33 = ptrtoint ptr %type19.i.i142 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %type19.i.i142, align 4
  %code.i.i143 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %34 = ptrtoint ptr %code.i.i143 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 388, ptr %code.i.i143, align 2
  br label %return.sink.split

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i145 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %35 = ptrtoint ptr %input1.i.i145 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %input1.i.i145, align 4
  %keybit.i.i146 = getelementptr inbounds %struct.input_dev, ptr %36, i32 0, i32 6
  %type19.i.i147 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %37 = ptrtoint ptr %type19.i.i147 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %type19.i.i147, align 4
  %code.i.i148 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %38 = ptrtoint ptr %code.i.i148 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 363, ptr %code.i.i148, align 2
  br label %return.sink.split

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i150 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %39 = ptrtoint ptr %input1.i.i150 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %input1.i.i150, align 4
  %keybit.i.i151 = getelementptr inbounds %struct.input_dev, ptr %40, i32 0, i32 6
  %type19.i.i152 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %41 = ptrtoint ptr %type19.i.i152 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %type19.i.i152, align 4
  %code.i.i153 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %42 = ptrtoint ptr %code.i.i153 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 391, ptr %code.i.i153, align 2
  br label %return.sink.split

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i155 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %43 = ptrtoint ptr %input1.i.i155 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %input1.i.i155, align 4
  %keybit.i.i156 = getelementptr inbounds %struct.input_dev, ptr %44, i32 0, i32 6
  %type19.i.i157 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %45 = ptrtoint ptr %type19.i.i157 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %type19.i.i157, align 4
  %code.i.i158 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %46 = ptrtoint ptr %code.i.i158 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 378, ptr %code.i.i158, align 2
  br label %return.sink.split

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i160 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %47 = ptrtoint ptr %input1.i.i160 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %input1.i.i160, align 4
  %keybit.i.i161 = getelementptr inbounds %struct.input_dev, ptr %48, i32 0, i32 6
  %type19.i.i162 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %49 = ptrtoint ptr %type19.i.i162 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %type19.i.i162, align 4
  %code.i.i163 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %50 = ptrtoint ptr %code.i.i163 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 212, ptr %code.i.i163, align 2
  br label %return.sink.split

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i165 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %51 = ptrtoint ptr %input1.i.i165 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %input1.i.i165, align 4
  %keybit.i.i166 = getelementptr inbounds %struct.input_dev, ptr %52, i32 0, i32 6
  %type19.i.i167 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %53 = ptrtoint ptr %type19.i.i167 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %type19.i.i167, align 4
  %code.i.i168 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %54 = ptrtoint ptr %code.i.i168 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 393, ptr %code.i.i168, align 2
  br label %return.sink.split

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i170 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %55 = ptrtoint ptr %input1.i.i170 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %input1.i.i170, align 4
  %keybit.i.i171 = getelementptr inbounds %struct.input_dev, ptr %56, i32 0, i32 6
  %type19.i.i172 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %57 = ptrtoint ptr %type19.i.i172 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %type19.i.i172, align 4
  %code.i.i173 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %58 = ptrtoint ptr %code.i.i173 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 371, ptr %code.i.i173, align 2
  br label %return.sink.split

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i175 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %59 = ptrtoint ptr %input1.i.i175 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %input1.i.i175, align 4
  %keybit.i.i176 = getelementptr inbounds %struct.input_dev, ptr %60, i32 0, i32 6
  %type19.i.i177 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %61 = ptrtoint ptr %type19.i.i177 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %type19.i.i177, align 4
  %code.i.i178 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %62 = ptrtoint ptr %code.i.i178 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 368, ptr %code.i.i178, align 2
  br label %return.sink.split

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i180 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %63 = ptrtoint ptr %input1.i.i180 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %input1.i.i180, align 4
  %keybit.i.i181 = getelementptr inbounds %struct.input_dev, ptr %64, i32 0, i32 6
  %type19.i.i182 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %65 = ptrtoint ptr %type19.i.i182 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %type19.i.i182, align 4
  %code.i.i183 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %66 = ptrtoint ptr %code.i.i183 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 370, ptr %code.i.i183, align 2
  br label %return.sink.split

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i185 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %67 = ptrtoint ptr %input1.i.i185 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %input1.i.i185, align 4
  %keybit.i.i186 = getelementptr inbounds %struct.input_dev, ptr %68, i32 0, i32 6
  %type19.i.i187 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %69 = ptrtoint ptr %type19.i.i187 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %type19.i.i187, align 4
  %code.i.i188 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %70 = ptrtoint ptr %code.i.i188 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 385, ptr %code.i.i188, align 2
  br label %return.sink.split

sw.bb19:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i190 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %71 = ptrtoint ptr %input1.i.i190 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %input1.i.i190, align 4
  %keybit.i.i191 = getelementptr inbounds %struct.input_dev, ptr %72, i32 0, i32 6
  %type19.i.i192 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %73 = ptrtoint ptr %type19.i.i192 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %type19.i.i192, align 4
  %code.i.i193 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %74 = ptrtoint ptr %code.i.i193 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 388, ptr %code.i.i193, align 2
  br label %return.sink.split

sw.bb20:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i195 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %75 = ptrtoint ptr %input1.i.i195 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %input1.i.i195, align 4
  %keybit.i.i196 = getelementptr inbounds %struct.input_dev, ptr %76, i32 0, i32 6
  %type19.i.i197 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %77 = ptrtoint ptr %type19.i.i197 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %type19.i.i197, align 4
  %code.i.i198 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %78 = ptrtoint ptr %code.i.i198 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 398, ptr %code.i.i198, align 2
  br label %return.sink.split

sw.bb21:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i200 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %79 = ptrtoint ptr %input1.i.i200 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %input1.i.i200, align 4
  %keybit.i.i201 = getelementptr inbounds %struct.input_dev, ptr %80, i32 0, i32 6
  %type19.i.i202 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %81 = ptrtoint ptr %type19.i.i202 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %type19.i.i202, align 4
  %code.i.i203 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %82 = ptrtoint ptr %code.i.i203 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 399, ptr %code.i.i203, align 2
  br label %return.sink.split

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i205 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %83 = ptrtoint ptr %input1.i.i205 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %input1.i.i205, align 4
  %keybit.i.i206 = getelementptr inbounds %struct.input_dev, ptr %84, i32 0, i32 6
  %type19.i.i207 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %85 = ptrtoint ptr %type19.i.i207 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %type19.i.i207, align 4
  %code.i.i208 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %86 = ptrtoint ptr %code.i.i208 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 400, ptr %code.i.i208, align 2
  br label %return.sink.split

sw.bb23:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i210 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %87 = ptrtoint ptr %input1.i.i210 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %input1.i.i210, align 4
  %keybit.i.i211 = getelementptr inbounds %struct.input_dev, ptr %88, i32 0, i32 6
  %type19.i.i212 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %89 = ptrtoint ptr %type19.i.i212 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %type19.i.i212, align 4
  %code.i.i213 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %90 = ptrtoint ptr %code.i.i213 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 401, ptr %code.i.i213, align 2
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb
  %keybit.i.i.sink215 = phi ptr [ %keybit.i.i, %sw.bb ], [ %keybit.i.i111, %sw.bb3 ], [ %keybit.i.i116, %sw.bb4 ], [ %keybit.i.i121, %sw.bb5 ], [ %keybit.i.i126, %sw.bb6 ], [ %keybit.i.i131, %sw.bb7 ], [ %keybit.i.i136, %sw.bb8 ], [ %keybit.i.i141, %sw.bb9 ], [ %keybit.i.i146, %sw.bb10 ], [ %keybit.i.i151, %sw.bb11 ], [ %keybit.i.i156, %sw.bb12 ], [ %keybit.i.i161, %sw.bb13 ], [ %keybit.i.i166, %sw.bb14 ], [ %keybit.i.i171, %sw.bb15 ], [ %keybit.i.i176, %sw.bb16 ], [ %keybit.i.i181, %sw.bb17 ], [ %keybit.i.i186, %sw.bb18 ], [ %keybit.i.i191, %sw.bb19 ], [ %keybit.i.i196, %sw.bb20 ], [ %keybit.i.i201, %sw.bb21 ], [ %keybit.i.i206, %sw.bb22 ], [ %keybit.i.i211, %sw.bb23 ]
  %code.i.i.sink = phi ptr [ %code.i.i, %sw.bb ], [ %code.i.i113, %sw.bb3 ], [ %code.i.i118, %sw.bb4 ], [ %code.i.i123, %sw.bb5 ], [ %code.i.i128, %sw.bb6 ], [ %code.i.i133, %sw.bb7 ], [ %code.i.i138, %sw.bb8 ], [ %code.i.i143, %sw.bb9 ], [ %code.i.i148, %sw.bb10 ], [ %code.i.i153, %sw.bb11 ], [ %code.i.i158, %sw.bb12 ], [ %code.i.i163, %sw.bb13 ], [ %code.i.i168, %sw.bb14 ], [ %code.i.i173, %sw.bb15 ], [ %code.i.i178, %sw.bb16 ], [ %code.i.i183, %sw.bb17 ], [ %code.i.i188, %sw.bb18 ], [ %code.i.i193, %sw.bb19 ], [ %code.i.i198, %sw.bb20 ], [ %code.i.i203, %sw.bb21 ], [ %code.i.i208, %sw.bb22 ], [ %code.i.i213, %sw.bb23 ]
  %91 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 767, ptr %max, align 4
  %92 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %keybit.i.i.sink215, ptr %bit, align 4
  %93 = ptrtoint ptr %code.i.i.sink to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %code.i.i.sink, align 2
  %conv1.i = zext i16 %94 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i, ptr noundef nonnull %keybit.i.i.sink215) #3
  br label %return

return:                                           ; preds = %return.sink.split, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ 1, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @__initcall__kmod_hid_topseed__223_79_ts_driver_init6, !1, !"__initcall__kmod_hid_topseed__223_79_ts_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-topseed.c", i32 79, i32 1}
!2 = !{ptr @__exitcall_ts_driver_exit, !1, !"__exitcall_ts_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file224, !4, !"__UNIQUE_ID_file224", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-topseed.c", i32 81, i32 1}
!5 = !{ptr @__UNIQUE_ID_license225, !4, !"__UNIQUE_ID_license225", i1 false, i1 false}
!6 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/hid/hid-topseed.c", i32 75, i32 10}
!9 = !{ptr @ts_driver, !10, !"ts_driver", i1 false, i1 false}
!10 = !{!"../drivers/hid/hid-topseed.c", i32 74, i32 26}
!11 = !{ptr @ts_devices, !12, !"ts_devices", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-topseed.c", i32 63, i32 35}
!13 = distinct !{null, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/linux/hid.h", i32 1036, i32 3}
!15 = distinct !{null, !14, !"_rs", i1 false, i1 false}
!16 = !{ptr @__func__.hid_map_usage, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @hid_map_usage._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @hid_map_usage._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
