; ModuleID = '/llk/IR_all_yes/drivers/cpuidle/governor.c_pt.bc'
source_filename = "../drivers/cpuidle/governor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cpuidle_governor = type { [16 x i8], %struct.list_head, i32, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }

@cpuidle_governors = dso_local global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @cpuidle_governors, ptr @cpuidle_governors }, [24 x i8] zeroinitializer }, align 32
@cpuidle_curr_governor = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@cpuidle_detected_devices = external dso_local global %struct.list_head, align 4
@cpuidle_switch_governor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016cpuidle: using governor %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cpuidle_switch_governor\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/cpuidle/governor.c\00", [37 x i8] zeroinitializer }, align 32
@cpuidle_switch_governor._entry_ptr = internal global ptr @cpuidle_switch_governor._entry, section ".printk_index", align 4
@cpuidle_lock = external dso_local global %struct.mutex, align 4
@param_governor = dso_local global { [16 x i8], [16 x i8] } zeroinitializer, align 32
@cpuidle_prev_governor = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@___asan_gen_.3 = private unnamed_addr constant [18 x i8] c"cpuidle_governors\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 21, i32 1 }
@___asan_gen_.6 = private unnamed_addr constant [22 x i8] c"cpuidle_curr_governor\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 22, i32 26 }
@___asan_gen_.9 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 70, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant [15 x i8] c"param_governor\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 19, i32 6 }
@___asan_gen_.24 = private unnamed_addr constant [22 x i8] c"cpuidle_prev_governor\00", align 1
@___asan_gen_.25 = private constant [30 x i8] c"../drivers/cpuidle/governor.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 23, i32 26 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @cpuidle_switch_governor._entry, ptr @cpuidle_switch_governor._entry_ptr, ptr @cpuidle_governors, ptr @cpuidle_curr_governor, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @param_governor, ptr @cpuidle_prev_governor], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuidle_governors to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuidle_curr_governor to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuidle_switch_governor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_governor to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuidle_prev_governor to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cpuidle_find_governor(ptr nocapture noundef readonly %str) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ @cpuidle_governors, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @cpuidle_governors
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %gov.0 = getelementptr i8, ptr %.pn, i32 -16
  %call = tail call i32 @strncasecmp(ptr noundef %str, ptr noundef %gov.0, i32 noundef 16)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %gov.0, %for.body.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpuidle_switch_governor(ptr noundef %gov) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %gov, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @cpuidle_curr_governor, align 4
  %cmp = icmp eq ptr %0, %gov
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  tail call void @cpuidle_uninstall_idle_handler() #6
  %1 = load ptr, ptr @cpuidle_curr_governor, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.end2.if.end10_crit_edge, label %for.cond.preheader

if.end2.if.end10_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

for.cond.preheader:                               ; preds = %if.end2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpuidle_detected_devices to i32))
  %.pn4041 = load ptr, ptr @cpuidle_detected_devices, align 4
  %cmp5.not42 = icmp eq ptr %.pn4041, @cpuidle_detected_devices
  br i1 %cmp5.not42, label %if.end10.thread, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.end10.thread:                                  ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %gov, ptr @cpuidle_curr_governor, align 4
  br label %for.end27

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %.pn4043 = phi ptr [ %.pn40, %for.body.for.body_crit_edge ], [ %.pn4041, %for.cond.preheader.for.body_crit_edge ]
  %dev.0 = getelementptr i8, ptr %.pn4043, i32 -736
  tail call void @cpuidle_disable_device(ptr noundef %dev.0) #6
  %2 = ptrtoint ptr %.pn4043 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn40 = load ptr, ptr %.pn4043, align 4
  %cmp5.not = icmp eq ptr %.pn40, @cpuidle_detected_devices
  br i1 %cmp5.not, label %for.body.if.end10_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.if.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end10:                                         ; preds = %for.body.if.end10_crit_edge, %if.end2.if.end10_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpuidle_detected_devices to i32))
  %.pn44.pr = load ptr, ptr @cpuidle_detected_devices, align 4
  store ptr %gov, ptr @cpuidle_curr_governor, align 4
  %cmp18.not45 = icmp eq ptr %.pn44.pr, @cpuidle_detected_devices
  br i1 %cmp18.not45, label %if.end10.for.end27_crit_edge, label %if.end10.for.body20_crit_edge

if.end10.for.body20_crit_edge:                    ; preds = %if.end10
  br label %for.body20

if.end10.for.end27_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end27

for.body20:                                       ; preds = %for.body20.for.body20_crit_edge, %if.end10.for.body20_crit_edge
  %.pn46 = phi ptr [ %.pn, %for.body20.for.body20_crit_edge ], [ %.pn44.pr, %if.end10.for.body20_crit_edge ]
  %dev.1 = getelementptr i8, ptr %.pn46, i32 -736
  %call = tail call i32 @cpuidle_enable_device(ptr noundef %dev.1) #6
  %3 = ptrtoint ptr %.pn46 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn46, align 4
  %cmp18.not = icmp eq ptr %.pn, @cpuidle_detected_devices
  br i1 %cmp18.not, label %for.body20.for.end27_crit_edge, label %for.body20.for.body20_crit_edge

for.body20.for.body20_crit_edge:                  ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body20

for.body20.for.end27_crit_edge:                   ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end27

for.end27:                                        ; preds = %for.body20.for.end27_crit_edge, %if.end10.for.end27_crit_edge, %if.end10.thread
  tail call void @cpuidle_install_idle_handler() #6
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %gov) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end27, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end27 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuidle_uninstall_idle_handler() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuidle_disable_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_enable_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuidle_install_idle_handler() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpuidle_register_governor(ptr noundef %gov) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %gov, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %select = getelementptr inbounds %struct.cpuidle_governor, ptr %gov, i32 0, i32 5
  %0 = ptrtoint ptr %select to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %select, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @cpuidle_disabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @cpuidle_lock, i32 noundef 0) #6
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end4
  %.pn.in.i = phi ptr [ @cpuidle_governors, %if.end4 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @cpuidle_governors
  br i1 %cmp.not.i, label %for.cond.i.if.then6_crit_edge, label %for.body.i

for.cond.i.if.then6_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

for.body.i:                                       ; preds = %for.cond.i
  %gov.0.i = getelementptr i8, ptr %.pn.i, i32 -16
  %call.i = tail call i32 @strncasecmp(ptr noundef nonnull %gov, ptr noundef %gov.0.i, i32 noundef 16) #6
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %cpuidle_find_governor.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

cpuidle_find_governor.exit:                       ; preds = %for.body.i
  %cmp = icmp eq ptr %gov.0.i, null
  br i1 %cmp, label %cpuidle_find_governor.exit.if.then6_crit_edge, label %cpuidle_find_governor.exit.if.end23_crit_edge

cpuidle_find_governor.exit.if.end23_crit_edge:    ; preds = %cpuidle_find_governor.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

cpuidle_find_governor.exit.if.then6_crit_edge:    ; preds = %cpuidle_find_governor.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

if.then6:                                         ; preds = %cpuidle_find_governor.exit.if.then6_crit_edge, %for.cond.i.if.then6_crit_edge
  %governor_list = getelementptr inbounds %struct.cpuidle_governor, ptr %gov, i32 0, i32 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @cpuidle_governors, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %governor_list, ptr noundef %3, ptr noundef nonnull @cpuidle_governors) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then6.list_add_tail.exit_crit_edge

if.then6.list_add_tail.exit_crit_edge:            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %governor_list, ptr getelementptr inbounds (%struct.list_head, ptr @cpuidle_governors, i32 0, i32 1), align 4
  %4 = ptrtoint ptr %governor_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @cpuidle_governors, ptr %governor_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.cpuidle_governor, ptr %gov, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %prev3.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %governor_list, ptr %3, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then6.list_add_tail.exit_crit_edge
  %7 = load ptr, ptr @cpuidle_curr_governor, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %list_add_tail.exit.if.then20_crit_edge, label %lor.lhs.false8

list_add_tail.exit.if.then20_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

lor.lhs.false8:                                   ; preds = %list_add_tail.exit
  %call11 = tail call i32 @strncasecmp(ptr noundef nonnull @param_governor, ptr noundef nonnull %gov, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %lor.lhs.false8.if.then20_crit_edge, label %lor.lhs.false13

lor.lhs.false8.if.then20_crit_edge:               ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

lor.lhs.false13:                                  ; preds = %lor.lhs.false8
  %rating = getelementptr inbounds %struct.cpuidle_governor, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %rating to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rating, align 4
  %rating14 = getelementptr inbounds %struct.cpuidle_governor, ptr %gov, i32 0, i32 2
  %10 = ptrtoint ptr %rating14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rating14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp15 = icmp ult i32 %9, %11
  br i1 %cmp15, label %land.lhs.true, label %lor.lhs.false13.if.end23_crit_edge

lor.lhs.false13.if.end23_crit_edge:               ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

land.lhs.true:                                    ; preds = %lor.lhs.false13
  %call18 = tail call i32 @strncasecmp(ptr noundef nonnull @param_governor, ptr noundef nonnull %7, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true.if.end23_crit_edge, label %land.lhs.true.if.then20_crit_edge

land.lhs.true.if.then20_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then20:                                        ; preds = %land.lhs.true.if.then20_crit_edge, %lor.lhs.false8.if.then20_crit_edge, %list_add_tail.exit.if.then20_crit_edge
  %call21 = tail call i32 @cpuidle_switch_governor(ptr noundef nonnull %gov)
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %land.lhs.true.if.end23_crit_edge, %lor.lhs.false13.if.end23_crit_edge, %cpuidle_find_governor.exit.if.end23_crit_edge
  %ret.0 = phi i32 [ 0, %if.then20 ], [ 0, %land.lhs.true.if.end23_crit_edge ], [ 0, %lor.lhs.false13.if.end23_crit_edge ], [ -17, %cpuidle_find_governor.exit.if.end23_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @cpuidle_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end23 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_disabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @cpuidle_governor_latency_req(i32 noundef %cpu) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @get_cpu_device(i32 noundef %cpu) #6
  %qos.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 12, i32 28
  %0 = ptrtoint ptr %qos.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qos.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  %cmp.i.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.dev_pm_qos_raw_resume_latency.exit_crit_edge, label %cond.false.i

entry.dev_pm_qos_raw_resume_latency.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_pm_qos_raw_resume_latency.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 @pm_qos_read_value(ptr noundef nonnull %1) #6
  br label %dev_pm_qos_raw_resume_latency.exit

dev_pm_qos_raw_resume_latency.exit:               ; preds = %cond.false.i, %entry.dev_pm_qos_raw_resume_latency.exit_crit_edge
  %cond.i = phi i32 [ %call3.i, %cond.false.i ], [ 2147483647, %entry.dev_pm_qos_raw_resume_latency.exit_crit_edge ]
  %call2 = tail call i32 @cpu_latency_qos_limit() #6
  %2 = tail call i32 @llvm.smin.i32(i32 %cond.i, i32 %call2)
  %conv = sext i32 %2 to i64
  %mul = mul nsw i64 %conv, 1000
  ret i64 %mul
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_latency_qos_limit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_qos_read_value(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @cpuidle_governors, !1, !"cpuidle_governors", i1 false, i1 false}
!1 = !{!"../drivers/cpuidle/governor.c", i32 21, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/cpuidle/governor.c", i32 70, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @cpuidle_switch_governor._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @cpuidle_switch_governor._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @param_governor, !9, !"param_governor", i1 false, i1 false}
!9 = !{!"../drivers/cpuidle/governor.c", i32 19, i32 6}
!10 = !{ptr @cpuidle_curr_governor, !11, !"cpuidle_curr_governor", i1 false, i1 false}
!11 = !{!"../drivers/cpuidle/governor.c", i32 22, i32 26}
!12 = !{ptr @cpuidle_prev_governor, !13, !"cpuidle_prev_governor", i1 false, i1 false}
!13 = !{!"../drivers/cpuidle/governor.c", i32 23, i32 26}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
