; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-twinhan.c_pt.bc'
source_filename = "../drivers/hid/hid-twinhan.c"
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

@__initcall__kmod_hid_twinhan__223_132_twinhan_driver_init6 = internal global ptr @twinhan_driver_init, section ".initcall6.init", align 4
@twinhan_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @twinhan_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twinhan_input_mapping, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_twinhan_driver_exit = internal global ptr @twinhan_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file224 = internal constant [41 x i8] c"hid_twinhan.file=drivers/hid/hid-twinhan\00", section ".modinfo", align 1
@__UNIQUE_ID_license225 = internal constant [24 x i8] c"hid_twinhan.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hid_twinhan\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"twinhan\00", [24 x i8] zeroinitializer }, align 32
@twinhan_devices = internal constant { [2 x %struct.hid_device_id], [32 x i8] } { [2 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 25171, i32 256, i32 0 }, %struct.hid_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@__func__.hid_map_usage = private unnamed_addr constant [14 x i8] c"hid_map_usage\00", align 1
@hid_map_usage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @__func__.hid_map_usage, ptr @.str.4, i32 1037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: Invalid code %d type %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/hid.h\00", [44 x i8] zeroinitializer }, align 32
@hid_map_usage._entry_ptr = internal global ptr @hid_map_usage._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [34 x i64] [i64 32, i64 16, i64 4, i64 6, i64 8, i64 12, i64 14, i64 15, i64 16, i64 17, i64 19, i64 23, i64 25, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 43, i64 63, i64 74, i64 75, i64 77, i64 78, i64 81, i64 82]
@___asan_gen_.5 = private unnamed_addr constant [15 x i8] c"twinhan_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 127, i32 26 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 132, i32 1 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 128, i32 10 }
@___asan_gen_.14 = private unnamed_addr constant [16 x i8] c"twinhan_devices\00", align 1
@___asan_gen_.15 = private constant [29 x i8] c"../drivers/hid/hid-twinhan.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 121, i32 35 }
@___asan_gen_.17 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [23 x i8] c"../include/linux/hid.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 1036, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_file224, ptr @__UNIQUE_ID_license225, ptr @__exitcall_twinhan_driver_exit, ptr @__initcall__kmod_hid_twinhan__223_132_twinhan_driver_init6, ptr @hid_map_usage._entry, ptr @hid_map_usage._entry_ptr, ptr @twinhan_driver_exit, ptr @twinhan_driver, ptr @.str, ptr @.str.1, ptr @twinhan_devices, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twinhan_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twinhan_devices to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_map_usage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @twinhan_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @twinhan_driver, ptr noundef null, ptr noundef nonnull @.str) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @twinhan_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @hid_unregister_driver(ptr noundef nonnull @twinhan_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twinhan_input_mapping(ptr nocapture noundef readnone %hdev, ptr noundef readonly %hi, ptr nocapture noundef readnone %field, ptr noundef %usage, ptr noundef writeonly %bit, ptr noundef writeonly %max) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usage, align 4
  %and = and i32 %1, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 458752, i32 %and)
  %cmp.not = icmp eq i32 %and, 458752
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  %trunc = trunc i32 %1 to i16
  %2 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %if.end.return_crit_edge [
    i16 4, label %sw.bb
    i16 6, label %sw.bb3
    i16 8, label %sw.bb4
    i16 12, label %sw.bb5
    i16 14, label %sw.bb6
    i16 15, label %sw.bb7
    i16 16, label %sw.bb8
    i16 17, label %sw.bb9
    i16 19, label %sw.bb10
    i16 23, label %sw.bb11
    i16 25, label %sw.bb12
    i16 29, label %sw.bb13
    i16 30, label %sw.bb14
    i16 31, label %sw.bb15
    i16 32, label %sw.bb16
    i16 33, label %sw.bb17
    i16 34, label %sw.bb18
    i16 35, label %sw.bb19
    i16 36, label %sw.bb20
    i16 37, label %sw.bb21
    i16 38, label %sw.bb22
    i16 39, label %sw.bb23
    i16 40, label %sw.bb24
    i16 41, label %sw.bb25
    i16 43, label %sw.bb26
    i16 63, label %sw.bb27
    i16 74, label %sw.bb28
    i16 75, label %sw.bb29
    i16 77, label %sw.bb30
    i16 78, label %sw.bb31
    i16 81, label %sw.bb32
    i16 82, label %sw.bb33
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
  store i16 388, ptr %code.i.i, align 2
  br label %return.sink.split

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i161 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %7 = ptrtoint ptr %input1.i.i161 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %input1.i.i161, align 4
  %keybit.i.i162 = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 6
  %type19.i.i163 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %9 = ptrtoint ptr %type19.i.i163 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %type19.i.i163, align 4
  %code.i.i164 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %10 = ptrtoint ptr %code.i.i164 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 408, ptr %code.i.i164, align 2
  br label %return.sink.split

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i166 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %11 = ptrtoint ptr %input1.i.i166 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %input1.i.i166, align 4
  %keybit.i.i167 = getelementptr inbounds %struct.input_dev, ptr %12, i32 0, i32 6
  %type19.i.i168 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %13 = ptrtoint ptr %type19.i.i168 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %type19.i.i168, align 4
  %code.i.i169 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %14 = ptrtoint ptr %code.i.i169 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 365, ptr %code.i.i169, align 2
  br label %return.sink.split

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i171 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %15 = ptrtoint ptr %input1.i.i171 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %input1.i.i171, align 4
  %keybit.i.i172 = getelementptr inbounds %struct.input_dev, ptr %16, i32 0, i32 6
  %type19.i.i173 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %17 = ptrtoint ptr %type19.i.i173 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %type19.i.i173, align 4
  %code.i.i174 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %18 = ptrtoint ptr %code.i.i174 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 168, ptr %code.i.i174, align 2
  br label %return.sink.split

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i176 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %19 = ptrtoint ptr %input1.i.i176 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %input1.i.i176, align 4
  %keybit.i.i177 = getelementptr inbounds %struct.input_dev, ptr %20, i32 0, i32 6
  %type19.i.i178 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %21 = ptrtoint ptr %type19.i.i178 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %type19.i.i178, align 4
  %code.i.i179 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %22 = ptrtoint ptr %code.i.i179 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 362, ptr %code.i.i179, align 2
  br label %return.sink.split

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i181 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %23 = ptrtoint ptr %input1.i.i181 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %input1.i.i181, align 4
  %keybit.i.i182 = getelementptr inbounds %struct.input_dev, ptr %24, i32 0, i32 6
  %type19.i.i183 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %25 = ptrtoint ptr %type19.i.i183 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %type19.i.i183, align 4
  %code.i.i184 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %26 = ptrtoint ptr %code.i.i184 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 395, ptr %code.i.i184, align 2
  br label %return.sink.split

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i186 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %27 = ptrtoint ptr %input1.i.i186 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %input1.i.i186, align 4
  %keybit.i.i187 = getelementptr inbounds %struct.input_dev, ptr %28, i32 0, i32 6
  %type19.i.i188 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %29 = ptrtoint ptr %type19.i.i188 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %type19.i.i188, align 4
  %code.i.i189 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %30 = ptrtoint ptr %code.i.i189 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 113, ptr %code.i.i189, align 2
  br label %return.sink.split

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i191 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %31 = ptrtoint ptr %input1.i.i191 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %input1.i.i191, align 4
  %keybit.i.i192 = getelementptr inbounds %struct.input_dev, ptr %32, i32 0, i32 6
  %type19.i.i193 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %33 = ptrtoint ptr %type19.i.i193 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %type19.i.i193, align 4
  %code.i.i194 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %34 = ptrtoint ptr %code.i.i194 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 159, ptr %code.i.i194, align 2
  br label %return.sink.split

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i196 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %35 = ptrtoint ptr %input1.i.i196 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %input1.i.i196, align 4
  %keybit.i.i197 = getelementptr inbounds %struct.input_dev, ptr %36, i32 0, i32 6
  %type19.i.i198 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %37 = ptrtoint ptr %type19.i.i198 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %type19.i.i198, align 4
  %code.i.i199 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %38 = ptrtoint ptr %code.i.i199 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 210, ptr %code.i.i199, align 2
  br label %return.sink.split

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i201 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %39 = ptrtoint ptr %input1.i.i201 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %input1.i.i201, align 4
  %keybit.i.i202 = getelementptr inbounds %struct.input_dev, ptr %40, i32 0, i32 6
  %type19.i.i203 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %41 = ptrtoint ptr %type19.i.i203 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %type19.i.i203, align 4
  %code.i.i204 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %42 = ptrtoint ptr %code.i.i204 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 119, ptr %code.i.i204, align 2
  br label %return.sink.split

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i206 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %43 = ptrtoint ptr %input1.i.i206 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %input1.i.i206, align 4
  %keybit.i.i207 = getelementptr inbounds %struct.input_dev, ptr %44, i32 0, i32 6
  %type19.i.i208 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %45 = ptrtoint ptr %type19.i.i208 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %type19.i.i208, align 4
  %code.i.i209 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %46 = ptrtoint ptr %code.i.i209 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 364, ptr %code.i.i209, align 2
  br label %return.sink.split

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i211 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %47 = ptrtoint ptr %input1.i.i211 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %input1.i.i211, align 4
  %keybit.i.i212 = getelementptr inbounds %struct.input_dev, ptr %48, i32 0, i32 6
  %type19.i.i213 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %49 = ptrtoint ptr %type19.i.i213 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %type19.i.i213, align 4
  %code.i.i214 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %50 = ptrtoint ptr %code.i.i214 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 375, ptr %code.i.i214, align 2
  br label %return.sink.split

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i216 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %51 = ptrtoint ptr %input1.i.i216 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %input1.i.i216, align 4
  %keybit.i.i217 = getelementptr inbounds %struct.input_dev, ptr %52, i32 0, i32 6
  %type19.i.i218 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %53 = ptrtoint ptr %type19.i.i218 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %type19.i.i218, align 4
  %code.i.i219 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %54 = ptrtoint ptr %code.i.i219 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 513, ptr %code.i.i219, align 2
  br label %return.sink.split

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i221 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %55 = ptrtoint ptr %input1.i.i221 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %input1.i.i221, align 4
  %keybit.i.i222 = getelementptr inbounds %struct.input_dev, ptr %56, i32 0, i32 6
  %type19.i.i223 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %57 = ptrtoint ptr %type19.i.i223 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %type19.i.i223, align 4
  %code.i.i224 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %58 = ptrtoint ptr %code.i.i224 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 514, ptr %code.i.i224, align 2
  br label %return.sink.split

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i226 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %59 = ptrtoint ptr %input1.i.i226 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %input1.i.i226, align 4
  %keybit.i.i227 = getelementptr inbounds %struct.input_dev, ptr %60, i32 0, i32 6
  %type19.i.i228 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %61 = ptrtoint ptr %type19.i.i228 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %type19.i.i228, align 4
  %code.i.i229 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %62 = ptrtoint ptr %code.i.i229 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 515, ptr %code.i.i229, align 2
  br label %return.sink.split

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i231 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %63 = ptrtoint ptr %input1.i.i231 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %input1.i.i231, align 4
  %keybit.i.i232 = getelementptr inbounds %struct.input_dev, ptr %64, i32 0, i32 6
  %type19.i.i233 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %65 = ptrtoint ptr %type19.i.i233 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %type19.i.i233, align 4
  %code.i.i234 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %66 = ptrtoint ptr %code.i.i234 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 516, ptr %code.i.i234, align 2
  br label %return.sink.split

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i236 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %67 = ptrtoint ptr %input1.i.i236 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %input1.i.i236, align 4
  %keybit.i.i237 = getelementptr inbounds %struct.input_dev, ptr %68, i32 0, i32 6
  %type19.i.i238 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %69 = ptrtoint ptr %type19.i.i238 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %type19.i.i238, align 4
  %code.i.i239 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %70 = ptrtoint ptr %code.i.i239 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 517, ptr %code.i.i239, align 2
  br label %return.sink.split

sw.bb19:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i241 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %71 = ptrtoint ptr %input1.i.i241 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %input1.i.i241, align 4
  %keybit.i.i242 = getelementptr inbounds %struct.input_dev, ptr %72, i32 0, i32 6
  %type19.i.i243 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %73 = ptrtoint ptr %type19.i.i243 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %type19.i.i243, align 4
  %code.i.i244 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %74 = ptrtoint ptr %code.i.i244 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 518, ptr %code.i.i244, align 2
  br label %return.sink.split

sw.bb20:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i246 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %75 = ptrtoint ptr %input1.i.i246 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %input1.i.i246, align 4
  %keybit.i.i247 = getelementptr inbounds %struct.input_dev, ptr %76, i32 0, i32 6
  %type19.i.i248 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %77 = ptrtoint ptr %type19.i.i248 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %type19.i.i248, align 4
  %code.i.i249 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %78 = ptrtoint ptr %code.i.i249 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 519, ptr %code.i.i249, align 2
  br label %return.sink.split

sw.bb21:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i251 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %79 = ptrtoint ptr %input1.i.i251 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %input1.i.i251, align 4
  %keybit.i.i252 = getelementptr inbounds %struct.input_dev, ptr %80, i32 0, i32 6
  %type19.i.i253 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %81 = ptrtoint ptr %type19.i.i253 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %type19.i.i253, align 4
  %code.i.i254 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %82 = ptrtoint ptr %code.i.i254 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 520, ptr %code.i.i254, align 2
  br label %return.sink.split

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i256 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %83 = ptrtoint ptr %input1.i.i256 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %input1.i.i256, align 4
  %keybit.i.i257 = getelementptr inbounds %struct.input_dev, ptr %84, i32 0, i32 6
  %type19.i.i258 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %85 = ptrtoint ptr %type19.i.i258 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %type19.i.i258, align 4
  %code.i.i259 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %86 = ptrtoint ptr %code.i.i259 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 521, ptr %code.i.i259, align 2
  br label %return.sink.split

sw.bb23:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i261 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %87 = ptrtoint ptr %input1.i.i261 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %input1.i.i261, align 4
  %keybit.i.i262 = getelementptr inbounds %struct.input_dev, ptr %88, i32 0, i32 6
  %type19.i.i263 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %89 = ptrtoint ptr %type19.i.i263 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %type19.i.i263, align 4
  %code.i.i264 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %90 = ptrtoint ptr %code.i.i264 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 512, ptr %code.i.i264, align 2
  br label %return.sink.split

sw.bb24:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i266 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %91 = ptrtoint ptr %input1.i.i266 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %input1.i.i266, align 4
  %keybit.i.i267 = getelementptr inbounds %struct.input_dev, ptr %92, i32 0, i32 6
  %type19.i.i268 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %93 = ptrtoint ptr %type19.i.i268 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %type19.i.i268, align 4
  %code.i.i269 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %94 = ptrtoint ptr %code.i.i269 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 207, ptr %code.i.i269, align 2
  br label %return.sink.split

sw.bb25:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i271 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %95 = ptrtoint ptr %input1.i.i271 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %input1.i.i271, align 4
  %keybit.i.i272 = getelementptr inbounds %struct.input_dev, ptr %96, i32 0, i32 6
  %type19.i.i273 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %97 = ptrtoint ptr %type19.i.i273 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 1, ptr %type19.i.i273, align 4
  %code.i.i274 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %98 = ptrtoint ptr %code.i.i274 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 223, ptr %code.i.i274, align 2
  br label %return.sink.split

sw.bb26:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i276 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %99 = ptrtoint ptr %input1.i.i276 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %input1.i.i276, align 4
  %keybit.i.i277 = getelementptr inbounds %struct.input_dev, ptr %100, i32 0, i32 6
  %type19.i.i278 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %101 = ptrtoint ptr %type19.i.i278 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 1, ptr %type19.i.i278, align 4
  %code.i.i279 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %102 = ptrtoint ptr %code.i.i279 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 15, ptr %code.i.i279, align 2
  br label %return.sink.split

sw.bb27:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i281 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %103 = ptrtoint ptr %input1.i.i281 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %input1.i.i281, align 4
  %keybit.i.i282 = getelementptr inbounds %struct.input_dev, ptr %104, i32 0, i32 6
  %type19.i.i283 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %105 = ptrtoint ptr %type19.i.i283 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %type19.i.i283, align 4
  %code.i.i284 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %106 = ptrtoint ptr %code.i.i284 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 356, ptr %code.i.i284, align 2
  br label %return.sink.split

sw.bb28:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i286 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %107 = ptrtoint ptr %input1.i.i286 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %input1.i.i286, align 4
  %keybit.i.i287 = getelementptr inbounds %struct.input_dev, ptr %108, i32 0, i32 6
  %type19.i.i288 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %109 = ptrtoint ptr %type19.i.i288 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 1, ptr %type19.i.i288, align 4
  %code.i.i289 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %110 = ptrtoint ptr %code.i.i289 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 167, ptr %code.i.i289, align 2
  br label %return.sink.split

sw.bb29:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i291 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %111 = ptrtoint ptr %input1.i.i291 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %input1.i.i291, align 4
  %keybit.i.i292 = getelementptr inbounds %struct.input_dev, ptr %112, i32 0, i32 6
  %type19.i.i293 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %113 = ptrtoint ptr %type19.i.i293 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 1, ptr %type19.i.i293, align 4
  %code.i.i294 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %114 = ptrtoint ptr %code.i.i294 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 402, ptr %code.i.i294, align 2
  br label %return.sink.split

sw.bb30:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i296 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %115 = ptrtoint ptr %input1.i.i296 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %input1.i.i296, align 4
  %keybit.i.i297 = getelementptr inbounds %struct.input_dev, ptr %116, i32 0, i32 6
  %type19.i.i298 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %117 = ptrtoint ptr %type19.i.i298 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 1, ptr %type19.i.i298, align 4
  %code.i.i299 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %118 = ptrtoint ptr %code.i.i299 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 128, ptr %code.i.i299, align 2
  br label %return.sink.split

sw.bb31:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i301 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %119 = ptrtoint ptr %input1.i.i301 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %input1.i.i301, align 4
  %keybit.i.i302 = getelementptr inbounds %struct.input_dev, ptr %120, i32 0, i32 6
  %type19.i.i303 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %121 = ptrtoint ptr %type19.i.i303 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 1, ptr %type19.i.i303, align 4
  %code.i.i304 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %122 = ptrtoint ptr %code.i.i304 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 403, ptr %code.i.i304, align 2
  br label %return.sink.split

sw.bb32:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i306 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %123 = ptrtoint ptr %input1.i.i306 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %input1.i.i306, align 4
  %keybit.i.i307 = getelementptr inbounds %struct.input_dev, ptr %124, i32 0, i32 6
  %type19.i.i308 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %125 = ptrtoint ptr %type19.i.i308 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 1, ptr %type19.i.i308, align 4
  %code.i.i309 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %126 = ptrtoint ptr %code.i.i309 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 114, ptr %code.i.i309, align 2
  br label %return.sink.split

sw.bb33:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input1.i.i311 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %127 = ptrtoint ptr %input1.i.i311 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %input1.i.i311, align 4
  %keybit.i.i312 = getelementptr inbounds %struct.input_dev, ptr %128, i32 0, i32 6
  %type19.i.i313 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %129 = ptrtoint ptr %type19.i.i313 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 1, ptr %type19.i.i313, align 4
  %code.i.i314 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %130 = ptrtoint ptr %code.i.i314 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 115, ptr %code.i.i314, align 2
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb33, %sw.bb32, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb
  %keybit.i.i.sink316 = phi ptr [ %keybit.i.i, %sw.bb ], [ %keybit.i.i162, %sw.bb3 ], [ %keybit.i.i167, %sw.bb4 ], [ %keybit.i.i172, %sw.bb5 ], [ %keybit.i.i177, %sw.bb6 ], [ %keybit.i.i182, %sw.bb7 ], [ %keybit.i.i187, %sw.bb8 ], [ %keybit.i.i192, %sw.bb9 ], [ %keybit.i.i197, %sw.bb10 ], [ %keybit.i.i202, %sw.bb11 ], [ %keybit.i.i207, %sw.bb12 ], [ %keybit.i.i212, %sw.bb13 ], [ %keybit.i.i217, %sw.bb14 ], [ %keybit.i.i222, %sw.bb15 ], [ %keybit.i.i227, %sw.bb16 ], [ %keybit.i.i232, %sw.bb17 ], [ %keybit.i.i237, %sw.bb18 ], [ %keybit.i.i242, %sw.bb19 ], [ %keybit.i.i247, %sw.bb20 ], [ %keybit.i.i252, %sw.bb21 ], [ %keybit.i.i257, %sw.bb22 ], [ %keybit.i.i262, %sw.bb23 ], [ %keybit.i.i267, %sw.bb24 ], [ %keybit.i.i272, %sw.bb25 ], [ %keybit.i.i277, %sw.bb26 ], [ %keybit.i.i282, %sw.bb27 ], [ %keybit.i.i287, %sw.bb28 ], [ %keybit.i.i292, %sw.bb29 ], [ %keybit.i.i297, %sw.bb30 ], [ %keybit.i.i302, %sw.bb31 ], [ %keybit.i.i307, %sw.bb32 ], [ %keybit.i.i312, %sw.bb33 ]
  %code.i.i.sink = phi ptr [ %code.i.i, %sw.bb ], [ %code.i.i164, %sw.bb3 ], [ %code.i.i169, %sw.bb4 ], [ %code.i.i174, %sw.bb5 ], [ %code.i.i179, %sw.bb6 ], [ %code.i.i184, %sw.bb7 ], [ %code.i.i189, %sw.bb8 ], [ %code.i.i194, %sw.bb9 ], [ %code.i.i199, %sw.bb10 ], [ %code.i.i204, %sw.bb11 ], [ %code.i.i209, %sw.bb12 ], [ %code.i.i214, %sw.bb13 ], [ %code.i.i219, %sw.bb14 ], [ %code.i.i224, %sw.bb15 ], [ %code.i.i229, %sw.bb16 ], [ %code.i.i234, %sw.bb17 ], [ %code.i.i239, %sw.bb18 ], [ %code.i.i244, %sw.bb19 ], [ %code.i.i249, %sw.bb20 ], [ %code.i.i254, %sw.bb21 ], [ %code.i.i259, %sw.bb22 ], [ %code.i.i264, %sw.bb23 ], [ %code.i.i269, %sw.bb24 ], [ %code.i.i274, %sw.bb25 ], [ %code.i.i279, %sw.bb26 ], [ %code.i.i284, %sw.bb27 ], [ %code.i.i289, %sw.bb28 ], [ %code.i.i294, %sw.bb29 ], [ %code.i.i299, %sw.bb30 ], [ %code.i.i304, %sw.bb31 ], [ %code.i.i309, %sw.bb32 ], [ %code.i.i314, %sw.bb33 ]
  %131 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 767, ptr %max, align 4
  %132 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %keybit.i.i.sink316, ptr %bit, align 4
  %133 = ptrtoint ptr %code.i.i.sink to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %code.i.i.sink, align 2
  %conv1.i = zext i16 %134 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i, ptr noundef nonnull %keybit.i.i.sink316) #3
  br label %return

return:                                           ; preds = %return.sink.split, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ -1, %if.end.return_crit_edge ], [ 1, %return.sink.split ]
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

!0 = !{ptr @__initcall__kmod_hid_twinhan__223_132_twinhan_driver_init6, !1, !"__initcall__kmod_hid_twinhan__223_132_twinhan_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-twinhan.c", i32 132, i32 1}
!2 = !{ptr @__exitcall_twinhan_driver_exit, !1, !"__exitcall_twinhan_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file224, !4, !"__UNIQUE_ID_file224", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-twinhan.c", i32 134, i32 1}
!5 = !{ptr @__UNIQUE_ID_license225, !4, !"__UNIQUE_ID_license225", i1 false, i1 false}
!6 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/hid/hid-twinhan.c", i32 128, i32 10}
!9 = !{ptr @twinhan_driver, !10, !"twinhan_driver", i1 false, i1 false}
!10 = !{!"../drivers/hid/hid-twinhan.c", i32 127, i32 26}
!11 = !{ptr @twinhan_devices, !12, !"twinhan_devices", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-twinhan.c", i32 121, i32 35}
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
