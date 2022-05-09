; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-cypress.c_pt.bc'
source_filename = "../drivers/hid/hid-cypress.c"
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
%struct.hid_usage = type { i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i16 }
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.list_head, i32 }

@__initcall__kmod_hid_cypress__223_177_cp_driver_init6 = internal global ptr @cp_driver_init, section ".initcall6.init", align 4
@cp_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @cp_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @cp_probe, ptr null, ptr null, ptr null, ptr null, ptr @cp_event, ptr null, ptr @cp_report_fixup, ptr null, ptr @cp_input_mapped, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cp_driver_exit = internal global ptr @cp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file224 = internal constant [41 x i8] c"hid_cypress.file=drivers/hid/hid-cypress\00", section ".modinfo", align 1
@__UNIQUE_ID_license225 = internal constant [24 x i8] c"hid_cypress.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hid_cypress\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cypress\00", [24 x i8] zeroinitializer }, align 32
@cp_devices = internal constant { [7 x %struct.hid_device_id], [48 x i8] } { [7 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1204, i32 56929, i32 1 }, %struct.hid_device_id { i16 3, i16 0, i32 1204, i32 56932, i32 1 }, %struct.hid_device_id { i16 3, i16 0, i32 1204, i32 48289, i32 1 }, %struct.hid_device_id { i16 3, i16 0, i32 1204, i32 60801, i32 1 }, %struct.hid_device_id { i16 3, i16 0, i32 1204, i32 1, i32 2 }, %struct.hid_device_id { i16 3, i16 0, i32 1204, i32 1969, i32 8 }, %struct.hid_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@cp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 137, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cp_probe\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/hid/hid-cypress.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cp_probe._entry_ptr = internal global ptr @cp_probe._entry, section ".printk_index", align 4
@cp_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 143, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw start failed\0A\00", [47 x i8] zeroinitializer }, align 32
@cp_probe._entry_ptr.9 = internal global ptr @cp_probe._entry.7, section ".printk_index", align 4
@va_logical_boundary_fixup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 63, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"fixing up varmilo VA104M consumer control report descriptor\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"va_logical_boundary_fixup\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@va_logical_boundary_fixup._entry_ptr = internal global ptr @va_logical_boundary_fixup._entry, section ".printk_index", align 4
@___asan_gen_.13 = private unnamed_addr constant [10 x i8] c"cp_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 169, i32 26 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 177, i32 1 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 170, i32 10 }
@___asan_gen_.22 = private unnamed_addr constant [11 x i8] c"cp_devices\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 152, i32 35 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 137, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 143, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private constant [29 x i8] c"../drivers/hid/hid-cypress.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 62, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_file224, ptr @__UNIQUE_ID_license225, ptr @__exitcall_cp_driver_exit, ptr @__initcall__kmod_hid_cypress__223_177_cp_driver_init6, ptr @cp_driver_exit, ptr @cp_probe._entry, ptr @cp_probe._entry.7, ptr @cp_probe._entry_ptr, ptr @cp_probe._entry_ptr.9, ptr @va_logical_boundary_fixup._entry, ptr @va_logical_boundary_fixup._entry_ptr, ptr @cp_driver, ptr @.str, ptr @.str.1, ptr @cp_devices, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp_devices to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @va_logical_boundary_fixup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cp_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @cp_driver, ptr noundef null, ptr noundef nonnull @.str) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cp_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @hid_unregister_driver(ptr noundef nonnull @cp_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp_probe(ptr noundef %hdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device_id, ptr %id, i32 0, i32 4
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %2 = inttoptr i32 %1 to ptr
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %driver_data.i.i, align 4
  %call.i = tail call i32 @hid_open_report(ptr noundef %hdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 45) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.2.sink = phi ptr [ @.str.2, %entry.cleanup.sink.split_crit_edge ], [ @.str.8, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i, %entry.cleanup.sink.split_crit_edge ], [ %call1, %if.end.cleanup.sink.split_crit_edge ]
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.2.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp_event(ptr nocapture noundef %hdev, ptr nocapture noundef readonly %field, ptr nocapture noundef readonly %usage, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  %claimed = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 33
  %3 = ptrtoint ptr %claimed to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %claimed, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %hidinput = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 19
  %5 = ptrtoint ptr %hidinput to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hidinput, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %type = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  %and5 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %or.cond = select i1 %tobool3.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %9 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 589829, i32 %10)
  %cmp = icmp eq i32 %10, 589829
  br i1 %cmp, label %if.then7, label %if.end12

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool8.not = icmp eq i32 %value, 0
  %and10 = and i32 %2, -5
  %masksel = select i1 %tobool8.not, i32 0, i32 4
  %quirks.0 = or i32 %and10, %masksel
  %11 = inttoptr i32 %quirks.0 to ptr
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %driver_data.i.i, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %code = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %13 = ptrtoint ptr %code to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %code, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %14)
  %cmp13 = icmp ne i16 %14, 8
  %and15 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %or.cond35 = select i1 %cmp13, i1 true, i1 %tobool16.not
  br i1 %or.cond35, label %if.end12.cleanup_crit_edge, label %if.then17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %input19 = getelementptr inbounds %struct.hid_input, ptr %6, i32 0, i32 2
  %15 = ptrtoint ptr %input19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %input19, align 4
  %conv21 = zext i8 %8 to i32
  tail call void @input_event(ptr noundef %16, i32 noundef %conv21, i32 noundef 6, i32 noundef %value) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end12.cleanup_crit_edge, %if.then7, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then7 ], [ 1, %if.then17 ], [ 0, %lor.lhs.false2.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cp_report_fixup(ptr noundef %hdev, ptr noundef %rdesc, ptr nocapture noundef readonly %rsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %switch = icmp ult i32 %4, 5
  br i1 %switch, label %if.then.if.end_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.03.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %rdesc, i32 %i.03.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 41, i8 %6)
  %cmp2.i = icmp eq i8 %6, 41
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %add.i = add i32 %i.03.i, 2
  %arrayidx4.i = getelementptr i8, ptr %rdesc, i32 %add.i
  %7 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %8)
  %cmp6.i = icmp eq i8 %8, 25
  br i1 %cmp6.i, label %if.then8.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.then8.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 25, ptr %arrayidx.i, align 1
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 41, ptr %arrayidx4.i, align 1
  %add12.i = add i32 %i.03.i, 3
  %arrayidx13.i = getelementptr i8, ptr %rdesc, i32 %add12.i
  %11 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx13.i, align 1
  %add14.i = add nuw i32 %i.03.i, 1
  %arrayidx15.i = getelementptr i8, ptr %rdesc, i32 %add14.i
  %13 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx15.i, align 1
  store i8 %14, ptr %arrayidx13.i, align 1
  store i8 %12, ptr %arrayidx15.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then8.i, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.03.i, 1
  %15 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rsize, align 4
  %sub.i = add i32 %16, -4
  %cmp1.i = icmp ult i32 %inc.i, %sub.i
  br i1 %cmp1.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %and2 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then4:                                         ; preds = %if.end
  %17 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %18)
  %cmp.i13 = icmp eq i32 %18, 25
  br i1 %cmp.i13, label %land.lhs.true.i15, label %if.then4.if.end6_crit_edge

if.then4.if.end6_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

land.lhs.true.i15:                                ; preds = %if.then4
  %19 = ptrtoint ptr %rdesc to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rdesc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %20)
  %cmp1.i14 = icmp eq i8 %20, 5
  br i1 %cmp1.i14, label %land.lhs.true3.i, label %land.lhs.true.i15.if.end6_crit_edge

land.lhs.true.i15.if.end6_crit_edge:              ; preds = %land.lhs.true.i15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i15
  %arrayidx4.i16 = getelementptr i8, ptr %rdesc, i32 1
  %21 = ptrtoint ptr %arrayidx4.i16 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx4.i16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %22)
  %cmp6.i17 = icmp eq i8 %22, 12
  br i1 %cmp6.i17, label %land.lhs.true8.i, label %land.lhs.true3.i.if.end6_crit_edge

land.lhs.true3.i.if.end6_crit_edge:               ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

land.lhs.true8.i:                                 ; preds = %land.lhs.true3.i
  %arrayidx9.i = getelementptr i8, ptr %rdesc, i32 2
  %23 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %24)
  %cmp11.i = icmp eq i8 %24, 9
  br i1 %cmp11.i, label %land.lhs.true13.i, label %land.lhs.true8.i.if.end6_crit_edge

land.lhs.true8.i.if.end6_crit_edge:               ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

land.lhs.true13.i:                                ; preds = %land.lhs.true8.i
  %arrayidx14.i = getelementptr i8, ptr %rdesc, i32 3
  %25 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx14.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp16.i = icmp eq i8 %26, 1
  br i1 %cmp16.i, label %land.lhs.true18.i, label %land.lhs.true13.i.if.end6_crit_edge

land.lhs.true13.i.if.end6_crit_edge:              ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

land.lhs.true18.i:                                ; preds = %land.lhs.true13.i
  %arrayidx19.i = getelementptr i8, ptr %rdesc, i32 6
  %27 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx19.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %28)
  %cmp21.i = icmp eq i8 %28, 25
  br i1 %cmp21.i, label %land.lhs.true23.i, label %land.lhs.true18.i.if.end6_crit_edge

land.lhs.true18.i.if.end6_crit_edge:              ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

land.lhs.true23.i:                                ; preds = %land.lhs.true18.i
  %arrayidx24.i = getelementptr i8, ptr %rdesc, i32 7
  %29 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx24.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp26.i = icmp eq i8 %30, 0
  br i1 %cmp26.i, label %land.lhs.true28.i, label %land.lhs.true23.i.if.end6_crit_edge

land.lhs.true23.i.if.end6_crit_edge:              ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

land.lhs.true28.i:                                ; preds = %land.lhs.true23.i
  %arrayidx29.i = getelementptr i8, ptr %rdesc, i32 11
  %31 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx29.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %32)
  %cmp31.i = icmp eq i8 %32, 22
  br i1 %cmp31.i, label %land.lhs.true33.i, label %land.lhs.true28.i.if.end6_crit_edge

land.lhs.true28.i.if.end6_crit_edge:              ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

land.lhs.true33.i:                                ; preds = %land.lhs.true28.i
  %arrayidx34.i = getelementptr i8, ptr %rdesc, i32 12
  %33 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx34.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %34)
  %cmp36.i = icmp eq i8 %34, 60
  br i1 %cmp36.i, label %land.lhs.true38.i, label %land.lhs.true33.i.if.end6_crit_edge

land.lhs.true33.i.if.end6_crit_edge:              ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

land.lhs.true38.i:                                ; preds = %land.lhs.true33.i
  %arrayidx39.i = getelementptr i8, ptr %rdesc, i32 13
  %35 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx39.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %36)
  %cmp41.i = icmp eq i8 %36, 2
  br i1 %cmp41.i, label %do.end.i, label %land.lhs.true38.i.if.end6_crit_edge

land.lhs.true38.i.if.end6_crit_edge:              ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

do.end.i:                                         ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.10) #7
  %37 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %arrayidx34.i, align 1
  %38 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %arrayidx39.i, align 1
  br label %if.end6

if.end6:                                          ; preds = %do.end.i, %land.lhs.true38.i.if.end6_crit_edge, %land.lhs.true33.i.if.end6_crit_edge, %land.lhs.true28.i.if.end6_crit_edge, %land.lhs.true23.i.if.end6_crit_edge, %land.lhs.true18.i.if.end6_crit_edge, %land.lhs.true13.i.if.end6_crit_edge, %land.lhs.true8.i.if.end6_crit_edge, %land.lhs.true3.i.if.end6_crit_edge, %land.lhs.true.i15.if.end6_crit_edge, %if.then4.if.end6_crit_edge, %if.end.if.end6_crit_edge
  ret ptr %rdesc
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cp_input_mapped(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readnone %hi, ptr nocapture noundef readnone %field, ptr nocapture noundef readonly %usage, ptr nocapture noundef readonly %bit, ptr nocapture noundef readnone %max) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp = icmp eq i8 %4, 2
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %code = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %5 = ptrtoint ptr %code to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %code, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %6)
  %cmp3 = icmp eq i16 %6, 8
  br i1 %cmp3, label %if.then5, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bit, align 4
  tail call void @_set_bit(i32 noundef 6, ptr noundef %8) #4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %9 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 589829, i32 %10)
  %cmp7 = icmp eq i32 %10, 589829
  %. = sext i1 %cmp7 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %., %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__initcall__kmod_hid_cypress__223_177_cp_driver_init6, !1, !"__initcall__kmod_hid_cypress__223_177_cp_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-cypress.c", i32 177, i32 1}
!2 = !{ptr @__exitcall_cp_driver_exit, !1, !"__exitcall_cp_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file224, !4, !"__UNIQUE_ID_file224", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-cypress.c", i32 179, i32 1}
!5 = !{ptr @__UNIQUE_ID_license225, !4, !"__UNIQUE_ID_license225", i1 false, i1 false}
!6 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/hid/hid-cypress.c", i32 170, i32 10}
!9 = !{ptr @cp_driver, !10, !"cp_driver", i1 false, i1 false}
!10 = !{!"../drivers/hid/hid-cypress.c", i32 169, i32 26}
!11 = !{ptr @cp_devices, !12, !"cp_devices", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-cypress.c", i32 152, i32 35}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-cypress.c", i32 137, i32 3}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @cp_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @cp_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hid/hid-cypress.c", i32 143, i32 3}
!23 = !{ptr @cp_probe._entry.7, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @cp_probe._entry_ptr.9, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hid/hid-cypress.c", i32 62, i32 3}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @va_logical_boundary_fixup._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @va_logical_boundary_fixup._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
