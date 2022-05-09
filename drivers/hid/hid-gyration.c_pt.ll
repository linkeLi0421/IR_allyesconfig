; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-gyration.c_pt.bc'
source_filename = "../drivers/hid/hid-gyration.c"
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
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.list_head, i32 }
%struct.hid_usage = type { i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i16 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_hid_gyration__223_88_gyration_driver_init6 = internal global ptr @gyration_driver_init, section ".initcall6.init", align 4
@gyration_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @gyration_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gyration_event, ptr null, ptr null, ptr @gyration_input_mapping, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_gyration_driver_exit = internal global ptr @gyration_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file224 = internal constant [43 x i8] c"hid_gyration.file=drivers/hid/hid-gyration\00", section ".modinfo", align 1
@__UNIQUE_ID_license225 = internal constant [25 x i8] c"hid_gyration.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hid_gyration\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gyration\00", [23 x i8] zeroinitializer }, align 32
@gyration_devices = internal constant { [4 x %struct.hid_device_id], [32 x i8] } { [4 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 3094, i32 2, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3094, i32 3, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3094, i32 8, i32 0 }, %struct.hid_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@__func__.hid_map_usage = private unnamed_addr constant [14 x i8] c"hid_map_usage\00", align 1
@hid_map_usage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @__func__.hid_map_usage, ptr @.str.4, i32 1037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: Invalid code %d type %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/hid.h\00", [44 x i8] zeroinitializer }, align 32
@hid_map_usage._entry_ptr = internal global ptr @hid_map_usage._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 16, i64 13, i64 36, i64 37, i64 70, i64 71, i64 72, i64 73, i64 74, i64 90, i64 91, i64 92, i64 93, i64 94]
@___asan_gen_.5 = private unnamed_addr constant [16 x i8] c"gyration_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 82, i32 26 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 88, i32 1 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 83, i32 10 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"gyration_devices\00", align 1
@___asan_gen_.15 = private constant [30 x i8] c"../drivers/hid/hid-gyration.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 74, i32 35 }
@___asan_gen_.17 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [23 x i8] c"../include/linux/hid.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 1036, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_file224, ptr @__UNIQUE_ID_license225, ptr @__exitcall_gyration_driver_exit, ptr @__initcall__kmod_hid_gyration__223_88_gyration_driver_init6, ptr @gyration_driver_exit, ptr @hid_map_usage._entry, ptr @hid_map_usage._entry_ptr, ptr @gyration_driver, ptr @.str, ptr @.str.1, ptr @gyration_devices, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gyration_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gyration_devices to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_map_usage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gyration_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @gyration_driver, ptr noundef null, ptr noundef nonnull @.str) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gyration_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @hid_unregister_driver(ptr noundef nonnull @gyration_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gyration_event(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %field, ptr nocapture noundef readonly %usage, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %claimed = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 33
  %0 = ptrtoint ptr %claimed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %claimed, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %hidinput = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 19
  %2 = ptrtoint ptr %hidinput to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hidinput, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usage, align 4
  %6 = and i32 %5, -65281
  call void @__sanitizer_cov_trace_const_cmp4(i32 65666, i32 %6)
  %7 = icmp eq i32 %6, 65666
  br i1 %7, label %if.then6, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %input8 = getelementptr inbounds %struct.hid_input, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %input8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input8, align 4
  %type = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %type, align 4
  %conv = zext i8 %11 to i32
  %code = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %12 = ptrtoint ptr %code to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %code, align 2
  %conv9 = zext i16 %13 to i32
  tail call void @input_event(ptr noundef %9, i32 noundef %conv, i32 noundef %conv9, i32 noundef 1) #3
  tail call void @input_event(ptr noundef %9, i32 noundef 0, i32 noundef 0, i32 noundef 0) #3
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %type, align 4
  %conv11 = zext i8 %15 to i32
  %16 = ptrtoint ptr %code to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %code, align 2
  %conv13 = zext i16 %17 to i32
  tail call void @input_event(ptr noundef %9, i32 noundef %conv11, i32 noundef %conv13, i32 noundef 0) #3
  tail call void @input_event(ptr noundef %9, i32 noundef 0, i32 noundef 0, i32 noundef 0) #3
  br label %return

return:                                           ; preds = %if.then6, %if.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.then6 ], [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gyration_input_mapping(ptr nocapture noundef readnone %hdev, ptr nocapture noundef readonly %hi, ptr nocapture noundef readnone %field, ptr noundef %usage, ptr nocapture noundef writeonly %bit, ptr nocapture noundef writeonly %max) #2 align 64 {
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
  %input = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 20, ptr noundef %evbit) #3
  %4 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usage, align 4
  %trunc = trunc i32 %5 to i16
  %6 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %if.end.return_crit_edge [
    i16 13, label %sw.bb
    i16 36, label %sw.bb3
    i16 37, label %sw.bb4
    i16 70, label %sw.bb5
    i16 71, label %sw.bb6
    i16 72, label %sw.bb7
    i16 73, label %sw.bb8
    i16 74, label %sw.bb9
    i16 90, label %sw.bb10
    i16 91, label %sw.bb11
    i16 92, label %sw.bb12
    i16 93, label %sw.bb13
    i16 94, label %sw.bb14
  ]

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %input, align 4
  %keybit.i.i = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 6
  %type19.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %9 = ptrtoint ptr %type19.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %type19.i.i, align 4
  %code.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %10 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 102, ptr %code.i.i, align 2
  br label %return.sink.split

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %11 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %input, align 4
  %keybit.i.i67 = getelementptr inbounds %struct.input_dev, ptr %12, i32 0, i32 6
  %type19.i.i68 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %13 = ptrtoint ptr %type19.i.i68 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %type19.i.i68, align 4
  %code.i.i69 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %14 = ptrtoint ptr %code.i.i69 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 389, ptr %code.i.i69, align 2
  br label %return.sink.split

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %input, align 4
  %keybit.i.i72 = getelementptr inbounds %struct.input_dev, ptr %16, i32 0, i32 6
  %type19.i.i73 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %17 = ptrtoint ptr %type19.i.i73 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %type19.i.i73, align 4
  %code.i.i74 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %18 = ptrtoint ptr %code.i.i74 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 366, ptr %code.i.i74, align 2
  br label %return.sink.split

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %input, align 4
  %keybit.i.i77 = getelementptr inbounds %struct.input_dev, ptr %20, i32 0, i32 6
  %type19.i.i78 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %21 = ptrtoint ptr %type19.i.i78 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %type19.i.i78, align 4
  %code.i.i79 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %22 = ptrtoint ptr %code.i.i79 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 226, ptr %code.i.i79, align 2
  br label %return.sink.split

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %23 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %input, align 4
  %keybit.i.i82 = getelementptr inbounds %struct.input_dev, ptr %24, i32 0, i32 6
  %type19.i.i83 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %25 = ptrtoint ptr %type19.i.i83 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %type19.i.i83, align 4
  %code.i.i84 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %26 = ptrtoint ptr %code.i.i84 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 391, ptr %code.i.i84, align 2
  br label %return.sink.split

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %27 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %input, align 4
  %keybit.i.i87 = getelementptr inbounds %struct.input_dev, ptr %28, i32 0, i32 6
  %type19.i.i88 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %29 = ptrtoint ptr %type19.i.i88 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %type19.i.i88, align 4
  %code.i.i89 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %30 = ptrtoint ptr %code.i.i89 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 226, ptr %code.i.i89, align 2
  br label %return.sink.split

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %31 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %input, align 4
  %keybit.i.i92 = getelementptr inbounds %struct.input_dev, ptr %32, i32 0, i32 6
  %type19.i.i93 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %33 = ptrtoint ptr %type19.i.i93 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %type19.i.i93, align 4
  %code.i.i94 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %34 = ptrtoint ptr %code.i.i94 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 212, ptr %code.i.i94, align 2
  br label %return.sink.split

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %35 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %input, align 4
  %keybit.i.i97 = getelementptr inbounds %struct.input_dev, ptr %36, i32 0, i32 6
  %type19.i.i98 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %37 = ptrtoint ptr %type19.i.i98 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %type19.i.i98, align 4
  %code.i.i99 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %38 = ptrtoint ptr %code.i.i99 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 393, ptr %code.i.i99, align 2
  br label %return.sink.split

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %39 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %input, align 4
  %keybit.i.i102 = getelementptr inbounds %struct.input_dev, ptr %40, i32 0, i32 6
  %type19.i.i103 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %41 = ptrtoint ptr %type19.i.i103 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %type19.i.i103, align 4
  %code.i.i104 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %42 = ptrtoint ptr %code.i.i104 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 388, ptr %code.i.i104, align 2
  br label %return.sink.split

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %43 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %input, align 4
  %keybit.i.i107 = getelementptr inbounds %struct.input_dev, ptr %44, i32 0, i32 6
  %type19.i.i108 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %45 = ptrtoint ptr %type19.i.i108 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %type19.i.i108, align 4
  %code.i.i109 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %46 = ptrtoint ptr %code.i.i109 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 398, ptr %code.i.i109, align 2
  br label %return.sink.split

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %47 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %input, align 4
  %keybit.i.i112 = getelementptr inbounds %struct.input_dev, ptr %48, i32 0, i32 6
  %type19.i.i113 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %49 = ptrtoint ptr %type19.i.i113 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %type19.i.i113, align 4
  %code.i.i114 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %50 = ptrtoint ptr %code.i.i114 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 399, ptr %code.i.i114, align 2
  br label %return.sink.split

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %51 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %input, align 4
  %keybit.i.i117 = getelementptr inbounds %struct.input_dev, ptr %52, i32 0, i32 6
  %type19.i.i118 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %53 = ptrtoint ptr %type19.i.i118 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %type19.i.i118, align 4
  %code.i.i119 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %54 = ptrtoint ptr %code.i.i119 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 400, ptr %code.i.i119, align 2
  br label %return.sink.split

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %55 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %input, align 4
  %keybit.i.i122 = getelementptr inbounds %struct.input_dev, ptr %56, i32 0, i32 6
  %type19.i.i123 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %57 = ptrtoint ptr %type19.i.i123 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %type19.i.i123, align 4
  %code.i.i124 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %58 = ptrtoint ptr %code.i.i124 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 401, ptr %code.i.i124, align 2
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb
  %keybit.i.i.sink126 = phi ptr [ %keybit.i.i, %sw.bb ], [ %keybit.i.i67, %sw.bb3 ], [ %keybit.i.i72, %sw.bb4 ], [ %keybit.i.i77, %sw.bb5 ], [ %keybit.i.i82, %sw.bb6 ], [ %keybit.i.i87, %sw.bb7 ], [ %keybit.i.i92, %sw.bb8 ], [ %keybit.i.i97, %sw.bb9 ], [ %keybit.i.i102, %sw.bb10 ], [ %keybit.i.i107, %sw.bb11 ], [ %keybit.i.i112, %sw.bb12 ], [ %keybit.i.i117, %sw.bb13 ], [ %keybit.i.i122, %sw.bb14 ]
  %code.i.i.sink = phi ptr [ %code.i.i, %sw.bb ], [ %code.i.i69, %sw.bb3 ], [ %code.i.i74, %sw.bb4 ], [ %code.i.i79, %sw.bb5 ], [ %code.i.i84, %sw.bb6 ], [ %code.i.i89, %sw.bb7 ], [ %code.i.i94, %sw.bb8 ], [ %code.i.i99, %sw.bb9 ], [ %code.i.i104, %sw.bb10 ], [ %code.i.i109, %sw.bb11 ], [ %code.i.i114, %sw.bb12 ], [ %code.i.i119, %sw.bb13 ], [ %code.i.i124, %sw.bb14 ]
  %59 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 767, ptr %max, align 4
  %60 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %keybit.i.i.sink126, ptr %bit, align 4
  %61 = ptrtoint ptr %code.i.i.sink to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %code.i.i.sink, align 2
  %conv1.i = zext i16 %62 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i, ptr noundef nonnull %keybit.i.i.sink126) #3
  br label %return

return:                                           ; preds = %return.sink.split, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ 1, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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

!0 = !{ptr @__initcall__kmod_hid_gyration__223_88_gyration_driver_init6, !1, !"__initcall__kmod_hid_gyration__223_88_gyration_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-gyration.c", i32 88, i32 1}
!2 = !{ptr @__exitcall_gyration_driver_exit, !1, !"__exitcall_gyration_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file224, !4, !"__UNIQUE_ID_file224", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-gyration.c", i32 90, i32 1}
!5 = !{ptr @__UNIQUE_ID_license225, !4, !"__UNIQUE_ID_license225", i1 false, i1 false}
!6 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/hid/hid-gyration.c", i32 83, i32 10}
!9 = !{ptr @gyration_driver, !10, !"gyration_driver", i1 false, i1 false}
!10 = !{!"../drivers/hid/hid-gyration.c", i32 82, i32 26}
!11 = !{ptr @gyration_devices, !12, !"gyration_devices", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-gyration.c", i32 74, i32 35}
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
