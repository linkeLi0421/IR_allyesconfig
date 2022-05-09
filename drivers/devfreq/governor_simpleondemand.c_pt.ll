; ModuleID = '/llk/IR_all_yes/drivers/devfreq/governor_simpleondemand.c_pt.bc'
source_filename = "../drivers/devfreq/governor_simpleondemand.c"
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
%struct.devfreq_dev_profile = type { i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }

@__initcall__kmod_governor_simpleondemand__170_130_devfreq_simple_ondemand_init4 = internal global ptr @devfreq_simple_ondemand_init, section ".initcall4.init", align 4
@devfreq_simple_ondemand = internal global { %struct.devfreq_governor, [48 x i8] } { %struct.devfreq_governor { %struct.list_head zeroinitializer, [16 x i8] c"simple_ondemand\00", i64 3, i64 0, ptr @devfreq_simple_ondemand_func, ptr @devfreq_simple_ondemand_handler }, [48 x i8] zeroinitializer }, align 32
@devfreq_simple_ondemand_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: failed remove governor %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"devfreq_simple_ondemand_exit\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/devfreq/governor_simpleondemand.c\00", [54 x i8] zeroinitializer }, align 32
@devfreq_simple_ondemand_exit._entry_ptr = internal global ptr @devfreq_simple_ondemand_exit._entry, section ".printk_index", align 4
@__exitcall_devfreq_simple_ondemand_exit = internal global ptr @devfreq_simple_ondemand_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file171 = internal constant [69 x i8] c"governor_simpleondemand.file=drivers/devfreq/governor_simpleondemand\00", section ".modinfo", align 1
@__UNIQUE_ID_license172 = internal constant [36 x i8] c"governor_simpleondemand.license=GPL\00", section ".modinfo", align 1
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.3 = private unnamed_addr constant [24 x i8] c"devfreq_simple_ondemand\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 118, i32 32 }
@___asan_gen_.6 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private constant [45 x i8] c"../drivers/devfreq/governor_simpleondemand.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 138, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_file171, ptr @__UNIQUE_ID_license172, ptr @__exitcall_devfreq_simple_ondemand_exit, ptr @__initcall__kmod_governor_simpleondemand__170_130_devfreq_simple_ondemand_init4, ptr @devfreq_simple_ondemand_exit, ptr @devfreq_simple_ondemand_exit._entry, ptr @devfreq_simple_ondemand_exit._entry_ptr, ptr @devfreq_simple_ondemand, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_simple_ondemand to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devfreq_simple_ondemand_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @devfreq_simple_ondemand_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @devfreq_add_governor(ptr noundef nonnull @devfreq_simple_ondemand) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @devfreq_simple_ondemand_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @devfreq_remove_governor(ptr noundef nonnull @devfreq_simple_ondemand) #4
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
define internal i32 @devfreq_simple_ondemand_func(ptr noundef %df, ptr nocapture noundef writeonly %freq) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.devfreq, ptr %df, i32 0, i32 10
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 8
  %profile.i = getelementptr inbounds %struct.devfreq, ptr %df, i32 0, i32 3
  %2 = ptrtoint ptr %profile.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %profile.i, align 8
  %get_dev_status.i = getelementptr inbounds %struct.devfreq_dev_profile, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %get_dev_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_dev_status.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %devfreq_update_stats.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

devfreq_update_stats.exit:                        ; preds = %entry
  %parent.i = getelementptr inbounds %struct.devfreq, ptr %df, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %last_status.i = getelementptr inbounds %struct.devfreq, ptr %df, i32 0, i32 9
  %call.i = tail call i32 %5(ptr noundef %7, ptr noundef %last_status.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %devfreq_update_stats.exit.cleanup_crit_edge

devfreq_update_stats.exit.cleanup_crit_edge:      ; preds = %devfreq_update_stats.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %devfreq_update_stats.exit
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.if.end12_crit_edge, label %if.then3

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  %spec.select = select i1 %tobool4.not, i32 90, i32 %9
  %downdifferential = getelementptr inbounds %struct.devfreq_simple_ondemand_data, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %downdifferential to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %downdifferential, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not = icmp eq i32 %11, 0
  %spec.select100 = select i1 %tobool8.not, i32 5, i32 %11
  br label %if.end12

if.end12:                                         ; preds = %if.then3, %if.end.if.end12_crit_edge
  %dfso_upthreshold.1 = phi i32 [ 90, %if.end.if.end12_crit_edge ], [ %spec.select, %if.then3 ]
  %dfso_downdifferential.0 = phi i32 [ 5, %if.end.if.end12_crit_edge ], [ %spec.select100, %if.then3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %dfso_upthreshold.1)
  %cmp = icmp ugt i32 %dfso_upthreshold.1, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %dfso_upthreshold.1, i32 %dfso_downdifferential.0)
  %cmp13 = icmp ult i32 %dfso_upthreshold.1, %dfso_downdifferential.0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp13
  br i1 %or.cond, label %if.end12.cleanup_crit_edge, label %if.end15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %12 = ptrtoint ptr %last_status.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %last_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp16 = icmp eq i32 %13, 0
  br i1 %cmp16, label %if.end15.cleanup.sink.split_crit_edge, label %if.end18

if.end15.cleanup.sink.split_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end18:                                         ; preds = %if.end15
  %busy_time = getelementptr inbounds %struct.devfreq, ptr %df, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %busy_time to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %busy_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %15)
  %cmp19 = icmp ugt i32 %15, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %13)
  %cmp22 = icmp ugt i32 %13, 16777215
  %or.cond99 = select i1 %cmp19, i1 true, i1 %cmp22
  br i1 %or.cond99, label %if.then23, label %if.end18.if.end27_crit_edge

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %shr = lshr i32 %15, 7
  %16 = ptrtoint ptr %busy_time to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shr, ptr %busy_time, align 4
  %shr26 = lshr i32 %13, 7
  %17 = ptrtoint ptr %last_status.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr26, ptr %last_status.i, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.end18.if.end27_crit_edge
  %18 = ptrtoint ptr %busy_time to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %busy_time, align 4
  %mul = mul i32 %19, 100
  %20 = ptrtoint ptr %last_status.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %last_status.i, align 4
  %mul30 = mul i32 %21, %dfso_upthreshold.1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %mul30)
  %cmp31 = icmp ugt i32 %mul, %mul30
  br i1 %cmp31, label %if.end27.cleanup.sink.split_crit_edge, label %if.end33

if.end27.cleanup.sink.split_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end33:                                         ; preds = %if.end27
  %current_frequency = getelementptr inbounds %struct.devfreq, ptr %df, i32 0, i32 9, i32 2
  %22 = ptrtoint ptr %current_frequency to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %current_frequency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp34 = icmp eq i32 %23, 0
  br i1 %cmp34, label %if.end33.cleanup.sink.split_crit_edge, label %if.end36

if.end33.cleanup.sink.split_crit_edge:            ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end36:                                         ; preds = %if.end33
  %sub = sub i32 %dfso_upthreshold.1, %dfso_downdifferential.0
  %mul40 = mul i32 %21, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %mul40)
  %cmp41 = icmp ugt i32 %mul, %mul40
  br i1 %cmp41, label %if.end36.cleanup.sink.split_crit_edge, label %if.end44

if.end36.cleanup.sink.split_crit_edge:            ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end44:                                         ; preds = %if.end36
  %conv = zext i32 %19 to i64
  %conv47 = zext i32 %23 to i64
  %mul48 = mul nuw i64 %conv47, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul48)
  %cmp164.i.i = icmp ult i64 %mul48, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !24

if.then168.i.i:                                   ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  %conv169.i.i = trunc i64 %mul48 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %21
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  %24 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %21, i64 %mul48) #8, !srcloc !25
  %asmresult1.i.i.i = extractvalue { i64, i64 } %24, 1
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %mul51 = mul i64 %dividend.addr.0.i.i, 100
  %div98 = lshr i32 %dfso_downdifferential.0, 1
  %sub52 = sub nsw i32 %dfso_upthreshold.1, %div98
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul51)
  %cmp164.i.i205 = icmp ult i64 %mul51, 4294967296
  br i1 %cmp164.i.i205, label %if.then168.i.i210, label %if.else174.i.i212, !prof !24

if.then168.i.i210:                                ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #6
  %conv169.i.i207 = trunc i64 %mul51 to i32
  %div172.i.i208 = udiv i32 %conv169.i.i207, %sub52
  br label %cleanup.sink.split

if.else174.i.i212:                                ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #6
  %25 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %sub52, i64 %mul51) #8, !srcloc !25
  %asmresult1.i.i.i211 = extractvalue { i64, i64 } %25, 1
  %extract.t218 = trunc i64 %asmresult1.i.i.i211 to i32
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else174.i.i212, %if.then168.i.i210, %if.end36.cleanup.sink.split_crit_edge, %if.end33.cleanup.sink.split_crit_edge, %if.end27.cleanup.sink.split_crit_edge, %if.end15.cleanup.sink.split_crit_edge
  %dividend.addr.0.i.i213.off0.sink = phi i32 [ -1, %if.end15.cleanup.sink.split_crit_edge ], [ -1, %if.end27.cleanup.sink.split_crit_edge ], [ -1, %if.end33.cleanup.sink.split_crit_edge ], [ %23, %if.end36.cleanup.sink.split_crit_edge ], [ %div172.i.i208, %if.then168.i.i210 ], [ %extract.t218, %if.else174.i.i212 ]
  %26 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %dividend.addr.0.i.i213.off0.sink, ptr %freq, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end12.cleanup_crit_edge, %devfreq_update_stats.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %devfreq_update_stats.exit.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devfreq_simple_ondemand_handler(ptr noundef %devfreq, i32 noundef %event, ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
    i32 5, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @devfreq_monitor_start(ptr noundef %devfreq) #4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @devfreq_monitor_stop(ptr noundef %devfreq) #4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @devfreq_update_interval(ptr noundef %devfreq, ptr noundef %data) #4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @devfreq_monitor_suspend(ptr noundef %devfreq) #4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @devfreq_monitor_resume(ptr noundef %devfreq) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devfreq_monitor_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devfreq_monitor_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devfreq_update_interval(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devfreq_monitor_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devfreq_monitor_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
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
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @__initcall__kmod_governor_simpleondemand__170_130_devfreq_simple_ondemand_init4, !1, !"__initcall__kmod_governor_simpleondemand__170_130_devfreq_simple_ondemand_init4", i1 false, i1 false}
!1 = !{!"../drivers/devfreq/governor_simpleondemand.c", i32 130, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/devfreq/governor_simpleondemand.c", i32 138, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @devfreq_simple_ondemand_exit._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @devfreq_simple_ondemand_exit._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__exitcall_devfreq_simple_ondemand_exit, !9, !"__exitcall_devfreq_simple_ondemand_exit", i1 false, i1 false}
!9 = !{!"../drivers/devfreq/governor_simpleondemand.c", i32 142, i32 1}
!10 = !{ptr @__UNIQUE_ID_file171, !11, !"__UNIQUE_ID_file171", i1 false, i1 false}
!11 = !{!"../drivers/devfreq/governor_simpleondemand.c", i32 143, i32 1}
!12 = !{ptr @__UNIQUE_ID_license172, !11, !"__UNIQUE_ID_license172", i1 false, i1 false}
!13 = !{ptr @devfreq_simple_ondemand, !14, !"devfreq_simple_ondemand", i1 false, i1 false}
!14 = !{!"../drivers/devfreq/governor_simpleondemand.c", i32 118, i32 32}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"branch_weights", i32 2000, i32 1}
!25 = !{i64 2148189482, i64 2148189762, i64 2148190096, i64 2148190430}
