; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-holtek-mouse.c_pt.bc'
source_filename = "../drivers/hid/hid-holtek-mouse.c"
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
%struct.hid_ll_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@__initcall__kmod_hid_holtek_mouse__232_112_holtek_mouse_driver_init6 = internal global ptr @holtek_mouse_driver_init, section ".initcall6.init", align 4
@holtek_mouse_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @holtek_mouse_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @holtek_mouse_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @holtek_mouse_report_fixup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_holtek_mouse_driver_exit = internal global ptr @holtek_mouse_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file233 = internal constant [51 x i8] c"hid_holtek_mouse.file=drivers/hid/hid-holtek-mouse\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [29 x i8] c"hid_holtek_mouse.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hid_holtek_mouse\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"holtek_mouse\00", [19 x i8] zeroinitializer }, align 32
@holtek_mouse_devices = internal constant { [7 x %struct.hid_device_id], [48 x i8] } { [7 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1241, i32 41063, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1241, i32 41072, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1241, i32 41034, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1241, i32 41074, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1241, i32 41089, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1241, i32 41154, i32 0 }, %struct.hid_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@holtek_mouse_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 75, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hid parse failed: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"holtek_mouse_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/hid/hid-holtek-mouse.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@holtek_mouse_probe._entry_ptr = internal global ptr @holtek_mouse_probe._entry, section ".printk_index", align 4
@holtek_mouse_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 81, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hw start failed: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@holtek_mouse_probe._entry_ptr.9 = internal global ptr @holtek_mouse_probe._entry.7, section ".printk_index", align 4
@usb_hid_driver = external dso_local global %struct.hid_ll_driver, align 4
@holtek_mouse_report_fixup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 46, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Fixing up report descriptor\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"holtek_mouse_report_fixup\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@holtek_mouse_report_fixup._entry_ptr = internal global ptr @holtek_mouse_report_fixup._entry, section ".printk_index", align 4
@holtek_mouse_report_fixup._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 55, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@holtek_mouse_report_fixup._entry_ptr.14 = internal global ptr @holtek_mouse_report_fixup._entry.13, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 41034, i64 41063, i64 41072, i64 41074, i64 41089, i64 41154]
@___asan_gen_.15 = private unnamed_addr constant [20 x i8] c"holtek_mouse_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 105, i32 26 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 112, i32 1 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 106, i32 10 }
@___asan_gen_.24 = private unnamed_addr constant [21 x i8] c"holtek_mouse_devices\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 88, i32 35 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 75, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 81, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 46, i32 5 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private constant [34 x i8] c"../drivers/hid/hid-holtek-mouse.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 55, i32 5 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_holtek_mouse_driver_exit, ptr @__initcall__kmod_hid_holtek_mouse__232_112_holtek_mouse_driver_init6, ptr @holtek_mouse_driver_exit, ptr @holtek_mouse_probe._entry, ptr @holtek_mouse_probe._entry.7, ptr @holtek_mouse_probe._entry_ptr, ptr @holtek_mouse_probe._entry_ptr.9, ptr @holtek_mouse_report_fixup._entry, ptr @holtek_mouse_report_fixup._entry.13, ptr @holtek_mouse_report_fixup._entry_ptr, ptr @holtek_mouse_report_fixup._entry_ptr.14, ptr @holtek_mouse_driver, ptr @.str, ptr @.str.1, ptr @holtek_mouse_devices, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @holtek_mouse_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @holtek_mouse_devices to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @holtek_mouse_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @holtek_mouse_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @holtek_mouse_report_fixup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @holtek_mouse_report_fixup._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @holtek_mouse_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @holtek_mouse_driver, ptr noundef null, ptr noundef nonnull @.str) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @holtek_mouse_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @hid_unregister_driver(ptr noundef nonnull @holtek_mouse_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @holtek_mouse_probe(ptr noundef %hdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ll_driver.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 20
  %0 = ptrtoint ptr %ll_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ll_driver.i.i, align 4
  %cmp.i.i = icmp eq ptr %1, @usb_hid_driver
  br i1 %cmp.i.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @hid_open_report(ptr noundef %hdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end3, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %call.i) #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 45) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %do.end9

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %dev10 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.8, i32 noundef %call4) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %if.end3.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call4, %do.end9 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @holtek_mouse_report_fixup(ptr noundef %hdev, ptr noundef returned %rdesc, ptr nocapture noundef readonly %rsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %parent = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %cur_altsetting = getelementptr i8, ptr %1, i32 -28
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bInterfaceNumber, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %if.then, label %entry.if.end57_crit_edge

entry.if.end57_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

if.then:                                          ; preds = %entry
  %product = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %6 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %product, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.then.if.end57_crit_edge [
    i32 41063, label %if.then.sw.bb_crit_edge
    i32 41074, label %if.then.sw.bb_crit_edge74
    i32 41154, label %if.then.sw.bb_crit_edge75
    i32 41034, label %if.then.sw.bb26_crit_edge
    i32 41072, label %if.then.sw.bb26_crit_edge76
    i32 41089, label %if.then.sw.bb26_crit_edge77
  ]

if.then.sw.bb26_crit_edge77:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb26

if.then.sw.bb26_crit_edge76:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb26

if.then.sw.bb26_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb26

if.then.sw.bb_crit_edge75:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.then.sw.bb_crit_edge74:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.then.if.end57_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge74, %if.then.sw.bb_crit_edge75
  %9 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 121, i32 %10)
  %cmp2 = icmp ugt i32 %10, 121
  br i1 %cmp2, label %land.lhs.true, label %sw.bb.if.end57_crit_edge

sw.bb.if.end57_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

land.lhs.true:                                    ; preds = %sw.bb
  %arrayidx = getelementptr i8, ptr %rdesc, i32 115
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp5 = icmp eq i8 %12, -1
  br i1 %cmp5, label %land.lhs.true7, label %land.lhs.true.if.end57_crit_edge

land.lhs.true.if.end57_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

land.lhs.true7:                                   ; preds = %land.lhs.true
  %arrayidx8 = getelementptr i8, ptr %rdesc, i32 116
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %14)
  %cmp10 = icmp eq i8 %14, 127
  br i1 %cmp10, label %land.lhs.true12, label %land.lhs.true7.if.end57_crit_edge

land.lhs.true7.if.end57_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

land.lhs.true12:                                  ; preds = %land.lhs.true7
  %arrayidx13 = getelementptr i8, ptr %rdesc, i32 120
  %15 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %cmp15 = icmp eq i8 %16, -1
  br i1 %cmp15, label %land.lhs.true17, label %land.lhs.true12.if.end57_crit_edge

land.lhs.true12.if.end57_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

land.lhs.true17:                                  ; preds = %land.lhs.true12
  %arrayidx18 = getelementptr i8, ptr %rdesc, i32 121
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %18)
  %cmp20 = icmp eq i8 %18, 127
  br i1 %cmp20, label %land.lhs.true17.if.end57.sink.split_crit_edge, label %land.lhs.true17.if.end57_crit_edge

land.lhs.true17.if.end57_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

land.lhs.true17.if.end57.sink.split_crit_edge:    ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57.sink.split

sw.bb26:                                          ; preds = %if.then.sw.bb26_crit_edge, %if.then.sw.bb26_crit_edge76, %if.then.sw.bb26_crit_edge77
  %19 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 112, i32 %20)
  %cmp27 = icmp ugt i32 %20, 112
  br i1 %cmp27, label %land.lhs.true29, label %sw.bb26.if.end57_crit_edge

sw.bb26.if.end57_crit_edge:                       ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

land.lhs.true29:                                  ; preds = %sw.bb26
  %arrayidx30 = getelementptr i8, ptr %rdesc, i32 106
  %21 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %22)
  %cmp32 = icmp eq i8 %22, -1
  br i1 %cmp32, label %land.lhs.true34, label %land.lhs.true29.if.end57_crit_edge

land.lhs.true29.if.end57_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

land.lhs.true34:                                  ; preds = %land.lhs.true29
  %arrayidx35 = getelementptr i8, ptr %rdesc, i32 107
  %23 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx35, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %24)
  %cmp37 = icmp eq i8 %24, 127
  br i1 %cmp37, label %land.lhs.true39, label %land.lhs.true34.if.end57_crit_edge

land.lhs.true34.if.end57_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

land.lhs.true39:                                  ; preds = %land.lhs.true34
  %arrayidx40 = getelementptr i8, ptr %rdesc, i32 111
  %25 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx40, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %26)
  %cmp42 = icmp eq i8 %26, -1
  br i1 %cmp42, label %land.lhs.true44, label %land.lhs.true39.if.end57_crit_edge

land.lhs.true39.if.end57_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

land.lhs.true44:                                  ; preds = %land.lhs.true39
  %arrayidx45 = getelementptr i8, ptr %rdesc, i32 112
  %27 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx45, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %28)
  %cmp47 = icmp eq i8 %28, 127
  br i1 %cmp47, label %land.lhs.true44.if.end57.sink.split_crit_edge, label %land.lhs.true44.if.end57_crit_edge

land.lhs.true44.if.end57_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

land.lhs.true44.if.end57.sink.split_crit_edge:    ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57.sink.split

if.end57.sink.split:                              ; preds = %land.lhs.true44.if.end57.sink.split_crit_edge, %land.lhs.true17.if.end57.sink.split_crit_edge
  %arrayidx18.sink = phi ptr [ %arrayidx18, %land.lhs.true17.if.end57.sink.split_crit_edge ], [ %arrayidx45, %land.lhs.true44.if.end57.sink.split_crit_edge ]
  %arrayidx8.sink = phi ptr [ %arrayidx8, %land.lhs.true17.if.end57.sink.split_crit_edge ], [ %arrayidx35, %land.lhs.true44.if.end57.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.10) #7
  %29 = ptrtoint ptr %arrayidx18.sink to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 47, ptr %arrayidx18.sink, align 1
  %30 = ptrtoint ptr %arrayidx8.sink to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 47, ptr %arrayidx8.sink, align 1
  br label %if.end57

if.end57:                                         ; preds = %if.end57.sink.split, %land.lhs.true44.if.end57_crit_edge, %land.lhs.true39.if.end57_crit_edge, %land.lhs.true34.if.end57_crit_edge, %land.lhs.true29.if.end57_crit_edge, %sw.bb26.if.end57_crit_edge, %land.lhs.true17.if.end57_crit_edge, %land.lhs.true12.if.end57_crit_edge, %land.lhs.true7.if.end57_crit_edge, %land.lhs.true.if.end57_crit_edge, %sw.bb.if.end57_crit_edge, %if.then.if.end57_crit_edge, %entry.if.end57_crit_edge
  ret ptr %rdesc
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !31, !33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__initcall__kmod_hid_holtek_mouse__232_112_holtek_mouse_driver_init6, !1, !"__initcall__kmod_hid_holtek_mouse__232_112_holtek_mouse_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-holtek-mouse.c", i32 112, i32 1}
!2 = !{ptr @__exitcall_holtek_mouse_driver_exit, !1, !"__exitcall_holtek_mouse_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file233, !4, !"__UNIQUE_ID_file233", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-holtek-mouse.c", i32 113, i32 1}
!5 = !{ptr @__UNIQUE_ID_license234, !4, !"__UNIQUE_ID_license234", i1 false, i1 false}
!6 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/hid/hid-holtek-mouse.c", i32 106, i32 10}
!9 = !{ptr @holtek_mouse_driver, !10, !"holtek_mouse_driver", i1 false, i1 false}
!10 = !{!"../drivers/hid/hid-holtek-mouse.c", i32 105, i32 26}
!11 = !{ptr @holtek_mouse_devices, !12, !"holtek_mouse_devices", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-holtek-mouse.c", i32 88, i32 35}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-holtek-mouse.c", i32 75, i32 3}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @holtek_mouse_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @holtek_mouse_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hid/hid-holtek-mouse.c", i32 81, i32 3}
!23 = !{ptr @holtek_mouse_probe._entry.7, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @holtek_mouse_probe._entry_ptr.9, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hid/hid-holtek-mouse.c", i32 46, i32 5}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @holtek_mouse_report_fixup._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @holtek_mouse_report_fixup._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @holtek_mouse_report_fixup._entry.13, !32, !"_entry", i1 false, i1 false}
!32 = !{!"../drivers/hid/hid-holtek-mouse.c", i32 55, i32 5}
!33 = !{ptr @holtek_mouse_report_fixup._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
