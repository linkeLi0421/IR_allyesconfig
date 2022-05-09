; ModuleID = '/llk/IR_all_yes/drivers/ptp/ptp_vclock.c_pt.bc'
source_filename = "../drivers/ptp/ptp_vclock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ptp_get_vclocks_index\22, \22a\22\09"
module asm "\09.weak\09__crc_ptp_get_vclocks_index\09\09\09\09"
module asm "\09.long\09__crc_ptp_get_vclocks_index\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ptp_get_vclocks_index:\09\09\09\09\09"
module asm "\09.asciz \09\22ptp_get_vclocks_index\22\09\09\09\09\09"
module asm "__kstrtabns_ptp_get_vclocks_index:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ptp_convert_timestamp\22, \22a\22\09"
module asm "\09.weak\09__crc_ptp_convert_timestamp\09\09\09\09"
module asm "\09.long\09__crc_ptp_convert_timestamp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ptp_convert_timestamp:\09\09\09\09\09"
module asm "\09.asciz \09\22ptp_convert_timestamp\22\09\09\09\09\09"
module asm "__kstrtabns_ptp_convert_timestamp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ptp_vclock = type { ptr, %struct.ptp_clock_info, ptr, %struct.cyclecounter, %struct.timecounter, %struct.spinlock }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ptp_clock = type { %struct.posix_clock, %struct.device, ptr, i32, i32, ptr, i32, %struct.timestamp_event_queue, %struct.mutex, %struct.mutex, %struct.wait_queue_head, i32, ptr, ptr, %struct.attribute_group, [2 x ptr], ptr, %struct.kthread_delayed_work, i32, i32, ptr, %struct.mutex, i8 }
%struct.posix_clock = type { %struct.posix_clock_operations, %struct.cdev, ptr, %struct.rw_semaphore, i8 }
%struct.posix_clock_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.timestamp_event_queue = type { [128 x %struct.ptp_extts_event], i32, i32, %struct.spinlock }
%struct.ptp_extts_event = type { %struct.ptp_clock_time, i32, i32, [2 x i32] }
%struct.ptp_clock_time = type { i64, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kthread_delayed_work = type { %struct.kthread_work, %struct.timer_list }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timespec64 = type { i64, i32 }

@ptp_vclock_info = internal constant { %struct.ptp_clock_info, [52 x i8] } { %struct.ptp_clock_info { ptr null, [32 x i8] c"ptp virtual clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 32767999, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr @ptp_vclock_adjfine, ptr null, ptr null, ptr @ptp_vclock_adjtime, ptr @ptp_vclock_gettime, ptr null, ptr null, ptr @ptp_vclock_settime, ptr null, ptr null, ptr @ptp_vclock_refresh }, [52 x i8] zeroinitializer }, align 32
@ptp_vclock_cc = internal constant { %struct.cyclecounter, [40 x i8] } { %struct.cyclecounter { ptr @ptp_vclock_read, i64 4294967295, i32 -2147483648, i32 31 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ptp%d_virt\00", [21 x i8] zeroinitializer }, align 32
@ptp_vclock_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&vclock->lock\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ptp%d\00", [26 x i8] zeroinitializer }, align 32
@ptp_class = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_ptp_get_vclocks_index = external dso_local constant [0 x i8], align 1
@__kstrtabns_ptp_get_vclocks_index = external dso_local constant [0 x i8], align 1
@__ksymtab_ptp_get_vclocks_index = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ptp_get_vclocks_index to i32), ptr @__kstrtab_ptp_get_vclocks_index, ptr @__kstrtabns_ptp_get_vclocks_index }, section "___ksymtab+ptp_get_vclocks_index", align 4
@__kstrtab_ptp_convert_timestamp = external dso_local constant [0 x i8], align 1
@__kstrtabns_ptp_convert_timestamp = external dso_local constant [0 x i8], align 1
@__ksymtab_ptp_convert_timestamp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ptp_convert_timestamp to i32), ptr @__kstrtab_ptp_convert_timestamp, ptr @__kstrtabns_ptp_convert_timestamp }, section "___ksymtab+ptp_convert_timestamp", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.3 = private unnamed_addr constant [16 x i8] c"ptp_vclock_info\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 84, i32 36 }
@___asan_gen_.6 = private unnamed_addr constant [14 x i8] c"ptp_vclock_cc\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 110, i32 34 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 129, i32 50 }
@___asan_gen_.12 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 132, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private constant [28 x i8] c"../drivers/ptp/ptp_vclock.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 163, i32 37 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_ptp_convert_timestamp, ptr @__ksymtab_ptp_get_vclocks_index, ptr @ptp_vclock_info, ptr @ptp_vclock_cc, ptr @.str, ptr @ptp_vclock_register.__key, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_vclock_info to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_vclock_cc to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_vclock_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ptp_vclock_register(ptr noundef %pclock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 232) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pclock, ptr %call7.i.i, align 8
  %info = getelementptr inbounds %struct.ptp_vclock, ptr %call7.i.i, i32 0, i32 1
  %2 = call ptr @memcpy(ptr %info, ptr @ptp_vclock_info, i32 108)
  %cc = getelementptr inbounds %struct.ptp_vclock, ptr %call7.i.i, i32 0, i32 3
  %3 = call ptr @memcpy(ptr %cc, ptr @ptp_vclock_cc, i32 24)
  %name = getelementptr inbounds %struct.ptp_vclock, ptr %call7.i.i, i32 0, i32 1, i32 1
  %index = getelementptr inbounds %struct.ptp_clock, ptr %pclock, i32 0, i32 4
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 8
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str, i32 noundef %5)
  %lock = getelementptr inbounds %struct.ptp_vclock, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ptp_vclock_register.__key, i16 noundef signext 3) #6
  %dev = getelementptr inbounds %struct.ptp_clock, ptr %pclock, i32 0, i32 1
  %call6 = tail call ptr @ptp_clock_register(ptr noundef %info, ptr noundef %dev) #6
  %clock = getelementptr inbounds %struct.ptp_vclock, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call6, ptr %clock, align 8
  %tobool.not.i = icmp eq ptr %call6, null
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %tc = getelementptr inbounds %struct.ptp_vclock, ptr %call7.i.i, i32 0, i32 4
  tail call void @timecounter_init(ptr noundef %tc, ptr noundef %cc, i64 noundef 0) #6
  %7 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clock, align 8
  %call13 = tail call i32 @ptp_schedule_worker(ptr noundef %8, i32 noundef 200) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then9 ], [ %call7.i.i, %if.end10 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @timecounter_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_schedule_worker(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ptp_vclock_unregister(ptr noundef %vclock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clock = getelementptr inbounds %struct.ptp_vclock, ptr %vclock, i32 0, i32 2
  %0 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clock, align 8
  %call = tail call i32 @ptp_clock_unregister(ptr noundef %1) #6
  tail call void @kfree(ptr noundef %vclock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ptp_get_vclocks_index(i32 noundef %pclock_index, ptr nocapture noundef writeonly %vclock_index) #0 align 64 {
entry:
  %name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #6
  %0 = call ptr @memset(ptr %name, i32 0, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pclock_index)
  %cmp = icmp slt i32 %pclock_index, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 32, ptr noundef nonnull @.str.2, i32 noundef %pclock_index)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ptp_class to i32))
  %1 = load ptr, ptr @ptp_class, align 4
  %call.i = call ptr @class_find_device(ptr noundef %1, ptr noundef null, ptr noundef nonnull %name, ptr noundef nonnull @device_match_name) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %driver_data.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %n_vclocks_mux = getelementptr inbounds %struct.ptp_clock, ptr %3, i32 0, i32 21
  %call6 = call i32 @mutex_lock_interruptible_nested(ptr noundef %n_vclocks_mux, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end4.cleanup.sink.split_crit_edge

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end9:                                          ; preds = %if.end4
  %n_vclocks = getelementptr inbounds %struct.ptp_clock, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %n_vclocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_vclocks, align 8
  %mul = shl i32 %5, 2
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #10
  %6 = ptrtoint ptr %vclock_index to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i.i, ptr %vclock_index, align 4
  %tobool11.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool11.not, label %if.end9.out_crit_edge, label %if.end13

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %vclock_index14 = getelementptr inbounds %struct.ptp_clock, ptr %3, i32 0, i32 20
  %7 = ptrtoint ptr %vclock_index14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vclock_index14, align 4
  %9 = ptrtoint ptr %n_vclocks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_vclocks, align 8
  %mul16 = shl i32 %10, 2
  %11 = call ptr @memcpy(ptr %call9.i.i, ptr %8, i32 %mul16)
  %12 = load i32, ptr %n_vclocks, align 8
  br label %out

out:                                              ; preds = %if.end13, %if.end9.out_crit_edge
  %num.0 = phi i32 [ %12, %if.end13 ], [ 0, %if.end9.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %n_vclocks_mux) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out, %if.end4.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %num.0, %out ], [ 0, %if.end4.cleanup.sink.split_crit_edge ]
  call void @put_device(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @ptp_convert_timestamp(ptr nocapture noundef readonly %hwtstamps, i32 noundef %vclock_index) #0 align 64 {
entry:
  %name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #6
  %0 = call ptr @memset(ptr %name, i32 0, i32 32)
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 32, ptr noundef nonnull @.str.2, i32 noundef %vclock_index)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ptp_class to i32))
  %1 = load ptr, ptr @ptp_class, align 4
  %call.i = call ptr @class_find_device(ptr noundef %1, ptr noundef null, ptr noundef nonnull %name, ptr noundef nonnull @device_match_name) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %is_virtual_clock = getelementptr inbounds %struct.ptp_clock, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %is_virtual_clock to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_virtual_clock, align 4, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end6

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %info = getelementptr inbounds %struct.ptp_clock, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 8
  %8 = ptrtoint ptr %hwtstamps to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %hwtstamps, align 8
  %lock = getelementptr i8, ptr %7, i32 180
  %call11 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %tc = getelementptr i8, ptr %7, i32 140
  %call14 = call i64 @timecounter_cyc2time(ptr noundef %tc, i64 noundef %9) #6
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end6, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i64 [ %call14, %if.end6 ], [ 0, %if.end.cleanup.sink.split_crit_edge ]
  call void @put_device(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #6
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_cyc2time(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_vclock_adjfine(ptr noundef %ptp, i32 noundef %scaled_ppm) #0 align 64 {
entry:
  %remainder.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = sext i32 %scaled_ppm to i64
  %shl = shl nsw i64 %conv, 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i) #6
  %0 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %remainder.i, align 4, !annotation !25
  %call.i = call i64 @div_s64_rem(i64 noundef %shl, i32 noundef 15625, ptr noundef nonnull %remainder.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i) #6
  %lock = getelementptr i8, ptr %ptp, i32 180
  %call5 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %tc = getelementptr i8, ptr %ptp, i32 140
  %call8 = call i64 @timecounter_read(ptr noundef %tc) #6
  %1 = trunc i64 %call.i to i32
  %conv9 = xor i32 %1, -2147483648
  %mult = getelementptr i8, ptr %ptp, i32 132
  %2 = ptrtoint ptr %mult to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv9, ptr %mult, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_vclock_adjtime(ptr noundef %ptp, i64 noundef %delta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %ptp, i32 180
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %nsec.i = getelementptr i8, ptr %ptp, i32 156
  %0 = ptrtoint ptr %nsec.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %nsec.i, align 8
  %add.i = add i64 %1, %delta
  store i64 %add.i, ptr %nsec.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_vclock_gettime(ptr noundef %ptp, ptr nocapture noundef writeonly %ts) #0 align 64 {
entry:
  %tmp8 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %ptp, i32 180
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %tc = getelementptr i8, ptr %ptp, i32 140
  %call6 = tail call i64 @timecounter_read(ptr noundef %tc) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp8) #6
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp8, i64 noundef %call6) #6
  %0 = call ptr @memcpy(ptr %ts, ptr %tmp8, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp8) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_vclock_settime(ptr noundef %ptp, ptr nocapture noundef readonly %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %1)
  %cmp.i = icmp sgt i64 %1, 9223372035
  br i1 %cmp.i, label %entry.timespec64_to_ns.exit_crit_edge, label %if.end.i

entry.timespec64_to_ns.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %timespec64_to_ns.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %1)
  %cmp2.i = icmp slt i64 %1, -9223372035
  br i1 %cmp2.i, label %if.end.i.timespec64_to_ns.exit_crit_edge, label %if.end4.i

if.end.i.timespec64_to_ns.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %timespec64_to_ns.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i = mul nsw i64 %1, 1000000000
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %2 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tv_nsec.i, align 8
  %conv.i = sext i32 %3 to i64
  %add.i = add i64 %mul.i, %conv.i
  br label %timespec64_to_ns.exit

timespec64_to_ns.exit:                            ; preds = %if.end4.i, %if.end.i.timespec64_to_ns.exit_crit_edge, %entry.timespec64_to_ns.exit_crit_edge
  %retval.0.i = phi i64 [ %add.i, %if.end4.i ], [ 9223372036854775807, %entry.timespec64_to_ns.exit_crit_edge ], [ -9223372036854775808, %if.end.i.timespec64_to_ns.exit_crit_edge ]
  %lock = getelementptr i8, ptr %ptp, i32 180
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %tc = getelementptr i8, ptr %ptp, i32 140
  %cc = getelementptr i8, ptr %ptp, i32 116
  tail call void @timecounter_init(ptr noundef %tc, ptr noundef %cc, i64 noundef %retval.0.i) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_vclock_refresh(ptr noundef %ptp) #0 align 64 {
entry:
  %tmp8.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr i8, ptr %ptp, i32 180
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %tc.i = getelementptr i8, ptr %ptp, i32 140
  %call6.i = tail call i64 @timecounter_read(ptr noundef %tc.i) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp8.i) #6
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp8.i, i64 noundef %call6.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp8.i) #6
  ret i32 200
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ptp_vclock_read(ptr nocapture noundef readonly %cc) #0 align 64 {
entry:
  %ts = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cc, i32 -120
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #6
  %2 = call ptr @memset(ptr %ts, i32 0, i32 16)
  %info = getelementptr inbounds %struct.ptp_clock, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %info, align 8
  %gettimex64 = getelementptr inbounds %struct.ptp_clock_info, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %gettimex64 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gettimex64, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = call i32 %6(ptr noundef %4, ptr noundef nonnull %ts, ptr noundef null) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %gettime64 = getelementptr inbounds %struct.ptp_clock_info, ptr %4, i32 0, i32 13
  %7 = ptrtoint ptr %gettime64 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gettime64, align 4
  %call6 = call i32 %8(ptr noundef %4, ptr noundef nonnull %ts) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %ts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %10)
  %cmp.i = icmp sgt i64 %10, 9223372035
  br i1 %cmp.i, label %if.end.timespec64_to_ns.exit_crit_edge, label %if.end.i

if.end.timespec64_to_ns.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %timespec64_to_ns.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %10)
  %cmp2.i = icmp slt i64 %10, -9223372035
  br i1 %cmp2.i, label %if.end.i.timespec64_to_ns.exit_crit_edge, label %if.end4.i

if.end.i.timespec64_to_ns.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %timespec64_to_ns.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i = mul nsw i64 %10, 1000000000
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %11 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tv_nsec.i, align 8
  %conv.i = sext i32 %12 to i64
  %add.i = add i64 %mul.i, %conv.i
  br label %timespec64_to_ns.exit

timespec64_to_ns.exit:                            ; preds = %if.end4.i, %if.end.i.timespec64_to_ns.exit_crit_edge, %if.end.timespec64_to_ns.exit_crit_edge
  %retval.0.i = phi i64 [ %add.i, %if.end4.i ], [ 9223372036854775807, %if.end.timespec64_to_ns.exit_crit_edge ], [ -9223372036854775808, %if.end.i.timespec64_to_ns.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #6
  ret i64 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @class_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_name(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/ptp/ptp_vclock.c", i32 129, i32 50}
!2 = !{ptr @ptp_vclock_register.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/ptp/ptp_vclock.c", i32 132, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/ptp/ptp_vclock.c", i32 163, i32 37}
!7 = !{ptr @__ksymtab_ptp_get_vclocks_index, !8, !"__ksymtab_ptp_get_vclocks_index", i1 false, i1 false}
!8 = !{!"../drivers/ptp/ptp_vclock.c", i32 186, i32 1}
!9 = !{ptr @__ksymtab_ptp_convert_timestamp, !10, !"__ksymtab_ptp_convert_timestamp", i1 false, i1 false}
!10 = !{!"../drivers/ptp/ptp_vclock.c", i32 220, i32 1}
!11 = !{ptr @ptp_vclock_info, !12, !"ptp_vclock_info", i1 false, i1 false}
!12 = !{!"../drivers/ptp/ptp_vclock.c", i32 84, i32 36}
!13 = !{ptr @ptp_vclock_cc, !14, !"ptp_vclock_cc", i1 false, i1 false}
!14 = !{!"../drivers/ptp/ptp_vclock.c", i32 110, i32 34}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{i8 0, i8 2}
!25 = !{!"auto-init"}
