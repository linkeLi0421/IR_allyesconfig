; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-gfrm.c_pt.bc'
source_filename = "../drivers/hid/hid-gfrm.c"
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
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.list_head, i32 }
%struct.hid_usage = type { i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i16 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_hid_gfrm__223_144_gfrm_driver_init6 = internal global ptr @gfrm_driver_init, section ".initcall6.init", align 4
@gfrm_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @gfrm_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @gfrm_probe, ptr null, ptr null, ptr @gfrm_raw_event, ptr null, ptr null, ptr null, ptr null, ptr @gfrm_input_mapping, ptr null, ptr @gfrm_input_configured, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_gfrm_driver_exit = internal global ptr @gfrm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author224 = internal constant [52 x i8] c"hid_gfrm.author=Petri Gynther <pgynther@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description225 = internal constant [63 x i8] c"hid_gfrm.description=Google Fiber TV Box remote control driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file226 = internal constant [35 x i8] c"hid_gfrm.file=drivers/hid/hid-gfrm\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [21 x i8] c"hid_gfrm.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hid_gfrm\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gfrm\00", [27 x i8] zeroinitializer }, align 32
@gfrm_devices = internal constant { [3 x %struct.hid_device_id], [48 x i8] } { [3 x %struct.hid_device_id] [%struct.hid_device_id { i16 5, i16 0, i32 88, i32 8192, i32 1 }, %struct.hid_device_id { i16 5, i16 0, i32 1137, i32 8720, i32 2 }, %struct.hid_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@search_key_dn = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"@!\02", [29 x i8] zeroinitializer }, align 32
@search_key_up = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"@\00\00", [29 x i8] zeroinitializer }, align 32
@__func__.hid_map_usage = private unnamed_addr constant [14 x i8] c"hid_map_usage\00", align 1
@hid_map_usage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @__func__.hid_map_usage, ptr @.str.4, i32 1037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: Invalid code %d type %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/hid.h\00", [44 x i8] zeroinitializer }, align 32
@hid_map_usage._entry_ptr = internal global ptr @hid_map_usage._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 786436, i64 786497]
@___asan_gen_.6 = private unnamed_addr constant [12 x i8] c"gfrm_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 135, i32 26 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 144, i32 1 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 136, i32 10 }
@___asan_gen_.15 = private unnamed_addr constant [13 x i8] c"gfrm_devices\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 126, i32 35 }
@___asan_gen_.18 = private unnamed_addr constant [14 x i8] c"search_key_dn\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 24, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [14 x i8] c"search_key_up\00", align 1
@___asan_gen_.22 = private constant [26 x i8] c"../drivers/hid/hid-gfrm.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 25, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [23 x i8] c"../include/linux/hid.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 1036, i32 3 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_license227, ptr @__exitcall_gfrm_driver_exit, ptr @__initcall__kmod_hid_gfrm__223_144_gfrm_driver_init6, ptr @gfrm_driver_exit, ptr @hid_map_usage._entry, ptr @hid_map_usage._entry_ptr, ptr @gfrm_driver, ptr @.str, ptr @.str.1, ptr @gfrm_devices, ptr @search_key_dn, ptr @search_key_up, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfrm_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfrm_devices to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @search_key_dn to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @search_key_up to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_map_usage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gfrm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @gfrm_driver, ptr noundef null, ptr noundef nonnull @.str) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gfrm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @hid_unregister_driver(ptr noundef nonnull @gfrm_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfrm_probe(ptr noundef %hdev, ptr nocapture noundef readonly %id) #2 align 64 {
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
  br i1 %tobool.not, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then2, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %call3 = tail call ptr @hid_register_report(ptr noundef %hdev, i32 noundef 0, i32 noundef 247, i32 noundef 0) #4
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then2.done_crit_edge, label %if.then2.if.end7_crit_edge

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then2.done_crit_edge:                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.end7:                                          ; preds = %if.then2.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %call8 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 45) #4
  br label %done

done:                                             ; preds = %if.end7, %if.then2.done_crit_edge, %entry.done_crit_edge
  %ret.0 = phi i32 [ %call.i, %entry.done_crit_edge ], [ %call8, %if.end7 ], [ -12, %if.then2.done_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfrm_raw_event(ptr noundef %hdev, ptr nocapture noundef readnone %report, ptr nocapture noundef readonly %data, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmp.not = icmp ne ptr %1, inttoptr (i32 1 to ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %size)
  %cmp1 = icmp slt i32 %size, 2
  %or.cond = or i1 %cmp1, %cmp.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -9, i8 %3)
  %cmp2.not = icmp eq i8 %3, -9
  br i1 %cmp2.not, label %if.end5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %arrayidx6 = getelementptr i8, ptr %data, i32 1
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx6, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %if.end5.cleanup_crit_edge [
    i8 0, label %if.end5.sw.epilog_crit_edge
    i8 2, label %sw.bb9
  ]

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb9:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %if.end5.sw.epilog_crit_edge
  %search_key_up.sink = phi ptr [ @search_key_up, %sw.bb9 ], [ @search_key_dn, %if.end5.sw.epilog_crit_edge ]
  %call10 = tail call i32 @hid_report_raw_event(ptr noundef %hdev, i32 noundef 0, ptr noundef nonnull %search_key_up.sink, i32 noundef 3, i32 noundef 1) #4
  %7 = tail call i32 @llvm.smin.i32(i32 %call10, i32 -1)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ -1, %if.end5.cleanup_crit_edge ], [ %7, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfrm_input_mapping(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %hi, ptr nocapture noundef readnone %field, ptr nocapture noundef %usage, ptr nocapture noundef writeonly %bit, ptr nocapture noundef writeonly %max) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmp = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usage, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %3, label %if.then.cleanup_crit_edge [
    i32 786436, label %if.then2
    i32 786497, label %if.then5
  ]

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %input1.i.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %5 = ptrtoint ptr %input1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %input1.i.i, align 4
  %type19.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %7 = ptrtoint ptr %type19.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %type19.i.i, align 4
  %code.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %8 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 358, ptr %code.i.i, align 2
  br label %cleanup.sink.split

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %input1.i.i14 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %9 = ptrtoint ptr %input1.i.i14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %input1.i.i14, align 4
  %type19.i.i16 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %11 = ptrtoint ptr %type19.i.i16 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %type19.i.i16, align 4
  %code.i.i17 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %12 = ptrtoint ptr %code.i.i17 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 352, ptr %code.i.i17, align 2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then5, %if.then2
  %.pn = phi ptr [ %10, %if.then5 ], [ %6, %if.then2 ]
  %code.i.i17.sink = phi ptr [ %code.i.i17, %if.then5 ], [ %code.i.i, %if.then2 ]
  %keybit.i.i15.sink19 = getelementptr inbounds %struct.input_dev, ptr %.pn, i32 0, i32 6
  %13 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 767, ptr %max, align 4
  %14 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %keybit.i.i15.sink19, ptr %bit, align 4
  %15 = ptrtoint ptr %code.i.i17.sink to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %code.i.i17.sink, align 2
  %conv1.i18 = zext i16 %16 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i18, ptr noundef nonnull %keybit.i.i15.sink19) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfrm_input_configured(ptr nocapture noundef readnone %hid, ptr nocapture noundef readonly %hidinput) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %input = getelementptr inbounds %struct.hid_input, ptr %hidinput, i32 0, i32 2
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input, align 4
  tail call void @input_enable_softrepeat(ptr noundef %1, i32 noundef 400, i32 noundef 100) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hid_register_report(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_report_raw_event(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_enable_softrepeat(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__initcall__kmod_hid_gfrm__223_144_gfrm_driver_init6, !1, !"__initcall__kmod_hid_gfrm__223_144_gfrm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-gfrm.c", i32 144, i32 1}
!2 = !{ptr @__exitcall_gfrm_driver_exit, !1, !"__exitcall_gfrm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author224, !4, !"__UNIQUE_ID_author224", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-gfrm.c", i32 146, i32 1}
!5 = !{ptr @__UNIQUE_ID_description225, !6, !"__UNIQUE_ID_description225", i1 false, i1 false}
!6 = !{!"../drivers/hid/hid-gfrm.c", i32 147, i32 1}
!7 = !{ptr @__UNIQUE_ID_file226, !8, !"__UNIQUE_ID_file226", i1 false, i1 false}
!8 = !{!"../drivers/hid/hid-gfrm.c", i32 148, i32 1}
!9 = !{ptr @__UNIQUE_ID_license227, !8, !"__UNIQUE_ID_license227", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-gfrm.c", i32 136, i32 10}
!13 = !{ptr @gfrm_driver, !14, !"gfrm_driver", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-gfrm.c", i32 135, i32 26}
!15 = !{ptr @gfrm_devices, !16, !"gfrm_devices", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-gfrm.c", i32 126, i32 35}
!17 = !{ptr @search_key_dn, !18, !"search_key_dn", i1 false, i1 false}
!18 = !{!"../drivers/hid/hid-gfrm.c", i32 24, i32 11}
!19 = !{ptr @search_key_up, !20, !"search_key_up", i1 false, i1 false}
!20 = !{!"../drivers/hid/hid-gfrm.c", i32 25, i32 11}
!21 = distinct !{null, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/linux/hid.h", i32 1036, i32 3}
!23 = distinct !{null, !22, !"_rs", i1 false, i1 false}
!24 = !{ptr @__func__.hid_map_usage, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @hid_map_usage._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @hid_map_usage._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
