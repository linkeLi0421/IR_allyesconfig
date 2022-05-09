; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-picolcd_leds.c_pt.bc'
source_filename = "../drivers/hid/hid-picolcd_leds.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.picolcd_data = type { ptr, ptr, ptr, ptr, %struct.mutex, i32, [2 x i8], i16, [2 x i8], ptr, ptr, [17 x i16], ptr, ptr, i8, ptr, i8, i8, i8, [8 x ptr], %struct.spinlock, %struct.mutex, ptr, i32 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@picolcd_init_leds._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 108, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unsupported LED_STATE report\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"picolcd_init_leds\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/hid/hid-picolcd_leds.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@picolcd_init_leds._entry_ptr = internal global ptr @picolcd_init_leds._entry, section ".printk_index", align 4
@picolcd_init_leds._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 115, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"can't allocate memory for LED %d\0A\00", [62 x i8] zeroinitializer }, align 32
@picolcd_init_leds._entry_ptr.7 = internal global ptr @picolcd_init_leds._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s::GPO%d\00", [22 x i8] zeroinitializer }, align 32
@picolcd_init_leds._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 132, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"can't register LED %d\0A\00", [41 x i8] zeroinitializer }, align 32
@picolcd_init_leds._entry_ptr.11 = internal global ptr @picolcd_init_leds._entry.9, section ".printk_index", align 4
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 108, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 115, i32 4 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 120, i32 27 }
@___asan_gen_.39 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [34 x i8] c"../drivers/hid/hid-picolcd_leds.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 132, i32 4 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @picolcd_init_leds._entry, ptr @picolcd_init_leds._entry.5, ptr @picolcd_init_leds._entry.9, ptr @picolcd_init_leds._entry_ptr, ptr @picolcd_init_leds._entry_ptr.11, ptr @picolcd_init_leds._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.10], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_init_leds._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_init_leds._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @picolcd_init_leds._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @picolcd_leds_set(ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %led = getelementptr inbounds %struct.picolcd_data, ptr %data, i32 0, i32 19
  %0 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %led, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call = tail call ptr @picolcd_report(i32 noundef 129, ptr noundef %3, i32 noundef 1) #7
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %maxfield = getelementptr inbounds %struct.hid_report, ptr %call, i32 0, i32 6
  %4 = ptrtoint ptr %maxfield to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %maxfield, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %field = getelementptr inbounds %struct.hid_report, ptr %call, i32 0, i32 5
  %6 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %field, align 4
  %report_count = getelementptr inbounds %struct.hid_field, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %report_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %report_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp4.not = icmp eq i32 %9, 1
  br i1 %cmp4.not, label %do.body7, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body7:                                         ; preds = %lor.lhs.false2
  %lock = getelementptr inbounds %struct.picolcd_data, ptr %data, i32 0, i32 20
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %10 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %field, align 4
  %led_state = getelementptr inbounds %struct.picolcd_data, ptr %data, i32 0, i32 18
  %12 = ptrtoint ptr %led_state to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %led_state, align 2
  %conv15 = zext i8 %13 to i32
  %call16 = tail call i32 @hid_set_field(ptr noundef %11, i32 noundef 0, i32 noundef %conv15) #7
  %status = getelementptr inbounds %struct.picolcd_data, ptr %data, i32 0, i32 23
  %14 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status, align 4
  %and = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %do.body19, label %do.body7.if.end26_crit_edge

do.body7.if.end26_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

do.body19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %17, i32 0, i32 18, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @picolcd_debug_out_report(ptr noundef %19, ptr noundef %17, ptr noundef nonnull %call) #7
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  tail call void @hid_hw_request(ptr noundef %21, ptr noundef nonnull %call, i32 noundef 9) #7
  br label %if.end26

if.end26:                                         ; preds = %do.body19, %do.body7.if.end26_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @picolcd_report(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_set_field(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @picolcd_debug_out_report(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @picolcd_init_leds(ptr nocapture noundef %data, ptr noundef readonly %report) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev1 = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  %init_name.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %call2 = tail call i32 @strlen(ptr noundef %retval.0.i) #10
  %add = add i32 %call2, 8
  %tobool.not = icmp eq ptr %report, null
  br i1 %tobool.not, label %dev_name.exit.cleanup_crit_edge, label %if.end

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %dev_name.exit
  %maxfield = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 6
  %6 = ptrtoint ptr %maxfield to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %maxfield, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not = icmp eq i32 %7, 1
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %field = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 5
  %8 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %field, align 4
  %report_count = getelementptr inbounds %struct.hid_field, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %report_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %report_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp3.not = icmp eq i32 %11, 1
  br i1 %cmp3.not, label %lor.lhs.false4, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %report_size = getelementptr inbounds %struct.hid_field, ptr %9, i32 0, i32 7
  %12 = ptrtoint ptr %report_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %report_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %13)
  %cmp7.not = icmp eq i32 %13, 8
  br i1 %cmp7.not, label %for.cond.preheader, label %lor.lhs.false4.do.end_crit_edge

lor.lhs.false4.do.end_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.cond.preheader:                               ; preds = %lor.lhs.false4
  %add11 = add i32 %call2, 408
  br label %if.end8.i.i

do.end:                                           ; preds = %lor.lhs.false4.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str) #11
  br label %cleanup

if.end8.i.i:                                      ; preds = %for.inc.if.end8.i.i_crit_edge, %for.cond.preheader
  %i.0106 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.if.end8.i.i_crit_edge ]
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add11, i32 noundef 3520) #12
  %tobool13.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool13.not, label %if.end8.i.i.err_crit_edge, label %if.end18

if.end8.i.i.err_crit_edge:                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end18:                                         ; preds = %if.end8.i.i
  %arrayidx19 = getelementptr %struct.led_classdev, ptr %call9.i.i, i32 1
  %14 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i96 = icmp eq ptr %15, null
  br i1 %tobool.not.i96, label %if.end.i97, label %if.end18.dev_name.exit99_crit_edge

if.end18.dev_name.exit99_crit_edge:               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit99

if.end.i97:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit99

dev_name.exit99:                                  ; preds = %if.end.i97, %if.end18.dev_name.exit99_crit_edge
  %retval.0.i98 = phi ptr [ %17, %if.end.i97 ], [ %15, %if.end18.dev_name.exit99_crit_edge ]
  %call21 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx19, i32 noundef %add, ptr noundef nonnull @.str.8, ptr noundef %retval.0.i98, i32 noundef %i.0106)
  %18 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx19, ptr %call9.i.i, align 128
  %brightness = getelementptr inbounds %struct.led_classdev, ptr %call9.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %brightness, align 4
  %max_brightness = getelementptr inbounds %struct.led_classdev, ptr %call9.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %max_brightness, align 8
  %brightness_get = getelementptr inbounds %struct.led_classdev, ptr %call9.i.i, i32 0, i32 7
  %21 = ptrtoint ptr %brightness_get to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @picolcd_led_get_brightness, ptr %brightness_get, align 4
  %brightness_set = getelementptr inbounds %struct.led_classdev, ptr %call9.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %brightness_set to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @picolcd_led_set_brightness, ptr %brightness_set, align 4
  %arrayidx24 = getelementptr %struct.picolcd_data, ptr %data, i32 0, i32 19, i32 %i.0106
  %23 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call9.i.i, ptr %arrayidx24, align 4
  %call.i = tail call i32 @led_classdev_register_ext(ptr noundef %dev1, ptr noundef nonnull %call9.i.i, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool28.not = icmp eq i32 %call.i, 0
  br i1 %tobool28.not, label %for.inc, label %if.then29

if.then29:                                        ; preds = %dev_name.exit99
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %arrayidx24, align 4
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #7
  br label %err

for.inc:                                          ; preds = %dev_name.exit99
  %inc = add nuw nsw i32 %i.0106, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.if.end8.i.i_crit_edge

for.inc.if.end8.i.i_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err:                                              ; preds = %if.then29, %if.end8.i.i.err_crit_edge
  %.str.10.sink = phi ptr [ @.str.10, %if.then29 ], [ @.str.6, %if.end8.i.i.err_crit_edge ]
  %ret.0 = phi i32 [ %call.i, %if.then29 ], [ -12, %if.end8.i.i.err_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.10.sink, i32 noundef %i.0106) #11
  %arrayidx40 = getelementptr %struct.picolcd_data, ptr %data, i32 0, i32 19, i32 0
  %25 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx40, align 4
  %tobool41.not = icmp eq ptr %26, null
  br i1 %tobool41.not, label %err.for.inc48_crit_edge, label %if.then42

err.for.inc48_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc48

if.then42:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx40, align 4
  tail call void @led_classdev_unregister(ptr noundef nonnull %26) #7
  tail call void @kfree(ptr noundef nonnull %26) #7
  br label %for.inc48

for.inc48:                                        ; preds = %if.then42, %err.for.inc48_crit_edge
  %arrayidx40.1 = getelementptr %struct.picolcd_data, ptr %data, i32 0, i32 19, i32 1
  %28 = ptrtoint ptr %arrayidx40.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx40.1, align 4
  %tobool41.not.1 = icmp eq ptr %29, null
  br i1 %tobool41.not.1, label %for.inc48.for.inc48.1_crit_edge, label %if.then42.1

for.inc48.for.inc48.1_crit_edge:                  ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc48.1

if.then42.1:                                      ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %arrayidx40.1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %arrayidx40.1, align 4
  tail call void @led_classdev_unregister(ptr noundef nonnull %29) #7
  tail call void @kfree(ptr noundef nonnull %29) #7
  br label %for.inc48.1

for.inc48.1:                                      ; preds = %if.then42.1, %for.inc48.for.inc48.1_crit_edge
  %arrayidx40.2 = getelementptr %struct.picolcd_data, ptr %data, i32 0, i32 19, i32 2
  %31 = ptrtoint ptr %arrayidx40.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx40.2, align 4
  %tobool41.not.2 = icmp eq ptr %32, null
  br i1 %tobool41.not.2, label %for.inc48.1.for.inc48.2_crit_edge, label %if.then42.2

for.inc48.1.for.inc48.2_crit_edge:                ; preds = %for.inc48.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc48.2

if.then42.2:                                      ; preds = %for.inc48.1
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %arrayidx40.2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %arrayidx40.2, align 4
  tail call void @led_classdev_unregister(ptr noundef nonnull %32) #7
  tail call void @kfree(ptr noundef nonnull %32) #7
  br label %for.inc48.2

for.inc48.2:                                      ; preds = %if.then42.2, %for.inc48.1.for.inc48.2_crit_edge
  %arrayidx40.3 = getelementptr %struct.picolcd_data, ptr %data, i32 0, i32 19, i32 3
  %34 = ptrtoint ptr %arrayidx40.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx40.3, align 4
  %tobool41.not.3 = icmp eq ptr %35, null
  br i1 %tobool41.not.3, label %for.inc48.2.for.inc48.3_crit_edge, label %if.then42.3

for.inc48.2.for.inc48.3_crit_edge:                ; preds = %for.inc48.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc48.3

if.then42.3:                                      ; preds = %for.inc48.2
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %arrayidx40.3 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %arrayidx40.3, align 4
  tail call void @led_classdev_unregister(ptr noundef nonnull %35) #7
  tail call void @kfree(ptr noundef nonnull %35) #7
  br label %for.inc48.3

for.inc48.3:                                      ; preds = %if.then42.3, %for.inc48.2.for.inc48.3_crit_edge
  %arrayidx40.4 = getelementptr %struct.picolcd_data, ptr %data, i32 0, i32 19, i32 4
  %37 = ptrtoint ptr %arrayidx40.4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx40.4, align 4
  %tobool41.not.4 = icmp eq ptr %38, null
  br i1 %tobool41.not.4, label %for.inc48.3.for.inc48.4_crit_edge, label %if.then42.4

for.inc48.3.for.inc48.4_crit_edge:                ; preds = %for.inc48.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc48.4

if.then42.4:                                      ; preds = %for.inc48.3
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %arrayidx40.4 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %arrayidx40.4, align 4
  tail call void @led_classdev_unregister(ptr noundef nonnull %38) #7
  tail call void @kfree(ptr noundef nonnull %38) #7
  br label %for.inc48.4

for.inc48.4:                                      ; preds = %if.then42.4, %for.inc48.3.for.inc48.4_crit_edge
  %arrayidx40.5 = getelementptr %struct.picolcd_data, ptr %data, i32 0, i32 19, i32 5
  %40 = ptrtoint ptr %arrayidx40.5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx40.5, align 4
  %tobool41.not.5 = icmp eq ptr %41, null
  br i1 %tobool41.not.5, label %for.inc48.4.for.inc48.5_crit_edge, label %if.then42.5

for.inc48.4.for.inc48.5_crit_edge:                ; preds = %for.inc48.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc48.5

if.then42.5:                                      ; preds = %for.inc48.4
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %arrayidx40.5 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %arrayidx40.5, align 4
  tail call void @led_classdev_unregister(ptr noundef nonnull %41) #7
  tail call void @kfree(ptr noundef nonnull %41) #7
  br label %for.inc48.5

for.inc48.5:                                      ; preds = %if.then42.5, %for.inc48.4.for.inc48.5_crit_edge
  %arrayidx40.6 = getelementptr %struct.picolcd_data, ptr %data, i32 0, i32 19, i32 6
  %43 = ptrtoint ptr %arrayidx40.6 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx40.6, align 4
  %tobool41.not.6 = icmp eq ptr %44, null
  br i1 %tobool41.not.6, label %for.inc48.5.for.inc48.6_crit_edge, label %if.then42.6

for.inc48.5.for.inc48.6_crit_edge:                ; preds = %for.inc48.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc48.6

if.then42.6:                                      ; preds = %for.inc48.5
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %arrayidx40.6 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %arrayidx40.6, align 4
  tail call void @led_classdev_unregister(ptr noundef nonnull %44) #7
  tail call void @kfree(ptr noundef nonnull %44) #7
  br label %for.inc48.6

for.inc48.6:                                      ; preds = %if.then42.6, %for.inc48.5.for.inc48.6_crit_edge
  %arrayidx40.7 = getelementptr %struct.picolcd_data, ptr %data, i32 0, i32 19, i32 7
  %46 = ptrtoint ptr %arrayidx40.7 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx40.7, align 4
  %tobool41.not.7 = icmp eq ptr %47, null
  br i1 %tobool41.not.7, label %for.inc48.6.cleanup_crit_edge, label %if.then42.7

for.inc48.6.cleanup_crit_edge:                    ; preds = %for.inc48.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then42.7:                                      ; preds = %for.inc48.6
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %arrayidx40.7 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %arrayidx40.7, align 4
  tail call void @led_classdev_unregister(ptr noundef nonnull %47) #7
  tail call void @kfree(ptr noundef nonnull %47) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then42.7, %for.inc48.6.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %do.end, %dev_name.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -19, %dev_name.exit.cleanup_crit_edge ], [ %ret.0, %if.then42.7 ], [ %ret.0, %for.inc48.6.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @picolcd_led_get_brightness(ptr noundef readonly %led_cdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 11
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr i8, ptr %3, i32 164
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr %struct.picolcd_data, ptr %5, i32 0, i32 19, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp2 = icmp eq ptr %7, %led_cdev
  br i1 %cmp2, label %entry.if.then_crit_edge, label %for.inc

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %for.inc.6.if.then_crit_edge, %for.inc.5.if.then_crit_edge, %for.inc.4.if.then_crit_edge, %for.inc.3.if.then_crit_edge, %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %entry.if.then_crit_edge
  %i.010.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ], [ 2, %for.inc.1.if.then_crit_edge ], [ 3, %for.inc.2.if.then_crit_edge ], [ 4, %for.inc.3.if.then_crit_edge ], [ 5, %for.inc.4.if.then_crit_edge ], [ 6, %for.inc.5.if.then_crit_edge ], [ 7, %for.inc.6.if.then_crit_edge ]
  %led_state = getelementptr inbounds %struct.picolcd_data, ptr %5, i32 0, i32 18
  %8 = ptrtoint ptr %led_state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %led_state, align 2
  %conv = zext i8 %9 to i32
  %10 = shl nuw nsw i32 1, %i.010.lcssa
  %11 = and i32 %10, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %phi.cmp = icmp eq i32 %11, 0
  %phi.sel = select i1 %phi.cmp, i32 0, i32 255
  br label %for.end

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.picolcd_data, ptr %5, i32 0, i32 19, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1, align 4
  %cmp2.1 = icmp eq ptr %13, %led_cdev
  br i1 %cmp2.1, label %for.inc.if.then_crit_edge, label %for.inc.1

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.picolcd_data, ptr %5, i32 0, i32 19, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.2, align 4
  %cmp2.2 = icmp eq ptr %15, %led_cdev
  br i1 %cmp2.2, label %for.inc.1.if.then_crit_edge, label %for.inc.2

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.picolcd_data, ptr %5, i32 0, i32 19, i32 3
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.3, align 4
  %cmp2.3 = icmp eq ptr %17, %led_cdev
  br i1 %cmp2.3, label %for.inc.2.if.then_crit_edge, label %for.inc.3

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.picolcd_data, ptr %5, i32 0, i32 19, i32 4
  %18 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.4, align 4
  %cmp2.4 = icmp eq ptr %19, %led_cdev
  br i1 %cmp2.4, label %for.inc.3.if.then_crit_edge, label %for.inc.4

for.inc.3.if.then_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.picolcd_data, ptr %5, i32 0, i32 19, i32 5
  %20 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.5, align 4
  %cmp2.5 = icmp eq ptr %21, %led_cdev
  br i1 %cmp2.5, label %for.inc.4.if.then_crit_edge, label %for.inc.5

for.inc.4.if.then_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr %struct.picolcd_data, ptr %5, i32 0, i32 19, i32 6
  %22 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.6, align 4
  %cmp2.6 = icmp eq ptr %23, %led_cdev
  br i1 %cmp2.6, label %for.inc.5.if.then_crit_edge, label %for.inc.6

for.inc.5.if.then_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr %struct.picolcd_data, ptr %5, i32 0, i32 19, i32 7
  %24 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.7, align 4
  %cmp2.7 = icmp eq ptr %25, %led_cdev
  br i1 %cmp2.7, label %for.inc.6.if.then_crit_edge, label %for.inc.6.for.end_crit_edge

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.6.if.then_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.end:                                          ; preds = %for.inc.6.for.end_crit_edge, %if.then
  %value.0 = phi i32 [ %phi.sel, %if.then ], [ 0, %for.inc.6.for.end_crit_edge ]
  ret i32 %value.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @picolcd_led_set_brightness(ptr noundef readonly %led_cdev, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 11
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr i8, ptr %3, i32 164
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.picolcd_data, ptr %5, i32 0, i32 19, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp2.not = icmp eq ptr %7, %led_cdev
  br i1 %cmp2.not, label %for.body.preheader.if.end4_crit_edge, label %for.inc

for.body.preheader.if.end4_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end4:                                          ; preds = %for.inc.6.if.end4_crit_edge, %for.inc.5.if.end4_crit_edge, %for.inc.4.if.end4_crit_edge, %for.inc.3.if.end4_crit_edge, %for.inc.2.if.end4_crit_edge, %for.inc.1.if.end4_crit_edge, %for.inc.if.end4_crit_edge, %for.body.preheader.if.end4_crit_edge
  %i.044.lcssa = phi i32 [ 0, %for.body.preheader.if.end4_crit_edge ], [ 1, %for.inc.if.end4_crit_edge ], [ 2, %for.inc.1.if.end4_crit_edge ], [ 3, %for.inc.2.if.end4_crit_edge ], [ 4, %for.inc.3.if.end4_crit_edge ], [ 5, %for.inc.4.if.end4_crit_edge ], [ 6, %for.inc.5.if.end4_crit_edge ], [ 7, %for.inc.6.if.end4_crit_edge ]
  %led_state = getelementptr inbounds %struct.picolcd_data, ptr %5, i32 0, i32 18
  %8 = ptrtoint ptr %led_state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %led_state, align 2
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp5 = icmp ne i32 %value, 0
  %10 = shl nuw nsw i32 1, %i.044.lcssa
  %11 = and i32 %10, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not = icmp eq i32 %11, 0
  %or.cond = select i1 %cmp5, i1 true, i1 %tobool7.not
  br i1 %or.cond, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %12 = trunc i32 %10 to i8
  %13 = xor i8 %12, -1
  %conv12 = and i8 %9, %13
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end4
  %or.cond42 = select i1 %cmp5, i1 %tobool7.not, i1 false
  br i1 %or.cond42, label %if.then17, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %14 = trunc i32 %10 to i8
  %conv21 = or i8 %9, %14
  br label %cleanup.sink.split

for.inc:                                          ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr %struct.picolcd_data, ptr %5, i32 0, i32 19, i32 1
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.1, align 4
  %cmp2.not.1 = icmp eq ptr %16, %led_cdev
  br i1 %cmp2.not.1, label %for.inc.if.end4_crit_edge, label %for.inc.1

for.inc.if.end4_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.picolcd_data, ptr %5, i32 0, i32 19, i32 2
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.2, align 4
  %cmp2.not.2 = icmp eq ptr %18, %led_cdev
  br i1 %cmp2.not.2, label %for.inc.1.if.end4_crit_edge, label %for.inc.2

for.inc.1.if.end4_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.picolcd_data, ptr %5, i32 0, i32 19, i32 3
  %19 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.3, align 4
  %cmp2.not.3 = icmp eq ptr %20, %led_cdev
  br i1 %cmp2.not.3, label %for.inc.2.if.end4_crit_edge, label %for.inc.3

for.inc.2.if.end4_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.picolcd_data, ptr %5, i32 0, i32 19, i32 4
  %21 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.4, align 4
  %cmp2.not.4 = icmp eq ptr %22, %led_cdev
  br i1 %cmp2.not.4, label %for.inc.3.if.end4_crit_edge, label %for.inc.4

for.inc.3.if.end4_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.picolcd_data, ptr %5, i32 0, i32 19, i32 5
  %23 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.5, align 4
  %cmp2.not.5 = icmp eq ptr %24, %led_cdev
  br i1 %cmp2.not.5, label %for.inc.4.if.end4_crit_edge, label %for.inc.5

for.inc.4.if.end4_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr %struct.picolcd_data, ptr %5, i32 0, i32 19, i32 6
  %25 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.6, align 4
  %cmp2.not.6 = icmp eq ptr %26, %led_cdev
  br i1 %cmp2.not.6, label %for.inc.5.if.end4_crit_edge, label %for.inc.6

for.inc.5.if.end4_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr %struct.picolcd_data, ptr %5, i32 0, i32 19, i32 7
  %27 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.7, align 4
  %cmp2.not.7 = icmp eq ptr %28, %led_cdev
  br i1 %cmp2.not.7, label %for.inc.6.if.end4_crit_edge, label %for.inc.6.cleanup_crit_edge

for.inc.6.cleanup_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.6.if.end4_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

cleanup.sink.split:                               ; preds = %if.then17, %if.then8
  %conv21.sink = phi i8 [ %conv21, %if.then17 ], [ %conv12, %if.then8 ]
  %29 = ptrtoint ptr %led_state to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv21.sink, ptr %led_state, align 2
  tail call void @picolcd_leds_set(ptr noundef nonnull %5)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.6.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @picolcd_exit_leds(ptr nocapture noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.picolcd_data, ptr %data, i32 0, i32 19, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  store ptr null, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @led_classdev_unregister(ptr noundef nonnull %1) #7
  tail call void @kfree(ptr noundef nonnull %1) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.picolcd_data, ptr %data, i32 0, i32 19, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  store ptr null, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %3, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @led_classdev_unregister(ptr noundef nonnull %3) #7
  tail call void @kfree(ptr noundef nonnull %3) #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.picolcd_data, ptr %data, i32 0, i32 19, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2, align 4
  store ptr null, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %5, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @led_classdev_unregister(ptr noundef nonnull %5) #7
  tail call void @kfree(ptr noundef nonnull %5) #7
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.picolcd_data, ptr %data, i32 0, i32 19, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.3, align 4
  store ptr null, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %7, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @led_classdev_unregister(ptr noundef nonnull %7) #7
  tail call void @kfree(ptr noundef nonnull %7) #7
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.picolcd_data, ptr %data, i32 0, i32 19, i32 4
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.4, align 4
  store ptr null, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %9, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

if.end.4:                                         ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @led_classdev_unregister(ptr noundef nonnull %9) #7
  tail call void @kfree(ptr noundef nonnull %9) #7
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.picolcd_data, ptr %data, i32 0, i32 19, i32 5
  %10 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.5, align 4
  store ptr null, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %11, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.end.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

if.end.5:                                         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @led_classdev_unregister(ptr noundef nonnull %11) #7
  tail call void @kfree(ptr noundef nonnull %11) #7
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end.5, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr %struct.picolcd_data, ptr %data, i32 0, i32 19, i32 6
  %12 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.6, align 4
  store ptr null, ptr %arrayidx.6, align 4
  %tobool.not.6 = icmp eq ptr %13, null
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.end.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

if.end.6:                                         ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @led_classdev_unregister(ptr noundef nonnull %13) #7
  tail call void @kfree(ptr noundef nonnull %13) #7
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.end.6, %for.inc.5.for.inc.6_crit_edge
  %arrayidx.7 = getelementptr %struct.picolcd_data, ptr %data, i32 0, i32 19, i32 7
  %14 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.7, align 4
  store ptr null, ptr %arrayidx.7, align 4
  %tobool.not.7 = icmp eq ptr %15, null
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.end.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7

if.end.7:                                         ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @led_classdev_unregister(ptr noundef nonnull %15) #7
  tail call void @kfree(ptr noundef nonnull %15) #7
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.end.7, %for.inc.6.for.inc.7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-picolcd_leds.c", i32 108, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @picolcd_init_leds._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @picolcd_init_leds._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/hid/hid-picolcd_leds.c", i32 115, i32 4}
!10 = !{ptr @picolcd_init_leds._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @picolcd_init_leds._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hid/hid-picolcd_leds.c", i32 120, i32 27}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/hid/hid-picolcd_leds.c", i32 132, i32 4}
!16 = !{ptr @picolcd_init_leds._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @picolcd_init_leds._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
