; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-elecom.c_pt.bc'
source_filename = "../drivers/hid/hid-elecom.c"
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

@__initcall__kmod_hid_elecom__227_125_elecom_driver_init6 = internal global ptr @elecom_driver_init, section ".initcall6.init", align 4
@elecom_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @elecom_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @elecom_report_fixup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_elecom_driver_exit = internal global ptr @elecom_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file228 = internal constant [39 x i8] c"hid_elecom.file=drivers/hid/hid-elecom\00", section ".modinfo", align 1
@__UNIQUE_ID_license229 = internal constant [23 x i8] c"hid_elecom.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hid_elecom\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"elecom\00", [25 x i8] zeroinitializer }, align 32
@elecom_devices = internal constant { [10 x %struct.hid_device_id], [32 x i8] } { [10 x %struct.hid_device_id] [%struct.hid_device_id { i16 5, i16 0, i32 1390, i32 97, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1390, i32 230, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1390, i32 251, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1390, i32 252, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1390, i32 253, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1390, i32 254, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1390, i32 255, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1390, i32 268, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1390, i32 269, i32 0 }, %struct.hid_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@elecom_report_fixup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 63, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Fixing up Elecom BM084 report descriptor\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"elecom_report_fixup\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/hid/hid-elecom.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@elecom_report_fixup._entry_ptr = internal global ptr @elecom_report_fixup._entry, section ".printk_index", align 4
@mouse_button_fixup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 48, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Fixing up Elecom mouse button count\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mouse_button_fixup\00", [45 x i8] zeroinitializer }, align 32
@mouse_button_fixup._entry_ptr = internal global ptr @mouse_button_fixup._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 97, i64 230, i64 251, i64 252, i64 253, i64 254, i64 255, i64 268, i64 269]
@___asan_gen_.9 = private unnamed_addr constant [14 x i8] c"elecom_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 120, i32 26 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 125, i32 1 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 121, i32 10 }
@___asan_gen_.18 = private unnamed_addr constant [15 x i8] c"elecom_devices\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 106, i32 35 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 63, i32 4 }
@___asan_gen_.39 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [28 x i8] c"../drivers/hid/hid-elecom.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 48, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_file228, ptr @__UNIQUE_ID_license229, ptr @__exitcall_elecom_driver_exit, ptr @__initcall__kmod_hid_elecom__227_125_elecom_driver_init6, ptr @elecom_driver_exit, ptr @elecom_report_fixup._entry, ptr @elecom_report_fixup._entry_ptr, ptr @mouse_button_fixup._entry, ptr @mouse_button_fixup._entry_ptr, ptr @elecom_driver, ptr @.str, ptr @.str.1, ptr @elecom_devices, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elecom_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elecom_devices to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elecom_report_fixup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mouse_button_fixup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @elecom_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @elecom_driver, ptr noundef null, ptr noundef nonnull @.str) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @elecom_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @hid_unregister_driver(ptr noundef nonnull @elecom_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @elecom_report_fixup(ptr noundef %hdev, ptr noundef returned %rdesc, ptr nocapture noundef readonly %rsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %product = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %0 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %product, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 97, label %sw.bb
    i32 230, label %sw.bb9
    i32 251, label %entry.sw.bb10_crit_edge
    i32 252, label %entry.sw.bb10_crit_edge69
    i32 253, label %entry.sw.bb10_crit_edge70
    i32 254, label %entry.sw.bb11_crit_edge
    i32 255, label %entry.sw.bb11_crit_edge71
    i32 268, label %entry.sw.bb11_crit_edge72
    i32 269, label %entry.sw.bb11_crit_edge73
  ]

entry.sw.bb11_crit_edge73:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb11

entry.sw.bb11_crit_edge72:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb11

entry.sw.bb11_crit_edge71:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb11

entry.sw.bb11_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb11

entry.sw.bb10_crit_edge70:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb10

entry.sw.bb10_crit_edge69:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb10

entry.sw.bb10_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb10

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %4)
  %cmp = icmp ugt i32 %4, 47
  br i1 %cmp, label %land.lhs.true, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %arrayidx = getelementptr i8, ptr %rdesc, i32 46
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %6)
  %cmp1 = icmp eq i8 %6, 5
  br i1 %cmp1, label %land.lhs.true3, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true3:                                   ; preds = %land.lhs.true
  %arrayidx4 = getelementptr i8, ptr %rdesc, i32 47
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %8)
  %cmp6 = icmp eq i8 %8, 12
  br i1 %cmp6, label %do.end, label %land.lhs.true3.sw.epilog_crit_edge

land.lhs.true3.sw.epilog_crit_edge:               ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.end:                                           ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.2) #7
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx4, align 1
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %10 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %11)
  %cmp.i = icmp ult i32 %11, 32
  br i1 %cmp.i, label %sw.bb9.sw.epilog_crit_edge, label %lor.lhs.false.i

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

lor.lhs.false.i:                                  ; preds = %sw.bb9
  %arrayidx.i = getelementptr i8, ptr %rdesc, i32 20
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -107, i8 %13)
  %cmp1.not.i = icmp eq i8 %13, -107
  br i1 %cmp1.not.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.sw.epilog_crit_edge

lor.lhs.false.i.sw.epilog_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %arrayidx4.i = getelementptr i8, ptr %rdesc, i32 22
  %14 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 117, i8 %15)
  %cmp6.not.i = icmp eq i8 %15, 117
  br i1 %cmp6.not.i, label %lor.lhs.false8.i, label %lor.lhs.false3.i.sw.epilog_crit_edge

lor.lhs.false3.i.sw.epilog_crit_edge:             ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false3.i
  %arrayidx9.i = getelementptr i8, ptr %rdesc, i32 23
  %16 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp11.not.i = icmp eq i8 %17, 1
  br i1 %cmp11.not.i, label %lor.lhs.false13.i, label %lor.lhs.false8.i.sw.epilog_crit_edge

lor.lhs.false8.i.sw.epilog_crit_edge:             ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

lor.lhs.false13.i:                                ; preds = %lor.lhs.false8.i
  %arrayidx14.i = getelementptr i8, ptr %rdesc, i32 14
  %18 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx14.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 41, i8 %19)
  %cmp16.not.i = icmp eq i8 %19, 41
  br i1 %cmp16.not.i, label %lor.lhs.false18.i, label %lor.lhs.false13.i.sw.epilog_crit_edge

lor.lhs.false13.i.sw.epilog_crit_edge:            ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

lor.lhs.false18.i:                                ; preds = %lor.lhs.false13.i
  %arrayidx19.i = getelementptr i8, ptr %rdesc, i32 28
  %20 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx19.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 117, i8 %21)
  %cmp21.not.i = icmp eq i8 %21, 117
  br i1 %cmp21.not.i, label %do.end.i, label %lor.lhs.false18.i.sw.epilog_crit_edge

lor.lhs.false18.i.sw.epilog_crit_edge:            ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.end.i:                                         ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.7) #7
  %arrayidx34.i = getelementptr i8, ptr %rdesc, i32 21
  %22 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 8, ptr %arrayidx34.i, align 1
  %arrayidx37.i = getelementptr i8, ptr %rdesc, i32 15
  %23 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 8, ptr %arrayidx37.i, align 1
  %arrayidx40.i = getelementptr i8, ptr %rdesc, i32 29
  %24 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %arrayidx40.i, align 1
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry.sw.bb10_crit_edge, %entry.sw.bb10_crit_edge69, %entry.sw.bb10_crit_edge70
  %25 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %26)
  %cmp.i25 = icmp ult i32 %26, 32
  br i1 %cmp.i25, label %sw.bb10.sw.epilog_crit_edge, label %lor.lhs.false.i28

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

lor.lhs.false.i28:                                ; preds = %sw.bb10
  %arrayidx.i26 = getelementptr i8, ptr %rdesc, i32 12
  %27 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -107, i8 %28)
  %cmp1.not.i27 = icmp eq i8 %28, -107
  br i1 %cmp1.not.i27, label %lor.lhs.false3.i31, label %lor.lhs.false.i28.sw.epilog_crit_edge

lor.lhs.false.i28.sw.epilog_crit_edge:            ; preds = %lor.lhs.false.i28
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

lor.lhs.false3.i31:                               ; preds = %lor.lhs.false.i28
  %arrayidx4.i29 = getelementptr i8, ptr %rdesc, i32 14
  %29 = ptrtoint ptr %arrayidx4.i29 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx4.i29, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 117, i8 %30)
  %cmp6.not.i30 = icmp eq i8 %30, 117
  br i1 %cmp6.not.i30, label %lor.lhs.false8.i34, label %lor.lhs.false3.i31.sw.epilog_crit_edge

lor.lhs.false3.i31.sw.epilog_crit_edge:           ; preds = %lor.lhs.false3.i31
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

lor.lhs.false8.i34:                               ; preds = %lor.lhs.false3.i31
  %arrayidx9.i32 = getelementptr i8, ptr %rdesc, i32 15
  %31 = ptrtoint ptr %arrayidx9.i32 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx9.i32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp11.not.i33 = icmp eq i8 %32, 1
  br i1 %cmp11.not.i33, label %lor.lhs.false13.i37, label %lor.lhs.false8.i34.sw.epilog_crit_edge

lor.lhs.false8.i34.sw.epilog_crit_edge:           ; preds = %lor.lhs.false8.i34
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

lor.lhs.false13.i37:                              ; preds = %lor.lhs.false8.i34
  %arrayidx14.i35 = getelementptr i8, ptr %rdesc, i32 20
  %33 = ptrtoint ptr %arrayidx14.i35 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx14.i35, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 41, i8 %34)
  %cmp16.not.i36 = icmp eq i8 %34, 41
  br i1 %cmp16.not.i36, label %lor.lhs.false18.i40, label %lor.lhs.false13.i37.sw.epilog_crit_edge

lor.lhs.false13.i37.sw.epilog_crit_edge:          ; preds = %lor.lhs.false13.i37
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

lor.lhs.false18.i40:                              ; preds = %lor.lhs.false13.i37
  %arrayidx19.i38 = getelementptr i8, ptr %rdesc, i32 30
  %35 = ptrtoint ptr %arrayidx19.i38 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx19.i38, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 117, i8 %36)
  %cmp21.not.i39 = icmp eq i8 %36, 117
  br i1 %cmp21.not.i39, label %do.end.i45, label %lor.lhs.false18.i40.sw.epilog_crit_edge

lor.lhs.false18.i40.sw.epilog_crit_edge:          ; preds = %lor.lhs.false18.i40
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.end.i45:                                       ; preds = %lor.lhs.false18.i40
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i41 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i41, ptr noundef nonnull @.str.7) #7
  %arrayidx34.i42 = getelementptr i8, ptr %rdesc, i32 13
  %37 = ptrtoint ptr %arrayidx34.i42 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 6, ptr %arrayidx34.i42, align 1
  %arrayidx37.i43 = getelementptr i8, ptr %rdesc, i32 21
  %38 = ptrtoint ptr %arrayidx37.i43 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 6, ptr %arrayidx37.i43, align 1
  %arrayidx40.i44 = getelementptr i8, ptr %rdesc, i32 31
  %39 = ptrtoint ptr %arrayidx40.i44 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 2, ptr %arrayidx40.i44, align 1
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry.sw.bb11_crit_edge, %entry.sw.bb11_crit_edge71, %entry.sw.bb11_crit_edge72, %entry.sw.bb11_crit_edge73
  %40 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %41)
  %cmp.i47 = icmp ult i32 %41, 32
  br i1 %cmp.i47, label %sw.bb11.sw.epilog_crit_edge, label %lor.lhs.false.i50

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

lor.lhs.false.i50:                                ; preds = %sw.bb11
  %arrayidx.i48 = getelementptr i8, ptr %rdesc, i32 12
  %42 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i48, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -107, i8 %43)
  %cmp1.not.i49 = icmp eq i8 %43, -107
  br i1 %cmp1.not.i49, label %lor.lhs.false3.i53, label %lor.lhs.false.i50.sw.epilog_crit_edge

lor.lhs.false.i50.sw.epilog_crit_edge:            ; preds = %lor.lhs.false.i50
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

lor.lhs.false3.i53:                               ; preds = %lor.lhs.false.i50
  %arrayidx4.i51 = getelementptr i8, ptr %rdesc, i32 14
  %44 = ptrtoint ptr %arrayidx4.i51 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx4.i51, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 117, i8 %45)
  %cmp6.not.i52 = icmp eq i8 %45, 117
  br i1 %cmp6.not.i52, label %lor.lhs.false8.i56, label %lor.lhs.false3.i53.sw.epilog_crit_edge

lor.lhs.false3.i53.sw.epilog_crit_edge:           ; preds = %lor.lhs.false3.i53
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

lor.lhs.false8.i56:                               ; preds = %lor.lhs.false3.i53
  %arrayidx9.i54 = getelementptr i8, ptr %rdesc, i32 15
  %46 = ptrtoint ptr %arrayidx9.i54 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx9.i54, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %47)
  %cmp11.not.i55 = icmp eq i8 %47, 1
  br i1 %cmp11.not.i55, label %lor.lhs.false13.i59, label %lor.lhs.false8.i56.sw.epilog_crit_edge

lor.lhs.false8.i56.sw.epilog_crit_edge:           ; preds = %lor.lhs.false8.i56
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

lor.lhs.false13.i59:                              ; preds = %lor.lhs.false8.i56
  %arrayidx14.i57 = getelementptr i8, ptr %rdesc, i32 20
  %48 = ptrtoint ptr %arrayidx14.i57 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx14.i57, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 41, i8 %49)
  %cmp16.not.i58 = icmp eq i8 %49, 41
  br i1 %cmp16.not.i58, label %lor.lhs.false18.i62, label %lor.lhs.false13.i59.sw.epilog_crit_edge

lor.lhs.false13.i59.sw.epilog_crit_edge:          ; preds = %lor.lhs.false13.i59
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

lor.lhs.false18.i62:                              ; preds = %lor.lhs.false13.i59
  %arrayidx19.i60 = getelementptr i8, ptr %rdesc, i32 30
  %50 = ptrtoint ptr %arrayidx19.i60 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx19.i60, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 117, i8 %51)
  %cmp21.not.i61 = icmp eq i8 %51, 117
  br i1 %cmp21.not.i61, label %do.end.i67, label %lor.lhs.false18.i62.sw.epilog_crit_edge

lor.lhs.false18.i62.sw.epilog_crit_edge:          ; preds = %lor.lhs.false18.i62
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.end.i67:                                       ; preds = %lor.lhs.false18.i62
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i63 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i63, ptr noundef nonnull @.str.7) #7
  %arrayidx34.i64 = getelementptr i8, ptr %rdesc, i32 13
  %52 = ptrtoint ptr %arrayidx34.i64 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 8, ptr %arrayidx34.i64, align 1
  %arrayidx37.i65 = getelementptr i8, ptr %rdesc, i32 21
  %53 = ptrtoint ptr %arrayidx37.i65 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 8, ptr %arrayidx37.i65, align 1
  %arrayidx40.i66 = getelementptr i8, ptr %rdesc, i32 31
  %54 = ptrtoint ptr %arrayidx40.i66 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %arrayidx40.i66, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.i67, %lor.lhs.false18.i62.sw.epilog_crit_edge, %lor.lhs.false13.i59.sw.epilog_crit_edge, %lor.lhs.false8.i56.sw.epilog_crit_edge, %lor.lhs.false3.i53.sw.epilog_crit_edge, %lor.lhs.false.i50.sw.epilog_crit_edge, %sw.bb11.sw.epilog_crit_edge, %do.end.i45, %lor.lhs.false18.i40.sw.epilog_crit_edge, %lor.lhs.false13.i37.sw.epilog_crit_edge, %lor.lhs.false8.i34.sw.epilog_crit_edge, %lor.lhs.false3.i31.sw.epilog_crit_edge, %lor.lhs.false.i28.sw.epilog_crit_edge, %sw.bb10.sw.epilog_crit_edge, %do.end.i, %lor.lhs.false18.i.sw.epilog_crit_edge, %lor.lhs.false13.i.sw.epilog_crit_edge, %lor.lhs.false8.i.sw.epilog_crit_edge, %lor.lhs.false3.i.sw.epilog_crit_edge, %lor.lhs.false.i.sw.epilog_crit_edge, %sw.bb9.sw.epilog_crit_edge, %do.end, %land.lhs.true3.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret ptr %rdesc
}

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__initcall__kmod_hid_elecom__227_125_elecom_driver_init6, !1, !"__initcall__kmod_hid_elecom__227_125_elecom_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-elecom.c", i32 125, i32 1}
!2 = !{ptr @__exitcall_elecom_driver_exit, !1, !"__exitcall_elecom_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file228, !4, !"__UNIQUE_ID_file228", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-elecom.c", i32 127, i32 1}
!5 = !{ptr @__UNIQUE_ID_license229, !4, !"__UNIQUE_ID_license229", i1 false, i1 false}
!6 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/hid/hid-elecom.c", i32 121, i32 10}
!9 = !{ptr @elecom_driver, !10, !"elecom_driver", i1 false, i1 false}
!10 = !{!"../drivers/hid/hid-elecom.c", i32 120, i32 26}
!11 = !{ptr @elecom_devices, !12, !"elecom_devices", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-elecom.c", i32 106, i32 35}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-elecom.c", i32 63, i32 4}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @elecom_report_fixup._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @elecom_report_fixup._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hid/hid-elecom.c", i32 48, i32 2}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mouse_button_fixup._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @mouse_button_fixup._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
