; ModuleID = '/llk/IR_all_yes/drivers/devfreq/governor_passive.c_pt.bc'
source_filename = "../drivers/devfreq/governor_passive.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.devfreq_governor = type { %struct.list_head, [16 x i8], i64, i64, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.devfreq = type { %struct.list_head, %struct.mutex, %struct.device, ptr, ptr, ptr, %struct.notifier_block, %struct.delayed_work, i32, %struct.devfreq_dev_status, ptr, %struct.dev_pm_qos_request, %struct.dev_pm_qos_request, i32, i32, i8, i32, i32, %struct.atomic_t, %struct.devfreq_stats, %struct.srcu_notifier_head, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.devfreq_dev_status = type { i32, i32, i32, ptr }
%struct.dev_pm_qos_request = type { i32, %union.anon.43, ptr }
%union.anon.43 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.devfreq_stats = type { i32, ptr, ptr, i64 }
%struct.srcu_notifier_head = type { %struct.mutex, %struct.srcu_struct, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.devfreq_passive_data = type { ptr, ptr, ptr, %struct.notifier_block }
%struct.devfreq_dev_profile = type { i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.devfreq_freqs = type { i32, i32 }

@__initcall__kmod_governor_passive__170_177_devfreq_passive_init4 = internal global ptr @devfreq_passive_init, section ".initcall4.init", align 4
@devfreq_passive = internal global { %struct.devfreq_governor, [48 x i8] } { %struct.devfreq_governor { %struct.list_head zeroinitializer, [16 x i8] c"passive\00\00\00\00\00\00\00\00\00", i64 0, i64 1, ptr @devfreq_passive_get_target_freq, ptr @devfreq_passive_event_handler }, [48 x i8] zeroinitializer }, align 32
@devfreq_passive_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: failed remove governor %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"devfreq_passive_exit\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/devfreq/governor_passive.c\00", [61 x i8] zeroinitializer }, align 32
@devfreq_passive_exit._entry_ptr = internal global ptr @devfreq_passive_exit._entry, section ".printk_index", align 4
@__exitcall_devfreq_passive_exit = internal global ptr @devfreq_passive_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [61 x i8] c"governor_passive.author=Chanwoo Choi <cw00.choi@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author172 = internal constant [64 x i8] c"governor_passive.author=MyungJoo Ham <myungjoo.ham@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description173 = internal constant [54 x i8] c"governor_passive.description=DEVFREQ Passive governor\00", section ".modinfo", align 1
@__UNIQUE_ID_file174 = internal constant [55 x i8] c"governor_passive.file=drivers/devfreq/governor_passive\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [32 x i8] c"governor_passive.license=GPL v2\00", section ".modinfo", align 1
@devfreq_passive_notifier_call._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 129, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"failed to update devfreq using passive governor\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"devfreq_passive_notifier_call\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@devfreq_passive_notifier_call._entry_ptr = internal global ptr @devfreq_passive_notifier_call._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.8 = private unnamed_addr constant [16 x i8] c"devfreq_passive\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 166, i32 32 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 185, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [38 x i8] c"../drivers/devfreq/governor_passive.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 128, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_description173, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_devfreq_passive_exit, ptr @__initcall__kmod_governor_passive__170_177_devfreq_passive_init4, ptr @devfreq_passive_exit, ptr @devfreq_passive_exit._entry, ptr @devfreq_passive_exit._entry_ptr, ptr @devfreq_passive_notifier_call._entry, ptr @devfreq_passive_notifier_call._entry_ptr, ptr @devfreq_passive, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_passive to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_passive_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_passive_notifier_call._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @devfreq_passive_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @devfreq_add_governor(ptr noundef nonnull @devfreq_passive) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @devfreq_passive_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @devfreq_remove_governor(ptr noundef nonnull @devfreq_passive) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_remove_governor(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_add_governor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devfreq_passive_get_target_freq(ptr noundef %devfreq, ptr noundef %freq) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 10
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %get_target_freq = getelementptr inbounds %struct.devfreq_passive_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %get_target_freq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_target_freq, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %5(ptr noundef %devfreq, ptr noundef %freq) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %profile = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 3
  %6 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %profile, align 8
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %freq_table = getelementptr inbounds %struct.devfreq_dev_profile, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %freq_table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %freq_table, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %max_state = getelementptr inbounds %struct.devfreq_dev_profile, ptr %7, i32 0, i32 9
  %10 = ptrtoint ptr %max_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %lor.lhs.false5.cleanup_crit_edge, label %if.end8

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false5
  %opp_table = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 5
  %12 = ptrtoint ptr %opp_table to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %opp_table, align 8
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %if.end8.no_required_opp_crit_edge, label %land.lhs.true

if.end8.no_required_opp_crit_edge:                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %no_required_opp

land.lhs.true:                                    ; preds = %if.end8
  %opp_table10 = getelementptr inbounds %struct.devfreq, ptr %3, i32 0, i32 5
  %14 = ptrtoint ptr %opp_table10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %opp_table10, align 8
  %tobool11.not = icmp eq ptr %15, null
  br i1 %tobool11.not, label %land.lhs.true.no_required_opp_crit_edge, label %if.then12

land.lhs.true.no_required_opp_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %no_required_opp

if.then12:                                        ; preds = %land.lhs.true
  %parent13 = getelementptr inbounds %struct.devfreq, ptr %3, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %parent13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent13, align 8
  %call14 = tail call ptr @devfreq_recommended_opp(ptr noundef %17, ptr noundef %freq, i32 noundef 0) #4
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %call14 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.then12
  %19 = ptrtoint ptr %opp_table10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %opp_table10, align 8
  %21 = ptrtoint ptr %opp_table to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %opp_table, align 8
  %call21 = tail call ptr @dev_pm_opp_xlate_required_opp(ptr noundef %20, ptr noundef %22, ptr noundef %call14) #4
  tail call void @dev_pm_opp_put(ptr noundef %call14) #4
  %cmp.i92 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i92, label %if.end18.no_required_opp_crit_edge, label %if.end24

if.end18.no_required_opp_crit_edge:               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %no_required_opp

if.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %call25 = tail call i32 @dev_pm_opp_get_freq(ptr noundef %call21) #4
  %23 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call25, ptr %freq, align 4
  tail call void @dev_pm_opp_put(ptr noundef %call21) #4
  br label %cleanup

no_required_opp:                                  ; preds = %if.end18.no_required_opp_crit_edge, %land.lhs.true.no_required_opp_crit_edge, %if.end8.no_required_opp_crit_edge
  %profile27 = getelementptr inbounds %struct.devfreq, ptr %3, i32 0, i32 3
  %24 = ptrtoint ptr %profile27 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %profile27, align 8
  %max_state28 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %max_state28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_state28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp2993.not = icmp eq i32 %27, 0
  br i1 %cmp2993.not, label %no_required_opp.for.end_crit_edge, label %for.body.lr.ph

no_required_opp.for.end_crit_edge:                ; preds = %no_required_opp
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %no_required_opp
  %freq_table31 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %25, i32 0, i32 8
  %28 = ptrtoint ptr %freq_table31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %freq_table31, align 4
  %30 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %freq, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.094 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %29, i32 %i.094
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %31)
  %cmp32 = icmp eq i32 %33, %31
  br i1 %cmp32, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.094, 1
  %exitcond.not = icmp eq i32 %inc, %27
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.end:                                          ; preds = %for.body.for.end_crit_edge, %no_required_opp.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %no_required_opp.for.end_crit_edge ], [ %i.094, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %27)
  %cmp37 = icmp eq i32 %i.0.lcssa, %27
  br i1 %cmp37, label %for.end.cleanup_crit_edge, label %if.end39

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end39:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %profile, align 8
  %max_state41 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %max_state41 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_state41, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %37)
  %cmp42 = icmp ult i32 %i.0.lcssa, %37
  %freq_table45 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %35, i32 0, i32 8
  %38 = ptrtoint ptr %freq_table45 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %freq_table45, align 4
  %sub = add i32 %37, -1
  %sub.sink = select i1 %cmp42, i32 %i.0.lcssa, i32 %sub
  %arrayidx51 = getelementptr i32, ptr %39, i32 %sub.sink
  %40 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %40)
  %child_freq.0 = load i32, ptr %arrayidx51, align 4
  %41 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %child_freq.0, ptr %freq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %for.end.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.end24, %if.then16, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %18, %if.then16 ], [ 0, %if.end39 ], [ 0, %if.end24 ], [ -22, %lor.lhs.false5.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devfreq_passive_event_handler(ptr noundef %devfreq, i32 noundef %event, ptr nocapture noundef readnone %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.devfreq, ptr %devfreq, i32 0, i32 10
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %nb3 = getelementptr inbounds %struct.devfreq_passive_data, ptr %1, i32 0, i32 3
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb8
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %this = getelementptr inbounds %struct.devfreq_passive_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %this, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %if.then5, label %sw.bb.if.end7_crit_edge

sw.bb.if.end7_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then5:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %this to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %devfreq, ptr %this, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %sw.bb.if.end7_crit_edge
  %8 = ptrtoint ptr %nb3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @devfreq_passive_notifier_call, ptr %nb3, align 4
  %call = tail call i32 @devfreq_register_notifier(ptr noundef nonnull %3, ptr noundef %nb3, i32 noundef 0) #4
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  %call9 = tail call i32 @devfreq_unregister_notifier(ptr noundef nonnull %3, ptr noundef %nb3, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %sw.bb8.cleanup_crit_edge, label %do.end, !prof !37

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 157, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb8.cleanup_crit_edge, %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -517, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call, %if.end7 ], [ 0, %do.end ], [ 0, %sw.bb8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devfreq_recommended_opp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_xlate_required_opp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_freq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devfreq_passive_notifier_call(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readonly %ptr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -12
  %this = getelementptr i8, ptr %nb, i32 -4
  %0 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %this, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %new = getelementptr inbounds %struct.devfreq_freqs, ptr %ptr, i32 0, i32 1
  %4 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %new, align 4
  %lock = getelementptr inbounds %struct.devfreq, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 1) #4
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %event, label %entry.sw.epilog.thread_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

entry.sw.epilog.thread_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.thread

sw.bb:                                            ; preds = %entry
  %previous_freq = getelementptr inbounds %struct.devfreq, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %previous_freq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %previous_freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %5)
  %cmp = icmp ugt i32 %8, %5
  br i1 %cmp, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.sw.epilog.thread_crit_edge

sw.bb.sw.epilog.thread_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.thread

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %previous_freq3 = getelementptr inbounds %struct.devfreq, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %previous_freq3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %previous_freq3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %5)
  %cmp4 = icmp ult i32 %10, %5
  br i1 %cmp4, label %sw.bb2.sw.epilog_crit_edge, label %sw.bb2.sw.epilog.thread_crit_edge

sw.bb2.sw.epilog.thread_crit_edge:                ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.thread

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %sw.bb2.sw.epilog.thread_crit_edge, %sw.bb.sw.epilog.thread_crit_edge, %entry.sw.epilog.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #4
  br label %if.end11

sw.epilog:                                        ; preds = %sw.bb2.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %call6 = tail call i32 @devfreq_update_target(ptr noundef %1, i32 noundef %5) #4
  tail call void @mutex_unlock(ptr noundef %lock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp9 = icmp slt i32 %call6, 0
  br i1 %cmp9, label %do.end, label %sw.epilog.if.end11_crit_edge

sw.epilog.if.end11_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.devfreq, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.3) #7
  br label %if.end11

if.end11:                                         ; preds = %do.end, %sw.epilog.if.end11_crit_edge, %sw.epilog.thread
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_register_notifier(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_unregister_notifier(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_update_target(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !19, !21, !23, !24, !25, !26, !27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__initcall__kmod_governor_passive__170_177_devfreq_passive_init4, !1, !"__initcall__kmod_governor_passive__170_177_devfreq_passive_init4", i1 false, i1 false}
!1 = !{!"../drivers/devfreq/governor_passive.c", i32 177, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/devfreq/governor_passive.c", i32 185, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @devfreq_passive_exit._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @devfreq_passive_exit._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__exitcall_devfreq_passive_exit, !9, !"__exitcall_devfreq_passive_exit", i1 false, i1 false}
!9 = !{!"../drivers/devfreq/governor_passive.c", i32 187, i32 1}
!10 = !{ptr @__UNIQUE_ID_author171, !11, !"__UNIQUE_ID_author171", i1 false, i1 false}
!11 = !{!"../drivers/devfreq/governor_passive.c", i32 189, i32 1}
!12 = !{ptr @__UNIQUE_ID_author172, !13, !"__UNIQUE_ID_author172", i1 false, i1 false}
!13 = !{!"../drivers/devfreq/governor_passive.c", i32 190, i32 1}
!14 = !{ptr @__UNIQUE_ID_description173, !15, !"__UNIQUE_ID_description173", i1 false, i1 false}
!15 = !{!"../drivers/devfreq/governor_passive.c", i32 191, i32 1}
!16 = !{ptr @__UNIQUE_ID_file174, !17, !"__UNIQUE_ID_file174", i1 false, i1 false}
!17 = !{!"../drivers/devfreq/governor_passive.c", i32 192, i32 1}
!18 = !{ptr @__UNIQUE_ID_license175, !17, !"__UNIQUE_ID_license175", i1 false, i1 false}
!19 = !{ptr @devfreq_passive, !20, !"devfreq_passive", i1 false, i1 false}
!20 = !{!"../drivers/devfreq/governor_passive.c", i32 166, i32 32}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/devfreq/governor_passive.c", i32 128, i32 3}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @devfreq_passive_notifier_call._entry, !22, !"_entry", i1 false, i1 false}
!27 = !{ptr @devfreq_passive_notifier_call._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"branch_weights", i32 2000, i32 1}
