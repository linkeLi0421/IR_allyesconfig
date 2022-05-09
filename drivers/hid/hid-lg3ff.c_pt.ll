; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-lg3ff.c_pt.bc'
source_filename = "../drivers/hid/hid-lg3ff.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.list_head, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.ff_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i32], %struct.mutex, i32, ptr, [0 x ptr] }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }

@lg3ff_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 127, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no inputs found\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lg3ff_init\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hid/hid-lg3ff.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lg3ff_init._entry_ptr = internal global ptr @lg3ff_init._entry, section ".printk_index", align 4
@lg3ff_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 148, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"Force feedback for Logitech Flight System G940 by Gary Stein <LordCnidarian@gmail.com>\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@lg3ff_init._entry_ptr.8 = internal global ptr @lg3ff_init._entry.5, section ".printk_index", align 4
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 127, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [27 x i8] c"../drivers/hid/hid-lg3ff.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 148, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @lg3ff_init._entry, ptr @lg3ff_init._entry.5, ptr @lg3ff_init._entry_ptr, ptr @lg3ff_init._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg3ff_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg3ff_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lg3ff_init(ptr noundef %hid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %inputs = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 36
  %0 = ptrtoint ptr %inputs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %inputs, align 4
  %cmp.i.not = icmp eq ptr %1, %inputs
  br i1 %cmp.i.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %dev1 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %input = getelementptr inbounds %struct.hid_input, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input, align 4
  %call3 = tail call ptr @hid_validate_values(ptr noundef %hid, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 35) #3
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %ffbit = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 82, ptr noundef %ffbit) #3
  tail call void @_set_bit(i32 noundef 97, ptr noundef %ffbit) #3
  %call10 = tail call i32 @input_ff_create_memless(ptr noundef %3, ptr noundef null, ptr noundef nonnull @hid_lg3ff_play) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end13:                                         ; preds = %for.cond.preheader
  %arrayidx.i = getelementptr %struct.input_dev, ptr %3, i32 0, i32 12, i32 3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool17.not = icmp eq i32 %6, 0
  br i1 %tobool17.not, label %if.end13.do.end22_crit_edge, label %if.then18

if.end13.do.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end22

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  %ff = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 20
  %7 = ptrtoint ptr %ff to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ff, align 8
  %set_autocenter = getelementptr inbounds %struct.ff_device, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %set_autocenter to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @hid_lg3ff_set_autocenter, ptr %set_autocenter, align 4
  br label %do.end22

do.end22:                                         ; preds = %if.then18, %if.end13.do.end22_crit_edge
  %dev23 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev23, ptr noundef nonnull @.str.6) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %do.end22 ], [ -19, %if.end.cleanup_crit_edge ], [ %call10, %for.cond.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hid_validate_values(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_create_memless(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_lg3ff_play(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, ptr nocapture noundef readonly %effect) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %report_list1 = getelementptr %struct.hid_device, ptr %1, i32 0, i32 15, i32 1, i32 1
  %2 = ptrtoint ptr %report_list1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %report_list1, align 4
  %field = getelementptr inbounds %struct.hid_report, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %field, align 4
  %value = getelementptr inbounds %struct.hid_field, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %value, align 4
  %report_count = getelementptr inbounds %struct.hid_field, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %report_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %report_count, align 4
  %mul = shl i32 %9, 2
  %10 = call ptr @memset(ptr %7, i32 0, i32 %mul)
  %11 = ptrtoint ptr %effect to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %effect, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 82, i16 %12)
  %cond = icmp eq i16 %12, 82
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %u = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %13 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %u, align 4
  %end_level = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %15 = ptrtoint ptr %end_level to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %end_level, align 2
  %17 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %field, align 4
  %value10 = getelementptr inbounds %struct.hid_field, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %value10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %value10, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 81, ptr %20, align 4
  %22 = sub i16 0, %14
  %23 = and i16 %22, 255
  %conv13 = zext i16 %23 to i32
  %24 = load ptr, ptr %field, align 4
  %value16 = getelementptr inbounds %struct.hid_field, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %value16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %value16, align 4
  %arrayidx17 = getelementptr i32, ptr %26, i32 1
  %27 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv13, ptr %arrayidx17, align 4
  %28 = sub i16 0, %16
  %29 = and i16 %28, 255
  %conv20 = zext i16 %29 to i32
  %30 = load ptr, ptr %field, align 4
  %value23 = getelementptr inbounds %struct.hid_field, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %value23 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %value23, align 4
  %arrayidx24 = getelementptr i32, ptr %32, i32 31
  %33 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv20, ptr %arrayidx24, align 4
  tail call void @hid_hw_request(ptr noundef %1, ptr noundef %3, i32 noundef 9) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hid_lg3ff_set_autocenter(ptr nocapture noundef readonly %dev, i16 noundef zeroext %magnitude) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %report_list1 = getelementptr %struct.hid_device, ptr %1, i32 0, i32 15, i32 1, i32 1
  %2 = ptrtoint ptr %report_list1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %report_list1, align 4
  %field = getelementptr inbounds %struct.hid_report, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %field, align 4
  %value = getelementptr inbounds %struct.hid_field, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %value, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 81, ptr %7, align 4
  %9 = load ptr, ptr %field, align 4
  %value6 = getelementptr inbounds %struct.hid_field, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %value6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %value6, align 4
  %arrayidx7 = getelementptr i32, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx7, align 4
  %13 = load ptr, ptr %field, align 4
  %value10 = getelementptr inbounds %struct.hid_field, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %value10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %value10, align 4
  %arrayidx11 = getelementptr i32, ptr %15, i32 2
  %16 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %arrayidx11, align 4
  %17 = load ptr, ptr %field, align 4
  %value14 = getelementptr inbounds %struct.hid_field, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %value14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %value14, align 4
  %arrayidx15 = getelementptr i32, ptr %19, i32 3
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 127, ptr %arrayidx15, align 4
  %21 = load ptr, ptr %field, align 4
  %value18 = getelementptr inbounds %struct.hid_field, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %value18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %value18, align 4
  %arrayidx19 = getelementptr i32, ptr %23, i32 4
  %24 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 127, ptr %arrayidx19, align 4
  %25 = load ptr, ptr %field, align 4
  %value22 = getelementptr inbounds %struct.hid_field, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %value22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %value22, align 4
  %arrayidx23 = getelementptr i32, ptr %27, i32 31
  %28 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %arrayidx23, align 4
  %29 = load ptr, ptr %field, align 4
  %value26 = getelementptr inbounds %struct.hid_field, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %value26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %value26, align 4
  %arrayidx27 = getelementptr i32, ptr %31, i32 32
  %32 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %arrayidx27, align 4
  %33 = load ptr, ptr %field, align 4
  %value30 = getelementptr inbounds %struct.hid_field, ptr %33, i32 0, i32 10
  %34 = ptrtoint ptr %value30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %value30, align 4
  %arrayidx31 = getelementptr i32, ptr %35, i32 33
  %36 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 127, ptr %arrayidx31, align 4
  %37 = load ptr, ptr %field, align 4
  %value34 = getelementptr inbounds %struct.hid_field, ptr %37, i32 0, i32 10
  %38 = ptrtoint ptr %value34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %value34, align 4
  %arrayidx35 = getelementptr i32, ptr %39, i32 34
  %40 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 127, ptr %arrayidx35, align 4
  tail call void @hid_hw_request(ptr noundef %1, ptr noundef %3, i32 noundef 9) #3
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-lg3ff.c", i32 127, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @lg3ff_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @lg3ff_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/hid/hid-lg3ff.c", i32 148, i32 2}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @lg3ff_init._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @lg3ff_init._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = distinct !{null, !14, !"ff3_joystick_ac", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-lg3ff.c", i32 112, i32 27}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
